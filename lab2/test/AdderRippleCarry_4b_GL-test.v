//========================================================================
// AdderRippleCarry_4b_GL-test
//========================================================================

`include "ece2300/ece2300-test.v"
`include "lab2/AdderRippleCarry_4b_GL.v"

module Top();

  //----------------------------------------------------------------------
  // Setup
  //----------------------------------------------------------------------

  TestUtils t();

  //----------------------------------------------------------------------
  // Instantiate design under test
  //----------------------------------------------------------------------

  logic [3:0] in0;
  logic [3:0] in1;
  logic       cin;
  logic       cout;
  logic [3:0] sum;

  AdderRippleCarry_4b_GL dut
  (
    .in0  (in0),
    .in1  (in1),
    .cin  (cin),
    .cout (cout),
    .sum  (sum)
  );

  //----------------------------------------------------------------------
  // check
  //----------------------------------------------------------------------
  // We set the inputs, wait 8 tau, check the outputs, wait 2 tau. Each
  // check will take a total of 10 tau.

  task check
  (
    input logic [3:0] in0_,
    input logic [3:0] in1_,
    input logic       cin_,
    input logic       cout_,
    input logic [3:0] sum_
  );
    if ( !t.failed ) begin
      t.num_checks += 1;

      #1;

      in0 = in0_;
      in1 = in1_;
      cin = cin_;

      #8;

      if ( t.n != 0 )
        $display( "%3d: %b + %b + %b (%2d + %2d + %b) > %b %b (%2d)", t.cycles,
                  in0, in1, cin, in0, in1, cin, cout, sum, sum );

      `ECE2300_CHECK_EQ( cout, cout_ );
      `ECE2300_CHECK_EQ( sum,  sum_ );

      #1;

    end
  endtask

  //----------------------------------------------------------------------
  // test_case_1_basic
  //----------------------------------------------------------------------

  task test_case_1_basic();
    t.test_case_begin( "test_case_1_basic" );

    //     in0      in1      cin   cout  sum
    check( 4'b0000, 4'b0000, 1'b0, 1'b0, 4'b0000 );
    check( 4'b0001, 4'b0001, 1'b0, 1'b0, 4'b0010 );

    t.test_case_end();
  endtask

  //''' ACTIVITY '''''''''''''''''''''''''''''''''''''''''''''''''''''''
  // Add directed test cases
  //''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

  //''' ACTIVITY '''''''''''''''''''''''''''''''''''''''''''''''''''''''
  // Add random test case
  //''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

  //----------------------------------------------------------------------
  // main
  //----------------------------------------------------------------------

  initial begin
    t.test_bench_begin();

    if ((t.n <= 0) || (t.n == 1)) test_case_1_basic();

    //''' ACTIVITY '''''''''''''''''''''''''''''''''''''''''''''''''''''''
    // Add calls to new directed and random test cases here
    //''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

    t.test_bench_end();
  end

endmodule
