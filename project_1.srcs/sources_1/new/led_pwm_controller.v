module led_pwm_controller (
    input wire clk,          // ʱ���ź�
    input wire clk_1hz,      // ʱ���ź�
    input wire rst_n,        // ��λ�źţ��͵�ƽ��Ч
    input wire dir_change,   // ����ı䰴���ź�
    input wire pwm_in_100,   // 100% ռ�ձ� PWM �����ź�
    input wire pwm_in_90,    // 90% ռ�ձ� PWM �����ź�
    input wire pwm_in_80,    // 80% ռ�ձ� PWM �����ź�
    input wire pwm_in_70,    // 70% ռ�ձ� PWM �����ź�
    input wire pwm_in_60,    // 60% ռ�ձ� PWM �����ź�
    input wire [17:0] range_ctrl, // 18�����ؿ���������Χ
    output reg [17:0] led_out // 18��LED�Ƶ�����ź�
);

// ��������������ֵ
reg [4:0] COUNT_MAX = 14; // ���������ֵΪ17����Ӧ18��LED
reg [4:0] COUNT_MIN = 1;

reg [4:0] COUNT_MAX_TEMP = 14; // ���������ֵΪ17����Ӧ18��LED
reg [4:0] COUNT_MIN_TEMP = 1;

// ������
reg [4:0] counter;

// LEDλ�ü�����
reg [4:0] led_pos;
reg [4:0] last_led_pos;


// �����������
reg direction; // 0: ���ң�1: ����

reg update_flag=1;

reg direction2; // 0: ���ң�1: ����

// ����ȥ����
reg dir_change_debounced;

//������Χ����
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        COUNT_MAX_TEMP <= 14;
        COUNT_MIN_TEMP <= 1;
    end else begin
        if((range_ctrl & 18'h20000) != 0) begin
            COUNT_MAX_TEMP <= 14;
        end else if((range_ctrl & 18'h10000) != 0)begin
            COUNT_MAX_TEMP <= 13;
        end else if((range_ctrl & 18'h08000) != 0) begin
            COUNT_MAX_TEMP <= 12;
        end else if((range_ctrl & 18'h04000) != 0) begin
            COUNT_MAX_TEMP <= 11;
        end else if((range_ctrl & 18'h02000) != 0) begin
            COUNT_MAX_TEMP <= 10;
        end else if((range_ctrl & 18'h01000) != 0) begin
            COUNT_MAX_TEMP <= 9;
        end else if((range_ctrl & 18'h00800 )!=0 ) begin
            COUNT_MAX_TEMP <= 8;
        end else if((range_ctrl & 18'h00400) != 0) begin
            COUNT_MAX_TEMP <= 7;
        end else if((range_ctrl & 18'h00200) != 0) begin
            COUNT_MAX_TEMP <= 6;
        end else 
            COUNT_MAX_TEMP <= 13;

        if((range_ctrl & 18'h00001) != 0)begin
            COUNT_MIN_TEMP <= 1;
        end else if((range_ctrl & 18'h00002) != 0)begin
            COUNT_MIN_TEMP <= 2;
        end else if((range_ctrl & 18'h00004) != 0)begin
            COUNT_MIN_TEMP <= 3;
        end else if((range_ctrl & 18'h00008) != 0)begin
            COUNT_MIN_TEMP <= 4;
        end else if((range_ctrl & 18'h00010) != 0)begin
            COUNT_MIN_TEMP <= 5;
        end else if((range_ctrl & 18'h00020) != 0)begin
            COUNT_MIN_TEMP <= 6;
        end else if((range_ctrl & 18'h00040) != 0)begin
            COUNT_MIN_TEMP <= 7;
        end else if((range_ctrl & 18'h00080) != 0)begin
            COUNT_MIN_TEMP <= 8;
        end else if((range_ctrl & 18'h00100) != 0)begin
            COUNT_MIN_TEMP <= 9;
        end else if((range_ctrl & 18'h00200) != 0)begin
            COUNT_MIN_TEMP <= 10;
        end else if((range_ctrl & 18'h00400) != 0)begin
            COUNT_MIN_TEMP <= 11;
        end else if((range_ctrl & 18'h00800) != 0)begin
            COUNT_MIN_TEMP <= 12;
        end else if((range_ctrl & 18'h01000) != 0)begin
            COUNT_MIN_TEMP <= 13;
        end else if((range_ctrl & 18'h02000) != 0)begin
            COUNT_MIN_TEMP <= 14;
        end else
            COUNT_MIN_TEMP <= 2;
    end
end

// ��ֹ��λ���Ϸ�
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        COUNT_MAX <= 14;
        COUNT_MIN <= 1;
    end else begin
        if(COUNT_MAX_TEMP > COUNT_MIN_TEMP) begin
            COUNT_MAX <= COUNT_MAX_TEMP;
            COUNT_MIN <= COUNT_MIN_TEMP;
        end
        else begin
            COUNT_MAX <= 14;
            COUNT_MIN <= 1;
        end

    end
end

// ����ȥ�����߼�
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        dir_change_debounced <= 0;
    end else begin
        dir_change_debounced <= dir_change;
    end
end

// ��������߼�
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        direction <= 0; // ��ʼ��������
        last_led_pos <= 0;
    end else if (dir_change && !dir_change_debounced) begin
        direction <= ~direction; // �ı䷽��
    end else if (last_led_pos != led_pos) begin //  ���ؼ��
        if(direction == 0 && led_pos == COUNT_MAX) begin
            direction <= ~direction;
        end
        else if(direction == 1 && led_pos == COUNT_MIN) begin
            direction <= ~direction;
        end
    end else begin
        direction <= direction; // ���ֲ���
    end
    last_led_pos <= led_pos;
end



// LEDλ�ÿ����߼�
always @(posedge clk_1hz or negedge rst_n) begin
    if (!rst_n) begin
        led_pos <= 0;
        direction2 <= 0;
        update_flag <= 1;
    end else begin
        if (direction == 0) begin // ����
            if((led_pos == COUNT_MIN)&&(!update_flag)) begin
                update_flag <= 1;
            end else if (led_pos < COUNT_MAX) begin
                led_pos <= led_pos + 1;
                if(led_pos == COUNT_MAX-1) begin
                    update_flag <= 0;
                end   
            end else begin
                led_pos <= COUNT_MAX; // �ﵽ���ֵʱ���ֲ���
            end
            direction2<=0;
        end else begin // ����
            if((led_pos == COUNT_MAX)&&(!update_flag)) begin
                update_flag <= 1;
            end else if (led_pos > COUNT_MIN) begin
                led_pos <= led_pos - 1;
                if(led_pos == COUNT_MIN+1) begin
                    update_flag <= 0;
                end
            end else begin
                led_pos <= COUNT_MIN; // �ﵽ��Сֵʱ���ֲ���
            end
            direction2<=1;
        end
        
    end
end

// LEDλ�ÿ����߼�
// always @(posedge clk_1hz or negedge rst_n) begin
//     if (!rst_n) begin
//         led_pos <= 0;
//         direction2 <= 0;
//         update_flag <= 1;
//     end else begin
//         if (direction == 0) begin // ����
//             if (led_pos < COUNT_MAX) begin
//                 led_pos <= led_pos + 1;
                
//             end else begin
//                 led_pos <= COUNT_MAX; // �ﵽ���ֵʱ���ֲ���
//             end
//             direction2<=0;
//         end else begin // ����
//         if (led_pos > COUNT_MIN) begin
//                 led_pos <= led_pos - 1;
                
//             end else begin
//                 led_pos <= COUNT_MIN; // �ﵽ��Сֵʱ���ֲ���
//             end
//             direction2<=1;
//         end
        
//     end
// end



// ��������PWM����߼�
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        counter <= 0;
        led_out <= 18'b0000000000000000;
    end else begin
        if (counter < COUNT_MAX) begin
            counter <= counter + 1;
        end else begin
            counter <= 0;
        end
        // ���ݼ���ֵ��PWM�����ź�����LED���
        if(direction2 == 0) begin
            case (led_pos)
                1: begin
                    led_out <= {pwm_in_100, pwm_in_90, pwm_in_80, pwm_in_70, pwm_in_60};
                end
                2: begin
                    led_out <= {pwm_in_100, pwm_in_90, pwm_in_80, pwm_in_70, pwm_in_60,1'b0};
                end
                3: begin
                    led_out <= {pwm_in_100, pwm_in_90, pwm_in_80, pwm_in_70, pwm_in_60,2'b0};
                end
                4: begin
                    led_out <= {pwm_in_100, pwm_in_90, pwm_in_80, pwm_in_70, pwm_in_60,3'b0};
                end
                5: begin
                    led_out <={pwm_in_100, pwm_in_90, pwm_in_80, pwm_in_70, pwm_in_60,4'b0};
                end
                6: begin
                    led_out <= {pwm_in_100, pwm_in_90, pwm_in_80, pwm_in_70, pwm_in_60,5'b0};
                end
                7: begin
                    led_out <= {pwm_in_100, pwm_in_90, pwm_in_80, pwm_in_70, pwm_in_60,6'b0};
                end
                8: begin
                    led_out <= {pwm_in_100, pwm_in_90, pwm_in_80, pwm_in_70, pwm_in_60,7'b0};
                end
                9: begin
                    led_out <= {pwm_in_100, pwm_in_90, pwm_in_80, pwm_in_70, pwm_in_60,8'b0};
                end
                10: begin
                    led_out <={pwm_in_100, pwm_in_90, pwm_in_80, pwm_in_70, pwm_in_60,9'b0};
                end
                11: begin
                    led_out <= {pwm_in_100, pwm_in_90, pwm_in_80, pwm_in_70, pwm_in_60,10'b0};
                end
                12: begin
                    led_out <={pwm_in_100, pwm_in_90, pwm_in_80, pwm_in_70, pwm_in_60,11'b0};
                end
                13: begin
                    led_out <= {pwm_in_100, pwm_in_90, pwm_in_80, pwm_in_70, pwm_in_60,12'b0};
                end
                14: begin
                    led_out <= {pwm_in_100, pwm_in_90, pwm_in_80, pwm_in_70, pwm_in_60,13'b0};
                end
                default: begin
                    led_out <= 18'b0000000000000000;
                end
            endcase
        end
        else begin // ����
            case (led_pos)
                1: begin
                    led_out <= {pwm_in_60, pwm_in_70, pwm_in_80, pwm_in_90, pwm_in_100};
                end
                2: begin
                    led_out <= {pwm_in_60, pwm_in_70, pwm_in_80, pwm_in_90, pwm_in_100,1'b0};
                end
                3: begin
                    led_out <= {pwm_in_60, pwm_in_70, pwm_in_80, pwm_in_90, pwm_in_100,2'b0};
                end
                4: begin
                    led_out <= {pwm_in_60, pwm_in_70, pwm_in_80, pwm_in_90, pwm_in_100,3'b0};
                end
                5: begin
                    led_out <={pwm_in_60, pwm_in_70, pwm_in_80, pwm_in_90, pwm_in_100,4'b0};
                end
                6: begin
                    led_out <= {pwm_in_60, pwm_in_70, pwm_in_80, pwm_in_90, pwm_in_100,5'b0};
                end
                7: begin
                    led_out <= {pwm_in_60, pwm_in_70, pwm_in_80, pwm_in_90, pwm_in_100,6'b0};
                end
                8: begin
                    led_out <= {pwm_in_60, pwm_in_70, pwm_in_80, pwm_in_90, pwm_in_100,7'b0};
                end
                9: begin
                    led_out <= {pwm_in_60, pwm_in_70, pwm_in_80, pwm_in_90, pwm_in_100,8'b0};
                end
                10: begin
                    led_out <={pwm_in_60, pwm_in_70, pwm_in_80, pwm_in_90, pwm_in_100,9'b0};
                end
                11: begin
                    led_out <= {pwm_in_60, pwm_in_70, pwm_in_80, pwm_in_90, pwm_in_100,10'b0};
                end
                12: begin
                    led_out <={pwm_in_60, pwm_in_70, pwm_in_80, pwm_in_90, pwm_in_100,11'b0};
                end
                13: begin
                    led_out <= {pwm_in_60, pwm_in_70, pwm_in_80, pwm_in_90, pwm_in_100,12'b0};
                end
                14: begin
                    led_out <= {pwm_in_60, pwm_in_70, pwm_in_80, pwm_in_90, pwm_in_100,13'b0};
                end
                default: begin
                    led_out <= 18'b0000000000000000;
                end
            endcase
        end
    end
end

endmodule