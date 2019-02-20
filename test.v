module test;

reg [7:0] in = 0;
wire [7:0] out;

AES_Sbox dut ( .in(in), .out(out) );

always @(out)
    $display("IN = %X, out = %x\n", in, out);

initial
begin
    #1 in = 1;
    #1 in = 10;
    #1 $finish;
end

endmodule

