using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
@variable(m, b[b_Idx], Bin)


# ----- Constraints ----- #
@NLconstraint(m, e1, 64*b[1]*b[2]*b[3]*b[4]+64*b[1]*b[2]*b[4]*b[5]+64*b[1]*b[2]*b[5]*b[6]+64*b[1]*b[3]*b[4]*b[6]+128*b[2]*b[3]*b[4]*b[5]+128*b[2]*b[3]*b[5]*b[6]+64*b[2]*b[3]*b[6]*b[7]+64*b[2]*b[4]*b[5]*b[7]+192*b[3]*b[4]*b[5]*b[6]+128*b[3]*b[4]*b[6]*b[7]+64*b[3]*b[4]*b[7]*b[8]+64*b[3]*b[5]*b[6]*b[8]+192*b[4]*b[5]*b[6]*b[7]+128*b[4]*b[5]*b[7]*b[8]+64*b[4]*b[5]*b[8]*b[9]+64*b[4]*b[6]*b[7]*b[9]+192*b[5]*b[6]*b[7]*b[8]+128*b[5]*b[6]*b[8]*b[9]+64*b[5]*b[6]*b[9]*b[10]+64*b[5]*b[7]*b[8]*b[10]+192*b[6]*b[7]*b[8]*b[9]+128*b[6]*b[7]*b[9]*b[10]+64*b[6]*b[7]*b[10]*b[11]+64*b[6]*b[8]*b[9]*b[11]+192*b[7]*b[8]*b[9]*b[10]+128*b[7]*b[8]*b[10]*b[11]+64*b[7]*b[8]*b[11]*b[12]+64*b[7]*b[9]*b[10]*b[12]+192*b[8]*b[9]*b[10]*b[11]+128*b[8]*b[9]*b[11]*b[12]+64*b[8]*b[9]*b[12]*b[13]+64*b[8]*b[10]*b[11]*b[13]+192*b[9]*b[10]*b[11]*b[12]+128*b[9]*b[10]*b[12]*b[13]+64*b[9]*b[10]*b[13]*b[14]+64*b[9]*b[11]*b[12]*b[14]+192*b[10]*b[11]*b[12]*b[13]+128*b[10]*b[11]*b[13]*b[14]+64*b[10]*b[11]*b[14]*b[15]+64*b[10]*b[12]*b[13]*b[15]+192*b[11]*b[12]*b[13]*b[14]+128*b[11]*b[12]*b[14]*b[15]+64*b[11]*b[12]*b[15]*b[16]+64*b[11]*b[13]*b[14]*b[16]+192*b[12]*b[13]*b[14]*b[15]+128*b[12]*b[13]*b[15]*b[16]+64*b[12]*b[13]*b[16]*b[17]+64*b[12]*b[14]*b[15]*b[17]+192*b[13]*b[14]*b[15]*b[16]+128*b[13]*b[14]*b[16]*b[17]+64*b[13]*b[14]*b[17]*b[18]+64*b[13]*b[15]*b[16]*b[18]+192*b[14]*b[15]*b[16]*b[17]+128*b[14]*b[15]*b[17]*b[18]+64*b[14]*b[15]*b[18]*b[19]+64*b[14]*b[16]*b[17]*b[19]+192*b[15]*b[16]*b[17]*b[18]+128*b[15]*b[16]*b[18]*b[19]+64*b[15]*b[16]*b[19]*b[20]+64*b[15]*b[17]*b[18]*b[20]+192*b[16]*b[17]*b[18]*b[19]+128*b[16]*b[17]*b[19]*b[20]+64*b[16]*b[17]*b[20]*b[21]+64*b[16]*b[18]*b[19]*b[21]+192*b[17]*b[18]*b[19]*b[20]+128*b[17]*b[18]*b[20]*b[21]+64*b[17]*b[18]*b[21]*b[22]+64*b[17]*b[19]*b[20]*b[22]+192*b[18]*b[19]*b[20]*b[21]+128*b[18]*b[19]*b[21]*b[22]+64*b[18]*b[19]*b[22]*b[23]+64*b[18]*b[20]*b[21]*b[23]+192*b[19]*b[20]*b[21]*b[22]+128*b[19]*b[20]*b[22]*b[23]+64*b[19]*b[20]*b[23]*b[24]+64*b[19]*b[21]*b[22]*b[24]+192*b[20]*b[21]*b[22]*b[23]+128*b[20]*b[21]*b[23]*b[24]+64*b[20]*b[21]*b[24]*b[25]+64*b[20]*b[22]*b[23]*b[25]+128*b[21]*b[22]*b[23]*b[24]+64*b[21]*b[22]*b[24]*b[25]+64*b[22]*b[23]*b[24]*b[25]-32*b[1]*b[2]*b[3]-64*b[1]*b[2]*b[4]-64*b[1]*b[2]*b[5]-32*b[1]*b[2]*b[6]-64*b[1]*b[3]*b[4]-32*b[1]*b[3]*b[6]-32*b[1]*b[4]*b[5]-32*b[1]*b[4]*b[6]-32*b[1]*b[5]*b[6]-96*b[2]*b[3]*b[4]-128*b[2]*b[3]*b[5]-96*b[2]*b[3]*b[6]-32*b[2]*b[3]*b[7]-128*b[2]*b[4]*b[5]-32*b[2]*b[4]*b[7]-96*b[2]*b[5]*b[6]-32*b[2]*b[5]*b[7]-32*b[2]*b[6]*b[7]-160*b[3]*b[4]*b[5]-192*b[3]*b[4]*b[6]-96*b[3]*b[4]*b[7]-32*b[3]*b[4]*b[8]-192*b[3]*b[5]*b[6]-32*b[3]*b[5]*b[8]-96*b[3]*b[6]*b[7]-32*b[3]*b[6]*b[8]-32*b[3]*b[7]*b[8]-192*b[4]*b[5]*b[6]-192*b[4]*b[5]*b[7]-96*b[4]*b[5]*b[8]-32*b[4]*b[5]*b[9]-192*b[4]*b[6]*b[7]-32*b[4]*b[6]*b[9]-96*b[4]*b[7]*b[8]-32*b[4]*b[7]*b[9]-32*b[4]*b[8]*b[9]-192*b[5]*b[6]*b[7]-192*b[5]*b[6]*b[8]-96*b[5]*b[6]*b[9]-32*b[5]*b[6]*b[10]-192*b[5]*b[7]*b[8]-32*b[5]*b[7]*b[10]-96*b[5]*b[8]*b[9]-32*b[5]*b[8]*b[10]-32*b[5]*b[9]*b[10]-192*b[6]*b[7]*b[8]-192*b[6]*b[7]*b[9]-96*b[6]*b[7]*b[10]-32*b[6]*b[7]*b[11]-192*b[6]*b[8]*b[9]-32*b[6]*b[8]*b[11]-96*b[6]*b[9]*b[10]-32*b[6]*b[9]*b[11]-32*b[6]*b[10]*b[11]-192*b[7]*b[8]*b[9]-192*b[7]*b[8]*b[10]-96*b[7]*b[8]*b[11]-32*b[7]*b[8]*b[12]-192*b[7]*b[9]*b[10]-32*b[7]*b[9]*b[12]-96*b[7]*b[10]*b[11]-32*b[7]*b[10]*b[12]-32*b[7]*b[11]*b[12]-192*b[8]*b[9]*b[10]-192*b[8]*b[9]*b[11]-96*b[8]*b[9]*b[12]-32*b[8]*b[9]*b[13]-192*b[8]*b[10]*b[11]-32*b[8]*b[10]*b[13]-96*b[8]*b[11]*b[12]-32*b[8]*b[11]*b[13]-32*b[8]*b[12]*b[13]-192*b[9]*b[10]*b[11]-192*b[9]*b[10]*b[12]-96*b[9]*b[10]*b[13]-32*b[9]*b[10]*b[14]-192*b[9]*b[11]*b[12]-32*b[9]*b[11]*b[14]-96*b[9]*b[12]*b[13]-32*b[9]*b[12]*b[14]-32*b[9]*b[13]*b[14]-192*b[10]*b[11]*b[12]-192*b[10]*b[11]*b[13]-96*b[10]*b[11]*b[14]-32*b[10]*b[11]*b[15]-192*b[10]*b[12]*b[13]-32*b[10]*b[12]*b[15]-96*b[10]*b[13]*b[14]-32*b[10]*b[13]*b[15]-32*b[10]*b[14]*b[15]-192*b[11]*b[12]*b[13]-192*b[11]*b[12]*b[14]-96*b[11]*b[12]*b[15]-32*b[11]*b[12]*b[16]-192*b[11]*b[13]*b[14]-32*b[11]*b[13]*b[16]-96*b[11]*b[14]*b[15]-32*b[11]*b[14]*b[16]-32*b[11]*b[15]*b[16]-192*b[12]*b[13]*b[14]-192*b[12]*b[13]*b[15]-96*b[12]*b[13]*b[16]-32*b[12]*b[13]*b[17]-192*b[12]*b[14]*b[15]-32*b[12]*b[14]*b[17]-96*b[12]*b[15]*b[16]-32*b[12]*b[15]*b[17]-32*b[12]*b[16]*b[17]-192*b[13]*b[14]*b[15]-192*b[13]*b[14]*b[16]-96*b[13]*b[14]*b[17]-32*b[13]*b[14]*b[18]-192*b[13]*b[15]*b[16]-32*b[13]*b[15]*b[18]-96*b[13]*b[16]*b[17]-32*b[13]*b[16]*b[18]-32*b[13]*b[17]*b[18]-192*b[14]*b[15]*b[16]-192*b[14]*b[15]*b[17]-96*b[14]*b[15]*b[18]-32*b[14]*b[15]*b[19]-192*b[14]*b[16]*b[17]-32*b[14]*b[16]*b[19]-96*b[14]*b[17]*b[18]-32*b[14]*b[17]*b[19]-32*b[14]*b[18]*b[19]-192*b[15]*b[16]*b[17]-192*b[15]*b[16]*b[18]-96*b[15]*b[16]*b[19]-32*b[15]*b[16]*b[20]-192*b[15]*b[17]*b[18]-32*b[15]*b[17]*b[20]-96*b[15]*b[18]*b[19]-32*b[15]*b[18]*b[20]-32*b[15]*b[19]*b[20]-192*b[16]*b[17]*b[18]-192*b[16]*b[17]*b[19]-96*b[16]*b[17]*b[20]-32*b[16]*b[17]*b[21]-192*b[16]*b[18]*b[19]-32*b[16]*b[18]*b[21]-96*b[16]*b[19]*b[20]-32*b[16]*b[19]*b[21]-32*b[16]*b[20]*b[21]-192*b[17]*b[18]*b[19]-192*b[17]*b[18]*b[20]-96*b[17]*b[18]*b[21]-32*b[17]*b[18]*b[22]-192*b[17]*b[19]*b[20]-32*b[17]*b[19]*b[22]-96*b[17]*b[20]*b[21]-32*b[17]*b[20]*b[22]-32*b[17]*b[21]*b[22]-192*b[18]*b[19]*b[20]-192*b[18]*b[19]*b[21]-96*b[18]*b[19]*b[22]-32*b[18]*b[19]*b[23]-192*b[18]*b[20]*b[21]-32*b[18]*b[20]*b[23]-96*b[18]*b[21]*b[22]-32*b[18]*b[21]*b[23]-32*b[18]*b[22]*b[23]-192*b[19]*b[20]*b[21]-192*b[19]*b[20]*b[22]-96*b[19]*b[20]*b[23]-32*b[19]*b[20]*b[24]-192*b[19]*b[21]*b[22]-32*b[19]*b[21]*b[24]-96*b[19]*b[22]*b[23]-32*b[19]*b[22]*b[24]-32*b[19]*b[23]*b[24]-192*b[20]*b[21]*b[22]-192*b[20]*b[21]*b[23]-96*b[20]*b[21]*b[24]-32*b[20]*b[21]*b[25]-192*b[20]*b[22]*b[23]-32*b[20]*b[22]*b[25]-96*b[20]*b[23]*b[24]-32*b[20]*b[23]*b[25]-32*b[20]*b[24]*b[25]-160*b[21]*b[22]*b[23]-128*b[21]*b[22]*b[24]-32*b[21]*b[22]*b[25]-128*b[21]*b[23]*b[24]-64*b[21]*b[24]*b[25]-96*b[22]*b[23]*b[24]-64*b[22]*b[23]*b[25]-64*b[22]*b[24]*b[25]-32*b[23]*b[24]*b[25]+48*b[1]*b[2]+40*b[1]*b[3]+48*b[1]*b[4]+40*b[1]*b[5]+32*b[1]*b[6]+96*b[2]*b[3]+96*b[2]*b[4]+112*b[2]*b[5]+80*b[2]*b[6]+32*b[2]*b[7]+160*b[3]*b[4]+152*b[3]*b[5]+160*b[3]*b[6]+80*b[3]*b[7]+32*b[3]*b[8]+208*b[4]*b[5]+192*b[4]*b[6]+160*b[4]*b[7]+80*b[4]*b[8]+32*b[4]*b[9]+256*b[5]*b[6]+192*b[5]*b[7]+160*b[5]*b[8]+80*b[5]*b[9]+32*b[5]*b[10]+256*b[6]*b[7]+192*b[6]*b[8]+160*b[6]*b[9]+80*b[6]*b[10]+32*b[6]*b[11]+256*b[7]*b[8]+192*b[7]*b[9]+160*b[7]*b[10]+80*b[7]*b[11]+32*b[7]*b[12]+256*b[8]*b[9]+192*b[8]*b[10]+160*b[8]*b[11]+80*b[8]*b[12]+32*b[8]*b[13]+256*b[9]*b[10]+192*b[9]*b[11]+160*b[9]*b[12]+80*b[9]*b[13]+32*b[9]*b[14]+256*b[10]*b[11]+192*b[10]*b[12]+160*b[10]*b[13]+80*b[10]*b[14]+32*b[10]*b[15]+256*b[11]*b[12]+192*b[11]*b[13]+160*b[11]*b[14]+80*b[11]*b[15]+32*b[11]*b[16]+256*b[12]*b[13]+192*b[12]*b[14]+160*b[12]*b[15]+80*b[12]*b[16]+32*b[12]*b[17]+256*b[13]*b[14]+192*b[13]*b[15]+160*b[13]*b[16]+80*b[13]*b[17]+32*b[13]*b[18]+256*b[14]*b[15]+192*b[14]*b[16]+160*b[14]*b[17]+80*b[14]*b[18]+32*b[14]*b[19]+256*b[15]*b[16]+192*b[15]*b[17]+160*b[15]*b[18]+80*b[15]*b[19]+32*b[15]*b[20]+256*b[16]*b[17]+192*b[16]*b[18]+160*b[16]*b[19]+80*b[16]*b[20]+32*b[16]*b[21]+256*b[17]*b[18]+192*b[17]*b[19]+160*b[17]*b[20]+80*b[17]*b[21]+32*b[17]*b[22]+256*b[18]*b[19]+192*b[18]*b[20]+160*b[18]*b[21]+80*b[18]*b[22]+32*b[18]*b[23]+256*b[19]*b[20]+192*b[19]*b[21]+160*b[19]*b[22]+80*b[19]*b[23]+32*b[19]*b[24]+256*b[20]*b[21]+192*b[20]*b[22]+160*b[20]*b[23]+80*b[20]*b[24]+32*b[20]*b[25]+208*b[21]*b[22]+152*b[21]*b[23]+112*b[21]*b[24]+40*b[21]*b[25]+160*b[22]*b[23]+96*b[22]*b[24]+48*b[22]*b[25]+96*b[23]*b[24]+40*b[23]*b[25]+48*b[24]*b[25]-40*b[1]-88*b[2]-136*b[3]-184*b[4]-232*b[5]-272*b[6]-272*b[7]-272*b[8]-272*b[9]-272*b[10]-272*b[11]-272*b[12]-272*b[13]-272*b[14]-272*b[15]-272*b[16]-272*b[17]-272*b[18]-272*b[19]-272*b[20]-232*b[21]-184*b[22]-136*b[23]-88*b[24]-40*b[25]-objvar <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
