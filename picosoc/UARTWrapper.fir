;buildInfoPackage: chisel3, version: 3.2-SNAPSHOT, scalaVersion: 2.12.4, sbtVersion: 1.1.1
circuit UARTWrapper : 
  module UARTWrapper : 
    input clock : Clock
    input reset : UInt<1>
    output uart : {txd : UInt<1>, flip rxd : UInt<1>}[1]
    output mem_axi4 : {0 : {aw : {flip ready : UInt<1>, valid : UInt<1>, bits : {id : UInt<1>, addr : UInt<32>, len : UInt<8>, size : UInt<3>, burst : UInt<2>, lock : UInt<1>, cache : UInt<4>, prot : UInt<3>, qos : UInt<4>}}, w : {flip ready : UInt<1>, valid : UInt<1>, bits : {data : UInt<64>, strb : UInt<8>, last : UInt<1>}}, flip b : {flip ready : UInt<1>, valid : UInt<1>, bits : {id : UInt<1>, resp : UInt<2>}}, ar : {flip ready : UInt<1>, valid : UInt<1>, bits : {id : UInt<1>, addr : UInt<32>, len : UInt<8>, size : UInt<3>, burst : UInt<2>, lock : UInt<1>, cache : UInt<4>, prot : UInt<3>, qos : UInt<4>}}, flip r : {flip ready : UInt<1>, valid : UInt<1>, bits : {id : UInt<1>, data : UInt<64>, resp : UInt<2>, last : UInt<1>}}}}
    
    wire txFromVerilog : UInt<1> @[Generator.scala 85:33]
    wire rxFromVerilog : UInt<1> @[Generator.scala 86:33]
    txFromVerilog is invalid @[Generator.scala 88:23]
    uart[0].txd <= txFromVerilog @[Generator.scala 89:21]
    rxFromVerilog <= uart[0].rxd @[Generator.scala 90:23]
    mem_axi4.0.aw.bits.id is invalid @[Generator.scala 92:32]
    mem_axi4.0.aw.bits.addr is invalid @[Generator.scala 93:34]
    mem_axi4.0.aw.bits.len is invalid @[Generator.scala 94:33]
    mem_axi4.0.aw.bits.size is invalid @[Generator.scala 95:34]
    mem_axi4.0.aw.bits.burst is invalid @[Generator.scala 96:35]
    mem_axi4.0.aw.bits.lock is invalid @[Generator.scala 97:34]
    mem_axi4.0.aw.bits.cache is invalid @[Generator.scala 98:35]
    mem_axi4.0.aw.bits.prot is invalid @[Generator.scala 99:34]
    mem_axi4.0.aw.bits.qos is invalid @[Generator.scala 100:33]
    mem_axi4.0.aw.valid is invalid @[Generator.scala 101:30]
    mem_axi4.0.ar.bits.id is invalid @[Generator.scala 103:32]
    mem_axi4.0.ar.bits.addr is invalid @[Generator.scala 104:34]
    mem_axi4.0.ar.bits.len is invalid @[Generator.scala 105:33]
    mem_axi4.0.ar.bits.size is invalid @[Generator.scala 106:34]
    mem_axi4.0.ar.bits.burst is invalid @[Generator.scala 107:35]
    mem_axi4.0.ar.bits.lock is invalid @[Generator.scala 108:34]
    mem_axi4.0.ar.bits.cache is invalid @[Generator.scala 109:35]
    mem_axi4.0.ar.bits.prot is invalid @[Generator.scala 110:34]
    mem_axi4.0.ar.bits.qos is invalid @[Generator.scala 111:33]
    mem_axi4.0.ar.valid is invalid @[Generator.scala 112:30]
    mem_axi4.0.w.bits.data is invalid @[Generator.scala 114:33]
    mem_axi4.0.w.bits.strb is invalid @[Generator.scala 115:33]
    mem_axi4.0.w.bits.last is invalid @[Generator.scala 116:33]
    mem_axi4.0.w.valid is invalid @[Generator.scala 117:29]
    mem_axi4.0.b.ready is invalid @[Generator.scala 119:29]
    mem_axi4.0.r.ready is invalid @[Generator.scala 121:29]
    
