onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+LED_flow  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.LED_flow xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {LED_flow.udo}

run 1000ns

endsim

quit -force
