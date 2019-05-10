using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40]
@variable(m, b[b_Idx], Bin)


# ----- Constraints ----- #
@NLconstraint(m, e1, 64*b[1]*b[2]*b[3]*b[4]+64*b[1]*b[2]*b[4]*b[5]+128*b[2]*b[3]*b[4]*b[5]+64*b[2]*b[3]*b[5]*b[6]+128*b[3]*b[4]*b[5]*b[6]+64*b[3]*b[4]*b[6]*b[7]+128*b[4]*b[5]*b[6]*b[7]+64*b[4]*b[5]*b[7]*b[8]+128*b[5]*b[6]*b[7]*b[8]+64*b[5]*b[6]*b[8]*b[9]+128*b[6]*b[7]*b[8]*b[9]+64*b[6]*b[7]*b[9]*b[10]+128*b[7]*b[8]*b[9]*b[10]+64*b[7]*b[8]*b[10]*b[11]+128*b[8]*b[9]*b[10]*b[11]+64*b[8]*b[9]*b[11]*b[12]+128*b[9]*b[10]*b[11]*b[12]+64*b[9]*b[10]*b[12]*b[13]+128*b[10]*b[11]*b[12]*b[13]+64*b[10]*b[11]*b[13]*b[14]+128*b[11]*b[12]*b[13]*b[14]+64*b[11]*b[12]*b[14]*b[15]+128*b[12]*b[13]*b[14]*b[15]+64*b[12]*b[13]*b[15]*b[16]+128*b[13]*b[14]*b[15]*b[16]+64*b[13]*b[14]*b[16]*b[17]+128*b[14]*b[15]*b[16]*b[17]+64*b[14]*b[15]*b[17]*b[18]+128*b[15]*b[16]*b[17]*b[18]+64*b[15]*b[16]*b[18]*b[19]+128*b[16]*b[17]*b[18]*b[19]+64*b[16]*b[17]*b[19]*b[20]+128*b[17]*b[18]*b[19]*b[20]+64*b[17]*b[18]*b[20]*b[21]+128*b[18]*b[19]*b[20]*b[21]+64*b[18]*b[19]*b[21]*b[22]+128*b[19]*b[20]*b[21]*b[22]+64*b[19]*b[20]*b[22]*b[23]+128*b[20]*b[21]*b[22]*b[23]+64*b[20]*b[21]*b[23]*b[24]+128*b[21]*b[22]*b[23]*b[24]+64*b[21]*b[22]*b[24]*b[25]+128*b[22]*b[23]*b[24]*b[25]+64*b[22]*b[23]*b[25]*b[26]+128*b[23]*b[24]*b[25]*b[26]+64*b[23]*b[24]*b[26]*b[27]+128*b[24]*b[25]*b[26]*b[27]+64*b[24]*b[25]*b[27]*b[28]+128*b[25]*b[26]*b[27]*b[28]+64*b[25]*b[26]*b[28]*b[29]+128*b[26]*b[27]*b[28]*b[29]+64*b[26]*b[27]*b[29]*b[30]+128*b[27]*b[28]*b[29]*b[30]+64*b[27]*b[28]*b[30]*b[31]+128*b[28]*b[29]*b[30]*b[31]+64*b[28]*b[29]*b[31]*b[32]+128*b[29]*b[30]*b[31]*b[32]+64*b[29]*b[30]*b[32]*b[33]+128*b[30]*b[31]*b[32]*b[33]+64*b[30]*b[31]*b[33]*b[34]+128*b[31]*b[32]*b[33]*b[34]+64*b[31]*b[32]*b[34]*b[35]+128*b[32]*b[33]*b[34]*b[35]+64*b[32]*b[33]*b[35]*b[36]+128*b[33]*b[34]*b[35]*b[36]+64*b[33]*b[34]*b[36]*b[37]+128*b[34]*b[35]*b[36]*b[37]+64*b[34]*b[35]*b[37]*b[38]+128*b[35]*b[36]*b[37]*b[38]+64*b[35]*b[36]*b[38]*b[39]+128*b[36]*b[37]*b[38]*b[39]+64*b[36]*b[37]*b[39]*b[40]+64*b[37]*b[38]*b[39]*b[40]-32*b[1]*b[2]*b[3]-64*b[1]*b[2]*b[4]-32*b[1]*b[2]*b[5]-32*b[1]*b[3]*b[4]-32*b[1]*b[4]*b[5]-96*b[2]*b[3]*b[4]-96*b[2]*b[3]*b[5]-32*b[2]*b[3]*b[6]-96*b[2]*b[4]*b[5]-32*b[2]*b[5]*b[6]-128*b[3]*b[4]*b[5]-96*b[3]*b[4]*b[6]-32*b[3]*b[4]*b[7]-96*b[3]*b[5]*b[6]-32*b[3]*b[6]*b[7]-128*b[4]*b[5]*b[6]-96*b[4]*b[5]*b[7]-32*b[4]*b[5]*b[8]-96*b[4]*b[6]*b[7]-32*b[4]*b[7]*b[8]-128*b[5]*b[6]*b[7]-96*b[5]*b[6]*b[8]-32*b[5]*b[6]*b[9]-96*b[5]*b[7]*b[8]-32*b[5]*b[8]*b[9]-128*b[6]*b[7]*b[8]-96*b[6]*b[7]*b[9]-32*b[6]*b[7]*b[10]-96*b[6]*b[8]*b[9]-32*b[6]*b[9]*b[10]-128*b[7]*b[8]*b[9]-96*b[7]*b[8]*b[10]-32*b[7]*b[8]*b[11]-96*b[7]*b[9]*b[10]-32*b[7]*b[10]*b[11]-128*b[8]*b[9]*b[10]-96*b[8]*b[9]*b[11]-32*b[8]*b[9]*b[12]-96*b[8]*b[10]*b[11]-32*b[8]*b[11]*b[12]-128*b[9]*b[10]*b[11]-96*b[9]*b[10]*b[12]-32*b[9]*b[10]*b[13]-96*b[9]*b[11]*b[12]-32*b[9]*b[12]*b[13]-128*b[10]*b[11]*b[12]-96*b[10]*b[11]*b[13]-32*b[10]*b[11]*b[14]-96*b[10]*b[12]*b[13]-32*b[10]*b[13]*b[14]-128*b[11]*b[12]*b[13]-96*b[11]*b[12]*b[14]-32*b[11]*b[12]*b[15]-96*b[11]*b[13]*b[14]-32*b[11]*b[14]*b[15]-128*b[12]*b[13]*b[14]-96*b[12]*b[13]*b[15]-32*b[12]*b[13]*b[16]-96*b[12]*b[14]*b[15]-32*b[12]*b[15]*b[16]-128*b[13]*b[14]*b[15]-96*b[13]*b[14]*b[16]-32*b[13]*b[14]*b[17]-96*b[13]*b[15]*b[16]-32*b[13]*b[16]*b[17]-128*b[14]*b[15]*b[16]-96*b[14]*b[15]*b[17]-32*b[14]*b[15]*b[18]-96*b[14]*b[16]*b[17]-32*b[14]*b[17]*b[18]-128*b[15]*b[16]*b[17]-96*b[15]*b[16]*b[18]-32*b[15]*b[16]*b[19]-96*b[15]*b[17]*b[18]-32*b[15]*b[18]*b[19]-128*b[16]*b[17]*b[18]-96*b[16]*b[17]*b[19]-32*b[16]*b[17]*b[20]-96*b[16]*b[18]*b[19]-32*b[16]*b[19]*b[20]-128*b[17]*b[18]*b[19]-96*b[17]*b[18]*b[20]-32*b[17]*b[18]*b[21]-96*b[17]*b[19]*b[20]-32*b[17]*b[20]*b[21]-128*b[18]*b[19]*b[20]-96*b[18]*b[19]*b[21]-32*b[18]*b[19]*b[22]-96*b[18]*b[20]*b[21]-32*b[18]*b[21]*b[22]-128*b[19]*b[20]*b[21]-96*b[19]*b[20]*b[22]-32*b[19]*b[20]*b[23]-96*b[19]*b[21]*b[22]-32*b[19]*b[22]*b[23]-128*b[20]*b[21]*b[22]-96*b[20]*b[21]*b[23]-32*b[20]*b[21]*b[24]-96*b[20]*b[22]*b[23]-32*b[20]*b[23]*b[24]-128*b[21]*b[22]*b[23]-96*b[21]*b[22]*b[24]-32*b[21]*b[22]*b[25]-96*b[21]*b[23]*b[24]-32*b[21]*b[24]*b[25]-128*b[22]*b[23]*b[24]-96*b[22]*b[23]*b[25]-32*b[22]*b[23]*b[26]-96*b[22]*b[24]*b[25]-32*b[22]*b[25]*b[26]-128*b[23]*b[24]*b[25]-96*b[23]*b[24]*b[26]-32*b[23]*b[24]*b[27]-96*b[23]*b[25]*b[26]-32*b[23]*b[26]*b[27]-128*b[24]*b[25]*b[26]-96*b[24]*b[25]*b[27]-32*b[24]*b[25]*b[28]-96*b[24]*b[26]*b[27]-32*b[24]*b[27]*b[28]-128*b[25]*b[26]*b[27]-96*b[25]*b[26]*b[28]-32*b[25]*b[26]*b[29]-96*b[25]*b[27]*b[28]-32*b[25]*b[28]*b[29]-128*b[26]*b[27]*b[28]-96*b[26]*b[27]*b[29]-32*b[26]*b[27]*b[30]-96*b[26]*b[28]*b[29]-32*b[26]*b[29]*b[30]-128*b[27]*b[28]*b[29]-96*b[27]*b[28]*b[30]-32*b[27]*b[28]*b[31]-96*b[27]*b[29]*b[30]-32*b[27]*b[30]*b[31]-128*b[28]*b[29]*b[30]-96*b[28]*b[29]*b[31]-32*b[28]*b[29]*b[32]-96*b[28]*b[30]*b[31]-32*b[28]*b[31]*b[32]-128*b[29]*b[30]*b[31]-96*b[29]*b[30]*b[32]-32*b[29]*b[30]*b[33]-96*b[29]*b[31]*b[32]-32*b[29]*b[32]*b[33]-128*b[30]*b[31]*b[32]-96*b[30]*b[31]*b[33]-32*b[30]*b[31]*b[34]-96*b[30]*b[32]*b[33]-32*b[30]*b[33]*b[34]-128*b[31]*b[32]*b[33]-96*b[31]*b[32]*b[34]-32*b[31]*b[32]*b[35]-96*b[31]*b[33]*b[34]-32*b[31]*b[34]*b[35]-128*b[32]*b[33]*b[34]-96*b[32]*b[33]*b[35]-32*b[32]*b[33]*b[36]-96*b[32]*b[34]*b[35]-32*b[32]*b[35]*b[36]-128*b[33]*b[34]*b[35]-96*b[33]*b[34]*b[36]-32*b[33]*b[34]*b[37]-96*b[33]*b[35]*b[36]-32*b[33]*b[36]*b[37]-128*b[34]*b[35]*b[36]-96*b[34]*b[35]*b[37]-32*b[34]*b[35]*b[38]-96*b[34]*b[36]*b[37]-32*b[34]*b[37]*b[38]-128*b[35]*b[36]*b[37]-96*b[35]*b[36]*b[38]-32*b[35]*b[36]*b[39]-96*b[35]*b[37]*b[38]-32*b[35]*b[38]*b[39]-128*b[36]*b[37]*b[38]-96*b[36]*b[37]*b[39]-32*b[36]*b[37]*b[40]-96*b[36]*b[38]*b[39]-32*b[36]*b[39]*b[40]-96*b[37]*b[38]*b[39]-32*b[37]*b[38]*b[40]-64*b[37]*b[39]*b[40]-32*b[38]*b[39]*b[40]+32*b[1]*b[2]+24*b[1]*b[3]+32*b[1]*b[4]+24*b[1]*b[5]+64*b[2]*b[3]+80*b[2]*b[4]+64*b[2]*b[5]+24*b[2]*b[6]+96*b[3]*b[4]+104*b[3]*b[5]+64*b[3]*b[6]+24*b[3]*b[7]+128*b[4]*b[5]+104*b[4]*b[6]+64*b[4]*b[7]+24*b[4]*b[8]+128*b[5]*b[6]+104*b[5]*b[7]+64*b[5]*b[8]+24*b[5]*b[9]+128*b[6]*b[7]+104*b[6]*b[8]+64*b[6]*b[9]+24*b[6]*b[10]+128*b[7]*b[8]+104*b[7]*b[9]+64*b[7]*b[10]+24*b[7]*b[11]+128*b[8]*b[9]+104*b[8]*b[10]+64*b[8]*b[11]+24*b[8]*b[12]+128*b[9]*b[10]+104*b[9]*b[11]+64*b[9]*b[12]+24*b[9]*b[13]+128*b[10]*b[11]+104*b[10]*b[12]+64*b[10]*b[13]+24*b[10]*b[14]+128*b[11]*b[12]+104*b[11]*b[13]+64*b[11]*b[14]+24*b[11]*b[15]+128*b[12]*b[13]+104*b[12]*b[14]+64*b[12]*b[15]+24*b[12]*b[16]+128*b[13]*b[14]+104*b[13]*b[15]+64*b[13]*b[16]+24*b[13]*b[17]+128*b[14]*b[15]+104*b[14]*b[16]+64*b[14]*b[17]+24*b[14]*b[18]+128*b[15]*b[16]+104*b[15]*b[17]+64*b[15]*b[18]+24*b[15]*b[19]+128*b[16]*b[17]+104*b[16]*b[18]+64*b[16]*b[19]+24*b[16]*b[20]+128*b[17]*b[18]+104*b[17]*b[19]+64*b[17]*b[20]+24*b[17]*b[21]+128*b[18]*b[19]+104*b[18]*b[20]+64*b[18]*b[21]+24*b[18]*b[22]+128*b[19]*b[20]+104*b[19]*b[21]+64*b[19]*b[22]+24*b[19]*b[23]+128*b[20]*b[21]+104*b[20]*b[22]+64*b[20]*b[23]+24*b[20]*b[24]+128*b[21]*b[22]+104*b[21]*b[23]+64*b[21]*b[24]+24*b[21]*b[25]+128*b[22]*b[23]+104*b[22]*b[24]+64*b[22]*b[25]+24*b[22]*b[26]+128*b[23]*b[24]+104*b[23]*b[25]+64*b[23]*b[26]+24*b[23]*b[27]+128*b[24]*b[25]+104*b[24]*b[26]+64*b[24]*b[27]+24*b[24]*b[28]+128*b[25]*b[26]+104*b[25]*b[27]+64*b[25]*b[28]+24*b[25]*b[29]+128*b[26]*b[27]+104*b[26]*b[28]+64*b[26]*b[29]+24*b[26]*b[30]+128*b[27]*b[28]+104*b[27]*b[29]+64*b[27]*b[30]+24*b[27]*b[31]+128*b[28]*b[29]+104*b[28]*b[30]+64*b[28]*b[31]+24*b[28]*b[32]+128*b[29]*b[30]+104*b[29]*b[31]+64*b[29]*b[32]+24*b[29]*b[33]+128*b[30]*b[31]+104*b[30]*b[32]+64*b[30]*b[33]+24*b[30]*b[34]+128*b[31]*b[32]+104*b[31]*b[33]+64*b[31]*b[34]+24*b[31]*b[35]+128*b[32]*b[33]+104*b[32]*b[34]+64*b[32]*b[35]+24*b[32]*b[36]+128*b[33]*b[34]+104*b[33]*b[35]+64*b[33]*b[36]+24*b[33]*b[37]+128*b[34]*b[35]+104*b[34]*b[36]+64*b[34]*b[37]+24*b[34]*b[38]+128*b[35]*b[36]+104*b[35]*b[37]+64*b[35]*b[38]+24*b[35]*b[39]+128*b[36]*b[37]+104*b[36]*b[38]+64*b[36]*b[39]+24*b[36]*b[40]+96*b[37]*b[38]+80*b[37]*b[39]+32*b[37]*b[40]+64*b[38]*b[39]+24*b[38]*b[40]+32*b[39]*b[40]-24*b[1]-52*b[2]-76*b[3]-104*b[4]-128*b[5]-128*b[6]-128*b[7]-128*b[8]-128*b[9]-128*b[10]-128*b[11]-128*b[12]-128*b[13]-128*b[14]-128*b[15]-128*b[16]-128*b[17]-128*b[18]-128*b[19]-128*b[20]-128*b[21]-128*b[22]-128*b[23]-128*b[24]-128*b[25]-128*b[26]-128*b[27]-128*b[28]-128*b[29]-128*b[30]-128*b[31]-128*b[32]-128*b[33]-128*b[34]-128*b[35]-128*b[36]-104*b[37]-76*b[38]-52*b[39]-24*b[40]-objvar <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
