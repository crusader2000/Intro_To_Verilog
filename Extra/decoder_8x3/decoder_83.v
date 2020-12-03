module decoder_21(
    input e,s,
	 output I_0,I_1
);
assign I_0= e & (!s);
assign I_1= e & (s);
endmodule

module decoder_42(
input s_0,s_1,e,
output q_0,q_1,q_2,q_3
    );
	 
decoder_21 first(!s_1 & e,s_0,q_0,q_1);
decoder_21 second(s_1 & e,s_0,q_2,q_3);
endmodule

module decoder_83(
input s_0,s_1,s_2,e,
output q_0,q_1,q_2,q_3,q_4,q_5,q_6,q_7
    );
decoder_42 first(s_2,s_1,e & s_0,q_0,q_1,q_2,q_3);
decoder_42 second(s_2,s_1,e & !s_0,q_4,q_5,q_6,q_7);
endmodule
