circuit ForwardingUnit : @[:@2.0]
  module ForwardingUnit : @[:@3.2]
    input clock : Clock @[:@4.4]
    input reset : UInt<1> @[:@5.4]
    input io_RegWrite : UInt<1> @[:@6.4]
    input io_EX_MEM_rd : UInt<5> @[:@6.4]
    input io_MEM_WB_rd : UInt<5> @[:@6.4]
    input io_ID_EX_rs1_s : UInt<5> @[:@6.4]
    input io_ID_EX_rs2_s : UInt<5> @[:@6.4]
    output io_forwardA : UInt<2> @[:@6.4]
    output io_forwardB : UInt<2> @[:@6.4]
  
    node _T_22 = eq(io_RegWrite, UInt<1>("h1")) @[ForwardingUnit.scala 19:27:@10.4]
    node _T_24 = neq(io_EX_MEM_rd, UInt<1>("h0")) @[ForwardingUnit.scala 19:54:@11.4]
    node _T_25 = and(_T_22, _T_24) @[ForwardingUnit.scala 19:38:@12.4]
    node _T_26 = eq(io_EX_MEM_rd, io_ID_EX_rs1_s) @[ForwardingUnit.scala 20:36:@14.6]
    node _T_28 = eq(io_EX_MEM_rd, io_ID_EX_rs2_s) @[ForwardingUnit.scala 21:41:@19.8]
    node _GEN_0 = mux(_T_28, UInt<2>("h2"), UInt<1>("h0")) @[ForwardingUnit.scala 21:60:@20.8]
    node _GEN_1 = mux(_T_26, UInt<2>("h2"), UInt<1>("h0")) @[ForwardingUnit.scala 20:55:@15.6]
    node _GEN_2 = mux(_T_26, UInt<1>("h0"), _GEN_0) @[ForwardingUnit.scala 20:55:@15.6]
    node _GEN_3 = mux(_T_25, _GEN_1, UInt<1>("h0")) @[ForwardingUnit.scala 19:69:@13.4]
    node _GEN_4 = mux(_T_25, _GEN_2, UInt<1>("h0")) @[ForwardingUnit.scala 19:69:@13.4]
    node _T_31 = eq(io_RegWrite, UInt<1>("h1")) @[ForwardingUnit.scala 23:27:@24.4]
    node _T_33 = neq(io_MEM_WB_rd, UInt<1>("h0")) @[ForwardingUnit.scala 23:54:@25.4]
    node _T_34 = and(_T_31, _T_33) @[ForwardingUnit.scala 23:38:@26.4]
    node _T_35 = eq(io_MEM_WB_rd, io_ID_EX_rs1_s) @[ForwardingUnit.scala 24:36:@28.6]
    node _T_37 = eq(io_MEM_WB_rd, io_ID_EX_rs2_s) @[ForwardingUnit.scala 25:41:@33.8]
    node _GEN_5 = mux(_T_37, UInt<1>("h1"), _GEN_4) @[ForwardingUnit.scala 25:60:@34.8]
    node _GEN_6 = mux(_T_35, UInt<1>("h1"), _GEN_3) @[ForwardingUnit.scala 24:55:@29.6]
    node _GEN_7 = mux(_T_35, _GEN_4, _GEN_5) @[ForwardingUnit.scala 24:55:@29.6]
    node _GEN_8 = mux(_T_34, _GEN_6, _GEN_3) @[ForwardingUnit.scala 23:69:@27.4]
    node _GEN_9 = mux(_T_34, _GEN_7, _GEN_4) @[ForwardingUnit.scala 23:69:@27.4]
    io_forwardA <= _GEN_8 @[ForwardingUnit.scala 17:21:@8.4 ForwardingUnit.scala 20:68:@16.8 ForwardingUnit.scala 24:68:@30.8]
    io_forwardB <= _GEN_9 @[ForwardingUnit.scala 18:21:@9.4 ForwardingUnit.scala 21:73:@21.10 ForwardingUnit.scala 25:73:@35.10]
