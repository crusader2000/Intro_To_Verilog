module encoder(
    input I_0,
    input I_1,
    input I_2,
    input I_3,
    input I_4,
    input I_5,
    input I_6,
    input I_7,
	input enable,
    output Y_0,
    output Y_1,
    output Y_2
);
	 
    assign Y_0= enable & (I_7 | ((!I_7)&(!I_6)&I_5) | ((!I_7)&(!I_6)&(!I_5)&(!I_4)&(I_3)) | ((!I_7)&(!I_6)&(!I_5)&(!I_4)&(!I_3)&(!I_2)&(I_1)));
    assign Y_1= enable & ((!I_7)&(!I_6)&(!I_5)&(!I_4)&(I_3|I_2))   |  I_7 | I_6;
    assign Y_2= enable & ((!I_7)&(!I_6)&(I_4)) | ((!I_7)&(!I_6)&(I_5)) | I_6 | I_7;

endmodule
