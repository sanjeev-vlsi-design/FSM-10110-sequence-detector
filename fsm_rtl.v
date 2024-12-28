module fsm_10110(clk,rst,data_in,data_out);
input clk,rst,data_in;
output reg data_out;
parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100;
reg [2:0]ps,ns;
always @ (posedge clk or posedge rst)
begin
if(rst)
ps <= s0;
else
ps <= ns;
end
always @(*)
begin
ns <= s0;
case(ps)
s0:if(data_in)
ns <= s1;
else
ns <= s0;
s1:if(data_in)
ns <= s1;
else
ns <= s2;
s2:if(data_in)
ns <= s3;
else
ns <= s0;
s3:if(data_in)
ns <= s4;
else
ns <= s2;
s4:if(data_in)
ns <= s1;
else
ns <= s0;
endcase
//assign data_out = (ps==s4)?1'b1:1'b0;
end
endmodule
