using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41]
@variable(m, x[x_Idx])
setlowerbound(x[36], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[10], 0.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)
setupperbound(x[8], 1.0)
setupperbound(x[9], 1.0)
setupperbound(x[10], 1.0)
setupperbound(x[11], 1.0)
setupperbound(x[12], 1.0)
setupperbound(x[13], 1.0)
setupperbound(x[14], 1.0)
setupperbound(x[15], 1.0)
setupperbound(x[16], 1.0)
setupperbound(x[17], 1.0)
setupperbound(x[18], 1.0)
setupperbound(x[19], 1.0)
setupperbound(x[20], 1.0)
setupperbound(x[21], 1.0)
setupperbound(x[22], 1.0)
setupperbound(x[23], 1.0)
setupperbound(x[24], 1.0)
setupperbound(x[25], 1.0)
setupperbound(x[26], 1.0)
setupperbound(x[27], 1.0)
setupperbound(x[28], 1.0)
setupperbound(x[29], 1.0)
setupperbound(x[30], 1.0)
setupperbound(x[31], 1.0)
setupperbound(x[32], 1.0)
setupperbound(x[33], 1.0)
setupperbound(x[34], 1.0)
setupperbound(x[35], 1.0)
setupperbound(x[36], 1.0)
setupperbound(x[37], 1.0)
setupperbound(x[38], 1.0)
setupperbound(x[39], 1.0)
setupperbound(x[40], 1.0)
setupperbound(x[41], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1.8*x[2]*x[4]-0.3*x[2]*x[5]-0.68*x[2]*x[6]+x[2]*x[7]-0.7*x[2]*x[8]+1.64*x[2]*x[9]+0.94*x[2]*x[11]+0.54*x[2]*x[12]+1.54*x[2]*x[13]+0.16*x[2]*x[14]+1.16*x[2]*x[15]-1.5*x[2]*x[16]+0.6*x[2]*x[18]+1.86*x[2]*x[19]+0.74*x[2]*x[20]+0.38*x[2]*x[21]+1.92*x[2]*x[22]-0.82*x[2]*x[23]-1.74*x[2]*x[24]-0.98*x[2]*x[25]-1.08*x[2]*x[26]-1.8*x[2]*x[27]-1.52*x[2]*x[28]-0.98*x[2]*x[29]-1.5*x[2]*x[30]-0.36*x[2]*x[31]+1.96*x[2]*x[32]-1.08*x[2]*x[33]-0.38*x[2]*x[34]-0.56*x[2]*x[35]-0.06*x[2]*x[36]-1.46*x[2]*x[37]-0.66*x[2]*x[38]-0.12*x[2]*x[39]+0.24*x[2]*x[40]-1.32*x[2]*x[41]+1.24*x[3]*x[5]-0.06*x[3]*x[4]+1.32*x[3]*x[6]-1.38*x[3]*x[7]+0.5*x[3]*x[8]-1.26*x[3]*x[9]-0.84*x[3]*x[10]-0.72*x[3]*x[11]+1.9*x[3]*x[12]+0.68*x[3]*x[13]+0.92*x[3]*x[14]-1.58*x[3]*x[15]+0.9*x[3]*x[16]-1.1*x[3]*x[18]-0.18*x[3]*x[19]-1.48*x[3]*x[20]+0.24*x[3]*x[21]+1.92*x[3]*x[22]+0.86*x[3]*x[23]+0.28*x[3]*x[24]+0.44*x[3]*x[25]+0.82*x[3]*x[26]+1.96*x[3]*x[27]+1.64*x[3]*x[28]-1.06*x[3]*x[29]-1.04*x[3]*x[30]+1.02*x[3]*x[31]+1.52*x[3]*x[32]+0.5*x[3]*x[33]+1.86*x[3]*x[34]-0.02*x[3]*x[35]-0.14*x[3]*x[36]+0.56*x[3]*x[37]-0.6*x[3]*x[38]+0.1*x[3]*x[39]-1.9*x[3]*x[40]+1.1*x[3]*x[41]+1.96*x[4]*x[5]+1.28*x[4]*x[6]-0.82*x[4]*x[7]+1.06*x[4]*x[8]+0.64*x[4]*x[10]+1.8*x[4]*x[11]-0.38*x[4]*x[12]+0.9*x[4]*x[13]+1.6*x[4]*x[14]+1.28*x[4]*x[15]-1.86*x[4]*x[17]+1.96*x[4]*x[18]-1.72*x[4]*x[19]+0.3*x[4]*x[20]-0.9*x[4]*x[21]-0.28*x[4]*x[23]-1.56*x[4]*x[24]-0.6*x[4]*x[25]-1.08*x[4]*x[26]-1.38*x[4]*x[27]-0.48*x[4]*x[28]+1.56*x[4]*x[29]-0.8*x[4]*x[30]-0.8*x[4]*x[31]-1.92*x[4]*x[32]-0.32*x[4]*x[33]-0.86*x[4]*x[34]-0.36*x[4]*x[35]-1.04*x[4]*x[36]-1.18*x[4]*x[37]+0.22*x[4]*x[38]-1.6*x[4]*x[39]-1.48*x[4]*x[40]+1.44*x[4]*x[41]+0.92*x[5]*x[7]-0.32*x[5]*x[6]+0.52*x[5]*x[8]+1.58*x[5]*x[9]+0.66*x[5]*x[10]-1.62*x[5]*x[11]-0.18*x[5]*x[12]-1.14*x[5]*x[13]+0.3*x[5]*x[14]+1.46*x[5]*x[15]+2*x[5]*x[16]-0.8*x[5]*x[17]-0.1*x[5]*x[18]-0.02*x[5]*x[19]+1.56*x[5]*x[20]+0.62*x[5]*x[22]-0.84*x[5]*x[23]-1.04*x[5]*x[24]+0.28*x[5]*x[25]-0.52*x[5]*x[26]+0.7*x[5]*x[28]+1.8*x[5]*x[29]-1.74*x[5]*x[30]+1.6*x[5]*x[31]+1.6*x[5]*x[32]+0.82*x[5]*x[33]+0.22*x[5]*x[34]+1.52*x[5]*x[35]-0.48*x[5]*x[36]-1.34*x[5]*x[37]-1.4*x[5]*x[38]-1.22*x[5]*x[39]+1.8*x[5]*x[40]+0.94*x[5]*x[41]+0.7*x[6]*x[8]-x[6]*x[7]-0.4*x[6]*x[9]-0.9*x[6]*x[10]+1.14*x[6]*x[11]-1.12*x[6]*x[12]+1.58*x[6]*x[13]+1.74*x[6]*x[15]+0.16*x[6]*x[16]-1.92*x[6]*x[17]-1.98*x[6]*x[18]-0.68*x[6]*x[19]+1.38*x[6]*x[20]+0.92*x[6]*x[21]-1.38*x[6]*x[22]-0.46*x[6]*x[23]-1.96*x[6]*x[24]+0.84*x[6]*x[25]+0.24*x[6]*x[26]-0.46*x[6]*x[27]-0.04*x[6]*x[28]+1.1*x[6]*x[29]+1.22*x[6]*x[30]-1.86*x[6]*x[31]-1.68*x[6]*x[32]+0.96*x[6]*x[33]+1.38*x[6]*x[34]+0.7*x[6]*x[35]-1.56*x[6]*x[36]-1.3*x[6]*x[37]-0.58*x[6]*x[38]-0.32*x[6]*x[39]-0.2*x[6]*x[40]-0.14*x[6]*x[41]+1.08*x[7]*x[8]+0.48*x[7]*x[9]+1.48*x[7]*x[10]-1.9*x[7]*x[11]-1.82*x[7]*x[12]+0.92*x[7]*x[13]+1.36*x[7]*x[14]+0.56*x[7]*x[15]+1.36*x[7]*x[16]+1.46*x[7]*x[17]+1.96*x[7]*x[18]+0.84*x[7]*x[19]-0.84*x[7]*x[20]-1.08*x[7]*x[21]+1.12*x[7]*x[22]+0.4*x[7]*x[23]-1.1*x[7]*x[24]-1.2*x[7]*x[25]-0.48*x[7]*x[26]+1.62*x[7]*x[27]+1.42*x[7]*x[28]+1.2*x[7]*x[29]+0.94*x[7]*x[31]-1.4*x[7]*x[32]+0.76*x[7]*x[33]-0.72*x[7]*x[34]-1.46*x[7]*x[35]+1.4*x[7]*x[36]-0.82*x[7]*x[37]+0.2*x[7]*x[38]-1.06*x[7]*x[39]-1.48*x[7]*x[40]+1.48*x[7]*x[41]+1.34*x[8]*x[9]-1.72*x[8]*x[10]-0.36*x[8]*x[11]-1.74*x[8]*x[12]+0.9*x[8]*x[13]-1.26*x[8]*x[14]-1.12*x[8]*x[15]+0.28*x[8]*x[16]-1.22*x[8]*x[17]+1.68*x[8]*x[18]-1.28*x[8]*x[19]+0.3*x[8]*x[20]+1.26*x[8]*x[21]-1.7*x[8]*x[22]+1.94*x[8]*x[23]-1.26*x[8]*x[24]+0.86*x[8]*x[25]-1.56*x[8]*x[26]-0.82*x[8]*x[27]+0.14*x[8]*x[28]+0.6*x[8]*x[29]+0.58*x[8]*x[30]-0.96*x[8]*x[31]-1.78*x[8]*x[32]+1.04*x[8]*x[33]+1.72*x[8]*x[34]+1.04*x[8]*x[35]-0.88*x[8]*x[36]-0.22*x[8]*x[37]+2*x[8]*x[38]-0.84*x[8]*x[39]-1.32*x[8]*x[40]-1.58*x[8]*x[41]+1.08*x[9]*x[10]+0.94*x[9]*x[11]-1.72*x[9]*x[12]+0.32*x[9]*x[13]+1.32*x[9]*x[14]+0.78*x[9]*x[15]-0.1*x[9]*x[16]-1.94*x[9]*x[17]+0.9*x[9]*x[18]-0.32*x[9]*x[19]+1.92*x[9]*x[20]-1.64*x[9]*x[21]+1.38*x[9]*x[22]-1.16*x[9]*x[23]+1.58*x[9]*x[24]-1.88*x[9]*x[25]-0.42*x[9]*x[26]-0.64*x[9]*x[27]-0.62*x[9]*x[28]-1.72*x[9]*x[29]+0.74*x[9]*x[30]+1.74*x[9]*x[31]+1.64*x[9]*x[32]+1.82*x[9]*x[33]-0.56*x[9]*x[34]+0.38*x[9]*x[35]+1.18*x[9]*x[36]-0.4*x[9]*x[38]+1.48*x[9]*x[39]+1.22*x[9]*x[40]-0.36*x[9]*x[41]+1.06*x[10]*x[11]+1.64*x[10]*x[12]+0.18*x[10]*x[13]-1.56*x[10]*x[14]-1.42*x[10]*x[15]+0.98*x[10]*x[16]+0.3*x[10]*x[17]+0.52*x[10]*x[18]+1.56*x[10]*x[19]-1.32*x[10]*x[21]-1.48*x[10]*x[22]-1.12*x[10]*x[23]-1.58*x[10]*x[24]-1.16*x[10]*x[25]+1.24*x[10]*x[27]-1.78*x[10]*x[28]+0.06*x[10]*x[29]-1.04*x[10]*x[30]+0.22*x[10]*x[31]-1.48*x[10]*x[32]+1.46*x[10]*x[33]+0.8*x[10]*x[34]+1.9*x[10]*x[35]+1.3*x[10]*x[36]+1.7*x[10]*x[37]-0.3*x[10]*x[38]+1.24*x[10]*x[39]-1.34*x[10]*x[40]-1.12*x[10]*x[41]+0.82*x[11]*x[12]-1.58*x[11]*x[13]+0.76*x[11]*x[14]-0.82*x[11]*x[15]-1.54*x[11]*x[16]-0.38*x[11]*x[17]+1.6*x[11]*x[18]+0.24*x[11]*x[19]-1.82*x[11]*x[20]+1.56*x[11]*x[21]-1.28*x[11]*x[22]+1.12*x[11]*x[23]-0.86*x[11]*x[24]-0.44*x[11]*x[25]-1.34*x[11]*x[26]+0.4*x[11]*x[27]+0.08*x[11]*x[28]-1.64*x[11]*x[29]-0.06*x[11]*x[30]-0.72*x[11]*x[31]+1.7*x[11]*x[32]-1.68*x[11]*x[33]+0.06*x[11]*x[34]-1.38*x[11]*x[35]-0.24*x[11]*x[36]-1.64*x[11]*x[37]-1.98*x[11]*x[39]-0.74*x[11]*x[40]+0.66*x[11]*x[41]+0.62*x[12]*x[13]-0.12*x[12]*x[15]-0.18*x[12]*x[16]+0.22*x[12]*x[17]+1.1*x[12]*x[18]+0.1*x[12]*x[19]-1.24*x[12]*x[20]-1.68*x[12]*x[21]-0.52*x[12]*x[22]+0.04*x[12]*x[23]-0.34*x[12]*x[24]-1.92*x[12]*x[25]-0.94*x[12]*x[26]+1.94*x[12]*x[27]-0.4*x[12]*x[28]-0.06*x[12]*x[29]-0.12*x[12]*x[30]-1.12*x[12]*x[31]+1.3*x[12]*x[32]-0.04*x[12]*x[33]-1.06*x[12]*x[34]+1.28*x[12]*x[35]-0.06*x[12]*x[36]+1.12*x[12]*x[37]+1.94*x[12]*x[38]-0.34*x[12]*x[39]-1.9*x[12]*x[40]+0.6*x[12]*x[41]+1.58*x[13]*x[14]+1.54*x[13]*x[15]+1.54*x[13]*x[16]-0.36*x[13]*x[17]-1.2*x[13]*x[18]+1.54*x[13]*x[19]-0.7*x[13]*x[20]-0.56*x[13]*x[21]-1.44*x[13]*x[22]-1.02*x[13]*x[23]-0.12*x[13]*x[24]+1.62*x[13]*x[25]+1.04*x[13]*x[26]-2*x[13]*x[27]+0.82*x[13]*x[28]-1.82*x[13]*x[29]-1.92*x[13]*x[30]-0.56*x[13]*x[31]-0.14*x[13]*x[32]-1.38*x[13]*x[34]+1.02*x[13]*x[35]-0.84*x[13]*x[36]+0.94*x[13]*x[37]+0.02*x[13]*x[38]+1.38*x[13]*x[40]+0.88*x[13]*x[41]+0.62*x[14]*x[16]-0.5*x[14]*x[15]-0.84*x[14]*x[17]-0.1*x[14]*x[18]+1.04*x[14]*x[19]+1.14*x[14]*x[20]-1.18*x[14]*x[21]+1.24*x[14]*x[22]+0.64*x[14]*x[23]+0.12*x[14]*x[24]+0.64*x[14]*x[25]-0.24*x[14]*x[26]-1.4*x[14]*x[27]+1.94*x[14]*x[28]-1.8*x[14]*x[29]-0.98*x[14]*x[30]-0.66*x[14]*x[31]-0.34*x[14]*x[32]+x[14]*x[33]+1.42*x[14]*x[34]-0.44*x[14]*x[35]+1.86*x[14]*x[36]+1.7*x[14]*x[37]-1.66*x[14]*x[38]+0.54*x[14]*x[39]-0.72*x[14]*x[40]+0.3*x[14]*x[41]+1.64*x[15]*x[16]-1.9*x[15]*x[17]+0.28*x[15]*x[18]-1.58*x[15]*x[19]+1.94*x[15]*x[20]-1.9*x[15]*x[22]-1.08*x[15]*x[23]+0.04*x[15]*x[24]-0.06*x[15]*x[25]+1.72*x[15]*x[26]-0.96*x[15]*x[27]-1.96*x[15]*x[28]-0.76*x[15]*x[29]+1.9*x[15]*x[30]+1.88*x[15]*x[31]+0.68*x[15]*x[32]+0.1*x[15]*x[33]+1.38*x[15]*x[34]-1.24*x[15]*x[35]+0.14*x[15]*x[36]+1.82*x[15]*x[37]+0.92*x[15]*x[38]-1.5*x[15]*x[39]-1.76*x[15]*x[40]+0.32*x[15]*x[41]+1.16*x[16]*x[17]-1.38*x[16]*x[18]-0.46*x[16]*x[19]-1.44*x[16]*x[20]-0.62*x[16]*x[21]+1.98*x[16]*x[22]-0.82*x[16]*x[23]-0.5*x[16]*x[24]+0.88*x[16]*x[25]-1.6*x[16]*x[26]+1.62*x[16]*x[27]+1.4*x[16]*x[28]-1.58*x[16]*x[29]+0.82*x[16]*x[30]-0.74*x[16]*x[31]-0.72*x[16]*x[32]-1.92*x[16]*x[33]+0.18*x[16]*x[34]-0.76*x[16]*x[35]+0.56*x[16]*x[36]-1.32*x[16]*x[37]-0.5*x[16]*x[38]+1.84*x[16]*x[39]-1.26*x[16]*x[40]+1.44*x[16]*x[41]+0.44*x[17]*x[18]-0.54*x[17]*x[19]+0.34*x[17]*x[20]-1.42*x[17]*x[21]-0.78*x[17]*x[22]+0.06*x[17]*x[23]-0.54*x[17]*x[24]-0.22*x[17]*x[25]+0.44*x[17]*x[26]-0.76*x[17]*x[27]+1.8*x[17]*x[28]-1.22*x[17]*x[29]+1.46*x[17]*x[30]-0.12*x[17]*x[31]-0.98*x[17]*x[32]-0.38*x[17]*x[33]-1.92*x[17]*x[34]+1.36*x[17]*x[35]-1.98*x[17]*x[36]+0.7*x[17]*x[37]-0.9*x[17]*x[38]-0.52*x[17]*x[39]-0.42*x[17]*x[40]-0.18*x[17]*x[41]+1.12*x[18]*x[19]+1.34*x[18]*x[20]-0.2*x[18]*x[21]-1.2*x[18]*x[22]+0.52*x[18]*x[23]-0.3*x[18]*x[24]-0.14*x[18]*x[25]+1.56*x[18]*x[26]+1.56*x[18]*x[27]+1.02*x[18]*x[28]-0.54*x[18]*x[29]+0.28*x[18]*x[31]+1.44*x[18]*x[32]+0.6*x[18]*x[33]-1.84*x[18]*x[34]-0.74*x[18]*x[35]-0.76*x[18]*x[36]-0.56*x[18]*x[37]+1.1*x[18]*x[38]+1.54*x[18]*x[39]+1.66*x[18]*x[40]-0.06*x[18]*x[41]+1.66*x[19]*x[20]+0.46*x[19]*x[22]-0.56*x[19]*x[23]+0.68*x[19]*x[24]+1.6*x[19]*x[25]+0.04*x[19]*x[26]+1.24*x[19]*x[27]-1.32*x[19]*x[28]+0.02*x[19]*x[30]+1.08*x[19]*x[31]+1.26*x[19]*x[32]+1.36*x[19]*x[33]+0.82*x[19]*x[34]-1.42*x[19]*x[35]-x[19]*x[36]-0.8*x[19]*x[38]+1.48*x[19]*x[39]-1.78*x[19]*x[40]+(-1.62*x[20]*x[21])-1.06*x[20]*x[22]+0.56*x[20]*x[23]+0.52*x[20]*x[24]-0.58*x[20]*x[25]+0.34*x[20]*x[26]+1.96*x[20]*x[27]+0.42*x[20]*x[28]+0.68*x[20]*x[29]-1.62*x[20]*x[30]+1.86*x[20]*x[31]+1.56*x[20]*x[32]-1.44*x[20]*x[33]-0.68*x[20]*x[34]-1.28*x[20]*x[35]+1.7*x[20]*x[36]-0.1*x[20]*x[37]-0.16*x[20]*x[38]-1.34*x[20]*x[39]-0.96*x[20]*x[40]+0.28*x[20]*x[41]+0.26*x[21]*x[22]+1.46*x[21]*x[23]-1.08*x[21]*x[24]-1.14*x[21]*x[25]-1.06*x[21]*x[26]-1.86*x[21]*x[27]-1.74*x[21]*x[29]+1.8*x[21]*x[30]-0.36*x[21]*x[31]-1.18*x[21]*x[32]+0.8*x[21]*x[33]-1.42*x[21]*x[34]-0.58*x[21]*x[35]+1.94*x[21]*x[36]-0.44*x[21]*x[37]+0.46*x[21]*x[38]-1.76*x[21]*x[39]+0.06*x[21]*x[40]-1.44*x[21]*x[41]+1.8*x[22]*x[23]+1.16*x[22]*x[24]-1.2*x[22]*x[25]+1.34*x[22]*x[26]+0.94*x[22]*x[27]+0.52*x[22]*x[28]+1.08*x[22]*x[29]-1.68*x[22]*x[30]+1.48*x[22]*x[31]+0.68*x[22]*x[32]+0.68*x[22]*x[33]-1.58*x[22]*x[34]+1.62*x[22]*x[35]-0.8*x[22]*x[36]+1.78*x[22]*x[37]+0.46*x[22]*x[38]-0.82*x[22]*x[39]+1.86*x[22]*x[40]+0.98*x[22]*x[41]+1.62*x[23]*x[24]-1.72*x[23]*x[25]+1.7*x[23]*x[26]-0.36*x[23]*x[27]-1.28*x[23]*x[28]-1.28*x[23]*x[29]-1.1*x[23]*x[30]-1.68*x[23]*x[31]-0.32*x[23]*x[32]-0.08*x[23]*x[33]-0.94*x[23]*x[34]+0.76*x[23]*x[35]-0.4*x[23]*x[36]-0.4*x[23]*x[37]+0.68*x[23]*x[38]-0.68*x[23]*x[39]-1.16*x[23]*x[40]+0.32*x[23]*x[41]+(-1.56*x[24]*x[25])-1.18*x[24]*x[26]+1.66*x[24]*x[27]+1.5*x[24]*x[28]+0.4*x[24]*x[29]-1.3*x[24]*x[30]-0.92*x[24]*x[31]+0.86*x[24]*x[32]-1.92*x[24]*x[33]-1.8*x[24]*x[34]-0.16*x[24]*x[35]+0.34*x[24]*x[36]+0.16*x[24]*x[37]+1.06*x[24]*x[38]+1.96*x[24]*x[39]+1.26*x[24]*x[40]+1.18*x[24]*x[41]+1.5*x[25]*x[26]+1.16*x[25]*x[27]-1.52*x[25]*x[28]+0.66*x[25]*x[29]+1.84*x[25]*x[30]+0.68*x[25]*x[31]+1.64*x[25]*x[32]-1.78*x[25]*x[33]-1.5*x[25]*x[34]-1.08*x[25]*x[36]-1.78*x[25]*x[37]-1.22*x[25]*x[38]-1.66*x[25]*x[39]-1.46*x[25]*x[40]-0.34*x[25]*x[41]+1.42*x[26]*x[27]-1.68*x[26]*x[28]+0.66*x[26]*x[29]+1.16*x[26]*x[30]+1.9*x[26]*x[31]-1.74*x[26]*x[32]+1.48*x[26]*x[33]-1.14*x[26]*x[34]+0.64*x[26]*x[35]+0.32*x[26]*x[36]+1.54*x[26]*x[37]+0.16*x[26]*x[38]-1.92*x[26]*x[39]-0.24*x[26]*x[40]-0.1*x[26]*x[41]+(-1.62*x[27]*x[28])-1.88*x[27]*x[29]-0.72*x[27]*x[30]-1.1*x[27]*x[31]+0.3*x[27]*x[32]+1.94*x[27]*x[33]+0.62*x[27]*x[34]-1.96*x[27]*x[35]-1.3*x[27]*x[36]-1.68*x[27]*x[37]-2*x[27]*x[38]-0.64*x[27]*x[39]-0.88*x[27]*x[40]-0.96*x[27]*x[41]+0.7*x[28]*x[30]-0.9*x[28]*x[29]-1.42*x[28]*x[31]+0.6*x[28]*x[32]-1.1*x[28]*x[33]-1.4*x[28]*x[34]+1.22*x[28]*x[35]-1.98*x[28]*x[36]+1.58*x[28]*x[37]+1.78*x[28]*x[38]+0.92*x[28]*x[39]+0.42*x[28]*x[40]-1.1*x[28]*x[41]+(-2*x[29]*x[30])-0.28*x[29]*x[31]+0.02*x[29]*x[32]-0.4*x[29]*x[33]+1.42*x[29]*x[34]+0.34*x[29]*x[35]+1.28*x[29]*x[36]+0.96*x[29]*x[38]+0.76*x[29]*x[39]-0.72*x[29]*x[40]-0.96*x[29]*x[41]+0.42*x[30]*x[31]-1.42*x[30]*x[32]-0.2*x[30]*x[33]+1.3*x[30]*x[34]+0.54*x[30]*x[35]+0.92*x[30]*x[36]-0.84*x[30]*x[37]-1.94*x[30]*x[38]-1.4*x[30]*x[39]+1.28*x[30]*x[40]-1.48*x[30]*x[41]+0.08*x[31]*x[32]-1.38*x[31]*x[33]+1.42*x[31]*x[34]+1.46*x[31]*x[35]+1.28*x[31]*x[36]+1.36*x[31]*x[37]+1.12*x[31]*x[38]-0.58*x[31]*x[39]-0.78*x[31]*x[40]+0.44*x[31]*x[41]+(-1.96*x[32]*x[33])-0.56*x[32]*x[34]+0.66*x[32]*x[35]-0.16*x[32]*x[36]-1.86*x[32]*x[37]-0.84*x[32]*x[38]-0.88*x[32]*x[39]-1.1*x[32]*x[40]+0.4*x[32]*x[41]+1.98*x[33]*x[34]-0.14*x[33]*x[35]+1.66*x[33]*x[36]-x[33]*x[37]-0.14*x[33]*x[38]-1.56*x[33]*x[39]-1.48*x[33]*x[40]+0.78*x[33]*x[41]+1.88*x[34]*x[36]-0.68*x[34]*x[35]-0.38*x[34]*x[37]-1.5*x[34]*x[38]+0.4*x[34]*x[39]-1.06*x[34]*x[40]-1.36*x[34]*x[41]+0.94*x[35]*x[37]-0.58*x[35]*x[36]-0.36*x[35]*x[38]+1.94*x[35]*x[39]+0.98*x[35]*x[40]+0.68*x[35]*x[41]+(-1.7*x[36]*x[38])-1.12*x[36]*x[40]+1.76*x[36]*x[41]+0.58*x[37]*x[38]+1.9*x[37]*x[39]+0.98*x[37]*x[40]+0.34*x[37]*x[41]+(-0.04*x[38]*x[39])-1.34*x[38]*x[40]+1.22*x[38]*x[41]+0.38*x[39]*x[40]-0.66*x[39]*x[41]+1.48*x[40]*x[41]+0.78*x[3]*x[3]-0.99*x[2]*x[2]-0.23*x[4]*x[4]-0.31*x[5]*x[5]+0.32*x[6]*x[6]+0.26*x[7]*x[7]+0.42*x[8]*x[8]+0.56*x[9]*x[9]+0.03*x[10]*x[10]+0.76*x[11]*x[11]-0.54*x[12]*x[12]+0.4*x[13]*x[13]+0.95*x[14]*x[14]+0.75*x[15]*x[15]-0.19*x[16]*x[16]-0.18*x[17]*x[17]+0.35*x[18]*x[18]-0.47*x[19]*x[19]+0.58*x[20]*x[20]-0.66*x[21]*x[21]+0.92*x[22]*x[22]-0.8*x[23]*x[23]+0.94*x[24]*x[24]+0.55*x[25]*x[25]-0.6*x[26]*x[26]-0.12*x[27]*x[27]+0.41*x[28]*x[28]-0.17*x[29]*x[29]-0.03*x[30]*x[30]+0.49*x[31]*x[31]+0.58*x[32]*x[32]+0.44*x[33]*x[33]+0.9*x[34]*x[34]-0.15*x[35]*x[35]+0.82*x[36]*x[36]-x[37]*x[37]+0.21*x[38]*x[38]+0.11*x[39]*x[39]+0.98*x[40]*x[40]-0.29*x[41]*x[41]-0.06*x[2]+0.31*x[3]-0.97*x[4]+0.52*x[5]-0.79*x[6]+0.33*x[7]+0.58*x[8]+0.96*x[9]+0.37*x[10]+0.96*x[11]+0.04*x[12]-0.09*x[13]+0.06*x[14]+0.08*x[15]+x[16]-0.6*x[17]-0.79*x[18]-0.69*x[19]+0.31*x[20]-0.98*x[21]+0.57*x[22]+0.18*x[23]+0.74*x[24]-0.27*x[25]+0.62*x[26]-0.7*x[27]-0.03*x[28]+0.37*x[29]+0.88*x[30]-0.62*x[31]+0.32*x[32]+0.41*x[33]+0.13*x[34]+0.11*x[35]+0.12*x[36]+0.46*x[37]+0.51*x[38]-0.33*x[39]+0.52*x[40]-0.7*x[41])+x[1] == 0.0)
@NLconstraint(m, e2, 1.78*x[2]*x[3]+1.8*x[2]*x[4]+1.44*x[2]*x[6]-0.38*x[2]*x[7]+1.88*x[2]*x[8]-0.74*x[2]*x[9]+0.94*x[2]*x[10]-0.38*x[2]*x[11]-0.98*x[2]*x[12]+1.1*x[2]*x[13]-0.92*x[2]*x[14]-0.7*x[2]*x[15]+0.48*x[2]*x[16]+1.82*x[2]*x[17]+1.58*x[2]*x[18]-1.12*x[2]*x[19]-0.02*x[2]*x[20]+0.96*x[2]*x[21]-1.88*x[2]*x[22]-0.46*x[2]*x[23]+0.62*x[2]*x[24]-1.56*x[2]*x[25]-0.02*x[2]*x[26]+1.48*x[2]*x[27]+0.04*x[2]*x[28]+1.74*x[2]*x[29]-1.44*x[2]*x[30]+1.32*x[2]*x[31]-0.98*x[2]*x[32]+1.64*x[2]*x[33]+1.26*x[2]*x[34]-1.76*x[2]*x[35]+0.84*x[2]*x[36]-1.56*x[2]*x[37]-0.24*x[2]*x[39]-0.34*x[2]*x[40]+1.54*x[2]*x[41]+0.38*x[3]*x[4]-0.64*x[3]*x[5]-0.44*x[3]*x[6]-1.14*x[3]*x[7]-1.72*x[3]*x[9]+1.14*x[3]*x[10]-0.5*x[3]*x[11]-0.32*x[3]*x[12]-1.48*x[3]*x[13]+1.7*x[3]*x[14]-0.54*x[3]*x[15]-1.8*x[3]*x[16]+0.18*x[3]*x[17]+1.1*x[3]*x[18]+1.24*x[3]*x[19]-1.06*x[3]*x[20]+0.96*x[3]*x[21]+0.16*x[3]*x[22]-1.54*x[3]*x[23]+0.64*x[3]*x[24]+1.56*x[3]*x[25]+1.22*x[3]*x[26]+0.3*x[3]*x[27]+1.34*x[3]*x[28]-0.84*x[3]*x[29]-0.16*x[3]*x[30]+1.1*x[3]*x[31]-0.14*x[3]*x[32]+1.18*x[3]*x[33]+0.28*x[3]*x[34]+0.46*x[3]*x[35]-0.28*x[3]*x[36]-1.6*x[3]*x[37]-0.86*x[3]*x[38]-1.12*x[3]*x[39]-1.4*x[3]*x[40]+0.82*x[3]*x[41]+(-2*x[4]*x[5])-0.62*x[4]*x[6]-1.68*x[4]*x[7]-1.68*x[4]*x[8]+0.64*x[4]*x[9]+1.78*x[4]*x[10]-1.48*x[4]*x[11]+0.06*x[4]*x[12]-0.66*x[4]*x[13]-0.46*x[4]*x[14]-0.72*x[4]*x[15]-1.72*x[4]*x[16]-1.38*x[4]*x[17]-0.2*x[4]*x[18]-0.64*x[4]*x[19]+1.4*x[4]*x[20]-0.84*x[4]*x[21]-1.98*x[4]*x[22]-1.68*x[4]*x[23]+1.76*x[4]*x[24]-1.96*x[4]*x[25]+1.38*x[4]*x[26]-1.8*x[4]*x[28]+1.44*x[4]*x[29]+1.26*x[4]*x[30]-0.22*x[4]*x[31]+2*x[4]*x[32]-1.84*x[4]*x[33]-0.24*x[4]*x[34]+1.18*x[4]*x[35]-0.8*x[4]*x[36]-1.84*x[4]*x[37]-0.94*x[4]*x[38]-1.18*x[4]*x[39]-1.2*x[4]*x[40]+1.48*x[4]*x[41]+0.16*x[5]*x[6]+0.78*x[5]*x[7]+1.46*x[5]*x[8]+0.02*x[5]*x[9]-0.52*x[5]*x[10]-1.96*x[5]*x[11]-0.5*x[5]*x[12]+0.34*x[5]*x[13]+1.72*x[5]*x[14]+0.32*x[5]*x[15]-0.48*x[5]*x[16]+1.82*x[5]*x[17]+1.42*x[5]*x[18]+0.64*x[5]*x[19]+0.04*x[5]*x[20]-1.1*x[5]*x[21]-1.14*x[5]*x[22]+0.56*x[5]*x[23]+0.54*x[5]*x[24]+0.3*x[5]*x[25]-1.82*x[5]*x[26]+1.88*x[5]*x[27]-1.76*x[5]*x[29]-1.06*x[5]*x[30]-1.94*x[5]*x[31]-1.06*x[5]*x[32]+0.4*x[5]*x[33]+1.76*x[5]*x[34]+1.9*x[5]*x[35]-0.8*x[5]*x[36]-1.52*x[5]*x[37]+1.22*x[5]*x[38]-1.92*x[5]*x[39]+0.94*x[5]*x[40]+0.5*x[5]*x[41]+(-1.4*x[6]*x[7])-0.18*x[6]*x[8]-0.74*x[6]*x[9]-1.84*x[6]*x[10]+0.3*x[6]*x[11]+1.2*x[6]*x[12]+0.4*x[6]*x[13]+0.96*x[6]*x[14]-0.36*x[6]*x[15]+0.04*x[6]*x[16]+1.56*x[6]*x[17]-0.7*x[6]*x[18]-1.82*x[6]*x[19]+1.7*x[6]*x[20]-0.24*x[6]*x[21]+0.4*x[6]*x[22]-0.98*x[6]*x[23]+1.1*x[6]*x[24]+0.26*x[6]*x[25]+0.94*x[6]*x[26]-1.34*x[6]*x[27]+1.72*x[6]*x[28]+1.5*x[6]*x[29]+1.48*x[6]*x[30]+0.86*x[6]*x[31]+1.66*x[6]*x[32]-1.68*x[6]*x[33]-0.8*x[6]*x[34]-1.98*x[6]*x[35]+1.98*x[6]*x[37]-1.1*x[6]*x[39]+1.74*x[6]*x[40]-1.58*x[6]*x[41]+0.24*x[7]*x[9]-0.16*x[7]*x[8]+1.2*x[7]*x[10]+1.78*x[7]*x[11]-0.44*x[7]*x[12]+0.82*x[7]*x[13]+0.96*x[7]*x[14]+0.36*x[7]*x[15]-0.7*x[7]*x[16]-0.44*x[7]*x[17]-0.3*x[7]*x[18]-1.22*x[7]*x[19]-1.56*x[7]*x[20]-1.24*x[7]*x[21]-1.5*x[7]*x[22]+1.82*x[7]*x[23]+1.42*x[7]*x[24]+1.34*x[7]*x[25]+0.8*x[7]*x[26]-1.94*x[7]*x[27]-0.18*x[7]*x[28]-1.18*x[7]*x[29]+1.76*x[7]*x[30]-0.7*x[7]*x[31]+1.38*x[7]*x[32]-0.7*x[7]*x[33]-0.86*x[7]*x[34]-0.52*x[7]*x[35]-0.94*x[7]*x[36]-0.96*x[7]*x[37]-1.46*x[7]*x[38]+1.94*x[7]*x[39]+0.54*x[7]*x[40]+0.68*x[7]*x[41]+1.78*x[8]*x[9]-1.66*x[8]*x[10]-0.84*x[8]*x[11]-1.86*x[8]*x[12]-0.28*x[8]*x[13]+1.5*x[8]*x[14]+1.48*x[8]*x[15]+1.38*x[8]*x[16]+1.88*x[8]*x[17]-1.3*x[8]*x[18]+1.48*x[8]*x[19]+1.46*x[8]*x[20]-0.2*x[8]*x[21]+1.86*x[8]*x[22]+1.32*x[8]*x[24]+0.08*x[8]*x[25]+0.64*x[8]*x[26]+0.3*x[8]*x[27]+0.4*x[8]*x[28]+0.08*x[8]*x[29]+0.9*x[8]*x[30]-1.88*x[8]*x[31]+0.84*x[8]*x[32]+0.2*x[8]*x[33]-0.58*x[8]*x[34]+0.92*x[8]*x[35]+0.34*x[8]*x[36]+1.82*x[8]*x[37]-1.56*x[8]*x[38]+0.96*x[8]*x[40]+0.54*x[8]*x[41]+(-0.78*x[9]*x[10])-1.36*x[9]*x[11]-0.92*x[9]*x[12]-1.58*x[9]*x[13]+0.26*x[9]*x[14]-1.82*x[9]*x[15]+0.34*x[9]*x[16]-0.06*x[9]*x[17]-1.8*x[9]*x[18]+1.88*x[9]*x[20]+0.24*x[9]*x[21]-1.94*x[9]*x[22]+0.82*x[9]*x[23]+1.12*x[9]*x[24]-0.4*x[9]*x[25]-0.18*x[9]*x[26]-1.36*x[9]*x[27]+0.58*x[9]*x[28]+1.86*x[9]*x[29]-1.02*x[9]*x[30]-0.38*x[9]*x[31]+1.38*x[9]*x[32]-1.08*x[9]*x[33]+0.06*x[9]*x[34]-1.68*x[9]*x[35]+1.56*x[9]*x[36]+0.66*x[9]*x[37]+1.9*x[9]*x[38]+0.72*x[9]*x[39]+1.6*x[9]*x[40]+0.94*x[9]*x[41]+1.98*x[10]*x[11]+0.3*x[10]*x[12]+1.32*x[10]*x[13]-0.88*x[10]*x[14]+1.8*x[10]*x[16]+0.84*x[10]*x[17]-1.7*x[10]*x[18]-0.06*x[10]*x[19]-0.46*x[10]*x[20]+0.42*x[10]*x[21]+0.38*x[10]*x[22]+1.02*x[10]*x[23]+0.06*x[10]*x[24]+1.94*x[10]*x[25]+1.34*x[10]*x[26]-0.2*x[10]*x[27]+1.9*x[10]*x[28]+1.72*x[10]*x[29]-1.38*x[10]*x[30]+1.7*x[10]*x[31]-0.96*x[10]*x[32]+0.66*x[10]*x[33]-1.04*x[10]*x[34]+0.52*x[10]*x[35]-0.1*x[10]*x[36]+0.78*x[10]*x[37]-0.2*x[10]*x[38]+1.12*x[10]*x[39]-0.7*x[10]*x[40]+1.48*x[10]*x[41]+0.58*x[11]*x[12]+1.46*x[11]*x[13]+1.68*x[11]*x[14]-0.52*x[11]*x[15]-0.06*x[11]*x[16]+0.98*x[11]*x[17]+0.62*x[11]*x[18]+0.58*x[11]*x[19]+1.38*x[11]*x[20]-0.26*x[11]*x[21]+1.9*x[11]*x[22]+1.86*x[11]*x[23]-0.18*x[11]*x[24]+1.2*x[11]*x[25]+0.08*x[11]*x[27]+0.88*x[11]*x[28]-0.9*x[11]*x[29]-1.64*x[11]*x[30]-1.52*x[11]*x[31]+0.62*x[11]*x[32]-0.12*x[11]*x[33]-1.14*x[11]*x[34]-0.1*x[11]*x[35]+0.34*x[11]*x[36]-0.46*x[11]*x[37]-1.9*x[11]*x[38]-0.18*x[11]*x[39]-1.26*x[11]*x[40]-1.48*x[11]*x[41]+1.72*x[12]*x[13]-0.08*x[12]*x[14]-0.32*x[12]*x[15]+0.68*x[12]*x[16]-0.32*x[12]*x[18]+1.06*x[12]*x[19]-1.98*x[12]*x[20]+1.1*x[12]*x[21]+0.56*x[12]*x[22]+1.18*x[12]*x[23]+1.48*x[12]*x[24]+1.64*x[12]*x[25]-0.3*x[12]*x[26]+0.88*x[12]*x[27]-0.52*x[12]*x[28]+1.24*x[12]*x[29]-1.56*x[12]*x[30]-1.42*x[12]*x[31]+1.56*x[12]*x[32]+1.9*x[12]*x[33]-0.98*x[12]*x[35]+0.86*x[12]*x[36]-0.74*x[12]*x[37]+1.52*x[12]*x[38]-1.3*x[12]*x[39]-0.3*x[12]*x[40]+1.06*x[12]*x[41]+0.84*x[13]*x[14]-1.66*x[13]*x[15]-0.26*x[13]*x[17]+0.4*x[13]*x[18]+0.36*x[13]*x[19]-1.42*x[13]*x[20]+2*x[13]*x[21]+0.36*x[13]*x[22]-1.22*x[13]*x[23]-1.08*x[13]*x[24]-0.26*x[13]*x[25]+0.28*x[13]*x[26]-1.24*x[13]*x[27]+1.76*x[13]*x[28]+0.6*x[13]*x[29]-1.74*x[13]*x[30]+1.2*x[13]*x[31]-0.06*x[13]*x[32]-0.84*x[13]*x[33]-1.9*x[13]*x[34]+1.4*x[13]*x[35]-1.24*x[13]*x[36]-2*x[13]*x[37]+0.34*x[13]*x[38]+1.36*x[13]*x[39]-1.66*x[13]*x[40]+0.86*x[13]*x[41]+0.82*x[14]*x[16]-1.26*x[14]*x[15]+1.56*x[14]*x[17]+1.34*x[14]*x[18]-0.86*x[14]*x[19]+1.18*x[14]*x[20]+1.8*x[14]*x[21]+0.62*x[14]*x[22]-0.46*x[14]*x[23]+0.88*x[14]*x[24]+1.56*x[14]*x[25]+0.06*x[14]*x[26]-0.76*x[14]*x[27]+0.02*x[14]*x[28]+0.8*x[14]*x[29]-1.62*x[14]*x[30]+0.06*x[14]*x[31]+0.04*x[14]*x[32]+1.6*x[14]*x[33]-1.06*x[14]*x[34]-1.2*x[14]*x[35]+0.82*x[14]*x[36]+0.4*x[14]*x[37]-1.54*x[14]*x[38]-1.08*x[14]*x[39]-1.44*x[14]*x[40]-1.86*x[14]*x[41]+0.32*x[15]*x[16]+1.22*x[15]*x[17]-1.58*x[15]*x[18]+1.74*x[15]*x[19]+1.1*x[15]*x[20]+0.44*x[15]*x[21]-0.48*x[15]*x[22]+1.78*x[15]*x[23]-0.82*x[15]*x[24]-0.9*x[15]*x[25]+0.98*x[15]*x[27]-1.86*x[15]*x[28]+0.58*x[15]*x[29]-0.24*x[15]*x[30]+1.64*x[15]*x[31]-0.32*x[15]*x[32]-0.66*x[15]*x[33]+1.14*x[15]*x[34]+0.58*x[15]*x[35]-1.02*x[15]*x[36]+0.46*x[15]*x[37]-0.14*x[15]*x[38]+1.12*x[15]*x[39]-0.6*x[15]*x[40]+0.42*x[15]*x[41]+1.46*x[16]*x[18]-0.3*x[16]*x[17]-0.72*x[16]*x[19]+1.2*x[16]*x[20]-0.84*x[16]*x[21]+1.16*x[16]*x[22]+1.22*x[16]*x[23]-1.98*x[16]*x[24]-0.6*x[16]*x[25]+1.96*x[16]*x[26]+0.96*x[16]*x[27]-1.64*x[16]*x[29]-0.94*x[16]*x[30]+0.86*x[16]*x[31]-1.66*x[16]*x[32]-0.04*x[16]*x[33]-0.2*x[16]*x[34]+1.82*x[16]*x[35]-1.1*x[16]*x[36]-1.06*x[16]*x[37]+1.42*x[16]*x[38]+1.34*x[16]*x[39]+0.1*x[16]*x[40]+1.74*x[16]*x[41]+1.46*x[17]*x[19]-1.74*x[17]*x[18]+1.6*x[17]*x[21]+1.94*x[17]*x[22]+0.26*x[17]*x[23]+1.7*x[17]*x[24]-0.5*x[17]*x[25]+0.9*x[17]*x[26]-1.46*x[17]*x[27]-0.82*x[17]*x[28]+0.28*x[17]*x[29]+0.52*x[17]*x[30]+0.12*x[17]*x[31]+0.96*x[17]*x[32]+0.06*x[17]*x[33]+1.88*x[17]*x[34]-1.62*x[17]*x[35]-0.02*x[17]*x[36]+0.74*x[17]*x[37]+1.36*x[17]*x[38]-0.26*x[17]*x[39]-0.56*x[17]*x[40]+0.52*x[17]*x[41]+0.72*x[18]*x[19]+0.48*x[18]*x[20]+0.24*x[18]*x[21]-0.96*x[18]*x[22]-1.26*x[18]*x[23]+0.92*x[18]*x[24]-1.7*x[18]*x[25]+0.3*x[18]*x[26]-1.84*x[18]*x[27]-0.76*x[18]*x[28]+1.7*x[18]*x[29]+1.52*x[18]*x[30]+1.62*x[18]*x[31]+0.5*x[18]*x[33]-0.86*x[18]*x[34]+1.7*x[18]*x[35]+0.86*x[18]*x[36]-0.54*x[18]*x[37]-1.04*x[18]*x[38]+1.38*x[18]*x[39]-0.28*x[18]*x[40]-1.3*x[18]*x[41]+0.88*x[19]*x[21]-0.72*x[19]*x[20]-0.94*x[19]*x[22]-1.8*x[19]*x[23]+0.66*x[19]*x[24]+1.36*x[19]*x[25]+1.06*x[19]*x[26]-0.68*x[19]*x[27]+0.78*x[19]*x[28]-1.72*x[19]*x[29]-0.82*x[19]*x[30]-1.28*x[19]*x[31]-x[19]*x[32]-1.14*x[19]*x[33]+0.62*x[19]*x[34]+0.3*x[19]*x[35]-1.58*x[19]*x[36]+1.74*x[19]*x[37]+1.6*x[19]*x[38]-0.22*x[19]*x[39]+0.82*x[19]*x[40]-1.94*x[19]*x[41]+0.68*x[20]*x[21]-1.58*x[20]*x[22]+1.3*x[20]*x[23]+0.94*x[20]*x[25]-1.38*x[20]*x[26]-1.92*x[20]*x[27]+1.38*x[20]*x[28]+1.62*x[20]*x[29]+0.72*x[20]*x[30]+x[20]*x[31]-0.8*x[20]*x[32]-1.5*x[20]*x[33]-1.38*x[20]*x[34]+1.64*x[20]*x[35]-0.84*x[20]*x[36]-1.1*x[20]*x[37]-1.92*x[20]*x[38]-1.86*x[20]*x[39]-1.44*x[20]*x[40]+1.82*x[20]*x[41]+(-0.08*x[21]*x[22])-0.44*x[21]*x[23]+1.14*x[21]*x[24]-1.8*x[21]*x[25]+0.52*x[21]*x[26]+0.04*x[21]*x[27]-1.22*x[21]*x[28]+1.06*x[21]*x[29]+1.66*x[21]*x[30]-1.42*x[21]*x[31]-0.36*x[21]*x[32]-1.68*x[21]*x[33]-0.32*x[21]*x[34]+1.84*x[21]*x[35]+1.16*x[21]*x[36]-0.1*x[21]*x[37]+1.98*x[21]*x[38]+0.88*x[21]*x[39]+1.68*x[21]*x[40]+0.44*x[21]*x[41]+1.66*x[22]*x[24]-1.2*x[22]*x[23]+1.22*x[22]*x[25]+0.56*x[22]*x[26]+1.74*x[22]*x[27]-0.3*x[22]*x[28]+1.16*x[22]*x[29]+0.82*x[22]*x[30]+0.38*x[22]*x[31]+1.32*x[22]*x[32]+0.12*x[22]*x[33]-1.32*x[22]*x[34]-1.2*x[22]*x[35]-1.64*x[22]*x[36]-0.34*x[22]*x[37]+1.76*x[22]*x[38]+1.16*x[22]*x[39]+1.14*x[22]*x[40]+0.7*x[22]*x[41]+0.7*x[23]*x[24]-0.7*x[23]*x[25]-0.58*x[23]*x[26]+0.08*x[23]*x[27]-1.44*x[23]*x[28]+0.82*x[23]*x[29]-1.74*x[23]*x[30]-1.2*x[23]*x[31]+0.56*x[23]*x[32]-1.2*x[23]*x[34]-1.4*x[23]*x[35]+0.48*x[23]*x[36]+1.12*x[23]*x[37]-0.88*x[23]*x[39]+1.54*x[23]*x[40]+1.26*x[23]*x[41]+0.26*x[24]*x[25]+1.58*x[24]*x[26]+0.68*x[24]*x[27]-0.46*x[24]*x[28]+1.2*x[24]*x[29]+0.56*x[24]*x[30]+0.76*x[24]*x[31]-1.36*x[24]*x[32]+1.84*x[24]*x[33]+0.46*x[24]*x[34]-1.84*x[24]*x[35]-0.26*x[24]*x[36]-1.94*x[24]*x[37]-0.54*x[24]*x[38]-0.76*x[24]*x[39]-1.16*x[24]*x[40]+0.48*x[24]*x[41]+1.68*x[25]*x[27]-0.3*x[25]*x[26]-1.62*x[25]*x[28]-0.36*x[25]*x[29]+1.54*x[25]*x[30]+1.72*x[25]*x[31]+1.9*x[25]*x[32]+1.96*x[25]*x[33]+1.9*x[25]*x[34]-1.32*x[25]*x[35]-0.26*x[25]*x[36]-1.1*x[25]*x[37]-1.42*x[25]*x[38]-0.98*x[25]*x[39]+1.52*x[25]*x[40]+0.02*x[25]*x[41]+0.08*x[26]*x[28]-1.58*x[26]*x[27]+1.36*x[26]*x[29]-0.16*x[26]*x[30]+1.12*x[26]*x[31]-1.46*x[26]*x[32]-1.74*x[26]*x[33]+1.24*x[26]*x[34]-1.14*x[26]*x[35]-1.36*x[26]*x[36]+1.16*x[26]*x[37]-0.92*x[26]*x[38]-1.96*x[26]*x[39]-0.22*x[26]*x[40]+1.64*x[26]*x[41]+(-1.24*x[27]*x[28])-1.86*x[27]*x[29]-1.14*x[27]*x[30]-0.26*x[27]*x[31]+0.26*x[27]*x[32]-1.46*x[27]*x[33]+1.92*x[27]*x[34]+0.14*x[27]*x[35]-1.94*x[27]*x[36]-0.9*x[27]*x[37]-0.1*x[27]*x[38]+0.3*x[27]*x[39]+1.78*x[27]*x[40]+2*x[27]*x[41]+0.1*x[28]*x[29]-x[28]*x[30]-0.76*x[28]*x[31]+0.9*x[28]*x[32]+0.24*x[28]*x[33]+0.34*x[28]*x[34]+0.7*x[28]*x[35]-0.34*x[28]*x[36]+0.02*x[28]*x[37]+1.16*x[28]*x[38]+0.5*x[28]*x[39]+0.84*x[28]*x[40]+1.72*x[28]*x[41]+(-0.68*x[29]*x[30])-1.74*x[29]*x[31]+0.16*x[29]*x[32]+1.42*x[29]*x[33]+1.52*x[29]*x[34]+1.3*x[29]*x[35]-1.98*x[29]*x[36]-1.14*x[29]*x[37]+1.72*x[29]*x[38]-0.76*x[29]*x[39]+0.7*x[29]*x[40]-0.58*x[29]*x[41]+0.24*x[30]*x[31]+0.06*x[30]*x[32]-1.96*x[30]*x[33]+0.6*x[30]*x[34]-1.54*x[30]*x[35]-1.64*x[30]*x[36]-1.98*x[30]*x[37]+1.72*x[30]*x[38]+0.74*x[30]*x[39]+1.4*x[30]*x[40]+0.58*x[30]*x[41]+(-0.38*x[31]*x[32])-1.74*x[31]*x[33]+1.76*x[31]*x[34]-0.88*x[31]*x[35]-1.34*x[31]*x[36]-0.14*x[31]*x[37]-1.3*x[31]*x[38]-0.02*x[31]*x[39]-1.24*x[31]*x[40]+1.32*x[31]*x[41]+0.24*x[32]*x[33]-1.88*x[32]*x[34]-x[32]*x[35]+0.74*x[32]*x[36]+1.5*x[32]*x[37]+1.08*x[32]*x[38]-0.78*x[32]*x[39]-1.08*x[32]*x[40]-1.42*x[32]*x[41]+(-0.94*x[33]*x[34])-0.84*x[33]*x[35]-0.86*x[33]*x[36]+0.58*x[33]*x[37]+0.6*x[33]*x[38]+1.78*x[33]*x[39]+1.72*x[33]*x[40]+1.48*x[33]*x[41]+0.9*x[34]*x[35]-1.62*x[34]*x[36]+1.7*x[34]*x[37]-0.5*x[34]*x[38]+1.64*x[34]*x[39]-0.08*x[34]*x[40]+1.16*x[34]*x[41]+1.76*x[35]*x[36]+1.04*x[35]*x[37]+0.44*x[35]*x[38]-0.12*x[35]*x[39]+0.38*x[35]*x[40]-1.56*x[35]*x[41]+1.5*x[36]*x[38]-1.44*x[36]*x[37]+1.54*x[36]*x[39]+0.46*x[36]*x[40]-0.82*x[36]*x[41]+(-0.72*x[37]*x[38])-1.66*x[37]*x[39]+0.7*x[37]*x[40]-0.7*x[37]*x[41]+0.62*x[38]*x[39]+0.9*x[38]*x[40]+0.92*x[38]*x[41]+(-0.42*x[39]*x[40])-0.88*x[39]*x[41]+0.42*x[40]*x[41]+(-0.77*x[2]*x[2])-0.63*x[3]*x[3]+0.51*x[4]*x[4]-0.52*x[5]*x[5]+0.06*x[7]*x[7]+0.06*x[8]*x[8]+0.5*x[9]*x[9]-0.74*x[10]*x[10]-0.6*x[11]*x[11]+0.63*x[13]*x[13]+0.35*x[14]*x[14]+0.02*x[15]*x[15]+0.03*x[16]*x[16]-0.69*x[17]*x[17]-0.37*x[18]*x[18]-0.57*x[19]*x[19]-0.94*x[20]*x[20]-0.18*x[21]*x[21]+0.96*x[22]*x[22]+0.59*x[23]*x[23]+0.68*x[24]*x[24]+0.34*x[25]*x[25]+0.5*x[26]*x[26]-0.17*x[27]*x[27]-0.32*x[28]*x[28]-0.61*x[29]*x[29]+x[30]*x[30]+0.09*x[31]*x[31]+0.25*x[32]*x[32]+0.42*x[33]*x[33]-0.65*x[34]*x[34]+0.81*x[35]*x[35]-0.07*x[36]*x[36]-0.45*x[37]*x[37]-0.61*x[38]*x[38]-0.87*x[39]*x[39]-0.66*x[40]*x[40]+0.88*x[41]*x[41]+0.74*x[2]-0.07*x[3]-0.39*x[4]+0.03*x[5]+0.66*x[6]-0.1*x[7]+0.32*x[8]-0.91*x[9]-0.07*x[10]+0.17*x[11]-0.12*x[12]+0.48*x[13]-0.41*x[14]-0.6*x[15]+0.75*x[16]-0.41*x[17]-0.34*x[18]+0.02*x[19]+0.71*x[20]-0.68*x[21]-0.34*x[22]+0.71*x[23]+0.8*x[24]+0.8*x[25]-0.9*x[26]-0.66*x[27]-0.33*x[28]+0.25*x[29]+0.66*x[30]-0.23*x[31]+0.9*x[32]+0.11*x[33]+0.51*x[34]-0.44*x[35]+0.11*x[36]-0.18*x[37]-0.31*x[38]+0.91*x[39]+0.23*x[40]-0.4*x[41] <= 34.95)
@constraint(m, e3, -0.39*x[2]+0.55*x[3]-0.15*x[4]-0.08*x[5]-0.73*x[6]-0.96*x[7]-0.97*x[8]-0.41*x[9]+0.85*x[10]-0.72*x[11]+0.57*x[12]-0.61*x[13]+0.26*x[14]-0.61*x[15]+0.64*x[16]-0.74*x[17]-0.64*x[18]-0.52*x[19]-0.91*x[20]+0.69*x[21]-0.11*x[22]+0.49*x[23]+0.07*x[24]-0.55*x[25]+0.91*x[26]+0.3*x[27]-0.8*x[28]+0.68*x[29]+0.93*x[30]+0.22*x[31]+0.34*x[32]-0.04*x[33]-0.11*x[34]+0.8*x[35]-0.86*x[36]+0.59*x[37]+0.06*x[38]+0.52*x[39]+0.5*x[40]-0.58*x[41] == 0.96)
@constraint(m, e4, -0.37*x[2]-0.8*x[3]+0.72*x[4]-0.23*x[5]-0.61*x[6]+0.49*x[7]-0.18*x[8]-0.75*x[9]+0.09*x[10]-0.2*x[11]+0.02*x[12]-0.17*x[13]+0.64*x[14]+0.6*x[15]+0.57*x[16]+0.09*x[17]-0.33*x[18]+0.04*x[19]+0.91*x[20]+0.68*x[21]-0.15*x[22]-0.5*x[23]-0.62*x[24]+0.94*x[25]+0.67*x[26]+0.33*x[27]-0.1*x[28]-0.35*x[29]-0.24*x[30]-0.22*x[31]+0.76*x[32]+0.29*x[33]+x[34]+0.27*x[35]-0.89*x[36]+0.99*x[37]-0.32*x[38]-0.42*x[39]-x[40]+0.91*x[41] == -0.36)
@constraint(m, e5, -0.12*x[2]+0.53*x[3]+0.41*x[4]-0.8*x[5]+0.37*x[6]+0.88*x[7]-0.47*x[8]-0.09*x[9]-0.93*x[10]-0.77*x[11]-0.62*x[12]-0.75*x[13]-0.3*x[14]-0.36*x[16]+0.33*x[17]-0.16*x[18]-0.66*x[19]+0.91*x[20]+0.54*x[21]-0.61*x[22]-0.91*x[23]-0.44*x[24]+0.87*x[25]-0.83*x[26]-0.27*x[27]+0.24*x[28]-0.05*x[29]+0.64*x[30]-0.39*x[31]+0.77*x[32]+0.84*x[33]-0.46*x[34]+0.43*x[35]+0.7*x[36]+0.68*x[37]-0.99*x[38]-0.78*x[39]+0.98*x[40]-0.81*x[41] == 0.25)
@constraint(m, e6, -0.31*x[2]+0.46*x[3]+0.81*x[4]-0.14*x[5]-0.84*x[6]+0.27*x[7]-0.27*x[8]+0.2*x[9]+0.87*x[10]+0.46*x[11]+0.14*x[12]-0.95*x[13]-0.57*x[14]-0.25*x[15]-0.43*x[16]+0.97*x[17]+0.85*x[18]-0.06*x[19]-0.27*x[20]-0.52*x[21]-0.72*x[22]+0.91*x[23]+0.32*x[24]-0.97*x[25]-0.76*x[26]+0.57*x[27]-0.13*x[28]-0.16*x[29]+0.06*x[30]+0.87*x[31]+0.42*x[32]-0.62*x[33]-0.65*x[34]-0.11*x[35]-0.44*x[36]-0.88*x[37]-0.25*x[38]-0.77*x[39]-0.69*x[40]-0.63*x[41] == -0.69)
@constraint(m, e7, -0.35*x[2]-0.65*x[3]-0.67*x[4]-0.32*x[5]+0.78*x[6]-0.94*x[7]-0.55*x[8]+0.9*x[9]+0.41*x[10]-0.77*x[11]-0.52*x[12]-0.9*x[13]+0.93*x[14]+0.89*x[15]+0.59*x[16]+0.7*x[17]-0.38*x[18]-0.52*x[19]-0.99*x[20]+0.36*x[21]-0.25*x[22]+0.52*x[23]-0.7*x[24]+0.79*x[25]-0.39*x[26]+0.91*x[27]+0.15*x[28]-0.36*x[29]-0.5*x[30]+0.02*x[31]+0.17*x[32]+0.71*x[33]-0.42*x[34]-0.49*x[35]-0.45*x[36]+x[37]-0.28*x[38]-0.32*x[39]+0.25*x[40]+0.43*x[41] == 0.63)
@constraint(m, e8, -0.1*x[2]-0.64*x[3]+0.56*x[4]-0.2*x[5]-0.58*x[6]-0.25*x[7]+0.62*x[8]-0.49*x[9]+0.43*x[10]-0.42*x[11]-0.83*x[12]-0.15*x[13]+0.82*x[14]-0.1*x[15]-0.36*x[16]-0.7*x[17]-0.71*x[18]+0.54*x[19]+0.92*x[20]-0.98*x[21]-0.62*x[22]+0.74*x[23]-0.33*x[24]+0.03*x[25]-0.53*x[26]+0.64*x[27]+0.07*x[28]+0.97*x[29]-0.79*x[30]-0.61*x[31]+0.86*x[32]+0.56*x[33]+0.46*x[34]-0.69*x[35]+0.5*x[36]-0.03*x[37]+0.05*x[38]+0.46*x[39]-0.74*x[40]-0.03*x[41] == 0.74)
@constraint(m, e9, 0.67*x[2]+0.17*x[3]-0.06*x[4]+0.3*x[5]+0.33*x[6]-0.13*x[7]+0.26*x[8]-0.96*x[9]-0.3*x[11]-0.74*x[12]-0.69*x[13]+0.3*x[14]-0.5*x[15]-0.36*x[16]-0.34*x[17]+0.49*x[18]+0.98*x[19]-0.84*x[20]-0.08*x[21]+0.79*x[22]-0.16*x[23]+0.92*x[24]-0.35*x[25]-0.35*x[26]-0.61*x[27]+0.79*x[28]+0.33*x[29]+0.02*x[30]-0.24*x[31]+0.57*x[32]+0.55*x[33]-0.22*x[34]-0.3*x[35]+0.95*x[36]-0.1*x[37]-0.96*x[38]+0.33*x[39]+0.11*x[40]+0.49*x[41] == 0.77)
@constraint(m, e10, -0.59*x[2]-0.75*x[3]-0.91*x[4]-0.95*x[5]+0.3*x[6]-0.31*x[7]+0.47*x[8]+0.72*x[9]+0.36*x[10]-0.96*x[11]+0.46*x[12]+0.05*x[13]-0.94*x[14]-0.61*x[15]-0.62*x[16]-0.09*x[17]-0.56*x[18]+0.67*x[19]-0.85*x[20]-0.7*x[21]-0.64*x[22]-0.82*x[23]-0.7*x[24]-0.05*x[25]-0.96*x[26]-0.32*x[27]-0.01*x[28]-0.66*x[29]-0.78*x[30]+0.86*x[31]-0.79*x[32]+0.86*x[33]+0.32*x[34]-0.12*x[35]+0.88*x[36]+0.65*x[37]+0.97*x[38]+0.72*x[39]+0.54*x[40]-0.75*x[41] == 0.15)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 