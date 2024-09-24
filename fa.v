module fa(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
wire w1,w2,w3;
ha uut(a,b,w1,w2);
ha uut1(w1,cin,sum,w3);
or(carry,w2,w3);
endmodule

