within TILMedia.SLEMediumTypes;
model TILMedia_CopperSLE "TILMedia.CopperSLE"
  extends TILMedia.SLEMediumTypes.BaseSLEMedium(
    cp_l = 490,
    cp_s = 390,
    T_s = 1356.15,
    T_l = 1356.15);
equation
    d_l = 7998;
    d_s = 8960;
    lambda_l = 157;
    lambda_s = 298;
    h_fusion = 213e3;
end TILMedia_CopperSLE;
