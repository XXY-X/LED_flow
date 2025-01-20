module clk_divider (
    input wire clk_in,      // ����ʱ�ӣ�125MHz
    input wire rst_n,       // ��λ�źţ��͵�ƽ��Ч
    input wire key_in,      // �������룬����Ϊ�ߵ�ƽ
    output reg clk_out      // ���ʱ��
);

    // �����Ƶϵ��
    localparam DIVISOR_1HZ = 125000000 / 2;
    localparam DIVISOR_2HZ = 125000000 / 4;
    localparam DIVISOR_3HZ = 125000000 / 6;
    localparam DIVISOR_4HZ = 125000000 / 8;

    // ������
    reg [26:0] counter;

    // ��ǰ��Ƶϵ��ѡ��
    reg [1:0] divisor_select;

    // ��Ƶϵ��
    reg [26:0] divisor;

    // ����ȥ����������
    reg key_debounced;

    // ����ȥ�����߼�
    always @(posedge clk_in or negedge rst_n) begin
        if (!rst_n) begin
            key_debounced <= 1'b0;
        end else begin
            key_debounced <= key_in;
        end
    end

    // ���·�Ƶϵ�����߼�
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

    // ��Ƶ�߼�
    always @(posedge clk_in or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 27'b0;
            clk_out <= 1'b0;
        end else begin
            if (counter == divisor - 1) begin
                counter <= 27'b0;
                clk_out <= ~clk_out; // �л����ʱ��
            end else begin
                counter <= counter + 1;
            end
        end
    end

endmodule