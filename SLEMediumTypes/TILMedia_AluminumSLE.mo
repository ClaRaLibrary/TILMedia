within TILMedia.SLEMediumTypes;
model TILMedia_AluminumSLE "TILMedia.AluminumSLE"
  extends .TILMedia.SLEMediumTypes.BaseSLEMedium(
    cp_l = 1180,
    cp_s = 940,
    T_s = 932.15,
    T_l = 932.15);
equation
    d_l = 2391;
    d_s = 2700;
    lambda_l = 90;
    lambda_s = 204;
    h_fusion = 356e3;
end TILMedia_AluminumSLE;
