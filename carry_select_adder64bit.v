module carry_select_adder64bit(a,b,cin,sum,carry);
input [63:0]a,b;
input cin;
output [63:0]sum;
output carry;
wire w1;
carry_select_adder32bit uut(a[31:0],b[31:0],cin,sum[31:0],w1);
carry_select_adder32bit uut1(a[63:32],b[63:32],w1,sum[63:32],carry);
endmodule