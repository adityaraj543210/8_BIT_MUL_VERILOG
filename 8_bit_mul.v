module multiplier_8bit(a,b,p);

input [7:0]a,b;

wire [7:0]m0;
wire [8:0]m1;
wire [9:0]m2;
wire [10:0]m3;
wire [11:0]m4;
wire [12:0]m5;
wire [13:0]m6;
wire [14:0]m7;


wire [15:0]s1,s2,s3,s4,s5,s6,s7;
output [15:0]p;

assign m0= {8{a[0]}} & b[7:0];
assign m1= {8{a[1]}} & b[7:0];
assign m2= {8{a[2]}} & b[7:0];
assign m3= {8{a[3]}} & b[7:0];
assign m4= {8{a[4]}} & b[7:0];
assign m5= {8{a[5]}} & b[7:0];
assign m6= {8{a[6]}} & b[7:0];
assign m7= {8{a[7]}} & b[7:0];


assign s1= m0 + (m1<<1);
assign s2= s1 + (m2<<2);
assign s3= s2 + (m3<<3);
assign s4= s3 + (m4<<4);
assign s5= s4 + (m5<<5);
assign s6= s5 + (m6<<6);
assign s7= s6 + (m7<<7);

assign p=s7;

endmodule

