using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, 0 <= x[x_Idx] <= 1)
@variable(m, obj)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.9469*x[1]*x[4]-0.9382*x[5]*x[8]-0.9546*x[7]*x[9]-0.9392*x[8]*x[14]-0.0269*x[1]-0.9638*x[4]+0.4683*x[5]+0.865*x[7]-0.0714*x[8]-0.5196*x[9]+0.185*x[14]+(-0.8219*x[1]*x[6]*x[10])-0.8732*x[1]*x[8]*x[14]-0.8579*x[2]*x[4]*x[5]-0.8641*x[2]*x[6]*x[12]-0.8771*x[2]*x[7]*x[9]-0.9026*x[2]*x[8]*x[12]-0.8757*x[2]*x[8]*x[14]-0.8448*x[2]*x[9]*x[13]-0.8096*x[2]*x[9]*x[14]-0.5954*x[2]*x[11]*x[15]-0.7626*x[3]*x[5]*x[15]-0.7382*x[3]*x[7]*x[10]-0.6058*x[3]*x[8]*x[12]-0.6075*x[3]*x[11]*x[12]-0.8026*x[3]*x[12]*x[14]-0.8873*x[4]*x[5]*x[11]-0.6882*x[4]*x[7]*x[11]-0.8145*x[4]*x[7]*x[12]-0.6044*x[4]*x[10]*x[12]-0.7376*x[6]*x[8]*x[14]-0.875*x[6]*x[9]*x[11]-0.6267*x[6]*x[10]*x[14]-0.847*x[6]*x[11]*x[12]-0.7699*x[6]*x[13]*x[14]-0.6663*x[7]*x[9]*x[12]-0.8504*x[7]*x[10]*x[13]-0.6953*x[7]*x[11]*x[15]-0.8383*x[8]*x[10]*x[14]-0.8293*x[8]*x[11]*x[14]-0.831*x[9]*x[10]*x[11]-0.6047*x[10]*x[13]*x[14]-0.6171*x[12]*x[13]*x[15]+0.5776*x[2]+0.2437*x[3]-0.0524*x[6]+0.2146*x[10]+0.2514*x[11]-0.9667*x[12]-0.328*x[13]-0.1588*x[15]+0.194*x[1]*x[2]*x[4]*x[6]+0.7571*x[1]*x[2]*x[5]*x[12]-0.3725*x[1]*x[2]*x[6]*x[13]+0.4455*x[1]*x[2]*x[6]*x[15]+0.4391*x[1]*x[2]*x[7]*x[11]-0.0124*x[1]*x[3]*x[4]*x[5]-0.1368*x[1]*x[3]*x[4]*x[6]+0.8676*x[1]*x[3]*x[6]*x[8]-0.0382*x[1]*x[3]*x[7]*x[13]+0.6372*x[1]*x[3]*x[11]*x[13]+0.1588*x[1]*x[4]*x[5]*x[10]-0.5091*x[1]*x[4]*x[7]*x[8]-0.5261*x[1]*x[4]*x[11]*x[12]+0.1637*x[1]*x[5]*x[6]*x[12]-0.477*x[1]*x[5]*x[8]*x[9]+0.0199*x[1]*x[5]*x[13]*x[14]+0.5444*x[1]*x[6]*x[8]*x[9]-0.482*x[1]*x[7]*x[8]*x[9]-0.1853*x[1]*x[8]*x[12]*x[14]-0.2421*x[1]*x[9]*x[13]*x[15]-0.0586*x[1]*x[11]*x[12]*x[14]+0.9675*x[2]*x[3]*x[5]*x[7]+0.1383*x[2]*x[3]*x[5]*x[11]-0.5697*x[2]*x[3]*x[7]*x[14]+0.3169*x[2]*x[3]*x[9]*x[11]-0.2308*x[2]*x[4]*x[6]*x[8]+0.6045*x[2]*x[4]*x[6]*x[14]+0.0977*x[2]*x[4]*x[7]*x[10]-0.1284*x[2]*x[5]*x[6]*x[9]+0.0308*x[2]*x[5]*x[6]*x[11]-0.3159*x[2]*x[5]*x[6]*x[14]+0.7599*x[2]*x[5]*x[11]*x[13]+0.9781*x[2]*x[5]*x[13]*x[14]+0.0858*x[2]*x[6]*x[7]*x[15]+0.9858*x[2]*x[6]*x[8]*x[14]+0.0953*x[2]*x[6]*x[8]*x[15]-0.5754*x[2]*x[6]*x[10]*x[14]+0.0082*x[2]*x[6]*x[12]*x[14]+0.8851*x[2]*x[7]*x[8]*x[15]-0.3524*x[2]*x[7]*x[11]*x[12]+0.4072*x[2]*x[8]*x[10]*x[15]-0.0592*x[2]*x[11]*x[12]*x[15]+0.9428*x[2]*x[11]*x[14]*x[15]+0.3975*x[3]*x[4]*x[7]*x[9]-0.5016*x[3]*x[4]*x[7]*x[10]-0.0285*x[3]*x[4]*x[7]*x[13]-0.457*x[3]*x[4]*x[9]*x[12]+0.2252*x[3]*x[4]*x[11]*x[12]-0.2571*x[3]*x[5]*x[6]*x[15]-0.4103*x[3]*x[5]*x[8]*x[9]+0.7398*x[3]*x[5]*x[8]*x[10]+0.0755*x[3]*x[6]*x[8]*x[10]-0.1534*x[3]*x[6]*x[9]*x[10]+0.4846*x[3]*x[7]*x[9]*x[11]-0.0513*x[3]*x[8]*x[12]*x[15]+0.0801*x[3]*x[9]*x[11]*x[13]+0.9037*x[3]*x[10]*x[11]*x[14]-0.5013*x[3]*x[12]*x[13]*x[14]-0.4551*x[4]*x[5]*x[7]*x[11]+0.497*x[4]*x[5]*x[10]*x[14]-0.2179*x[4]*x[6]*x[8]*x[10]+0.4567*x[4]*x[6]*x[9]*x[13]-0.0835*x[4]*x[7]*x[8]*x[9]+0.6794*x[4]*x[7]*x[8]*x[12]-0.1981*x[4]*x[7]*x[9]*x[12]+0.9873*x[4]*x[7]*x[10]*x[11]-0.0998*x[4]*x[7]*x[10]*x[15]+0.8915*x[4]*x[8]*x[10]*x[11]+0.146*x[4]*x[8]*x[10]*x[14]+0.6495*x[4]*x[9]*x[12]*x[14]-0.1423*x[4]*x[11]*x[12]*x[14]+0.7882*x[4]*x[11]*x[14]*x[15]-0.3226*x[5]*x[6]*x[8]*x[11]+0.5181*x[5]*x[6]*x[9]*x[15]+0.6425*x[5]*x[6]*x[10]*x[11]+0.7938*x[5]*x[6]*x[12]*x[13]-0.0869*x[5]*x[7]*x[8]*x[11]-0.4784*x[5]*x[8]*x[10]*x[13]+0.4542*x[5]*x[8]*x[12]*x[14]+0.3128*x[5]*x[9]*x[10]*x[14]+0.4693*x[5]*x[10]*x[13]*x[14]+0.843*x[5]*x[10]*x[14]*x[15]-0.1986*x[6]*x[7]*x[9]*x[10]+0.6505*x[6]*x[8]*x[10]*x[14]-0.165*x[6]*x[8]*x[11]*x[14]-0.5365*x[6]*x[9]*x[13]*x[14]-0.4919*x[7]*x[8]*x[10]*x[11]-0.3137*x[7]*x[8]*x[11]*x[12]-0.4232*x[7]*x[9]*x[10]*x[11]+0.6679*x[7]*x[9]*x[12]*x[14]+0.152*x[7]*x[9]*x[12]*x[15]-0.164*x[8]*x[9]*x[10]*x[11]+0.562*x[8]*x[9]*x[12]*x[15]+0.6154*x[8]*x[10]*x[11]*x[13]+0.8049*x[8]*x[11]*x[13]*x[14]+0.9241*x[11]*x[12]*x[14]*x[15]+(-0.2208*x[2]^2*x[11]^2)-0.2623*x[4]^2*x[7]^2+0.5277*x[8]^2*x[13]^2+(-0.933*x[1]^2*x[15])-0.7224*x[4]^2*x[2]-0.6558*x[6]^2*x[11]-0.6371*x[7]^2*x[2]-0.6541*x[7]^2*x[12]-0.8906*x[8]^2*x[15]-0.8696*x[10]^2*x[4]-0.8453*x[11]^2*x[5]+(-0.1156*x[1]^2*x[3]*x[4])-0.1673*x[1]^2*x[8]*x[14]+0.0007*x[1]^2*x[11]*x[15]-0.2081*x[2]^2*x[4]*x[10]+0.7985*x[2]^2*x[7]*x[9]-0.4059*x[2]^2*x[10]*x[15]+0.7822*x[3]^2*x[4]*x[9]-0.322*x[3]^2*x[5]*x[11]+0.9994*x[3]^2*x[6]*x[10]-0.0134*x[3]^2*x[8]*x[9]+0.6435*x[3]^2*x[8]*x[14]-0.1747*x[3]^2*x[8]*x[15]+0.8573*x[3]^2*x[13]*x[15]-0.1383*x[4]^2*x[2]*x[10]+0.8161*x[4]^2*x[5]*x[9]+0.3536*x[4]^2*x[7]*x[8]+0.9792*x[5]^2*x[1]*x[12]+0.6905*x[5]^2*x[4]*x[13]+0.5096*x[5]^2*x[10]*x[15]-0.3318*x[6]^2*x[8]*x[14]-0.131*x[6]^2*x[12]*x[14]+0.5892*x[8]^2*x[5]*x[9]+0.0253*x[8]^2*x[10]*x[11]+0.8211*x[8]^2*x[10]*x[13]+0.6513*x[8]^2*x[11]*x[15]-0.0207*x[9]^2*x[2]*x[5]+0.169*x[9]^2*x[6]*x[12]+0.8517*x[10]^2*x[1]*x[9]+0.4934*x[10]^2*x[2]*x[3]+0.1473*x[10]^2*x[4]*x[5]+0.9317*x[10]^2*x[6]*x[7]-0.4775*x[10]^2*x[8]*x[11]-0.5796*x[11]^2*x[5]*x[8]+0.191*x[11]^2*x[8]*x[15]+0.4385*x[11]^2*x[14]*x[15]+0.0463*x[12]^2*x[1]*x[8]+0.9962*x[12]^2*x[3]*x[4]+0.0008*x[12]^2*x[4]*x[6]+0.3959*x[12]^2*x[6]*x[10]+0.8708*x[12]^2*x[9]*x[10]+0.4163*x[12]^2*x[9]*x[13]-0.2523*x[13]^2*x[2]*x[11]-0.2575*x[13]^2*x[3]*x[9]+0.0742*x[13]^2*x[4]*x[7]+0.2972*x[13]^2*x[4]*x[12]+0.2669*x[13]^2*x[11]*x[12]-0.0513*x[14]^2*x[4]*x[8]+0.2374*x[14]^2*x[6]*x[10]-0.5784*x[14]^2*x[8]*x[13]-0.1374*x[14]^2*x[11]*x[15])+obj == 0.0)

m = m 		 # model get returned when including this script. 
