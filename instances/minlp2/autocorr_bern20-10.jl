using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, b[b_Idx], Bin)


# ----- Constraints ----- #
@NLconstraint(m, e1, 64*b[1]*b[2]*b[3]*b[4]+64*b[1]*b[2]*b[4]*b[5]+64*b[1]*b[2]*b[5]*b[6]+64*b[1]*b[2]*b[6]*b[7]+64*b[1]*b[2]*b[7]*b[8]+64*b[1]*b[2]*b[8]*b[9]+64*b[1]*b[2]*b[9]*b[10]+64*b[1]*b[3]*b[4]*b[6]+64*b[1]*b[3]*b[5]*b[7]+64*b[1]*b[3]*b[6]*b[8]+64*b[1]*b[3]*b[7]*b[9]+64*b[1]*b[3]*b[8]*b[10]+64*b[1]*b[4]*b[5]*b[8]+64*b[1]*b[4]*b[6]*b[9]+64*b[1]*b[4]*b[7]*b[10]+64*b[1]*b[5]*b[6]*b[10]+128*b[2]*b[3]*b[4]*b[5]+128*b[2]*b[3]*b[5]*b[6]+128*b[2]*b[3]*b[6]*b[7]+128*b[2]*b[3]*b[7]*b[8]+128*b[2]*b[3]*b[8]*b[9]+128*b[2]*b[3]*b[9]*b[10]+64*b[2]*b[3]*b[10]*b[11]+128*b[2]*b[4]*b[5]*b[7]+128*b[2]*b[4]*b[6]*b[8]+128*b[2]*b[4]*b[7]*b[9]+128*b[2]*b[4]*b[8]*b[10]+64*b[2]*b[4]*b[9]*b[11]+128*b[2]*b[5]*b[6]*b[9]+128*b[2]*b[5]*b[7]*b[10]+64*b[2]*b[5]*b[8]*b[11]+64*b[2]*b[6]*b[7]*b[11]+192*b[3]*b[4]*b[5]*b[6]+192*b[3]*b[4]*b[6]*b[7]+192*b[3]*b[4]*b[7]*b[8]+192*b[3]*b[4]*b[8]*b[9]+192*b[3]*b[4]*b[9]*b[10]+128*b[3]*b[4]*b[10]*b[11]+64*b[3]*b[4]*b[11]*b[12]+192*b[3]*b[5]*b[6]*b[8]+192*b[3]*b[5]*b[7]*b[9]+192*b[3]*b[5]*b[8]*b[10]+128*b[3]*b[5]*b[9]*b[11]+64*b[3]*b[5]*b[10]*b[12]+192*b[3]*b[6]*b[7]*b[10]+128*b[3]*b[6]*b[8]*b[11]+64*b[3]*b[6]*b[9]*b[12]+64*b[3]*b[7]*b[8]*b[12]+256*b[4]*b[5]*b[6]*b[7]+256*b[4]*b[5]*b[7]*b[8]+256*b[4]*b[5]*b[8]*b[9]+256*b[4]*b[5]*b[9]*b[10]+192*b[4]*b[5]*b[10]*b[11]+128*b[4]*b[5]*b[11]*b[12]+64*b[4]*b[5]*b[12]*b[13]+256*b[4]*b[6]*b[7]*b[9]+256*b[4]*b[6]*b[8]*b[10]+192*b[4]*b[6]*b[9]*b[11]+128*b[4]*b[6]*b[10]*b[12]+64*b[4]*b[6]*b[11]*b[13]+192*b[4]*b[7]*b[8]*b[11]+128*b[4]*b[7]*b[9]*b[12]+64*b[4]*b[7]*b[10]*b[13]+64*b[4]*b[8]*b[9]*b[13]+320*b[5]*b[6]*b[7]*b[8]+320*b[5]*b[6]*b[8]*b[9]+320*b[5]*b[6]*b[9]*b[10]+256*b[5]*b[6]*b[10]*b[11]+192*b[5]*b[6]*b[11]*b[12]+128*b[5]*b[6]*b[12]*b[13]+64*b[5]*b[6]*b[13]*b[14]+320*b[5]*b[7]*b[8]*b[10]+256*b[5]*b[7]*b[9]*b[11]+192*b[5]*b[7]*b[10]*b[12]+128*b[5]*b[7]*b[11]*b[13]+64*b[5]*b[7]*b[12]*b[14]+192*b[5]*b[8]*b[9]*b[12]+128*b[5]*b[8]*b[10]*b[13]+64*b[5]*b[8]*b[11]*b[14]+64*b[5]*b[9]*b[10]*b[14]+384*b[6]*b[7]*b[8]*b[9]+384*b[6]*b[7]*b[9]*b[10]+320*b[6]*b[7]*b[10]*b[11]+256*b[6]*b[7]*b[11]*b[12]+192*b[6]*b[7]*b[12]*b[13]+128*b[6]*b[7]*b[13]*b[14]+64*b[6]*b[7]*b[14]*b[15]+320*b[6]*b[8]*b[9]*b[11]+256*b[6]*b[8]*b[10]*b[12]+192*b[6]*b[8]*b[11]*b[13]+128*b[6]*b[8]*b[12]*b[14]+64*b[6]*b[8]*b[13]*b[15]+192*b[6]*b[9]*b[10]*b[13]+128*b[6]*b[9]*b[11]*b[14]+64*b[6]*b[9]*b[12]*b[15]+64*b[6]*b[10]*b[11]*b[15]+448*b[7]*b[8]*b[9]*b[10]+384*b[7]*b[8]*b[10]*b[11]+320*b[7]*b[8]*b[11]*b[12]+256*b[7]*b[8]*b[12]*b[13]+192*b[7]*b[8]*b[13]*b[14]+128*b[7]*b[8]*b[14]*b[15]+64*b[7]*b[8]*b[15]*b[16]+320*b[7]*b[9]*b[10]*b[12]+256*b[7]*b[9]*b[11]*b[13]+192*b[7]*b[9]*b[12]*b[14]+128*b[7]*b[9]*b[13]*b[15]+64*b[7]*b[9]*b[14]*b[16]+192*b[7]*b[10]*b[11]*b[14]+128*b[7]*b[10]*b[12]*b[15]+64*b[7]*b[10]*b[13]*b[16]+64*b[7]*b[11]*b[12]*b[16]+448*b[8]*b[9]*b[10]*b[11]+384*b[8]*b[9]*b[11]*b[12]+320*b[8]*b[9]*b[12]*b[13]+256*b[8]*b[9]*b[13]*b[14]+192*b[8]*b[9]*b[14]*b[15]+128*b[8]*b[9]*b[15]*b[16]+64*b[8]*b[9]*b[16]*b[17]+320*b[8]*b[10]*b[11]*b[13]+256*b[8]*b[10]*b[12]*b[14]+192*b[8]*b[10]*b[13]*b[15]+128*b[8]*b[10]*b[14]*b[16]+64*b[8]*b[10]*b[15]*b[17]+192*b[8]*b[11]*b[12]*b[15]+128*b[8]*b[11]*b[13]*b[16]+64*b[8]*b[11]*b[14]*b[17]+64*b[8]*b[12]*b[13]*b[17]+448*b[9]*b[10]*b[11]*b[12]+384*b[9]*b[10]*b[12]*b[13]+320*b[9]*b[10]*b[13]*b[14]+256*b[9]*b[10]*b[14]*b[15]+192*b[9]*b[10]*b[15]*b[16]+128*b[9]*b[10]*b[16]*b[17]+64*b[9]*b[10]*b[17]*b[18]+320*b[9]*b[11]*b[12]*b[14]+256*b[9]*b[11]*b[13]*b[15]+192*b[9]*b[11]*b[14]*b[16]+128*b[9]*b[11]*b[15]*b[17]+64*b[9]*b[11]*b[16]*b[18]+192*b[9]*b[12]*b[13]*b[16]+128*b[9]*b[12]*b[14]*b[17]+64*b[9]*b[12]*b[15]*b[18]+64*b[9]*b[13]*b[14]*b[18]+448*b[10]*b[11]*b[12]*b[13]+384*b[10]*b[11]*b[13]*b[14]+320*b[10]*b[11]*b[14]*b[15]+256*b[10]*b[11]*b[15]*b[16]+192*b[10]*b[11]*b[16]*b[17]+128*b[10]*b[11]*b[17]*b[18]+64*b[10]*b[11]*b[18]*b[19]+320*b[10]*b[12]*b[13]*b[15]+256*b[10]*b[12]*b[14]*b[16]+192*b[10]*b[12]*b[15]*b[17]+128*b[10]*b[12]*b[16]*b[18]+64*b[10]*b[12]*b[17]*b[19]+192*b[10]*b[13]*b[14]*b[17]+128*b[10]*b[13]*b[15]*b[18]+64*b[10]*b[13]*b[16]*b[19]+64*b[10]*b[14]*b[15]*b[19]+448*b[11]*b[12]*b[13]*b[14]+384*b[11]*b[12]*b[14]*b[15]+320*b[11]*b[12]*b[15]*b[16]+256*b[11]*b[12]*b[16]*b[17]+192*b[11]*b[12]*b[17]*b[18]+128*b[11]*b[12]*b[18]*b[19]+64*b[11]*b[12]*b[19]*b[20]+320*b[11]*b[13]*b[14]*b[16]+256*b[11]*b[13]*b[15]*b[17]+192*b[11]*b[13]*b[16]*b[18]+128*b[11]*b[13]*b[17]*b[19]+64*b[11]*b[13]*b[18]*b[20]+192*b[11]*b[14]*b[15]*b[18]+128*b[11]*b[14]*b[16]*b[19]+64*b[11]*b[14]*b[17]*b[20]+64*b[11]*b[15]*b[16]*b[20]+384*b[12]*b[13]*b[14]*b[15]+320*b[12]*b[13]*b[15]*b[16]+256*b[12]*b[13]*b[16]*b[17]+192*b[12]*b[13]*b[17]*b[18]+128*b[12]*b[13]*b[18]*b[19]+64*b[12]*b[13]*b[19]*b[20]+256*b[12]*b[14]*b[15]*b[17]+192*b[12]*b[14]*b[16]*b[18]+128*b[12]*b[14]*b[17]*b[19]+64*b[12]*b[14]*b[18]*b[20]+128*b[12]*b[15]*b[16]*b[19]+64*b[12]*b[15]*b[17]*b[20]+320*b[13]*b[14]*b[15]*b[16]+256*b[13]*b[14]*b[16]*b[17]+192*b[13]*b[14]*b[17]*b[18]+128*b[13]*b[14]*b[18]*b[19]+64*b[13]*b[14]*b[19]*b[20]+192*b[13]*b[15]*b[16]*b[18]+128*b[13]*b[15]*b[17]*b[19]+64*b[13]*b[15]*b[18]*b[20]+64*b[13]*b[16]*b[17]*b[20]+256*b[14]*b[15]*b[16]*b[17]+192*b[14]*b[15]*b[17]*b[18]+128*b[14]*b[15]*b[18]*b[19]+64*b[14]*b[15]*b[19]*b[20]+128*b[14]*b[16]*b[17]*b[19]+64*b[14]*b[16]*b[18]*b[20]+192*b[15]*b[16]*b[17]*b[18]+128*b[15]*b[16]*b[18]*b[19]+64*b[15]*b[16]*b[19]*b[20]+64*b[15]*b[17]*b[18]*b[20]+128*b[16]*b[17]*b[18]*b[19]+64*b[16]*b[17]*b[19]*b[20]+64*b[17]*b[18]*b[19]*b[20]-32*b[1]*b[2]*b[3]-64*b[1]*b[2]*b[4]-64*b[1]*b[2]*b[5]-64*b[1]*b[2]*b[6]-64*b[1]*b[2]*b[7]-64*b[1]*b[2]*b[8]-64*b[1]*b[2]*b[9]-32*b[1]*b[2]*b[10]-64*b[1]*b[3]*b[4]-32*b[1]*b[3]*b[5]-64*b[1]*b[3]*b[6]-64*b[1]*b[3]*b[7]-64*b[1]*b[3]*b[8]-32*b[1]*b[3]*b[9]-32*b[1]*b[3]*b[10]-64*b[1]*b[4]*b[5]-64*b[1]*b[4]*b[6]-32*b[1]*b[4]*b[7]-32*b[1]*b[4]*b[8]-32*b[1]*b[4]*b[9]-32*b[1]*b[4]*b[10]-64*b[1]*b[5]*b[6]-32*b[1]*b[5]*b[7]-32*b[1]*b[5]*b[8]-32*b[1]*b[5]*b[10]-32*b[1]*b[6]*b[7]-32*b[1]*b[6]*b[8]-32*b[1]*b[6]*b[9]-32*b[1]*b[6]*b[10]-32*b[1]*b[7]*b[8]-32*b[1]*b[7]*b[9]-32*b[1]*b[7]*b[10]-32*b[1]*b[8]*b[9]-32*b[1]*b[8]*b[10]-32*b[1]*b[9]*b[10]-96*b[2]*b[3]*b[4]-128*b[2]*b[3]*b[5]-128*b[2]*b[3]*b[6]-128*b[2]*b[3]*b[7]-128*b[2]*b[3]*b[8]-128*b[2]*b[3]*b[9]-96*b[2]*b[3]*b[10]-32*b[2]*b[3]*b[11]-160*b[2]*b[4]*b[5]-64*b[2]*b[4]*b[6]-128*b[2]*b[4]*b[7]-128*b[2]*b[4]*b[8]-96*b[2]*b[4]*b[9]-64*b[2]*b[4]*b[10]-32*b[2]*b[4]*b[11]-160*b[2]*b[5]*b[6]-128*b[2]*b[5]*b[7]-32*b[2]*b[5]*b[8]-64*b[2]*b[5]*b[9]-64*b[2]*b[5]*b[10]-32*b[2]*b[5]*b[11]-128*b[2]*b[6]*b[7]-64*b[2]*b[6]*b[8]-64*b[2]*b[6]*b[9]-32*b[2]*b[6]*b[11]-96*b[2]*b[7]*b[8]-64*b[2]*b[7]*b[9]-64*b[2]*b[7]*b[10]-32*b[2]*b[7]*b[11]-96*b[2]*b[8]*b[9]-64*b[2]*b[8]*b[10]-32*b[2]*b[8]*b[11]-96*b[2]*b[9]*b[10]-32*b[2]*b[9]*b[11]-32*b[2]*b[10]*b[11]-160*b[3]*b[4]*b[5]-224*b[3]*b[4]*b[6]-192*b[3]*b[4]*b[7]-192*b[3]*b[4]*b[8]-192*b[3]*b[4]*b[9]-160*b[3]*b[4]*b[10]-96*b[3]*b[4]*b[11]-32*b[3]*b[4]*b[12]-256*b[3]*b[5]*b[6]-128*b[3]*b[5]*b[7]-192*b[3]*b[5]*b[8]-160*b[3]*b[5]*b[9]-128*b[3]*b[5]*b[10]-64*b[3]*b[5]*b[11]-32*b[3]*b[5]*b[12]-256*b[3]*b[6]*b[7]-192*b[3]*b[6]*b[8]-32*b[3]*b[6]*b[9]-96*b[3]*b[6]*b[10]-64*b[3]*b[6]*b[11]-32*b[3]*b[6]*b[12]-192*b[3]*b[7]*b[8]-128*b[3]*b[7]*b[9]-96*b[3]*b[7]*b[10]-32*b[3]*b[7]*b[12]-160*b[3]*b[8]*b[9]-128*b[3]*b[8]*b[10]-64*b[3]*b[8]*b[11]-32*b[3]*b[8]*b[12]-160*b[3]*b[9]*b[10]-64*b[3]*b[9]*b[11]-32*b[3]*b[9]*b[12]-96*b[3]*b[10]*b[11]-32*b[3]*b[10]*b[12]-32*b[3]*b[11]*b[12]-224*b[4]*b[5]*b[6]-320*b[4]*b[5]*b[7]-288*b[4]*b[5]*b[8]-256*b[4]*b[5]*b[9]-224*b[4]*b[5]*b[10]-160*b[4]*b[5]*b[11]-96*b[4]*b[5]*b[12]-32*b[4]*b[5]*b[13]-352*b[4]*b[6]*b[7]-192*b[4]*b[6]*b[8]-256*b[4]*b[6]*b[9]-192*b[4]*b[6]*b[10]-128*b[4]*b[6]*b[11]-64*b[4]*b[6]*b[12]-32*b[4]*b[6]*b[13]-320*b[4]*b[7]*b[8]-256*b[4]*b[7]*b[9]-64*b[4]*b[7]*b[10]-96*b[4]*b[7]*b[11]-64*b[4]*b[7]*b[12]-32*b[4]*b[7]*b[13]-256*b[4]*b[8]*b[9]-192*b[4]*b[8]*b[10]-96*b[4]*b[8]*b[11]-32*b[4]*b[8]*b[13]-224*b[4]*b[9]*b[10]-128*b[4]*b[9]*b[11]-64*b[4]*b[9]*b[12]-32*b[4]*b[9]*b[13]-160*b[4]*b[10]*b[11]-64*b[4]*b[10]*b[12]-32*b[4]*b[10]*b[13]-96*b[4]*b[11]*b[12]-32*b[4]*b[11]*b[13]-32*b[4]*b[12]*b[13]-288*b[5]*b[6]*b[7]-416*b[5]*b[6]*b[8]-384*b[5]*b[6]*b[9]-320*b[5]*b[6]*b[10]-224*b[5]*b[6]*b[11]-160*b[5]*b[6]*b[12]-96*b[5]*b[6]*b[13]-32*b[5]*b[6]*b[14]-448*b[5]*b[7]*b[8]-224*b[5]*b[7]*b[9]-320*b[5]*b[7]*b[10]-192*b[5]*b[7]*b[11]-128*b[5]*b[7]*b[12]-64*b[5]*b[7]*b[13]-32*b[5]*b[7]*b[14]-384*b[5]*b[8]*b[9]-320*b[5]*b[8]*b[10]-64*b[5]*b[8]*b[11]-96*b[5]*b[8]*b[12]-64*b[5]*b[8]*b[13]-32*b[5]*b[8]*b[14]-320*b[5]*b[9]*b[10]-192*b[5]*b[9]*b[11]-96*b[5]*b[9]*b[12]-32*b[5]*b[9]*b[14]-224*b[5]*b[10]*b[11]-128*b[5]*b[10]*b[12]-64*b[5]*b[10]*b[13]-32*b[5]*b[10]*b[14]-160*b[5]*b[11]*b[12]-64*b[5]*b[11]*b[13]-32*b[5]*b[11]*b[14]-96*b[5]*b[12]*b[13]-32*b[5]*b[12]*b[14]-32*b[5]*b[13]*b[14]-352*b[6]*b[7]*b[8]-512*b[6]*b[7]*b[9]-448*b[6]*b[7]*b[10]-320*b[6]*b[7]*b[11]-224*b[6]*b[7]*b[12]-160*b[6]*b[7]*b[13]-96*b[6]*b[7]*b[14]-32*b[6]*b[7]*b[15]-512*b[6]*b[8]*b[9]-256*b[6]*b[8]*b[10]-320*b[6]*b[8]*b[11]-192*b[6]*b[8]*b[12]-128*b[6]*b[8]*b[13]-64*b[6]*b[8]*b[14]-32*b[6]*b[8]*b[15]-448*b[6]*b[9]*b[10]-320*b[6]*b[9]*b[11]-64*b[6]*b[9]*b[12]-96*b[6]*b[9]*b[13]-64*b[6]*b[9]*b[14]-32*b[6]*b[9]*b[15]-320*b[6]*b[10]*b[11]-192*b[6]*b[10]*b[12]-96*b[6]*b[10]*b[13]-32*b[6]*b[10]*b[15]-224*b[6]*b[11]*b[12]-128*b[6]*b[11]*b[13]-64*b[6]*b[11]*b[14]-32*b[6]*b[11]*b[15]-160*b[6]*b[12]*b[13]-64*b[6]*b[12]*b[14]-32*b[6]*b[12]*b[15]-96*b[6]*b[13]*b[14]-32*b[6]*b[13]*b[15]-32*b[6]*b[14]*b[15]-416*b[7]*b[8]*b[9]-576*b[7]*b[8]*b[10]-448*b[7]*b[8]*b[11]-320*b[7]*b[8]*b[12]-224*b[7]*b[8]*b[13]-160*b[7]*b[8]*b[14]-96*b[7]*b[8]*b[15]-32*b[7]*b[8]*b[16]-576*b[7]*b[9]*b[10]-256*b[7]*b[9]*b[11]-320*b[7]*b[9]*b[12]-192*b[7]*b[9]*b[13]-128*b[7]*b[9]*b[14]-64*b[7]*b[9]*b[15]-32*b[7]*b[9]*b[16]-448*b[7]*b[10]*b[11]-320*b[7]*b[10]*b[12]-64*b[7]*b[10]*b[13]-96*b[7]*b[10]*b[14]-64*b[7]*b[10]*b[15]-32*b[7]*b[10]*b[16]-320*b[7]*b[11]*b[12]-192*b[7]*b[11]*b[13]-96*b[7]*b[11]*b[14]-32*b[7]*b[11]*b[16]-224*b[7]*b[12]*b[13]-128*b[7]*b[12]*b[14]-64*b[7]*b[12]*b[15]-32*b[7]*b[12]*b[16]-160*b[7]*b[13]*b[14]-64*b[7]*b[13]*b[15]-32*b[7]*b[13]*b[16]-96*b[7]*b[14]*b[15]-32*b[7]*b[14]*b[16]-32*b[7]*b[15]*b[16]-448*b[8]*b[9]*b[10]-576*b[8]*b[9]*b[11]-448*b[8]*b[9]*b[12]-320*b[8]*b[9]*b[13]-224*b[8]*b[9]*b[14]-160*b[8]*b[9]*b[15]-96*b[8]*b[9]*b[16]-32*b[8]*b[9]*b[17]-576*b[8]*b[10]*b[11]-256*b[8]*b[10]*b[12]-320*b[8]*b[10]*b[13]-192*b[8]*b[10]*b[14]-128*b[8]*b[10]*b[15]-64*b[8]*b[10]*b[16]-32*b[8]*b[10]*b[17]-448*b[8]*b[11]*b[12]-320*b[8]*b[11]*b[13]-64*b[8]*b[11]*b[14]-96*b[8]*b[11]*b[15]-64*b[8]*b[11]*b[16]-32*b[8]*b[11]*b[17]-320*b[8]*b[12]*b[13]-192*b[8]*b[12]*b[14]-96*b[8]*b[12]*b[15]-32*b[8]*b[12]*b[17]-224*b[8]*b[13]*b[14]-128*b[8]*b[13]*b[15]-64*b[8]*b[13]*b[16]-32*b[8]*b[13]*b[17]-160*b[8]*b[14]*b[15]-64*b[8]*b[14]*b[16]-32*b[8]*b[14]*b[17]-96*b[8]*b[15]*b[16]-32*b[8]*b[15]*b[17]-32*b[8]*b[16]*b[17]-448*b[9]*b[10]*b[11]-576*b[9]*b[10]*b[12]-448*b[9]*b[10]*b[13]-320*b[9]*b[10]*b[14]-224*b[9]*b[10]*b[15]-160*b[9]*b[10]*b[16]-96*b[9]*b[10]*b[17]-32*b[9]*b[10]*b[18]-576*b[9]*b[11]*b[12]-256*b[9]*b[11]*b[13]-320*b[9]*b[11]*b[14]-192*b[9]*b[11]*b[15]-128*b[9]*b[11]*b[16]-64*b[9]*b[11]*b[17]-32*b[9]*b[11]*b[18]-448*b[9]*b[12]*b[13]-320*b[9]*b[12]*b[14]-64*b[9]*b[12]*b[15]-96*b[9]*b[12]*b[16]-64*b[9]*b[12]*b[17]-32*b[9]*b[12]*b[18]-320*b[9]*b[13]*b[14]-192*b[9]*b[13]*b[15]-96*b[9]*b[13]*b[16]-32*b[9]*b[13]*b[18]-224*b[9]*b[14]*b[15]-128*b[9]*b[14]*b[16]-64*b[9]*b[14]*b[17]-32*b[9]*b[14]*b[18]-160*b[9]*b[15]*b[16]-64*b[9]*b[15]*b[17]-32*b[9]*b[15]*b[18]-96*b[9]*b[16]*b[17]-32*b[9]*b[16]*b[18]-32*b[9]*b[17]*b[18]-448*b[10]*b[11]*b[12]-576*b[10]*b[11]*b[13]-448*b[10]*b[11]*b[14]-320*b[10]*b[11]*b[15]-224*b[10]*b[11]*b[16]-160*b[10]*b[11]*b[17]-96*b[10]*b[11]*b[18]-32*b[10]*b[11]*b[19]-576*b[10]*b[12]*b[13]-256*b[10]*b[12]*b[14]-320*b[10]*b[12]*b[15]-192*b[10]*b[12]*b[16]-128*b[10]*b[12]*b[17]-64*b[10]*b[12]*b[18]-32*b[10]*b[12]*b[19]-448*b[10]*b[13]*b[14]-320*b[10]*b[13]*b[15]-64*b[10]*b[13]*b[16]-96*b[10]*b[13]*b[17]-64*b[10]*b[13]*b[18]-32*b[10]*b[13]*b[19]-320*b[10]*b[14]*b[15]-192*b[10]*b[14]*b[16]-96*b[10]*b[14]*b[17]-32*b[10]*b[14]*b[19]-224*b[10]*b[15]*b[16]-128*b[10]*b[15]*b[17]-64*b[10]*b[15]*b[18]-32*b[10]*b[15]*b[19]-160*b[10]*b[16]*b[17]-64*b[10]*b[16]*b[18]-32*b[10]*b[16]*b[19]-96*b[10]*b[17]*b[18]-32*b[10]*b[17]*b[19]-32*b[10]*b[18]*b[19]-448*b[11]*b[12]*b[13]-576*b[11]*b[12]*b[14]-448*b[11]*b[12]*b[15]-320*b[11]*b[12]*b[16]-224*b[11]*b[12]*b[17]-160*b[11]*b[12]*b[18]-96*b[11]*b[12]*b[19]-32*b[11]*b[12]*b[20]-576*b[11]*b[13]*b[14]-256*b[11]*b[13]*b[15]-320*b[11]*b[13]*b[16]-192*b[11]*b[13]*b[17]-128*b[11]*b[13]*b[18]-64*b[11]*b[13]*b[19]-32*b[11]*b[13]*b[20]-448*b[11]*b[14]*b[15]-320*b[11]*b[14]*b[16]-64*b[11]*b[14]*b[17]-96*b[11]*b[14]*b[18]-64*b[11]*b[14]*b[19]-32*b[11]*b[14]*b[20]-320*b[11]*b[15]*b[16]-192*b[11]*b[15]*b[17]-96*b[11]*b[15]*b[18]-32*b[11]*b[15]*b[20]-224*b[11]*b[16]*b[17]-128*b[11]*b[16]*b[18]-64*b[11]*b[16]*b[19]-32*b[11]*b[16]*b[20]-160*b[11]*b[17]*b[18]-64*b[11]*b[17]*b[19]-32*b[11]*b[17]*b[20]-96*b[11]*b[18]*b[19]-32*b[11]*b[18]*b[20]-32*b[11]*b[19]*b[20]-416*b[12]*b[13]*b[14]-512*b[12]*b[13]*b[15]-384*b[12]*b[13]*b[16]-256*b[12]*b[13]*b[17]-160*b[12]*b[13]*b[18]-96*b[12]*b[13]*b[19]-32*b[12]*b[13]*b[20]-512*b[12]*b[14]*b[15]-224*b[12]*b[14]*b[16]-256*b[12]*b[14]*b[17]-128*b[12]*b[14]*b[18]-64*b[12]*b[14]*b[19]-32*b[12]*b[14]*b[20]-384*b[12]*b[15]*b[16]-256*b[12]*b[15]*b[17]-32*b[12]*b[15]*b[18]-64*b[12]*b[15]*b[19]-32*b[12]*b[15]*b[20]-256*b[12]*b[16]*b[17]-160*b[12]*b[16]*b[18]-64*b[12]*b[16]*b[19]-192*b[12]*b[17]*b[18]-96*b[12]*b[17]*b[19]-32*b[12]*b[17]*b[20]-128*b[12]*b[18]*b[19]-32*b[12]*b[18]*b[20]-64*b[12]*b[19]*b[20]-352*b[13]*b[14]*b[15]-448*b[13]*b[14]*b[16]-320*b[13]*b[14]*b[17]-192*b[13]*b[14]*b[18]-96*b[13]*b[14]*b[19]-32*b[13]*b[14]*b[20]-416*b[13]*b[15]*b[16]-192*b[13]*b[15]*b[17]-192*b[13]*b[15]*b[18]-64*b[13]*b[15]*b[19]-32*b[13]*b[15]*b[20]-288*b[13]*b[16]*b[17]-192*b[13]*b[16]*b[18]-32*b[13]*b[16]*b[19]-32*b[13]*b[16]*b[20]-192*b[13]*b[17]*b[18]-128*b[13]*b[17]*b[19]-32*b[13]*b[17]*b[20]-128*b[13]*b[18]*b[19]-64*b[13]*b[18]*b[20]-64*b[13]*b[19]*b[20]-288*b[14]*b[15]*b[16]-352*b[14]*b[15]*b[17]-256*b[14]*b[15]*b[18]-128*b[14]*b[15]*b[19]-32*b[14]*b[15]*b[20]-320*b[14]*b[16]*b[17]-128*b[14]*b[16]*b[18]-128*b[14]*b[16]*b[19]-32*b[14]*b[16]*b[20]-192*b[14]*b[17]*b[18]-128*b[14]*b[17]*b[19]-32*b[14]*b[17]*b[20]-128*b[14]*b[18]*b[19]-64*b[14]*b[18]*b[20]-64*b[14]*b[19]*b[20]-224*b[15]*b[16]*b[17]-256*b[15]*b[16]*b[18]-160*b[15]*b[16]*b[19]-64*b[15]*b[16]*b[20]-224*b[15]*b[17]*b[18]-64*b[15]*b[17]*b[19]-64*b[15]*b[17]*b[20]-128*b[15]*b[18]*b[19]-64*b[15]*b[18]*b[20]-64*b[15]*b[19]*b[20]-160*b[16]*b[17]*b[18]-160*b[16]*b[17]*b[19]-64*b[16]*b[17]*b[20]-128*b[16]*b[18]*b[19]-32*b[16]*b[18]*b[20]-64*b[16]*b[19]*b[20]-96*b[17]*b[18]*b[19]-64*b[17]*b[18]*b[20]-64*b[17]*b[19]*b[20]-32*b[18]*b[19]*b[20]+112*b[1]*b[2]+104*b[1]*b[3]+96*b[1]*b[4]+88*b[1]*b[5]+96*b[1]*b[6]+88*b[1]*b[7]+80*b[1]*b[8]+72*b[1]*b[9]+64*b[1]*b[10]+224*b[2]*b[3]+224*b[2]*b[4]+208*b[2]*b[5]+192*b[2]*b[6]+208*b[2]*b[7]+192*b[2]*b[8]+176*b[2]*b[9]+144*b[2]*b[10]+64*b[2]*b[11]+352*b[3]*b[4]+344*b[3]*b[5]+336*b[3]*b[6]+328*b[3]*b[7]+336*b[3]*b[8]+296*b[3]*b[9]+256*b[3]*b[10]+144*b[3]*b[11]+64*b[3]*b[12]+496*b[4]*b[5]+480*b[4]*b[6]+464*b[4]*b[7]+464*b[4]*b[8]+448*b[4]*b[9]+384*b[4]*b[10]+256*b[4]*b[11]+144*b[4]*b[12]+64*b[4]*b[13]+656*b[5]*b[6]+616*b[5]*b[7]+592*b[5]*b[8]+568*b[5]*b[9]+544*b[5]*b[10]+384*b[5]*b[11]+256*b[5]*b[12]+144*b[5]*b[13]+64*b[5]*b[14]+800*b[6]*b[7]+736*b[6]*b[8]+704*b[6]*b[9]+656*b[6]*b[10]+544*b[6]*b[11]+384*b[6]*b[12]+256*b[6]*b[13]+144*b[6]*b[14]+64*b[6]*b[15]+928*b[7]*b[8]+856*b[7]*b[9]+800*b[7]*b[10]+656*b[7]*b[11]+544*b[7]*b[12]+384*b[7]*b[13]+256*b[7]*b[14]+144*b[7]*b[15]+64*b[7]*b[16]+1040*b[8]*b[9]+960*b[8]*b[10]+800*b[8]*b[11]+656*b[8]*b[12]+544*b[8]*b[13]+384*b[8]*b[14]+256*b[8]*b[15]+144*b[8]*b[16]+64*b[8]*b[17]+1152*b[9]*b[10]+960*b[9]*b[11]+800*b[9]*b[12]+656*b[9]*b[13]+544*b[9]*b[14]+384*b[9]*b[15]+256*b[9]*b[16]+144*b[9]*b[17]+64*b[9]*b[18]+1152*b[10]*b[11]+960*b[10]*b[12]+800*b[10]*b[13]+656*b[10]*b[14]+544*b[10]*b[15]+384*b[10]*b[16]+256*b[10]*b[17]+144*b[10]*b[18]+64*b[10]*b[19]+1152*b[11]*b[12]+960*b[11]*b[13]+800*b[11]*b[14]+656*b[11]*b[15]+544*b[11]*b[16]+384*b[11]*b[17]+256*b[11]*b[18]+144*b[11]*b[19]+64*b[11]*b[20]+1040*b[12]*b[13]+856*b[12]*b[14]+704*b[12]*b[15]+568*b[12]*b[16]+448*b[12]*b[17]+296*b[12]*b[18]+176*b[12]*b[19]+72*b[12]*b[20]+928*b[13]*b[14]+736*b[13]*b[15]+592*b[13]*b[16]+464*b[13]*b[17]+336*b[13]*b[18]+192*b[13]*b[19]+80*b[13]*b[20]+800*b[14]*b[15]+616*b[14]*b[16]+464*b[14]*b[17]+328*b[14]*b[18]+208*b[14]*b[19]+88*b[14]*b[20]+656*b[15]*b[16]+480*b[15]*b[17]+336*b[15]*b[18]+192*b[15]*b[19]+96*b[15]*b[20]+496*b[16]*b[17]+344*b[16]*b[18]+208*b[16]*b[19]+88*b[16]*b[20]+352*b[17]*b[18]+224*b[17]*b[19]+96*b[17]*b[20]+224*b[18]*b[19]+104*b[18]*b[20]+112*b[19]*b[20]-144*b[1]-312*b[2]-496*b[3]-688*b[4]-880*b[5]-1072*b[6]-1264*b[7]-1448*b[8]-1616*b[9]-1760*b[10]-1760*b[11]-1616*b[12]-1448*b[13]-1264*b[14]-1072*b[15]-880*b[16]-688*b[17]-496*b[18]-312*b[19]-144*b[20]-objvar <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
