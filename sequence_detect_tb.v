module sequence_detect_tb;

reg clk;
reg rst;
reg din;

wire unlock;

sequence_detect uut(
    .clk(clk),
    .rst(rst),
    .din(din),
    .unlock(unlock)
);
initial
begin
    $dumpfile("sequence_detect.vcd");
    $dumpvars(0, sequence_detect_tb);
end

// always @(posedge clk or posedge rst)
 always #5 clk=~clk;
initial begin


    clk = 0;
    rst = 1;
    din = 0;

    #10 rst = 0;


    #10 din = 1;
    #10 din = 0;
    #10 din = 0;
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;
    #10 din = 1;

    #20 $finish;

end

endmodule
