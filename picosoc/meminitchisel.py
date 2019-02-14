hexdump = open("basicfw.hex", "r")
decdump = open("basicfw.dec", "w")

for line in hexdump:
	line_to_write = str(int(line, 16)) + "\n"
	decdump.write(line_to_write)

hexdump.close()
decdump.close()