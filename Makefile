BUILD_OBJ = obj/inverter_sim.vvp

clear:
	rm -rf obj/
	rm waves_inverter.vcd

build: $(BUILD_OBJ)

$(BUILD_OBJ): 
	mkdir obj
	iverilog -o $(BUILD_OBJ) src/tb_inverter.v

run: $(BUILD_OBJ)
	vvp $^

