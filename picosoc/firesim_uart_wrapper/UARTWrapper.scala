import chisel3._
import chisel3.util._
import chisel3.experimental.MultiIOModule

class UARTPortIO extends Bundle {
	val txd = Output(Bool())
	val rxd = Input(Bool())
}

class UARTWrapper extends MultiIOModule {
	val uart = IO(Vec(1, new UARTPortIO()))

	val txFromVerilog = Wire(Bool())
	val rxFromVerilog = Wire(Bool())

	uart(0).txd := txFromVerilog
	rxFromVerilog := uart(0).rxd
}

object UARTWrapperDriver extends App {
	chisel3.Driver.execute(args, () => new UARTWrapper)
}
