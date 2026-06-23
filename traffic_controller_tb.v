`timescale 1ns/1ps

module traffic_controller_tb;

reg clk;
reg rst;

wire [2:0] roadA;
wire [2:0] roadB;

traffic_controller dut (
    .clk(clk),
    .rst(rst),
    .roadA(roadA),
    .roadB(roadB)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;

    #20;
    rst = 0;

    #300;
    $finish;
end

endmodule