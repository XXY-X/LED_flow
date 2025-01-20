module pwm_generator (
    input wire clk,          // 时钟信号
    input wire rst_n,        // 复位信号，低电平有效
    output reg pwm_out_100,  // 100% 占空比 PWM 输出信号
    output reg pwm_out_90,   // 90% 占空比 PWM 输出信号
    output reg pwm_out_80,   // 80% 占空比 PWM 输出信号
    output reg pwm_out_70,   // 70% 占空比 PWM 输出信号
    output reg pwm_out_60    // 60% 占空比 PWM 输出信号
);

// 定义计数器的最大值
localparam COUNT_MAX = 9; // 计数器最大值为9，对应10%的步长

// 计数器
reg [3:0] counter;

// 计数器和PWM输出逻辑
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        counter <= 0;
        pwm_out_100 <= 0;
        pwm_out_90 <= 0;
        pwm_out_80 <= 0;
        pwm_out_70 <= 0;
        pwm_out_60 <= 0;
    end else begin
        if (counter < COUNT_MAX) begin
            counter <= counter + 1;
        end else begin
            counter <= 0;
        end

        // 根据计数值生成PWM信号
        pwm_out_100 <= (counter < 10); // 100%
        pwm_out_90 <= (counter < 8);  // 90%
        pwm_out_80 <= (counter < 6);  // 80%
        pwm_out_70 <= (counter < 4);  // 70%
        pwm_out_60 <= (counter < 2);  // 60%
    end
end

endmodule