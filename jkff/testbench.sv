`include 'interface.sv'
  
module tb(interface);
  $monitor("j %b k %b  q %b", j, k, q);
  rst <= 0;
  ##2
  j <= 1;
  k <= 0;
  ##2
  j <= 1;
  k <= 1;
  ##3 
  $finish
endmodule
