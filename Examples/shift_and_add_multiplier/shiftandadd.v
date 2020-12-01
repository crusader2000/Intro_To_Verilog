module shiftandadd(
    input [3:0] x,
    input [3:0] y,
    output reg [7:0] s
);

  reg [7:0] temp;
  integer i;

  always @(x,y) begin
    s=0;
    temp=0;
    temp[3:0] = x;
    for(i=0;i<4;i=i+1) begin
      if(y[i]==1'b1) s=s+temp;
      
      temp=temp <<1;
    end
  end
endmodule