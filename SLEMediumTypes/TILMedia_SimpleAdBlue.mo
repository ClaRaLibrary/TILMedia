within TILMedia.SLEMediumTypes;
model TILMedia_SimpleAdBlue "TILMedia.SimpleAdBlue"
  extends TILMedia.SLEMediumTypes.BaseSLEMedium(
    cp_l = 3400,
    cp_s = 1600,
    T_s = 262.15,
    T_l = 262.15);
equation
    d_l = 1090;
    d_s = 1030;
    lambda_l = 0.57;
    lambda_s = 0.75;
    h_fusion = 270e3;
end TILMedia_SimpleAdBlue;
