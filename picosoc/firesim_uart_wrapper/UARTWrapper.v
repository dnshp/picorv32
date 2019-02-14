`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif

module UARTWrapper(
  input   clock,
  input   reset,
  output  uart_0_txd,
  input   uart_0_rxd
);
  assign uart_0_txd = 1'h0;
endmodule
