module counter(clk,rst,out);
input clk,rst;
output reg [2:0] out;
always @(posedge clk or negedge rst)
 begin 
    if(!rst)
      out<=3'b000;
   else if(out<4)
      out<=out+1;
    else
      out<=3'b000;
 end
endmodule