vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/LED_flow/ip/LED_flow_led_pwm_controller_0_0/sim/LED_flow_led_pwm_controller_0_0.v" \
"../../../bd/LED_flow/ip/LED_flow_clk_divider_0_0/sim/LED_flow_clk_divider_0_0.v" \
"../../../bd/LED_flow/ip/LED_flow_pwm_generator_0_0/sim/LED_flow_pwm_generator_0_0.v" \
"../../../bd/LED_flow/sim/LED_flow.v" \


vlog -work xil_defaultlib \
"glbl.v"

