module Sevenseg( input logic [3:0] data,
					output logic [6:0] segments);
			
			always_comb
				case(data) //       GFEDCBA - We set our segments backwords
					0: segments = 7'b1000000;
					1: segments = 7'b1111001;
					2: segments = 7'b0100100;
					3: segments = 7'b0110000;
					4: segments = 7'b0011001;
					5: segments = 7'b0010010;
					6: segments = 7'b0000010;
					7: segments = 7'b1111000;
					8: segments = 7'b0000000;
					9: segments = 7'b0010000;
					default:segments = 7'b1111111;
				endcase
		endmodule
		
