module carry_select_adder8bit (a,b,cin,sum,carry);
input [7:0]a,b;
input cin;
output [7:0]sum;
output carry;
wire w1;
rca uut(a[3:0],b[3:0],cin,sum[3:0],w1);
carry_select_adder4bit uut2(a[7:4],b[7:4],w1,sum[7:4],carry);
endmodule