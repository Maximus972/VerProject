`include "src/modules/test.v"
`timescale 1ns/1ns

module tb_inverter();

reg in_tb;
wire out_tb;

neg DUT (
    .a(in_tb),
    .c(out_tb)
);

initial begin
    $dumpfile("waves_inverter.vcd");
    $dumpvars(0, tb_inverter);

    in_tb = 1'b1;
    #10;

    $display("Running inverter test...");
    $display("Time\t in\t out\t Expected");

    $display("%0dns\t %b\t %b\t %b", $time, in_tb, out_tb, 1'b0);

    in_tb = 1'b0;
    #10;
    $display("%0dns\t %b\t %b\t %b", $time, in_tb, out_tb, 1'b1);

    #10;
    $display("Test finished");
    $finish;
end

endmodule;