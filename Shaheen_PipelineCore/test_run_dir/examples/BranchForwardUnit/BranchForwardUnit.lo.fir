circuit BranchForwardUnit : @[:@2.0]
  module BranchForwardUnit : @[:@3.2]
    input clock : Clock @[:@4.4]
    input reset : UInt<1> @[:@5.4]
    input io_ID_EX_rd : UInt<5> @[:@6.4]
    input io_ID_EX_MemRead : UInt<1> @[:@6.4]
    input io_EX_MEM_rd : UInt<5> @[:@6.4]
    input io_EX_MEM_MemRead : UInt<1> @[:@6.4]
    input io_MEM_WB_rd : UInt<5> @[:@6.4]
    input io_MEM_WB_MemRead : UInt<1> @[:@6.4]
    input io_rs1_s : UInt<5> @[:@6.4]
    input io_rs2_s : UInt<5> @[:@6.4]
    input io_branch : UInt<1> @[:@6.4]
    output io_forwardA : UInt<4> @[:@6.4]
    output io_forwardB : UInt<4> @[:@6.4]
  
    node _T_30 = eq(io_branch, UInt<1>("h1")) @[BranchForwardUnit.scala 22:20:@10.4]
    node _T_32 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 23:24:@12.6]
    node _T_34 = neq(io_ID_EX_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 23:59:@13.6]
    node _T_35 = and(_T_32, _T_34) @[BranchForwardUnit.scala 23:39:@14.6]
    node _T_36 = eq(io_ID_EX_rd, io_rs1_s) @[BranchForwardUnit.scala 23:83:@15.6]
    node _T_37 = and(_T_35, _T_36) @[BranchForwardUnit.scala 23:67:@16.6]
    node _T_38 = eq(io_ID_EX_rd, io_rs2_s) @[BranchForwardUnit.scala 23:113:@17.6]
    node _T_39 = and(_T_37, _T_38) @[BranchForwardUnit.scala 23:97:@18.6]
    node _T_43 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 26:31:@24.8]
    node _T_45 = neq(io_ID_EX_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 26:66:@25.8]
    node _T_46 = and(_T_43, _T_45) @[BranchForwardUnit.scala 26:46:@26.8]
    node _T_47 = eq(io_ID_EX_rd, io_rs1_s) @[BranchForwardUnit.scala 26:90:@27.8]
    node _T_48 = and(_T_46, _T_47) @[BranchForwardUnit.scala 26:74:@28.8]
    node _T_51 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 28:31:@33.10]
    node _T_53 = neq(io_ID_EX_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 28:66:@34.10]
    node _T_54 = and(_T_51, _T_53) @[BranchForwardUnit.scala 28:46:@35.10]
    node _T_55 = eq(io_ID_EX_rd, io_rs2_s) @[BranchForwardUnit.scala 28:90:@36.10]
    node _T_56 = and(_T_54, _T_55) @[BranchForwardUnit.scala 28:74:@37.10]
    node _GEN_0 = mux(_T_56, UInt<1>("h1"), UInt<1>("h0")) @[BranchForwardUnit.scala 28:105:@38.10]
    node _GEN_1 = mux(_T_48, UInt<1>("h1"), UInt<1>("h0")) @[BranchForwardUnit.scala 26:105:@29.8]
    node _GEN_2 = mux(_T_48, UInt<1>("h0"), _GEN_0) @[BranchForwardUnit.scala 26:105:@29.8]
    node _GEN_3 = mux(_T_39, UInt<1>("h1"), _GEN_1) @[BranchForwardUnit.scala 23:128:@19.6]
    node _GEN_4 = mux(_T_39, UInt<1>("h1"), _GEN_2) @[BranchForwardUnit.scala 23:128:@19.6]
    node _T_59 = neq(io_EX_MEM_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 33:25:@41.6]
    node _T_61 = neq(io_EX_MEM_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 33:61:@42.6]
    node _T_62 = and(_T_59, _T_61) @[BranchForwardUnit.scala 33:40:@43.6]
    node _T_64 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 34:24:@44.6]
    node _T_65 = eq(io_ID_EX_rd, io_rs1_s) @[BranchForwardUnit.scala 34:56:@45.6]
    node _T_66 = and(_T_64, _T_65) @[BranchForwardUnit.scala 34:40:@46.6]
    node _T_67 = eq(io_ID_EX_rd, io_rs2_s) @[BranchForwardUnit.scala 34:86:@47.6]
    node _T_68 = and(_T_66, _T_67) @[BranchForwardUnit.scala 34:70:@48.6]
    node _T_69 = not(_T_68) @[BranchForwardUnit.scala 34:9:@49.6]
    node _T_70 = and(_T_62, _T_69) @[BranchForwardUnit.scala 33:69:@50.6]
    node _T_71 = eq(io_EX_MEM_rd, io_rs1_s) @[BranchForwardUnit.scala 35:23:@51.6]
    node _T_72 = and(_T_70, _T_71) @[BranchForwardUnit.scala 34:101:@52.6]
    node _T_73 = eq(io_EX_MEM_rd, io_rs2_s) @[BranchForwardUnit.scala 35:54:@53.6]
    node _T_74 = and(_T_72, _T_73) @[BranchForwardUnit.scala 35:37:@54.6]
    node _T_78 = neq(io_EX_MEM_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 40:32:@60.8]
    node _T_80 = neq(io_EX_MEM_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 40:68:@61.8]
    node _T_81 = and(_T_78, _T_80) @[BranchForwardUnit.scala 40:47:@62.8]
    node _T_83 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 41:24:@63.8]
    node _T_84 = eq(io_ID_EX_rd, io_rs2_s) @[BranchForwardUnit.scala 41:56:@64.8]
    node _T_85 = and(_T_83, _T_84) @[BranchForwardUnit.scala 41:40:@65.8]
    node _T_86 = not(_T_85) @[BranchForwardUnit.scala 41:9:@66.8]
    node _T_87 = and(_T_81, _T_86) @[BranchForwardUnit.scala 40:76:@67.8]
    node _T_88 = eq(io_EX_MEM_rd, io_rs2_s) @[BranchForwardUnit.scala 42:23:@68.8]
    node _T_89 = and(_T_87, _T_88) @[BranchForwardUnit.scala 41:71:@69.8]
    node _T_92 = neq(io_EX_MEM_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 46:32:@74.10]
    node _T_94 = neq(io_EX_MEM_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 46:68:@75.10]
    node _T_95 = and(_T_92, _T_94) @[BranchForwardUnit.scala 46:47:@76.10]
    node _T_97 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 47:24:@77.10]
    node _T_98 = eq(io_ID_EX_rd, io_rs1_s) @[BranchForwardUnit.scala 47:56:@78.10]
    node _T_99 = and(_T_97, _T_98) @[BranchForwardUnit.scala 47:40:@79.10]
    node _T_100 = not(_T_99) @[BranchForwardUnit.scala 47:9:@80.10]
    node _T_101 = and(_T_95, _T_100) @[BranchForwardUnit.scala 46:76:@81.10]
    node _T_102 = eq(io_EX_MEM_rd, io_rs1_s) @[BranchForwardUnit.scala 48:23:@82.10]
    node _T_103 = and(_T_101, _T_102) @[BranchForwardUnit.scala 47:71:@83.10]
    node _T_106 = neq(io_EX_MEM_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 52:32:@88.12]
    node _T_108 = eq(io_EX_MEM_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 52:68:@89.12]
    node _T_109 = and(_T_106, _T_108) @[BranchForwardUnit.scala 52:47:@90.12]
    node _T_111 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 53:24:@91.12]
    node _T_112 = eq(io_ID_EX_rd, io_rs1_s) @[BranchForwardUnit.scala 53:56:@92.12]
    node _T_113 = and(_T_111, _T_112) @[BranchForwardUnit.scala 53:40:@93.12]
    node _T_114 = eq(io_ID_EX_rd, io_rs2_s) @[BranchForwardUnit.scala 53:86:@94.12]
    node _T_115 = and(_T_113, _T_114) @[BranchForwardUnit.scala 53:70:@95.12]
    node _T_116 = not(_T_115) @[BranchForwardUnit.scala 53:9:@96.12]
    node _T_117 = and(_T_109, _T_116) @[BranchForwardUnit.scala 52:76:@97.12]
    node _T_118 = eq(io_EX_MEM_rd, io_rs1_s) @[BranchForwardUnit.scala 54:23:@98.12]
    node _T_119 = and(_T_117, _T_118) @[BranchForwardUnit.scala 53:101:@99.12]
    node _T_120 = eq(io_EX_MEM_rd, io_rs2_s) @[BranchForwardUnit.scala 54:54:@100.12]
    node _T_121 = and(_T_119, _T_120) @[BranchForwardUnit.scala 54:37:@101.12]
    node _T_125 = neq(io_EX_MEM_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 59:32:@107.14]
    node _T_127 = eq(io_EX_MEM_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 59:68:@108.14]
    node _T_128 = and(_T_125, _T_127) @[BranchForwardUnit.scala 59:47:@109.14]
    node _T_130 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 60:24:@110.14]
    node _T_131 = eq(io_ID_EX_rd, io_rs2_s) @[BranchForwardUnit.scala 60:56:@111.14]
    node _T_132 = and(_T_130, _T_131) @[BranchForwardUnit.scala 60:40:@112.14]
    node _T_133 = not(_T_132) @[BranchForwardUnit.scala 60:9:@113.14]
    node _T_134 = and(_T_128, _T_133) @[BranchForwardUnit.scala 59:76:@114.14]
    node _T_135 = eq(io_EX_MEM_rd, io_rs2_s) @[BranchForwardUnit.scala 61:23:@115.14]
    node _T_136 = and(_T_134, _T_135) @[BranchForwardUnit.scala 60:71:@116.14]
    node _T_139 = eq(io_branch, UInt<1>("h1")) @[BranchForwardUnit.scala 65:29:@121.16]
    node _T_141 = neq(io_EX_MEM_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 65:53:@122.16]
    node _T_142 = and(_T_139, _T_141) @[BranchForwardUnit.scala 65:37:@123.16]
    node _T_144 = eq(io_EX_MEM_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 65:89:@124.16]
    node _T_145 = and(_T_142, _T_144) @[BranchForwardUnit.scala 65:68:@125.16]
    node _T_147 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 66:24:@126.16]
    node _T_148 = eq(io_ID_EX_rd, io_rs1_s) @[BranchForwardUnit.scala 66:56:@127.16]
    node _T_149 = and(_T_147, _T_148) @[BranchForwardUnit.scala 66:40:@128.16]
    node _T_150 = not(_T_149) @[BranchForwardUnit.scala 66:9:@129.16]
    node _T_151 = and(_T_145, _T_150) @[BranchForwardUnit.scala 65:97:@130.16]
    node _T_152 = eq(io_EX_MEM_rd, io_rs1_s) @[BranchForwardUnit.scala 67:23:@131.16]
    node _T_153 = and(_T_151, _T_152) @[BranchForwardUnit.scala 66:71:@132.16]
    node _GEN_5 = mux(_T_153, UInt<3>("h4"), _GEN_3) @[BranchForwardUnit.scala 67:38:@133.16]
    node _GEN_6 = mux(_T_136, UInt<3>("h4"), _GEN_4) @[BranchForwardUnit.scala 61:38:@117.14]
    node _GEN_7 = mux(_T_136, _GEN_3, _GEN_5) @[BranchForwardUnit.scala 61:38:@117.14]
    node _GEN_8 = mux(_T_121, UInt<3>("h4"), _GEN_7) @[BranchForwardUnit.scala 54:69:@102.12]
    node _GEN_9 = mux(_T_121, UInt<3>("h4"), _GEN_6) @[BranchForwardUnit.scala 54:69:@102.12]
    node _GEN_10 = mux(_T_103, UInt<2>("h2"), _GEN_8) @[BranchForwardUnit.scala 48:38:@84.10]
    node _GEN_11 = mux(_T_103, _GEN_4, _GEN_9) @[BranchForwardUnit.scala 48:38:@84.10]
    node _GEN_12 = mux(_T_89, UInt<2>("h2"), _GEN_11) @[BranchForwardUnit.scala 42:38:@70.8]
    node _GEN_13 = mux(_T_89, _GEN_3, _GEN_10) @[BranchForwardUnit.scala 42:38:@70.8]
    node _GEN_14 = mux(_T_74, UInt<2>("h2"), _GEN_13) @[BranchForwardUnit.scala 35:69:@55.6]
    node _GEN_15 = mux(_T_74, UInt<2>("h2"), _GEN_12) @[BranchForwardUnit.scala 35:69:@55.6]
    node _T_156 = neq(io_MEM_WB_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 74:25:@136.6]
    node _T_158 = neq(io_MEM_WB_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 74:61:@137.6]
    node _T_159 = and(_T_156, _T_158) @[BranchForwardUnit.scala 74:40:@138.6]
    node _T_161 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 76:24:@139.6]
    node _T_162 = eq(io_ID_EX_rd, io_rs1_s) @[BranchForwardUnit.scala 76:56:@140.6]
    node _T_163 = and(_T_161, _T_162) @[BranchForwardUnit.scala 76:40:@141.6]
    node _T_164 = eq(io_ID_EX_rd, io_rs2_s) @[BranchForwardUnit.scala 76:86:@142.6]
    node _T_165 = and(_T_163, _T_164) @[BranchForwardUnit.scala 76:70:@143.6]
    node _T_166 = not(_T_165) @[BranchForwardUnit.scala 76:9:@144.6]
    node _T_167 = and(_T_159, _T_166) @[BranchForwardUnit.scala 74:69:@145.6]
    node _T_169 = neq(io_EX_MEM_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 78:25:@146.6]
    node _T_170 = eq(io_EX_MEM_rd, io_rs1_s) @[BranchForwardUnit.scala 78:58:@147.6]
    node _T_171 = and(_T_169, _T_170) @[BranchForwardUnit.scala 78:41:@148.6]
    node _T_172 = eq(io_EX_MEM_rd, io_rs2_s) @[BranchForwardUnit.scala 78:89:@149.6]
    node _T_173 = and(_T_171, _T_172) @[BranchForwardUnit.scala 78:72:@150.6]
    node _T_174 = not(_T_173) @[BranchForwardUnit.scala 78:9:@151.6]
    node _T_175 = and(_T_167, _T_174) @[BranchForwardUnit.scala 76:101:@152.6]
    node _T_176 = eq(io_MEM_WB_rd, io_rs1_s) @[BranchForwardUnit.scala 79:23:@153.6]
    node _T_177 = and(_T_175, _T_176) @[BranchForwardUnit.scala 78:104:@154.6]
    node _T_178 = eq(io_MEM_WB_rd, io_rs2_s) @[BranchForwardUnit.scala 79:54:@155.6]
    node _T_179 = and(_T_177, _T_178) @[BranchForwardUnit.scala 79:37:@156.6]
    node _T_183 = neq(io_MEM_WB_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 85:32:@162.8]
    node _T_185 = neq(io_MEM_WB_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 85:68:@163.8]
    node _T_186 = and(_T_183, _T_185) @[BranchForwardUnit.scala 85:47:@164.8]
    node _T_188 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 87:26:@165.8]
    node _T_189 = eq(io_ID_EX_rd, io_rs2_s) @[BranchForwardUnit.scala 87:58:@166.8]
    node _T_190 = and(_T_188, _T_189) @[BranchForwardUnit.scala 87:42:@167.8]
    node _T_191 = not(_T_190) @[BranchForwardUnit.scala 87:11:@168.8]
    node _T_192 = and(_T_186, _T_191) @[BranchForwardUnit.scala 85:76:@169.8]
    node _T_194 = neq(io_EX_MEM_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 89:27:@170.8]
    node _T_195 = eq(io_EX_MEM_rd, io_rs2_s) @[BranchForwardUnit.scala 89:60:@171.8]
    node _T_196 = and(_T_194, _T_195) @[BranchForwardUnit.scala 89:43:@172.8]
    node _T_197 = not(_T_196) @[BranchForwardUnit.scala 89:11:@173.8]
    node _T_198 = and(_T_192, _T_197) @[BranchForwardUnit.scala 87:73:@174.8]
    node _T_199 = eq(io_MEM_WB_rd, io_rs2_s) @[BranchForwardUnit.scala 90:25:@175.8]
    node _T_200 = and(_T_198, _T_199) @[BranchForwardUnit.scala 89:75:@176.8]
    node _T_203 = neq(io_MEM_WB_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 95:32:@181.10]
    node _T_205 = neq(io_MEM_WB_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 95:68:@182.10]
    node _T_206 = and(_T_203, _T_205) @[BranchForwardUnit.scala 95:47:@183.10]
    node _T_208 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 97:26:@184.10]
    node _T_209 = eq(io_ID_EX_rd, io_rs1_s) @[BranchForwardUnit.scala 97:58:@185.10]
    node _T_210 = and(_T_208, _T_209) @[BranchForwardUnit.scala 97:42:@186.10]
    node _T_211 = not(_T_210) @[BranchForwardUnit.scala 97:11:@187.10]
    node _T_212 = and(_T_206, _T_211) @[BranchForwardUnit.scala 95:76:@188.10]
    node _T_214 = neq(io_EX_MEM_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 99:27:@189.10]
    node _T_215 = eq(io_EX_MEM_rd, io_rs1_s) @[BranchForwardUnit.scala 99:60:@190.10]
    node _T_216 = and(_T_214, _T_215) @[BranchForwardUnit.scala 99:43:@191.10]
    node _T_217 = not(_T_216) @[BranchForwardUnit.scala 99:11:@192.10]
    node _T_218 = and(_T_212, _T_217) @[BranchForwardUnit.scala 97:73:@193.10]
    node _T_219 = eq(io_MEM_WB_rd, io_rs1_s) @[BranchForwardUnit.scala 100:25:@194.10]
    node _T_220 = and(_T_218, _T_219) @[BranchForwardUnit.scala 99:75:@195.10]
    node _T_223 = neq(io_MEM_WB_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 104:34:@200.12]
    node _T_225 = eq(io_MEM_WB_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 104:70:@201.12]
    node _T_226 = and(_T_223, _T_225) @[BranchForwardUnit.scala 104:49:@202.12]
    node _T_228 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 106:24:@203.12]
    node _T_229 = eq(io_ID_EX_rd, io_rs1_s) @[BranchForwardUnit.scala 106:56:@204.12]
    node _T_230 = and(_T_228, _T_229) @[BranchForwardUnit.scala 106:40:@205.12]
    node _T_231 = eq(io_ID_EX_rd, io_rs2_s) @[BranchForwardUnit.scala 106:86:@206.12]
    node _T_232 = and(_T_230, _T_231) @[BranchForwardUnit.scala 106:70:@207.12]
    node _T_233 = not(_T_232) @[BranchForwardUnit.scala 106:9:@208.12]
    node _T_234 = and(_T_226, _T_233) @[BranchForwardUnit.scala 104:78:@209.12]
    node _T_236 = neq(io_EX_MEM_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 108:25:@210.12]
    node _T_237 = eq(io_EX_MEM_rd, io_rs1_s) @[BranchForwardUnit.scala 108:58:@211.12]
    node _T_238 = and(_T_236, _T_237) @[BranchForwardUnit.scala 108:41:@212.12]
    node _T_239 = eq(io_EX_MEM_rd, io_rs2_s) @[BranchForwardUnit.scala 108:89:@213.12]
    node _T_240 = and(_T_238, _T_239) @[BranchForwardUnit.scala 108:72:@214.12]
    node _T_241 = not(_T_240) @[BranchForwardUnit.scala 108:9:@215.12]
    node _T_242 = and(_T_234, _T_241) @[BranchForwardUnit.scala 106:101:@216.12]
    node _T_243 = eq(io_MEM_WB_rd, io_rs1_s) @[BranchForwardUnit.scala 109:23:@217.12]
    node _T_244 = and(_T_242, _T_243) @[BranchForwardUnit.scala 108:104:@218.12]
    node _T_245 = eq(io_MEM_WB_rd, io_rs2_s) @[BranchForwardUnit.scala 109:54:@219.12]
    node _T_246 = and(_T_244, _T_245) @[BranchForwardUnit.scala 109:37:@220.12]
    node _T_250 = neq(io_MEM_WB_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 115:32:@226.14]
    node _T_252 = eq(io_MEM_WB_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 115:68:@227.14]
    node _T_253 = and(_T_250, _T_252) @[BranchForwardUnit.scala 115:47:@228.14]
    node _T_255 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 117:26:@229.14]
    node _T_256 = eq(io_ID_EX_rd, io_rs2_s) @[BranchForwardUnit.scala 117:58:@230.14]
    node _T_257 = and(_T_255, _T_256) @[BranchForwardUnit.scala 117:42:@231.14]
    node _T_258 = not(_T_257) @[BranchForwardUnit.scala 117:11:@232.14]
    node _T_259 = and(_T_253, _T_258) @[BranchForwardUnit.scala 115:76:@233.14]
    node _T_261 = neq(io_EX_MEM_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 119:27:@234.14]
    node _T_262 = eq(io_EX_MEM_rd, io_rs2_s) @[BranchForwardUnit.scala 119:60:@235.14]
    node _T_263 = and(_T_261, _T_262) @[BranchForwardUnit.scala 119:43:@236.14]
    node _T_264 = not(_T_263) @[BranchForwardUnit.scala 119:11:@237.14]
    node _T_265 = and(_T_259, _T_264) @[BranchForwardUnit.scala 117:73:@238.14]
    node _T_266 = eq(io_MEM_WB_rd, io_rs2_s) @[BranchForwardUnit.scala 120:25:@239.14]
    node _T_267 = and(_T_265, _T_266) @[BranchForwardUnit.scala 119:75:@240.14]
    node _T_270 = neq(io_MEM_WB_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 125:32:@245.16]
    node _T_272 = eq(io_MEM_WB_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 125:68:@246.16]
    node _T_273 = and(_T_270, _T_272) @[BranchForwardUnit.scala 125:47:@247.16]
    node _T_275 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 127:26:@248.16]
    node _T_276 = eq(io_ID_EX_rd, io_rs1_s) @[BranchForwardUnit.scala 127:58:@249.16]
    node _T_277 = and(_T_275, _T_276) @[BranchForwardUnit.scala 127:42:@250.16]
    node _T_278 = not(_T_277) @[BranchForwardUnit.scala 127:11:@251.16]
    node _T_279 = and(_T_273, _T_278) @[BranchForwardUnit.scala 125:76:@252.16]
    node _T_281 = neq(io_EX_MEM_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 129:27:@253.16]
    node _T_282 = eq(io_EX_MEM_rd, io_rs1_s) @[BranchForwardUnit.scala 129:60:@254.16]
    node _T_283 = and(_T_281, _T_282) @[BranchForwardUnit.scala 129:43:@255.16]
    node _T_284 = not(_T_283) @[BranchForwardUnit.scala 129:11:@256.16]
    node _T_285 = and(_T_279, _T_284) @[BranchForwardUnit.scala 127:73:@257.16]
    node _T_286 = eq(io_MEM_WB_rd, io_rs1_s) @[BranchForwardUnit.scala 130:25:@258.16]
    node _T_287 = and(_T_285, _T_286) @[BranchForwardUnit.scala 129:74:@259.16]
    node _GEN_16 = mux(_T_287, UInt<3>("h5"), _GEN_14) @[BranchForwardUnit.scala 130:40:@260.16]
    node _GEN_17 = mux(_T_267, UInt<3>("h5"), _GEN_15) @[BranchForwardUnit.scala 120:40:@241.14]
    node _GEN_18 = mux(_T_267, _GEN_14, _GEN_16) @[BranchForwardUnit.scala 120:40:@241.14]
    node _GEN_19 = mux(_T_246, UInt<3>("h5"), _GEN_18) @[BranchForwardUnit.scala 109:69:@221.12]
    node _GEN_20 = mux(_T_246, UInt<3>("h5"), _GEN_17) @[BranchForwardUnit.scala 109:69:@221.12]
    node _GEN_21 = mux(_T_220, UInt<2>("h3"), _GEN_19) @[BranchForwardUnit.scala 100:40:@196.10]
    node _GEN_22 = mux(_T_220, _GEN_15, _GEN_20) @[BranchForwardUnit.scala 100:40:@196.10]
    node _GEN_23 = mux(_T_200, UInt<2>("h3"), _GEN_22) @[BranchForwardUnit.scala 90:40:@177.8]
    node _GEN_24 = mux(_T_200, _GEN_14, _GEN_21) @[BranchForwardUnit.scala 90:40:@177.8]
    node _GEN_25 = mux(_T_179, UInt<2>("h3"), _GEN_24) @[BranchForwardUnit.scala 79:69:@157.6]
    node _GEN_26 = mux(_T_179, UInt<2>("h3"), _GEN_23) @[BranchForwardUnit.scala 79:69:@157.6]
    node _T_290 = eq(io_branch, UInt<1>("h0")) @[BranchForwardUnit.scala 138:27:@265.6]
    node _T_292 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 140:26:@267.8]
    node _T_294 = neq(io_ID_EX_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 140:61:@268.8]
    node _T_295 = and(_T_292, _T_294) @[BranchForwardUnit.scala 140:41:@269.8]
    node _T_296 = eq(io_ID_EX_rd, io_rs1_s) @[BranchForwardUnit.scala 140:85:@270.8]
    node _T_297 = and(_T_295, _T_296) @[BranchForwardUnit.scala 140:69:@271.8]
    node _GEN_27 = mux(_T_297, UInt<3>("h6"), UInt<1>("h0")) @[BranchForwardUnit.scala 140:99:@272.8]
    node _T_300 = neq(io_EX_MEM_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 145:27:@275.8]
    node _T_302 = neq(io_EX_MEM_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 145:63:@276.8]
    node _T_303 = and(_T_300, _T_302) @[BranchForwardUnit.scala 145:42:@277.8]
    node _T_305 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 146:26:@278.8]
    node _T_306 = eq(io_ID_EX_rd, io_rs1_s) @[BranchForwardUnit.scala 146:58:@279.8]
    node _T_307 = and(_T_305, _T_306) @[BranchForwardUnit.scala 146:42:@280.8]
    node _T_308 = not(_T_307) @[BranchForwardUnit.scala 146:11:@281.8]
    node _T_309 = and(_T_303, _T_308) @[BranchForwardUnit.scala 145:71:@282.8]
    node _T_310 = eq(io_EX_MEM_rd, io_rs1_s) @[BranchForwardUnit.scala 147:25:@283.8]
    node _T_311 = and(_T_309, _T_310) @[BranchForwardUnit.scala 146:73:@284.8]
    node _T_314 = neq(io_EX_MEM_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 152:34:@289.10]
    node _T_316 = eq(io_EX_MEM_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 152:70:@290.10]
    node _T_317 = and(_T_314, _T_316) @[BranchForwardUnit.scala 152:49:@291.10]
    node _T_319 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 153:28:@292.10]
    node _T_320 = eq(io_ID_EX_rd, io_rs1_s) @[BranchForwardUnit.scala 153:60:@293.10]
    node _T_321 = and(_T_319, _T_320) @[BranchForwardUnit.scala 153:44:@294.10]
    node _T_322 = not(_T_321) @[BranchForwardUnit.scala 153:13:@295.10]
    node _T_323 = and(_T_317, _T_322) @[BranchForwardUnit.scala 152:78:@296.10]
    node _T_324 = eq(io_EX_MEM_rd, io_rs1_s) @[BranchForwardUnit.scala 154:27:@297.10]
    node _T_325 = and(_T_323, _T_324) @[BranchForwardUnit.scala 153:75:@298.10]
    node _GEN_28 = mux(_T_325, UInt<4>("h9"), _GEN_27) @[BranchForwardUnit.scala 154:42:@299.10]
    node _GEN_29 = mux(_T_311, UInt<3>("h7"), _GEN_28) @[BranchForwardUnit.scala 147:40:@285.8]
    node _T_328 = neq(io_MEM_WB_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 162:27:@302.8]
    node _T_330 = neq(io_MEM_WB_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 162:63:@303.8]
    node _T_331 = and(_T_328, _T_330) @[BranchForwardUnit.scala 162:42:@304.8]
    node _T_333 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 164:26:@305.8]
    node _T_334 = eq(io_ID_EX_rd, io_rs1_s) @[BranchForwardUnit.scala 164:58:@306.8]
    node _T_335 = and(_T_333, _T_334) @[BranchForwardUnit.scala 164:42:@307.8]
    node _T_336 = not(_T_335) @[BranchForwardUnit.scala 164:11:@308.8]
    node _T_337 = and(_T_331, _T_336) @[BranchForwardUnit.scala 162:71:@309.8]
    node _T_339 = neq(io_EX_MEM_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 166:27:@310.8]
    node _T_340 = eq(io_EX_MEM_rd, io_rs1_s) @[BranchForwardUnit.scala 166:60:@311.8]
    node _T_341 = and(_T_339, _T_340) @[BranchForwardUnit.scala 166:43:@312.8]
    node _T_342 = not(_T_341) @[BranchForwardUnit.scala 166:11:@313.8]
    node _T_343 = and(_T_337, _T_342) @[BranchForwardUnit.scala 164:73:@314.8]
    node _T_344 = eq(io_MEM_WB_rd, io_rs1_s) @[BranchForwardUnit.scala 167:25:@315.8]
    node _T_345 = and(_T_343, _T_344) @[BranchForwardUnit.scala 166:75:@316.8]
    node _T_348 = neq(io_MEM_WB_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 172:35:@321.10]
    node _T_350 = eq(io_MEM_WB_MemRead, UInt<1>("h1")) @[BranchForwardUnit.scala 172:71:@322.10]
    node _T_351 = and(_T_348, _T_350) @[BranchForwardUnit.scala 172:50:@323.10]
    node _T_353 = neq(io_ID_EX_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 174:26:@324.10]
    node _T_354 = eq(io_ID_EX_rd, io_rs1_s) @[BranchForwardUnit.scala 174:58:@325.10]
    node _T_355 = and(_T_353, _T_354) @[BranchForwardUnit.scala 174:42:@326.10]
    node _T_356 = not(_T_355) @[BranchForwardUnit.scala 174:11:@327.10]
    node _T_357 = and(_T_351, _T_356) @[BranchForwardUnit.scala 172:79:@328.10]
    node _T_359 = neq(io_EX_MEM_rd, UInt<1>("h0")) @[BranchForwardUnit.scala 176:27:@329.10]
    node _T_360 = eq(io_EX_MEM_rd, io_rs1_s) @[BranchForwardUnit.scala 176:60:@330.10]
    node _T_361 = and(_T_359, _T_360) @[BranchForwardUnit.scala 176:43:@331.10]
    node _T_362 = not(_T_361) @[BranchForwardUnit.scala 176:11:@332.10]
    node _T_363 = and(_T_357, _T_362) @[BranchForwardUnit.scala 174:73:@333.10]
    node _T_364 = eq(io_MEM_WB_rd, io_rs1_s) @[BranchForwardUnit.scala 177:25:@334.10]
    node _T_365 = and(_T_363, _T_364) @[BranchForwardUnit.scala 176:75:@335.10]
    node _GEN_30 = mux(_T_365, UInt<4>("ha"), _GEN_29) @[BranchForwardUnit.scala 177:40:@336.10]
    node _GEN_31 = mux(_T_345, UInt<4>("h8"), _GEN_30) @[BranchForwardUnit.scala 167:40:@317.8]
    node _GEN_32 = mux(_T_290, _GEN_31, UInt<1>("h0")) @[BranchForwardUnit.scala 138:36:@266.6]
    node _GEN_33 = mux(_T_30, _GEN_25, _GEN_32) @[BranchForwardUnit.scala 22:29:@11.4]
    node _GEN_34 = mux(_T_30, _GEN_26, UInt<1>("h0")) @[BranchForwardUnit.scala 22:29:@11.4]
    io_forwardA <= _GEN_33 @[BranchForwardUnit.scala 19:17:@8.4 BranchForwardUnit.scala 24:21:@20.8 BranchForwardUnit.scala 27:21:@30.10 BranchForwardUnit.scala 37:21:@56.8 BranchForwardUnit.scala 50:21:@85.12 BranchForwardUnit.scala 56:21:@103.14 BranchForwardUnit.scala 69:21:@134.18 BranchForwardUnit.scala 81:21:@158.8 BranchForwardUnit.scala 102:23:@197.12 BranchForwardUnit.scala 111:21:@222.14 BranchForwardUnit.scala 132:23:@261.18 BranchForwardUnit.scala 141:23:@273.10 BranchForwardUnit.scala 149:23:@286.10 BranchForwardUnit.scala 156:25:@300.12 BranchForwardUnit.scala 169:23:@318.10 BranchForwardUnit.scala 179:23:@337.12]
    io_forwardB <= _GEN_34 @[BranchForwardUnit.scala 20:17:@9.4 BranchForwardUnit.scala 25:21:@21.8 BranchForwardUnit.scala 29:21:@39.12 BranchForwardUnit.scala 38:21:@57.8 BranchForwardUnit.scala 44:21:@71.10 BranchForwardUnit.scala 57:21:@104.14 BranchForwardUnit.scala 63:21:@118.16 BranchForwardUnit.scala 82:21:@159.8 BranchForwardUnit.scala 92:23:@178.10 BranchForwardUnit.scala 112:21:@223.14 BranchForwardUnit.scala 122:23:@242.16]
