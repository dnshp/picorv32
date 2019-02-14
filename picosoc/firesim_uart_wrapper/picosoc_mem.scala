import chisel3._
import chisel3.util._
import chisel3.experimental.MultiIOModule

import scala.io.Source

class picosoc_mem extends MultiIOModule {
	val wen = IO(Input(UInt(4.W)))
	val addr = IO(Input(UInt(22.W)))
	val wdata = IO(Input(UInt(32.W)))
	val rdata = IO(Output(UInt(32.W)))

	val memInit = Source.fromFile("../basicfw.dec").getLines.toSeq.map{x => x.toLong.U(32.W)}
	val mem = RegInit(Vec(memInit))

	val toWrite = Wire(Vec(4, UInt(8.W)))

	when (wen(0) === 1.U) {
		toWrite(0) := wdata(7,0)
	} .otherwise {
		toWrite(0) := mem(addr)(7,0)
	}
	when (wen(1) === 1.U) {
		toWrite(1) := wdata(15,8)
	} .otherwise {
		toWrite(1) := mem(addr)(15,8)
	}
	when (wen(2) === 1.U) {
		toWrite(2) := wdata(23,16)
	} .otherwise {
		toWrite(2) := mem(addr)(23,16)
	}
	when (wen(3) === 1.U) {
		toWrite(3) := wdata(31,24)
	} .otherwise {
		toWrite(3) := mem(addr)(31,24)
	}

	mem(addr) := Cat(toWrite(3), Cat(toWrite(2), Cat(toWrite(1), toWrite(0))))
	rdata := mem(addr)
}

object MemDriver extends App {
	chisel3.Driver.execute(args, () => new picosoc_mem)
}
