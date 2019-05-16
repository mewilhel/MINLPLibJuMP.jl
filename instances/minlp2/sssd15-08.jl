using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176]
@variable(m, x[x_Idx] >= 0)


# ----- Constraints ----- #
@constraint(m, e1, -403.928572687557*b[1]-152.992741540361*b[2]-267.315589205704*b[3]-401.957253171747*b[4]-239.900413376196*b[5]-172.190748942287*b[6]-242.754569605376*b[7]-206.00422281341*b[8]-175.512360171018*b[9]-12.4456890694952*b[10]-95.1129504127459*b[11]-163.523864888208*b[12]-136.749750630694*b[13]-183.460227957173*b[14]-154.161364707845*b[15]-58.2220762837777*b[16]-427.797333694278*b[17]-124.146285420687*b[18]-281.762350319908*b[19]-416.122892408842*b[20]-286.880720364618*b[21]-171.930365706852*b[22]-298.680284192437*b[23]-212.446553403468*b[24]-334.799175421099*b[25]-166.360551160919*b[26]-261.524865566971*b[27]-321.118189558705*b[28]-275.112120282415*b[29]-70.1440860194197*b[30]-281.389498973428*b[31]-225.606388157132*b[32]-321.213816864959*b[33]-71.9883302424501*b[34]-169.588450009557*b[35]-291.06773760337*b[36]-283.136668462665*b[37]-418.102856274321*b[38]-323.382162238167*b[39]-109.329676669547*b[40]-225.077476533111*b[41]-292.549188246279*b[42]-256.821062390988*b[43]-181.735382103635*b[44]-361.637553977341*b[45]-487.443715088842*b[46]-391.614198813426*b[47]-276.780369289256*b[48]-790.809160300441*b[49]-572.306788163427*b[50]-710.561007303222*b[51]-710.424717790653*b[52]-882.480677740369*b[53]-746.52609026712*b[54]-932.032155531379*b[55]-673.014016071675*b[56]-415.137891763513*b[57]-24.1331183147668*b[58]-232.723756037565*b[59]-385.530297939342*b[60]-328.99787719123*b[61]-412.551506227386*b[62]-368.4253530904*b[63]-149.097324374568*b[64]-505.111125566583*b[65]-324.408884140539*b[66]-422.192328810933*b[67]-433.424841813569*b[68]-590.521463309364*b[69]-601.187176017906*b[70]-639.549861073539*b[71]-393.266050752522*b[72]-317.266722109018*b[73]-366.343507824765*b[74]-278.701740808319*b[75]-360.414608909582*b[76]-163.468646330858*b[77]-496.33685624632*b[78]-135.080317454783*b[79]-291.219332583259*b[80]-60.7098769607628*b[81]-257.274009667912*b[82]-109.739073857234*b[83]-105.840898609517*b[84]-149.608079935928*b[85]-478.2765537338*b[86]-175.640633384092*b[87]-164.991725574781*b[88]-370.179004516539*b[89]-456.332727530502*b[90]-323.598387892417*b[91]-428.625530616724*b[92]-176.797739228846*b[93]-657.950143580026*b[94]-146.134286318179*b[95]-347.137285556827*b[96]-459.855709875116*b[97]-206.994357545204*b[98]-317.109585585788*b[99]-461.635447603175*b[100]-270.249812459436*b[101]-176.621455199898*b[102]-266.565650581812*b[103]-255.042767652375*b[104]-688.990984467753*b[105]-342.921309942336*b[106]-508.744698659858*b[107]-686.009170292228*b[108]-457.444445796545*b[109]-133.755629117181*b[110]-451.235917636358*b[111]-427.625644498357*b[112]-275.559617400364*b[113]-356.414463245256*b[114]-238.594038182377*b[115]-323.736842820792*b[116]-123.509577347529*b[117]-537.671376447504*b[118]-104.741456798329*b[119]-261.777653762851*b[120]-343.78539425*b[121]-113.508450322244*b[122]-69.177220392612*b[123]-264.047028*b[124]-87.3113122712859*b[125]-53.2512330089256*b[126]-390.47730275*b[127]-123.63305929533*b[128]-73.7850337614663*b[129]-406.29941025*b[130]-126.736316912988*b[131]-75.0745406137203*b[132]-283.160272*b[133]-95.8513476067592*b[134]-59.1487898247813*b[135]-422.01298775*b[136]-132.224826373859*b[137]-78.5002039603394*b[138]-269.10096475*b[139]-95.9362994616171*b[140]-60.754974511923*b[141]-395.712942*b[142]-123.433440930338*b[143]-73.1178281922949*b[144]-93203.2155531379*x[145]-93203.2155531379*x[146]-93203.2155531379*x[147]-93203.2155531379*x[148]-93203.2155531379*x[149]-93203.2155531379*x[150]-93203.2155531379*x[151]-93203.2155531379*x[152]+objvar == 0.0)
@constraint(m, e2, 0.934836132*b[1]+0.594101056*b[9]+1.006108092*b[17]+0.536490725*b[25]+1.208018103*b[33]+0.741534279*b[41]+1.434929666*b[49]+1.362989351*b[57]+1.354757088*b[65]+0.875104896*b[73]+0.83020157*b[81]+1.181151032*b[89]+0.985426772*b[97]+1.234184015*b[105]+0.980634977*b[113]-1.54666509375*x[153]-3.0933301875*x[154]-4.63999528125*x[155] == 0.0)
@constraint(m, e3, 0.934836132*b[2]+0.594101056*b[10]+1.006108092*b[18]+0.536490725*b[26]+1.208018103*b[34]+0.741534279*b[42]+1.434929666*b[50]+1.362989351*b[58]+1.354757088*b[66]+0.875104896*b[74]+0.83020157*b[82]+1.181151032*b[90]+0.985426772*b[98]+1.234184015*b[106]+0.980634977*b[114]-1.19326126546875*x[156]-2.3865225309375*x[157]-3.57978379640625*x[158] == 0.0)
@constraint(m, e4, 0.934836132*b[3]+0.594101056*b[11]+1.006108092*b[19]+0.536490725*b[27]+1.208018103*b[35]+0.741534279*b[43]+1.434929666*b[51]+1.362989351*b[59]+1.354757088*b[67]+0.875104896*b[75]+0.83020157*b[83]+1.181151032*b[91]+0.985426772*b[99]+1.234184015*b[107]+0.980634977*b[115]-1.54916706890625*x[159]-3.0983341378125*x[160]-4.64750120671875*x[161] == 0.0)
@constraint(m, e5, 0.934836132*b[4]+0.594101056*b[12]+1.006108092*b[20]+0.536490725*b[28]+1.208018103*b[36]+0.741534279*b[44]+1.434929666*b[52]+1.362989351*b[60]+1.354757088*b[68]+0.875104896*b[76]+0.83020157*b[84]+1.181151032*b[92]+0.985426772*b[100]+1.234184015*b[108]+0.980634977*b[116]-1.54133366953125*x[162]-3.0826673390625*x[163]-4.62400100859375*x[164] == 0.0)
@constraint(m, e6, 0.934836132*b[5]+0.594101056*b[13]+1.006108092*b[21]+0.536490725*b[29]+1.208018103*b[37]+0.741534279*b[45]+1.434929666*b[53]+1.362989351*b[61]+1.354757088*b[69]+0.875104896*b[77]+0.83020157*b[85]+1.181151032*b[93]+0.985426772*b[101]+1.234184015*b[109]+0.980634977*b[117]-1.3728304284375*x[165]-2.745660856875*x[166]-4.1184912853125*x[167] == 0.0)
@constraint(m, e7, 0.934836132*b[6]+0.594101056*b[14]+1.006108092*b[22]+0.536490725*b[30]+1.208018103*b[38]+0.741534279*b[46]+1.434929666*b[54]+1.362989351*b[62]+1.354757088*b[70]+0.875104896*b[78]+0.83020157*b[86]+1.181151032*b[94]+0.985426772*b[102]+1.234184015*b[110]+0.980634977*b[118]-1.6224571809375*x[168]-3.244914361875*x[169]-4.8673715428125*x[170] == 0.0)
@constraint(m, e8, 0.934836132*b[7]+0.594101056*b[15]+1.006108092*b[23]+0.536490725*b[31]+1.208018103*b[39]+0.741534279*b[47]+1.434929666*b[55]+1.362989351*b[63]+1.354757088*b[71]+0.875104896*b[79]+0.83020157*b[87]+1.181151032*b[95]+0.985426772*b[103]+1.234184015*b[111]+0.980634977*b[119]-1.52407353515625*x[171]-3.0481470703125*x[172]-4.57222060546875*x[173] == 0.0)
@constraint(m, e9, 0.934836132*b[8]+0.594101056*b[16]+1.006108092*b[24]+0.536490725*b[32]+1.208018103*b[40]+0.741534279*b[48]+1.434929666*b[56]+1.362989351*b[64]+1.354757088*b[72]+0.875104896*b[80]+0.83020157*b[88]+1.181151032*b[96]+0.985426772*b[104]+1.234184015*b[112]+0.980634977*b[120]-1.50114900421875*x[174]-3.0022980084375*x[175]-4.50344701265625*x[176] == 0.0)
@constraint(m, e10, b[1]+b[2]+b[3]+b[4]+b[5]+b[6]+b[7]+b[8] == 1.0)
@constraint(m, e11, b[9]+b[10]+b[11]+b[12]+b[13]+b[14]+b[15]+b[16] == 1.0)
@constraint(m, e12, b[17]+b[18]+b[19]+b[20]+b[21]+b[22]+b[23]+b[24] == 1.0)
@constraint(m, e13, b[25]+b[26]+b[27]+b[28]+b[29]+b[30]+b[31]+b[32] == 1.0)
@constraint(m, e14, b[33]+b[34]+b[35]+b[36]+b[37]+b[38]+b[39]+b[40] == 1.0)
@constraint(m, e15, b[41]+b[42]+b[43]+b[44]+b[45]+b[46]+b[47]+b[48] == 1.0)
@constraint(m, e16, b[49]+b[50]+b[51]+b[52]+b[53]+b[54]+b[55]+b[56] == 1.0)
@constraint(m, e17, b[57]+b[58]+b[59]+b[60]+b[61]+b[62]+b[63]+b[64] == 1.0)
@constraint(m, e18, b[65]+b[66]+b[67]+b[68]+b[69]+b[70]+b[71]+b[72] == 1.0)
@constraint(m, e19, b[73]+b[74]+b[75]+b[76]+b[77]+b[78]+b[79]+b[80] == 1.0)
@constraint(m, e20, b[81]+b[82]+b[83]+b[84]+b[85]+b[86]+b[87]+b[88] == 1.0)
@constraint(m, e21, b[89]+b[90]+b[91]+b[92]+b[93]+b[94]+b[95]+b[96] == 1.0)
@constraint(m, e22, b[97]+b[98]+b[99]+b[100]+b[101]+b[102]+b[103]+b[104] == 1.0)
@constraint(m, e23, b[105]+b[106]+b[107]+b[108]+b[109]+b[110]+b[111]+b[112] == 1.0)
@constraint(m, e24, b[113]+b[114]+b[115]+b[116]+b[117]+b[118]+b[119]+b[120] == 1.0)
@constraint(m, e25, b[121]+b[122]+b[123] <= 1.0)
@constraint(m, e26, b[124]+b[125]+b[126] <= 1.0)
@constraint(m, e27, b[127]+b[128]+b[129] <= 1.0)
@constraint(m, e28, b[130]+b[131]+b[132] <= 1.0)
@constraint(m, e29, b[133]+b[134]+b[135] <= 1.0)
@constraint(m, e30, b[136]+b[137]+b[138] <= 1.0)
@constraint(m, e31, b[139]+b[140]+b[141] <= 1.0)
@constraint(m, e32, b[142]+b[143]+b[144] <= 1.0)
@constraint(m, e33, -b[121]+x[153] <= 0.0)
@constraint(m, e34, -b[122]+x[154] <= 0.0)
@constraint(m, e35, -b[123]+x[155] <= 0.0)
@constraint(m, e36, -b[124]+x[156] <= 0.0)
@constraint(m, e37, -b[125]+x[157] <= 0.0)
@constraint(m, e38, -b[126]+x[158] <= 0.0)
@constraint(m, e39, -b[127]+x[159] <= 0.0)
@constraint(m, e40, -b[128]+x[160] <= 0.0)
@constraint(m, e41, -b[129]+x[161] <= 0.0)
@constraint(m, e42, -b[130]+x[162] <= 0.0)
@constraint(m, e43, -b[131]+x[163] <= 0.0)
@constraint(m, e44, -b[132]+x[164] <= 0.0)
@constraint(m, e45, -b[133]+x[165] <= 0.0)
@constraint(m, e46, -b[134]+x[166] <= 0.0)
@constraint(m, e47, -b[135]+x[167] <= 0.0)
@constraint(m, e48, -b[136]+x[168] <= 0.0)
@constraint(m, e49, -b[137]+x[169] <= 0.0)
@constraint(m, e50, -b[138]+x[170] <= 0.0)
@constraint(m, e51, -b[139]+x[171] <= 0.0)
@constraint(m, e52, -b[140]+x[172] <= 0.0)
@constraint(m, e53, -b[141]+x[173] <= 0.0)
@constraint(m, e54, -b[142]+x[174] <= 0.0)
@constraint(m, e55, -b[143]+x[175] <= 0.0)
@constraint(m, e56, -b[144]+x[176] <= 0.0)
@NLconstraint(m, e57, -x[145]/(1+x[145])+x[153] <= 0.0)
@NLconstraint(m, e58, -x[145]/(1+x[145])+x[154] <= 0.0)
@NLconstraint(m, e59, -x[145]/(1+x[145])+x[155] <= 0.0)
@NLconstraint(m, e60, -x[146]/(1+x[146])+x[156] <= 0.0)
@NLconstraint(m, e61, -x[146]/(1+x[146])+x[157] <= 0.0)
@NLconstraint(m, e62, -x[146]/(1+x[146])+x[158] <= 0.0)
@NLconstraint(m, e63, -x[147]/(1+x[147])+x[159] <= 0.0)
@NLconstraint(m, e64, -x[147]/(1+x[147])+x[160] <= 0.0)
@NLconstraint(m, e65, -x[147]/(1+x[147])+x[161] <= 0.0)
@NLconstraint(m, e66, -x[148]/(1+x[148])+x[162] <= 0.0)
@NLconstraint(m, e67, -x[148]/(1+x[148])+x[163] <= 0.0)
@NLconstraint(m, e68, -x[148]/(1+x[148])+x[164] <= 0.0)
@NLconstraint(m, e69, -x[149]/(1+x[149])+x[165] <= 0.0)
@NLconstraint(m, e70, -x[149]/(1+x[149])+x[166] <= 0.0)
@NLconstraint(m, e71, -x[149]/(1+x[149])+x[167] <= 0.0)
@NLconstraint(m, e72, -x[150]/(1+x[150])+x[168] <= 0.0)
@NLconstraint(m, e73, -x[150]/(1+x[150])+x[169] <= 0.0)
@NLconstraint(m, e74, -x[150]/(1+x[150])+x[170] <= 0.0)
@NLconstraint(m, e75, -x[151]/(1+x[151])+x[171] <= 0.0)
@NLconstraint(m, e76, -x[151]/(1+x[151])+x[172] <= 0.0)
@NLconstraint(m, e77, -x[151]/(1+x[151])+x[173] <= 0.0)
@NLconstraint(m, e78, -x[152]/(1+x[152])+x[174] <= 0.0)
@NLconstraint(m, e79, -x[152]/(1+x[152])+x[175] <= 0.0)
@NLconstraint(m, e80, -x[152]/(1+x[152])+x[176] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
