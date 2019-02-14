;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.11, sbtVersion: 0.13.16, builtAtString: 2017-10-06 20:55:20.367, builtAtMillis: 1507323320367
circuit UARTWrapper : 
  module UARTWrapper : 
    input clock : Clock
    input reset : UInt<1>
    output uart : {txd : UInt<1>, flip rxd : UInt<1>}[1]
    
    clock is invalid
    reset is invalid
    uart is invalid
    reg testreg : UInt<8>, clock with : (reset => (reset, UInt<8>("h0d"))) @[UARTWrapper.scala 13:30]
    wire txFromVerilog : UInt<1> @[UARTWrapper.scala 15:33]
    txFromVerilog is invalid @[UARTWrapper.scala 15:33]
    wire rxFromVerilog : UInt<1> @[UARTWrapper.scala 16:33]
    rxFromVerilog is invalid @[UARTWrapper.scala 16:33]
    uart[0].txd <= txFromVerilog @[UARTWrapper.scala 18:21]
    rxFromVerilog <= uart[0].rxd @[UARTWrapper.scala 19:23]
    
