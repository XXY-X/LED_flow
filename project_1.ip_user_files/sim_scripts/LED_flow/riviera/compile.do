vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/LED_flow/ip/LED_flow_led_pwm_controller_0_0/sim/LED_flow_led_pwm_controller_0_0.v" \
"../../../bd/LED_flow/ip/LED_flow_clk_divider_0_0/sim/LED_flow_clk_divider_0_0.v" \
"../../../bd/LED_flow/ip/LED_flow_pwm_generator_0_0/sim/LED_flow_pwm_generator_0_0.v" \
"../../../bd/LED_flow/sim/LED_flow.v" \


vlog -work xil_defaultlib \
"glbl.v"

