interface jk_inter(input bit clk);
  logic j, k, rst, q;
  modport dut(input clk, j, k, rst, output q);
  modport tb(input clk, q, output j, k, rst);
endinterface
