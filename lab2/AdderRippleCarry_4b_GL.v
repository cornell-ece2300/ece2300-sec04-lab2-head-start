//========================================================================
// AdderRippleCarry_4b_GL
//========================================================================

`ifndef ADDER_RIPPLE_CARRY_4B_GL_V
`define ADDER_RIPPLE_CARRY_4B_GL_V

`include "ece2300/ece2300-misc.v"
`include "lab2/FullAdder_GL.v"

module AdderRippleCarry_4b_GL
(
  (* keep=1 *) input  wire [3:0] in0,
  (* keep=1 *) input  wire [3:0] in1,
  (* keep=1 *) input  wire       cin,
  (* keep=1 *) output wire       cout,
  (* keep=1 *) output wire [3:0] sum
);

  //''' LAB ASSIGNMENT '''''''''''''''''''''''''''''''''''''''''''''''''''
  // Implement 4-bit ripple carry adder using FullAdder_GL module
  //''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

  `ECE2300_UNUSED( in0 );
  `ECE2300_UNUSED( in1 );
  `ECE2300_UNUSED( cin );
  `ECE2300_FLOATING( cout );
  `ECE2300_FLOATING( sum );

endmodule

`endif /* ADDER_RIPPLE_CARRY_4B_GL_V */

