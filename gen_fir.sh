yosys -p "read_verilog top.v; \
	  read_verilog picorv32.v; \
	  hierarchy -top top; \
	  synth; \
	  write_verilog top_synth.v"
yosys -p "read_verilog top_synth.v; \
	  write_firrtl top_synth.fir"
