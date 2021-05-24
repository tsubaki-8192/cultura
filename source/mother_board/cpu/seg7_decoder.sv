module seg7_decoder (
    input  logic [3:0] data,
    output logic [7:0] seg7
);
    always_comb begin
		unique case (data)
            4'h1: seg7 = 8'b11111001;	// ---0----
            4'h2: seg7 = 8'b10100100; 	// |	  |
            4'h3: seg7 = 8'b10110000; 	// 5	  1
            4'h4: seg7 = 8'b10011001; 	// |	  |
            4'h5: seg7 = 8'b10010010; 	// ---6----
            4'h6: seg7 = 8'b10000010; 	// |	  |
            4'h7: seg7 = 8'b11111000; 	// 4	  2
            4'h8: seg7 = 8'b10000000; 	// |	  |
            4'h9: seg7 = 8'b10011000; 	// ---3---- 7
            4'ha: seg7 = 8'b10001000;
            4'hb: seg7 = 8'b10000011;
            4'hc: seg7 = 8'b11000110;
            4'hd: seg7 = 8'b10100001;
            4'he: seg7 = 8'b10000110;
            4'hf: seg7 = 8'b10001110;
            4'h0: seg7 = 8'b11000000;
        endcase
    end
endmodule