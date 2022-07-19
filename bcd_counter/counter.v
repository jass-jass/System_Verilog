/*		Mod-9 counter 

	Inputs: Asynchronous Active High reset ( here rst )
		Select bit - 1 for up and 0 for down 
					       ( here sel )
		Clock ( here clk )
		
	Output: Four bit Q ( here q )

*/

module counter(input rst, input sel, input clk, 
		output reg [3:0] q);
	always @ (posedge rst, posedge clk)
		if(sel)
			if(rst || (q[0]&&q[3])) 
				q <= 4'b0000;
			else
				q <= q+4'b0001;
		else
			if(rst || (q == 4'b0000))
				q <= 4'b1001;
			else
				q <= q-4'b0001;
endmodule
