# mem_inst = open("mem_inst.txt", "w")
# mem_assign = open("mem_assign.txt", "w")
# hexdump = open("basicfw.hex", "r")

# i = 0
# for line in hexdump:
# 	instr_dec = str(int(line, 16))
# 	# print("{0:04}".format(i) + ": " + line[:-1] + "->" + instr_dec)
# 	line_to_write = "    reg mem_reg_%d_: UInt<32>, asClock(clk) with : (reset => (resetn, UInt<32>(%s)))\n" % (i, instr_dec)
# 	mem_inst.write(line_to_write)
# 	line_to_write = "    mem_%d_ <= bits(mem_reg_%d_, 31, 0)\n" % (i, i)
# 	mem_assign.write(line_to_write)
# 	i += 1

mem_rst = open("mem_rst.txt", "w")
hexdump = open("basicfw.hex", "r")

mem_rst.write("		if(!resetn) begin\n")

i = 0
for line in hexdump:
	if (int(line, 16) != 0):
		instr_dec = str(int(line, 16))
		line_to_write = "			mem[%d] <= %s;\n" % (i, instr_dec)
		mem_rst.write(line_to_write)
	i += 1

mem_rst.write("		end")
mem_rst.close()
hexdump.close()