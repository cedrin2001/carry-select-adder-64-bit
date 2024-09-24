module carry_select_adder32bit (a,b,cin,sum,carry);
input [31:0]a,b;
input cin;
output [31:0]sum;
output carry;
wire w1;
carry_select_adder16bit  uut(a[15:0],b[15:0],cin,sum[15:0],w1);
carry_select_adder16bit uut2(a[31:16],b[31:16],w1,sum[31:16],carry);
endmodule