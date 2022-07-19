module testbench();
bit clk;
logic rst, sel;
logic [3:0] q;
counter dut(.clk(clk), .rst(rst), .sel(sel), .q(q));

initial
begin
	$dumpvars;
	$dumpfile("count.vcd");
	sel = 0;
	clk = 0;
	rst = 0;
	#3 rst = 1;
	#3 rst = 0;
	#50 rst = 1;
	#2 rst = 0; 
	#48 sel = 1;
	#50 rst = 1;
	#2 rst = 0; 
	#50 $finish;
end
always #5 clk <= ~clk;
endmodule
