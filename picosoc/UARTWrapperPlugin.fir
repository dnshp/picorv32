  module UARTWrapper :
    input clock : Clock
    input reset : UInt<1>
    output io : {txd : UInt<1>, flip rxd : UInt<1>}

    inst soc of picosoc

    soc.clk <= asUInt(clock)
    soc.resetn <= reset
    io.txd <= soc.ser_tx
    soc.ser_rx <= io.rxd

    soc.irq_5 <= UInt(0)
    soc.flash_io3_di <= UInt(0)
    soc.flash_io1_di <= UInt(0)
    soc.irq_7 <= UInt(0)
    soc.flash_io2_di <= UInt(0)
    soc.flash_io0_di <= UInt(0)
    soc.irq_6 <= UInt(0)
    soc.iomem_rdata <= UInt(0)
    soc.iomem_ready <= UInt(0)
