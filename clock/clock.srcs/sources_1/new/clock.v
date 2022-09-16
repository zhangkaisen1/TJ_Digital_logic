

module digital_clock(input clk,input rst,input rst_shy,input h_,input m_,input s_,input DOUT,output [7:0]select,output [6:0]y,output [15:0]shy);        //显示数码管
	//数码管高频显示当前小时、分钟和
	wire my_clk,my_clk_clock;

   // parameter STOP_TIME = 27'b101_1111_0101_1110_0001_0000_0000;
	reg [6:0]y;  //输出的数字
	reg [7:0]select;  //每个数码管位置输出状态
	wire [6:0] y_[5:0]; //存储每个位置的信息
	wire[15:0] shy;   
	integer num ;           //计数
	wire [5:0]hour,minute,second;
	//assign hour = 3,minute = 4,second = 20;
	
	Divider d1(.I_CLK(clk),.rst(rst),.count(27'b101_1111_0101_1110_0001_0000_0000),.O_CLK(my_clk_clock));   //显示时钟
	Divider d2(.I_CLK(clk),.rst(rst),.count(77777),.O_CLK(my_clk));  //计时时钟
	
	clock_cal c1(.clk(my_clk_clock),
	.h_(h_),          //自行设置时间
    .m_(m_),
    .s_(s_),    
	.hour_(hour),.minute_(minute),.second_(second),        //计算时间
	.select0(y_[0]),.select1(y_[1]),.select2(y_[2]),.select3(y_[3]),.select4(y_[4]),.select5(y_[5]),
	._hour_(hour),._minute_(minute),._second_(second));

	alarm a1(.clk(clk),.rst(rst_shy),.minute(minute),.second(second),.shy(shy),.DOUT(DOUT));  //加的板块 加上了声音传感器
	
always@(posedge my_clk) //将数字显示到相应数码管
begin
    
    if(num  == 0)
    begin
	    select <= 8'b1111_1110;
        y = y_[0];                ///////////////////////////////////
    end
    else if(num == 1)
    begin
        select <= 8'b1111_1101;
        y = y_[1];
    end
    else if(num == 2)
    begin
        select <= 8'b1111_0111;
        y = y_[2];
    end
    else if(num == 3)
    begin
        select <= 8'b1110_1111;
        y = y_[3];
    end
    else if(num == 4)
    begin
        select <= 8'b1011_1111;
        y = y_[4];
    end
    else if(num == 5)
    begin
        select <= 8'b0111_1111;
        y = y_[5];
        num  = -1;
    end
    num = num + 1;   //num用来计数，表示每次只显示一个数码管，但是频率块，人眼看不出
    
    
end

endmodule



module clock_cal(input clk,input h_,input m_,input s_, 
input [5:0]hour_,input[5:0] minute_,input [5:0]second_,
output select0,output select1,output select2,output select3,output select4,output select5,
output[5:0] _hour_,output[5:0] _minute_,output [5:0]_second_);  //计算时间
wire [6:0] select0, select1, select2, select3, select4, select5;
wire  [6:0] y_[9:0];
reg[5:0]  hour ,minute,second;
reg[5:0] _hour_ ,_minute_,_second_;
always@(posedge clk)       //计算时间
begin
hour = hour_;
minute = minute_;
second = second_;

if(h_)        //通过外部设备手动修改时间
    hour = hour + 1;
if(m_)
    minute = minute + 1;
if(s_)
    second = second + 1;


    if(second < 59)  //判断时间走的对不对
        second = second + 1;
    else
    begin
        second = 0;
        if(minute < 59)
            minute = minute + 1;
        else
            begin
                minute = 0;
                if(hour < 23)
                    hour = hour + 1;
                else
                begin
                    hour = 0;
                end
            end
            //[Synth 8-3352] multi-driven net hour_ with 2nd driver pin 'VCC' ["D:/win32pe/clock/clock.srcs/sources_1/new/clock.v":16]
    end
    if(minute > 59)  //分钟判断
    begin
         minute = 0;
         if(hour < 23)  //小时判断
            hour = hour + 1;
         else
         begin
            hour = 0;
         end
     end
    if(hour > 23)
        hour = 0;
_hour_ = hour;
_minute_ = minute;
_second_ = second;
end


    trans_Time t1(         //将数字转化为数码管上显示的码数
.clk(clk) ,
.hour(hour),
.minute(minute),
.second(second),
.select0(select0),
.select1(select1),
.select2(select2),
.select3(select3),
.select4(select4),
.select5(select5));

endmodule




module trans_Time(input clk,input [5:0]hour,input [5:0]minute,input [5:0]second,
output select0,output select1,output select2,output select3,output select4,output select5);
//reg [10:0] hour,minute,second;            转换码数
reg [6:0] select0, select1, select2, select3, select4, select5;
wire [6:0] y_[9:0];
display7 dis0(.iData(0), .oData(y_[0]));      //传入七段数码管的值
display7 dis1(.iData(1), .oData(y_[1]));
display7 dis2(.iData(2), .oData(y_[2]));
display7 dis3(.iData(3), .oData(y_[3]));
display7 dis4(.iData(4), .oData(y_[4]));
display7 dis5(.iData(5), .oData(y_[5]));
display7 dis6(.iData(6), .oData(y_[6]));
display7 dis7(.iData(7), .oData(y_[7]));
display7 dis8(.iData(8), .oData(y_[8]));
display7 dis9(.iData(9), .oData(y_[9]));

always@(posedge clk) 
begin
select0 = y_[second % 10];         //根据规则赋值
select1 =  y_[second / 10];
select2 = y_[minute % 10];
select3 = y_[minute / 10];
select4 = y_[hour % 10];
select5 = y_[hour / 10];
end
endmodule





module alarm(clk,rst,minute,second,shy,DOUT); //本来想做个闹钟，后来想了应该用外围，就加了个声音传感器
input clk;
input rst;
input DOUT;
input [5:0]minute;
input [5:0]second;
output reg [15:0]shy;
reg[7:0] n = 1;
wire my_clock;
	Divider d1(.I_CLK(clk),.rst(0),.count(27'b111_0101_1110_0001_0000_0000),.O_CLK(my_clock));   //显示时钟 闪烁频率

always@(posedge my_clock)
begin
if(!rst)
  begin
  /*
    if(minute == 0 && second == 0)
       n = 1;
    if(n > 0 && n % 2)
       shy = 16'b1111_1111_1111_1111;
    else if(n > 0 && !(n % 2))
        shy = 16'b0000_0000_0000_0000;  

    if(n > 200)
    begin
        n = 0;
        shy = 16'b0000_0000_0000_0000;  
        end
    else
        n = n + 1;*/
        if(DOUT)    //有声音闪光
            shy = 16'b0000_0000_0000_0000;  
            else
             shy = 16'b1111_1111_1111_1111;
  end
  
else   //rst不闪
begin
    n = 0;
    shy = 16'b0000_0000_0000_0000;  
    end
end
endmodule





module display7( iData, oData);  //七段数码管编码器
    input [3:0] iData;
    output [6:0] oData;
    reg [6:0] oData;
    always@(*)
    begin
        case(iData)
            4'b0000:oData = 7'b100_0000;
            4'b0001:oData = 7'b111_1001;
            4'b0010:oData = 7'b010_0100;
            4'b0011:oData = 7'B011_0000;
            4'b0100:oData = 7'b001_1001;
            4'b0101:oData = 7'b001_0010;
            4'b0110:oData = 7'b000_0010;
            4'b0111:oData = 7'b111_1000;
            4'b1000:oData = 7'b000_0000;
            4'b1001:oData = 7'b001_0000;
            default:oData = 7'b111_1111;
            endcase
        end
endmodule




module Divider(       //分频器，做了点修改，将分频的值改为了输入的值，方便不同分频
    input I_CLK,
    input rst,
    input [30:0]count,
    output reg O_CLK
    );
    integer Time;
   // parameter STOP_TIME = count;  //27'b101_1111_0101_1110_0001_0000_0000;
    
initial
begin
    O_CLK = 0;
end


always@(posedge I_CLK)
begin
    if(rst)    //复位信号生效
    begin
        O_CLK = 1'b0;
        Time = 1;
        end
    
    else if(Time < count / 2)
        begin
            O_CLK = 1'b0;
            Time = Time + 1;
            end
    else if(Time >= count / 2 && Time < count )
        begin
            Time = Time + 1;
            O_CLK = 1'b1;
        end
    else
        begin
            Time = 1;
            O_CLK = 1'b0;     
        end
end    
endmodule



/*
module Divider(
    input I_CLK,
    input rst,
    output reg O_CLK
    );
    integer Time;
    parameter STOP_TIME = 77855;//27'b101_1111_0101_1110_0001_0000_0000;
    
initial
begin
    O_CLK = 0;
end


always@(posedge I_CLK)
begin
    if(rst)    //复位信号生效
    begin
        O_CLK = 1'b0;
        Time = 1;
        end
    
    else if(Time < STOP_TIME / 2)
        begin
            O_CLK = 1'b0;
            Time = Time + 1;
            end
    else if(Time >= STOP_TIME / 2 && Time < STOP_TIME )
        begin
            Time = Time + 1;
            O_CLK = 1'b1;
        end
    else
        begin
            Time = 1;
            O_CLK = 1'b0;     
        end
end    
endmodule*/