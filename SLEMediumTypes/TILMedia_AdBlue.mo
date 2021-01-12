within TILMedia.SLEMediumTypes;
model TILMedia_AdBlue "TILMedia.AdBlue"
  extends .TILMedia.SLEMediumTypes.BaseSLEMedium(
    cp_l = 3434.5,
    cp_s = 1600,
    T_s = 262.15,
    T_l = 262.15);
equation
    d_l = 1000*(-1.62819E-06*(T-273.15)^2 -0.000428345*(T-273.15) + 1.10001);
    d_s = 1030;
    lambda_l = 0.57;
    lambda_s = 0.75;
    h_fusion = 270e3;
end TILMedia_AdBlue;
