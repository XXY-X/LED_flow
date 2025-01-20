module clk_divider (
    input wire clk_in,      // 输入时钟，125MHz
    input wire rst_n,       // 复位信号，低电平有效
    input wire key_in,      // 按键输入，按下为高电平
    output reg clk_out      // 输出时钟
);

    // 定义分频系数
    localparam DIVISOR_1HZ = 125000000 / 2;
    localparam DIVISOR_2HZ = 125000000 / 4;
    localparam DIVISOR_3HZ = 125000000 / 6;
    localparam DIVISOR_4HZ = 125000000 / 8;

    // 计数器
    reg [26:0] counter;

    // 当前分频系数选择
    reg [1:0] divisor_select;

    // 分频系数
    reg [26:0] divisor;

    // 按键去抖动计数器
    reg key_debounced;

    // 按键去抖动逻辑
    always @(posedge clk_in or negedge rst_n) begin
        if (!rst_n) begin
            key_debounced <= 1'b0;
        end else begin
            key_debounced <= key_in;
        end
    end

    // 更新分频系数的逻辑
    always @(posedge clk_in or negedge rst_n) begin
        if (!rst_n) begin
            divisor_select <= 2'b00;
        end else if (key_in && !key_debounced) begin
            divisor_select <= divisor_select + 1;
        end
    end

    
    always @(posedge clk_in or negedge rst_n) begin
        if (!rst_n) begin
            divisor <= DIVISOR_1HZ;
        end
        else begin
            case (divisor_select)
                2'b00: divisor <= DIVISOR_1HZ;
                2'b01: divisor <= DIVISOR_2HZ;
                2'b10: divisor <= DIVISOR_3HZ;
                2'b11: divisor <= DIVISOR_4HZ;
                default: divisor <= DIVISOR_1HZ;
            endcase
        end
    end

    // 分频逻辑
    always @(posedge clk_in or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 27'b0;
            clk_out <= 1'b0;
        end else begin
            if (counter == divisor - 1) begin
                counter <= 27'b0;
                clk_out <= ~clk_out; // 切换输出时钟
            end else begin
                counter <= counter + 1;
            end
        end
    end

endmodule