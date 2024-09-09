//========================================================================
// PairTripleDetector_GL
//========================================================================

`ifndef PAIR_TRIPLE_DETECTOR_GL_V
`define PAIR_TRIPLE_DETECTOR_GL_V

module PairTripleDetector_GL
(
  input  wire in0,
  input  wire in1,
  input  wire in2,
  output wire out
);

  //''' ACTIVITY '''''''''''''''''''''''''''''''''''''''''''''''''''''''''
  // Implement pair/triple detector using explicit gate-level modeling
  //''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

wire w;
wire x;
wire y;

or(w, in1, in0);

and(x, in1, in0);

and(y, in2, w);

or(out, y, x);

endmodule

`endif /* PAIR_TRIPLE_DETECTOR_GL_V */

