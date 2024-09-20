//========================================================================
// AdderRippleCarry_4b_GL
//========================================================================

`ifndef ADDER_RIPPLE_CARRY_4B_GL_V
`define ADDER_RIPPLE_CARRY_4B_GL_V

`include "FullAdder_GL.v"

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

endmodule

`endif /* ADDER_RIPPLE_CARRY_4B_GL_V */

