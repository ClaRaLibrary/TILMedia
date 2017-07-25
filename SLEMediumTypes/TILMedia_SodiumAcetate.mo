within TILMedia.SLEMediumTypes;
model TILMedia_SodiumAcetate "TILMedia.SodiumAcetate"
  extends TILMedia.SLEMediumTypes.BaseSLEMedium(
    cp_l = 3100,
    cp_s = 2050,
    T_s = 331.15,
    T_l = 331.15,
    TStableLimit = 273.15+78);
equation
    d_l = 1280;
    d_s = 1450;
    lambda_l = 0.4;
    lambda_s = 0.64;
    h_fusion = 260e3;
end TILMedia_SodiumAcetate;
