// TESTBENCH MODULE


module TB_mult();
reg[7:0]A,B;
wire[15:0]R;

multiplier_8bit mm1(.a(A),.b(B),.p(R));
 initial
 begin
    B=8'b10101111;
    A=8'b11010010;
    $display ("A ",A);
    $display ("B " ,B);
    $display ("PRODUCT ",R);
 end

endmodule