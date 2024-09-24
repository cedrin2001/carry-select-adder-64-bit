module carry_select_adder4bit(a,b,cin,sum,carry);
input [3:0]a,b;
input cin;
output [3:0]sum;
output carry;
wire [3:0]w0,w1;
wire w2,w3;
rca uut1(a,b,1'b0,w0,w2);
rca uut2(a,b,1'b1,w1,w3);
assign sum=(cin)?w1:w0;
assign carry = (cin)?w3:w2;
endmodule
