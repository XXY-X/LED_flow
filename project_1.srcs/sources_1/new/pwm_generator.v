module pwm_generator (
    input wire clk,          // ʱ���ź�
    input wire rst_n,        // ��λ�źţ��͵�ƽ��Ч
    output reg pwm_out_100,  // 100% ռ�ձ� PWM ����ź�
    output reg pwm_out_90,   // 90% ռ�ձ� PWM ����ź�
    output reg pwm_out_80,   // 80% ռ�ձ� PWM ����ź�
    output reg pwm_out_70,   // 70% ռ�ձ� PWM ����ź�
    output reg pwm_out_60    // 60% ռ�ձ� PWM ����ź�
);

// ��������������ֵ
localparam COUNT_MAX = 9; // ���������ֵΪ9����Ӧ10%�Ĳ���

// ������
reg [3:0] counter;

// ��������PWM����߼�
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

        // ���ݼ���ֵ����PWM�ź�
        pwm_out_100 <= (counter < 10); // 100%
        pwm_out_90 <= (counter < 8);  // 90%
        pwm_out_80 <= (counter < 6);  // 80%
        pwm_out_70 <= (counter < 4);  // 70%
        pwm_out_60 <= (counter < 2);  // 60%
    end
end

endmodule