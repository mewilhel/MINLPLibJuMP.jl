using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88]
@variable(m, x[x_Idx] >= 0)


# ----- Constraints ----- #
@constraint(m, e1, -53.1533839248115*b[1]-177.583181382496*b[2]-80.6428266602653*b[3]-231.95916447606*b[4]-394.432428138298*b[5]-444.974070084717*b[6]-459.794817811195*b[7]-695.629649483288*b[8]-323.203981426319*b[9]-107.360282998709*b[10]-361.859887112392*b[11]-367.306912008994*b[12]-282.872191198352*b[13]-44.0762253696262*b[14]-317.877544418109*b[15]-316.134390405973*b[16]-100.330419683223*b[17]-127.926900226391*b[18]-139.263247551061*b[19]-254.000222645919*b[20]-194.145316904472*b[21]-116.037290266393*b[22]-222.112787515659*b[23]-263.356262140469*b[24]-571.289311491824*b[25]-347.171110484916*b[26]-646.58041890394*b[27]-747.500077392939*b[28]-267.180266374013*b[29]-432.187536801291*b[30]-223.193932764969*b[31]-305.606281730255*b[32]-484.148164648118*b[33]-255.18826726263*b[34]-500.409280467716*b[35]-357.348895559311*b[36]-154.81861346409*b[37]-47.9482185242841*b[38]-178.01500365671*b[39]-197.299183634545*b[40]-110.221327583974*b[41]-276.335219124972*b[42]-66.6367550739739*b[43]-215.126920582161*b[44]-251.865680365869*b[45]-259.485555817488*b[46]-325.903992788768*b[47]-533.263861665761*b[48]-365.289467328013*b[49]-698.425848556873*b[50]-342.854784735801*b[51]-672.157315207286*b[52]-278.522996301316*b[53]-127.656852798454*b[54]-302.312726976851*b[55]-281.218053524739*b[56]-629.708028128623*b[57]-303.067014885745*b[58]-662.424721658793*b[59]-521.27200594153*b[60]-313.6973235*b[61]-136.4460104172*b[62]-95.4447793733688*b[63]-401.4402965*b[64]-160.307673981768*b[65]-107.445134115433*b[66]-456.70672375*b[67]-163.727629808624*b[68]-103.975094190251*b[69]-349.50038725*b[70]-137.744259121245*b[71]-91.7174793486262*b[72]-74750.0077392939*x[73]-74750.0077392939*x[74]-74750.0077392939*x[75]-74750.0077392939*x[76]+objvar == 0.0)
@constraint(m, e2, 0.609376132*b[1]+1.180016336*b[5]+0.967493052*b[9]+1.004918785*b[13]+0.698898063*b[17]+0.540292599*b[21]+1.460452986*b[25]+0.811980791*b[29]+0.973180988*b[33]+0.544914116*b[37]+0.78515855*b[41]+1.312281472*b[45]+1.346783152*b[49]+0.635811295*b[53]+1.327207817*b[57]-3.22664386875*x[77]-6.4532877375*x[78]-9.67993160625*x[79] == 0.0)
@constraint(m, e3, 0.609376132*b[2]+1.180016336*b[6]+0.967493052*b[10]+1.004918785*b[14]+0.698898063*b[18]+0.540292599*b[22]+1.460452986*b[26]+0.811980791*b[30]+0.973180988*b[34]+0.544914116*b[38]+0.78515855*b[42]+1.312281472*b[46]+1.346783152*b[50]+0.635811295*b[54]+1.327207817*b[58]-3.1952881621875*x[80]-6.390576324375*x[81]-9.5858644865625*x[82] == 0.0)
@constraint(m, e4, 0.609376132*b[3]+1.180016336*b[7]+0.967493052*b[11]+1.004918785*b[15]+0.698898063*b[19]+0.540292599*b[23]+1.460452986*b[27]+0.811980791*b[31]+0.973180988*b[35]+0.544914116*b[39]+0.78515855*b[43]+1.312281472*b[47]+1.346783152*b[51]+0.635811295*b[55]+1.327207817*b[59]-2.6301391753125*x[83]-5.260278350625*x[84]-7.8904175259375*x[85] == 0.0)
@constraint(m, e5, 0.609376132*b[4]+1.180016336*b[8]+0.967493052*b[12]+1.004918785*b[16]+0.698898063*b[20]+0.540292599*b[24]+1.460452986*b[28]+0.811980791*b[32]+0.973180988*b[36]+0.544914116*b[40]+0.78515855*b[44]+1.312281472*b[48]+1.346783152*b[52]+0.635811295*b[56]+1.327207817*b[60]-2.6743241765625*x[86]-5.348648353125*x[87]-8.0229725296875*x[88] == 0.0)
@constraint(m, e6, b[1]+b[2]+b[3]+b[4] == 1.0)
@constraint(m, e7, b[5]+b[6]+b[7]+b[8] == 1.0)
@constraint(m, e8, b[9]+b[10]+b[11]+b[12] == 1.0)
@constraint(m, e9, b[13]+b[14]+b[15]+b[16] == 1.0)
@constraint(m, e10, b[17]+b[18]+b[19]+b[20] == 1.0)
@constraint(m, e11, b[21]+b[22]+b[23]+b[24] == 1.0)
@constraint(m, e12, b[25]+b[26]+b[27]+b[28] == 1.0)
@constraint(m, e13, b[29]+b[30]+b[31]+b[32] == 1.0)
@constraint(m, e14, b[33]+b[34]+b[35]+b[36] == 1.0)
@constraint(m, e15, b[37]+b[38]+b[39]+b[40] == 1.0)
@constraint(m, e16, b[41]+b[42]+b[43]+b[44] == 1.0)
@constraint(m, e17, b[45]+b[46]+b[47]+b[48] == 1.0)
@constraint(m, e18, b[49]+b[50]+b[51]+b[52] == 1.0)
@constraint(m, e19, b[53]+b[54]+b[55]+b[56] == 1.0)
@constraint(m, e20, b[57]+b[58]+b[59]+b[60] == 1.0)
@constraint(m, e21, b[61]+b[62]+b[63] <= 1.0)
@constraint(m, e22, b[64]+b[65]+b[66] <= 1.0)
@constraint(m, e23, b[67]+b[68]+b[69] <= 1.0)
@constraint(m, e24, b[70]+b[71]+b[72] <= 1.0)
@constraint(m, e25, -b[61]+x[77] <= 0.0)
@constraint(m, e26, -b[62]+x[78] <= 0.0)
@constraint(m, e27, -b[63]+x[79] <= 0.0)
@constraint(m, e28, -b[64]+x[80] <= 0.0)
@constraint(m, e29, -b[65]+x[81] <= 0.0)
@constraint(m, e30, -b[66]+x[82] <= 0.0)
@constraint(m, e31, -b[67]+x[83] <= 0.0)
@constraint(m, e32, -b[68]+x[84] <= 0.0)
@constraint(m, e33, -b[69]+x[85] <= 0.0)
@constraint(m, e34, -b[70]+x[86] <= 0.0)
@constraint(m, e35, -b[71]+x[87] <= 0.0)
@constraint(m, e36, -b[72]+x[88] <= 0.0)
@NLconstraint(m, e37, x[77]*b[61]+x[77]*x[73]-x[73]*b[61] <= 0.0)
@NLconstraint(m, e38, x[78]*b[62]+x[78]*x[73]-x[73]*b[62] <= 0.0)
@NLconstraint(m, e39, x[79]*b[63]+x[79]*x[73]-x[73]*b[63] <= 0.0)
@NLconstraint(m, e40, x[80]*b[64]+x[80]*x[74]-x[74]*b[64] <= 0.0)
@NLconstraint(m, e41, x[81]*b[65]+x[81]*x[74]-x[74]*b[65] <= 0.0)
@NLconstraint(m, e42, x[82]*b[66]+x[82]*x[74]-x[74]*b[66] <= 0.0)
@NLconstraint(m, e43, x[83]*b[67]+x[83]*x[75]-x[75]*b[67] <= 0.0)
@NLconstraint(m, e44, x[84]*b[68]+x[84]*x[75]-x[75]*b[68] <= 0.0)
@NLconstraint(m, e45, x[85]*b[69]+x[85]*x[75]-x[75]*b[69] <= 0.0)
@NLconstraint(m, e46, x[86]*b[70]+x[86]*x[76]-x[76]*b[70] <= 0.0)
@NLconstraint(m, e47, x[87]*b[71]+x[87]*x[76]-x[76]*b[71] <= 0.0)
@NLconstraint(m, e48, x[88]*b[72]+x[88]*x[76]-x[76]*b[72] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
