using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256]
@variable(m, x[x_Idx] >= 0)


# ----- Constraints ----- #
@constraint(m, e1, -280.015478914038*b[1]-189.288120842359*b[2]-358.701846798178*b[3]-244.241788814099*b[4]-87.1139426934879*b[5]-293.741196412808*b[6]-336.938455480881*b[7]-111.132571007002*b[8]-286.116429243528*b[9]-94.4274398343128*b[10]-367.133290072151*b[11]-614.928585758936*b[12]-438.125051677529*b[13]-661.999904132064*b[14]-653.595947484945*b[15]-130.785249996106*b[16]-566.03927069428*b[17]-544.19787715837*b[18]-685.403607293646*b[19]-61.9928174906746*b[20]-249.350690730561*b[21]-140.90906841319*b[22]-291.079482338546*b[23]-487.780669163489*b[24]-307.783912643805*b[25]-389.802681405466*b[26]-321.287736832449*b[27]-302.412987027206*b[28]-409.775140258547*b[29]-257.071751692557*b[30]-175.756094849851*b[31]-423.669959460143*b[32]-198.720546344334*b[33]-344.400501168956*b[34]-208.952089209986*b[35]-430.759407352372*b[36]-496.60632325866*b[37]-397.911936291162*b[38]-287.774297498385*b[39]-423.00329072926*b[40]-237.886155953882*b[41]-402.402251795838*b[42]-250.825045089316*b[43]-487.547042019378*b[44]-568.292182452832*b[45]-448.087612764076*b[46]-320.335765847799*b[47]-490.167899018651*b[48]-82.5933869454248*b[49]-146.448682875232*b[50]-163.452067908051*b[51]-276.730055005735*b[52]-273.179876407695*b[53]-277.803053042602*b[54]-233.55256356785*b[55]-197.393244057853*b[56]-242.330997032288*b[57]-284.424030137382*b[58]-363.208830908102*b[59]-294.232555311306*b[60]-325.118162311176*b[61]-299.415482100549*b[62]-259.44789476115*b[63]-309.940616688054*b[64]-222.150724870321*b[65]-217.727646620661*b[66]-281.713073665437*b[67]-38.1502291749332*b[68]-111.211204176216*b[69]-65.2805816148505*b[70]-112.460639083103*b[71]-198.645643676751*b[72]-421.360912334564*b[73]-534.87426176758*b[74]-475.741816107137*b[75]-352.749929176345*b[76]-531.612082625615*b[77]-280.525826419076*b[78]-137.095239440206*b[79]-575.7770749398*b[80]-351.497850461778*b[81]-405.962649168703*b[82]-432.857369642276*b[83]-166.720740905278*b[84]-330.52780833779*b[85]-114.389081222937*b[86]-41.8820705320675*b[87]-413.561667150737*b[88]-355.579499050136*b[89]-345.47038524768*b[90]-430.854677384648*b[91]-30.0482829027383*b[92]-165.478010935782*b[93]-77.9360845070815*b[94]-173.890485436882*b[95]-312.249412706219*b[96]-571.744627524166*b[97]-471.624923879672*b[98]-710.164602376854*b[99]-261.66021735256*b[100]-51.0557284250918*b[101]-360.062547274952*b[102]-481.891096039651*b[103]-365.513365723344*b[104]-399.490496656953*b[105]-451.769553607549*b[106]-453.738932169927*b[107]-199.843756585705*b[108]-365.058314613238*b[109]-139.586752483676*b[110]-106.426979864288*b[111]-456.438637193436*b[112]-211.390523065096*b[113]-296.965394771203*b[114]-206.36024981947*b[115]-299.399758359544*b[116]-365.873253476953*b[117]-268.037142407783*b[118]-192.166689939902*b[119]-340.763818025386*b[120]-481.943276793998*b[121]-476.896032723565*b[122]-605.44200242736*b[123]-60.3345060768244*b[124]-248.698186669248*b[125]-116.370732650035*b[126]-226.41276825065*b[127]-437.786018380522*b[128]-30.1659216101491*b[129]-155.310005469338*b[130]-62.4308577168494*b[131]-374.072749206918*b[132]-359.364574319466*b[133]-371.508574814077*b[134]-313.678661245913*b[135]-236.696687500268*b[136]-342.959779885782*b[137]-243.309240877052*b[138]-455.730833322708*b[139]-283.158964050427*b[140]-108.06453872561*b[141]-345.515272872869*b[142]-397.292371711029*b[143]-159.09397067448*b[144]-340.634583609159*b[145]-206.294587181224*b[146]-430.280594816681*b[147]-370.924429483938*b[148]-179.264171022001*b[149]-428.921838070769*b[150]-471.281103740823*b[151]-99.7808461848959*b[152]-429.05922386952*b[153]-327.680298879118*b[154]-523.80193255273*b[155]-283.644715807908*b[156]-86.3875702765374*b[157]-352.398403352795*b[158]-431.172951509966*b[159]-233.993325343613*b[160]-91.8637559279284*b[161]-74.4877021670081*b[162]-187.82221969771*b[163]-430.026945476274*b[164]-357.507784036688*b[165]-448.524700206143*b[166]-411.998956245666*b[167]-173.986760082346*b[168]-712.788231206667*b[169]-461.036283507276*b[170]-848.881524448158*b[171]-792.186240949472*b[172]-442.016565853182*b[173]-897.591929381804*b[174]-977.916607937591*b[175]-293.430402870014*b[176]-296.344320059065*b[177]-364.765594186771*b[178]-329.815794036051*b[179]-226.890063118006*b[180]-348.731381211396*b[181]-177.942341296454*b[182]-96.1183797630128*b[183]-387.154702581006*b[184]-375.426218481344*b[185]-391.26936411233*b[186]-451.354346179335*b[187]-63.5187751545787*b[188]-243.436478427032*b[189]-13.2008683362507*b[190]-119.70059288035*b[191]-372.810300964428*b[192]-541.819732823667*b[193]-384.192269657313*b[194]-642.582705586696*b[195]-495.331779409205*b[196]-251.913229553801*b[197]-573.728023842047*b[198]-649.809996665778*b[199]-263.33328155498*b[200]-308.75573475*b[201]-117.915710216419*b[202]-77.288604398212*b[203]-343.15653775*b[204]-134.206428189155*b[205]-89.0183352697708*b[206]-346.81576575*b[207]-124.324585731045*b[208]-78.9498261215339*b[209]-430.096916*b[210]-159.051822644712*b[211]-102.5864677272*b[212]-320.07779375*b[213]-124.923391537198*b[214]-82.7758203632668*b[215]-435.247357*b[216]-157.010160043992*b[217]-100.02041833951*b[218]-449.605928*b[219]-160.64955939217*b[220]-101.851712426192*b[221]-467.05921525*b[222]-164.49253653471*b[223]-103.53764225876*b[224]-97791.6607937591*x[225]-97791.6607937591*x[226]-97791.6607937591*x[227]-97791.6607937591*x[228]-97791.6607937591*x[229]-97791.6607937591*x[230]-97791.6607937591*x[231]-97791.6607937591*x[232]+objvar == 0.0)
@constraint(m, e2, 0.702116132*b[1]+1.146214016*b[9]+1.057594812*b[17]+0.578586645*b[25]+0.886844823*b[33]+1.009856519*b[41]+0.734231906*b[49]+1.097667431*b[57]+0.530191888*b[65]+0.982025936*b[73]+0.89025893*b[81]+0.672977112*b[89]+1.170284932*b[97]+0.698680975*b[105]+0.518537857*b[113]+1.10995052*b[121]+0.728712913*b[129]+0.970767027*b[137]+0.868933215*b[145]+0.827259074*b[153]+0.935216386*b[161]+1.484063515*b[169]+0.608384089*b[177]+0.739092857*b[185]+0.992346352*b[193]-2.14967788359375*x[233]-4.2993557671875*x[234]-6.44903365078125*x[235] == 0.0)
@constraint(m, e3, 0.702116132*b[2]+1.146214016*b[10]+1.057594812*b[18]+0.578586645*b[26]+0.886844823*b[34]+1.009856519*b[42]+0.734231906*b[50]+1.097667431*b[58]+0.530191888*b[66]+0.982025936*b[74]+0.89025893*b[82]+0.672977112*b[90]+1.170284932*b[98]+0.698680975*b[106]+0.518537857*b[114]+1.10995052*b[122]+0.728712913*b[130]+0.970767027*b[138]+0.868933215*b[146]+0.827259074*b[154]+0.935216386*b[162]+1.484063515*b[170]+0.608384089*b[178]+0.739092857*b[186]+0.992346352*b[194]-2.56580796953125*x[236]-5.1316159390625*x[237]-7.69742390859375*x[238] == 0.0)
@constraint(m, e4, 0.702116132*b[3]+1.146214016*b[11]+1.057594812*b[19]+0.578586645*b[27]+0.886844823*b[35]+1.009856519*b[43]+0.734231906*b[51]+1.097667431*b[59]+0.530191888*b[67]+0.982025936*b[75]+0.89025893*b[83]+0.672977112*b[91]+1.170284932*b[99]+0.698680975*b[107]+0.518537857*b[115]+1.10995052*b[123]+0.728712913*b[131]+0.970767027*b[139]+0.868933215*b[147]+0.827259074*b[155]+0.935216386*b[163]+1.484063515*b[171]+0.608384089*b[179]+0.739092857*b[187]+0.992346352*b[195]-1.9969216*x[239]-3.9938432*x[240]-5.9907648*x[241] == 0.0)
@constraint(m, e5, 0.702116132*b[4]+1.146214016*b[12]+1.057594812*b[20]+0.578586645*b[28]+0.886844823*b[36]+1.009856519*b[44]+0.734231906*b[52]+1.097667431*b[60]+0.530191888*b[68]+0.982025936*b[76]+0.89025893*b[84]+0.672977112*b[92]+1.170284932*b[100]+0.698680975*b[108]+0.518537857*b[116]+1.10995052*b[124]+0.728712913*b[132]+0.970767027*b[140]+0.868933215*b[148]+0.827259074*b[156]+0.935216386*b[164]+1.484063515*b[172]+0.608384089*b[180]+0.739092857*b[188]+0.992346352*b[196]-2.71876277421875*x[242]-5.4375255484375*x[243]-8.15628832265625*x[244] == 0.0)
@constraint(m, e6, 0.702116132*b[5]+1.146214016*b[13]+1.057594812*b[21]+0.578586645*b[29]+0.886844823*b[37]+1.009856519*b[45]+0.734231906*b[53]+1.097667431*b[61]+0.530191888*b[69]+0.982025936*b[77]+0.89025893*b[85]+0.672977112*b[93]+1.170284932*b[101]+0.698680975*b[109]+0.518537857*b[117]+1.10995052*b[125]+0.728712913*b[133]+0.970767027*b[141]+0.868933215*b[149]+0.827259074*b[157]+0.935216386*b[165]+1.484063515*b[173]+0.608384089*b[181]+0.739092857*b[189]+0.992346352*b[197]-2.37853163984375*x[245]-4.7570632796875*x[246]-7.13559491953125*x[247] == 0.0)
@constraint(m, e7, 0.702116132*b[6]+1.146214016*b[14]+1.057594812*b[22]+0.578586645*b[30]+0.886844823*b[38]+1.009856519*b[46]+0.734231906*b[54]+1.097667431*b[62]+0.530191888*b[70]+0.982025936*b[78]+0.89025893*b[86]+0.672977112*b[94]+1.170284932*b[102]+0.698680975*b[110]+0.518537857*b[118]+1.10995052*b[126]+0.728712913*b[134]+0.970767027*b[142]+0.868933215*b[150]+0.827259074*b[158]+0.935216386*b[166]+1.484063515*b[174]+0.608384089*b[182]+0.739092857*b[190]+0.992346352*b[198]-2.55386938125*x[248]-5.1077387625*x[249]-7.66160814375*x[250] == 0.0)
@constraint(m, e8, 0.702116132*b[7]+1.146214016*b[15]+1.057594812*b[23]+0.578586645*b[31]+0.886844823*b[39]+1.009856519*b[47]+0.734231906*b[55]+1.097667431*b[63]+0.530191888*b[71]+0.982025936*b[79]+0.89025893*b[87]+0.672977112*b[95]+1.170284932*b[103]+0.698680975*b[111]+0.518537857*b[119]+1.10995052*b[127]+0.728712913*b[135]+0.970767027*b[143]+0.868933215*b[151]+0.827259074*b[159]+0.935216386*b[167]+1.484063515*b[175]+0.608384089*b[183]+0.739092857*b[191]+0.992346352*b[199]-2.5636700640625*x[251]-5.127340128125*x[252]-7.6910101921875*x[253] == 0.0)
@constraint(m, e9, 0.702116132*b[8]+1.146214016*b[16]+1.057594812*b[24]+0.578586645*b[32]+0.886844823*b[40]+1.009856519*b[48]+0.734231906*b[56]+1.097667431*b[64]+0.530191888*b[72]+0.982025936*b[80]+0.89025893*b[88]+0.672977112*b[96]+1.170284932*b[104]+0.698680975*b[112]+0.518537857*b[120]+1.10995052*b[128]+0.728712913*b[136]+0.970767027*b[144]+0.868933215*b[152]+0.827259074*b[160]+0.935216386*b[168]+1.484063515*b[176]+0.608384089*b[184]+0.739092857*b[192]+0.992346352*b[200]-2.55024607265625*x[254]-5.1004921453125*x[255]-7.65073821796875*x[256] == 0.0)
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
@constraint(m, e25, b[121]+b[122]+b[123]+b[124]+b[125]+b[126]+b[127]+b[128] == 1.0)
@constraint(m, e26, b[129]+b[130]+b[131]+b[132]+b[133]+b[134]+b[135]+b[136] == 1.0)
@constraint(m, e27, b[137]+b[138]+b[139]+b[140]+b[141]+b[142]+b[143]+b[144] == 1.0)
@constraint(m, e28, b[145]+b[146]+b[147]+b[148]+b[149]+b[150]+b[151]+b[152] == 1.0)
@constraint(m, e29, b[153]+b[154]+b[155]+b[156]+b[157]+b[158]+b[159]+b[160] == 1.0)
@constraint(m, e30, b[161]+b[162]+b[163]+b[164]+b[165]+b[166]+b[167]+b[168] == 1.0)
@constraint(m, e31, b[169]+b[170]+b[171]+b[172]+b[173]+b[174]+b[175]+b[176] == 1.0)
@constraint(m, e32, b[177]+b[178]+b[179]+b[180]+b[181]+b[182]+b[183]+b[184] == 1.0)
@constraint(m, e33, b[185]+b[186]+b[187]+b[188]+b[189]+b[190]+b[191]+b[192] == 1.0)
@constraint(m, e34, b[193]+b[194]+b[195]+b[196]+b[197]+b[198]+b[199]+b[200] == 1.0)
@constraint(m, e35, b[201]+b[202]+b[203] <= 1.0)
@constraint(m, e36, b[204]+b[205]+b[206] <= 1.0)
@constraint(m, e37, b[207]+b[208]+b[209] <= 1.0)
@constraint(m, e38, b[210]+b[211]+b[212] <= 1.0)
@constraint(m, e39, b[213]+b[214]+b[215] <= 1.0)
@constraint(m, e40, b[216]+b[217]+b[218] <= 1.0)
@constraint(m, e41, b[219]+b[220]+b[221] <= 1.0)
@constraint(m, e42, b[222]+b[223]+b[224] <= 1.0)
@constraint(m, e43, -b[201]+x[233] <= 0.0)
@constraint(m, e44, -b[202]+x[234] <= 0.0)
@constraint(m, e45, -b[203]+x[235] <= 0.0)
@constraint(m, e46, -b[204]+x[236] <= 0.0)
@constraint(m, e47, -b[205]+x[237] <= 0.0)
@constraint(m, e48, -b[206]+x[238] <= 0.0)
@constraint(m, e49, -b[207]+x[239] <= 0.0)
@constraint(m, e50, -b[208]+x[240] <= 0.0)
@constraint(m, e51, -b[209]+x[241] <= 0.0)
@constraint(m, e52, -b[210]+x[242] <= 0.0)
@constraint(m, e53, -b[211]+x[243] <= 0.0)
@constraint(m, e54, -b[212]+x[244] <= 0.0)
@constraint(m, e55, -b[213]+x[245] <= 0.0)
@constraint(m, e56, -b[214]+x[246] <= 0.0)
@constraint(m, e57, -b[215]+x[247] <= 0.0)
@constraint(m, e58, -b[216]+x[248] <= 0.0)
@constraint(m, e59, -b[217]+x[249] <= 0.0)
@constraint(m, e60, -b[218]+x[250] <= 0.0)
@constraint(m, e61, -b[219]+x[251] <= 0.0)
@constraint(m, e62, -b[220]+x[252] <= 0.0)
@constraint(m, e63, -b[221]+x[253] <= 0.0)
@constraint(m, e64, -b[222]+x[254] <= 0.0)
@constraint(m, e65, -b[223]+x[255] <= 0.0)
@constraint(m, e66, -b[224]+x[256] <= 0.0)
@NLconstraint(m, e67, x[233]*b[201]+x[233]*x[225]-x[225]*b[201] <= 0.0)
@NLconstraint(m, e68, x[234]*b[202]+x[234]*x[225]-x[225]*b[202] <= 0.0)
@NLconstraint(m, e69, x[235]*b[203]+x[235]*x[225]-x[225]*b[203] <= 0.0)
@NLconstraint(m, e70, x[236]*b[204]+x[236]*x[226]-x[226]*b[204] <= 0.0)
@NLconstraint(m, e71, x[237]*b[205]+x[237]*x[226]-x[226]*b[205] <= 0.0)
@NLconstraint(m, e72, x[238]*b[206]+x[238]*x[226]-x[226]*b[206] <= 0.0)
@NLconstraint(m, e73, x[239]*b[207]+x[239]*x[227]-x[227]*b[207] <= 0.0)
@NLconstraint(m, e74, x[240]*b[208]+x[240]*x[227]-x[227]*b[208] <= 0.0)
@NLconstraint(m, e75, x[241]*b[209]+x[241]*x[227]-x[227]*b[209] <= 0.0)
@NLconstraint(m, e76, x[242]*b[210]+x[242]*x[228]-x[228]*b[210] <= 0.0)
@NLconstraint(m, e77, x[243]*b[211]+x[243]*x[228]-x[228]*b[211] <= 0.0)
@NLconstraint(m, e78, x[244]*b[212]+x[244]*x[228]-x[228]*b[212] <= 0.0)
@NLconstraint(m, e79, x[245]*b[213]+x[245]*x[229]-x[229]*b[213] <= 0.0)
@NLconstraint(m, e80, x[246]*b[214]+x[246]*x[229]-x[229]*b[214] <= 0.0)
@NLconstraint(m, e81, x[247]*b[215]+x[247]*x[229]-x[229]*b[215] <= 0.0)
@NLconstraint(m, e82, x[248]*b[216]+x[248]*x[230]-x[230]*b[216] <= 0.0)
@NLconstraint(m, e83, x[249]*b[217]+x[249]*x[230]-x[230]*b[217] <= 0.0)
@NLconstraint(m, e84, x[250]*b[218]+x[250]*x[230]-x[230]*b[218] <= 0.0)
@NLconstraint(m, e85, x[251]*b[219]+x[251]*x[231]-x[231]*b[219] <= 0.0)
@NLconstraint(m, e86, x[252]*b[220]+x[252]*x[231]-x[231]*b[220] <= 0.0)
@NLconstraint(m, e87, x[253]*b[221]+x[253]*x[231]-x[231]*b[221] <= 0.0)
@NLconstraint(m, e88, x[254]*b[222]+x[254]*x[232]-x[232]*b[222] <= 0.0)
@NLconstraint(m, e89, x[255]*b[223]+x[255]*x[232]-x[232]*b[223] <= 0.0)
@NLconstraint(m, e90, x[256]*b[224]+x[256]*x[232]-x[232]*b[224] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
