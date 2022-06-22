module jkff(input clk, input j, input k, input rst, output reg q);
  always@(posedge clk, negedge rst)
    begin
      if(!rst)
        q <= 0;
      else
        case({j, k})
          00 : q <= q;
          01 : q <= 0;
          10 : q <= 1;
          11 : q <= ~q;
        endcase
    end
endmodule
