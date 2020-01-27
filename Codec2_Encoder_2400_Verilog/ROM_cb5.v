/*
* Module         - ROM_cb5
* Top module     - cbselect
* Project        - CODEC2_ENCODE_2400
* Developer      - Santhiya S
* Date           - Mon Feb 04 15:19:31 2019
*
* Description    -
* Inputs         -
*static const float codes5[] = {
  1100,
  1200,
  1300,
  1400,
  1500,
  1600,
  1700,
  1800,
  1900,
  2000,
  2100,
  2200,
  2300,
  2400,
  2500,
  2600

*};
*32 bits fixed point representation
   S - E  - M
   1 - 15 - 16
*/
module ROM_cb5(addr,dataout);

	parameter N = 32;
	input [3:0] addr;
	output reg [N-1:0] dataout;

	reg [N-1:0] cb5[15:0];
	
	always@(*)
	begin
			cb5[0] = 32'b00000100010011000000000000000000;
			cb5[1] = 32'b00000100101100000000000000000000;
			cb5[2] = 32'b00000101000101000000000000000000;
			cb5[3] = 32'b00000101011110000000000000000000;
			cb5[4] = 32'b00000101110111000000000000000000;
			cb5[5] = 32'b00000110010000000000000000000000;
			cb5[6] = 32'b00000110101001000000000000000000;
			cb5[7] = 32'b00000111000010000000000000000000;
			cb5[8] = 32'b00000111011011000000000000000000;
			cb5[9] = 32'b00000111110100000000000000000000;
			cb5[10] = 32'b00001000001101000000000000000000;
			cb5[11] = 32'b00001000100110000000000000000000;
			cb5[12] = 32'b00001000111111000000000000000000;
			cb5[13] = 32'b00001001011000000000000000000000;
			cb5[14] = 32'b00001001110001000000000000000000;
			cb5[15] = 32'b00001010001010000000000000000000;
		
		dataout = cb5[addr];
	end
endmodule
