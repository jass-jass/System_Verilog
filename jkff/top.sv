`include 'interface.sv'
`include 'jk.v'

module top;
  bit clk;
  jk_inter inf(clk);
  jkff dut(.clk(inf.dut.clk), .rst(inf.dut.rst), .j(inf.dut.j), .k(inf.dut.k), q(inf.dut.q));
  tb tb(inf.tb);
  always@clk
    #5 clk <= ~clk;
endmodule
