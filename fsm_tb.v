module tb_fsm_rtl;
    reg clk;
    reg rst;
    reg din;
    wire dout;

fsm_rtl uut (
   .clk(clk),
   .rst(rst),
   .din(din),
   .dout(dout)
);
always #5 clk = ~clk;
  initial begin
   clk = 0;
   rst = 1; 
   din = 0;
   #10 rst = 0;

   din = 1; 
   #10; 
   din = 0; 
   #10;
   din = 1; 
   #10;
   din = 1; 
   #10; 
   din = 0; 
   #10; 
   if (dout)
      $display("Pattern 10110 detected!");
   else
      $display("Error: Pattern 10110 not detected.");

   $stop;
 end
endmodule

