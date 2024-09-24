module rca(a,b,cin,sum,carry);
input [3:0]a,b;
input cin;
output [3:0]sum;
output carry;
wire w1,w2,w3;
fa uut(a[0],b[0],cin,sum[0],w1);
fa uut1(a[1],b[1],w1,sum[1],w2);
fa uut2(a[2],b[2],w2,sum[2],w3);
fa uut3(a[3],b[3],w3,sum[3],carry);
endmodule
