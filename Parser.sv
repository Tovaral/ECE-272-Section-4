module Parser(
		input logic [7:0] button,
		output logic [3:0] ones,
		output logic [3:0] tens,
		output logic [3:0] hunds,
		output logic [3:0] thous);
		
		assign ones = button % 10;
		assign tens = (button / 10) % 10;
		assign hunds = (button / 100) % 10;
		assign thous = button / 1000;
	endmodule