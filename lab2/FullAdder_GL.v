//========================================================================
// FullAdder_GL
//========================================================================

`ifndef FULL_ADDER_GL_V
`define FULL_ADDER_GL_V

`include "ece2300/ece2300-misc.v"

module FullAdder_GL
(
  (* keep=1 *) input  wire in0,
  (* keep=1 *) input  wire in1,
  (* keep=1 *) input  wire cin,
  (* keep=1 *) output wire cout,
  (* keep=1 *) output wire sum
);

  //''' ACTIVITY '''''''''''''''''''''''''''''''''''''''''''''''''''''''''
  // Implement full adder w/ explicit gate-level modeling
  //''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

  `ECE2300_UNUSED( in0 );
  `ECE2300_UNUSED( in1 );
  `ECE2300_UNUSED( cin );
  `ECE2300_FLOATING( cout );

endmodule

`endif /* FULL_ADDER_GL_V */

