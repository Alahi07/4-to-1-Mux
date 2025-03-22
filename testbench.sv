// Code your testbench here
// or browse Examples
module mux2to1_tb;
  reg [1:0]in;
  reg sel;
  wire out;
  mux2to1 uut(
    .in(in),
    .sel(sel),
    .out(out)
  );
  initial begin
    $monitor("time=%0t | in=%b | sel=%b | out= %b", $time,in,sel,out);
    in= 2'b10;
    sel=1'b0; #10;
    sel=1'b1; #10;
    $finish;
  end
endmodule
