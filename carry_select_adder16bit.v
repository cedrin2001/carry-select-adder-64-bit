module carry_select_adder16bit(a,b,cin,sum,carry);
input [15:0]a,b;
input cin;
output [15:0]sum;
output carry;
wire w1;
carry_select_adder8bit uut(a[7:0],b[7:0],cin,sum[7:0],w1);
carry_select_adder8bit uut1(a[15:8],b[15:8],w1,sum[15:8],carry);
endmodule