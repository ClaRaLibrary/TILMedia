within TILMedia.SLEMediumTypes;
model TILMedia_SimpleWater "TILMedia.SimpleWater"
  extends .TILMedia.SLEMediumTypes.BaseSLEMedium(
    cp_l = 4.218e3,
    cp_s = 2.1e3,
    T_s = 273.15,
    T_l = 273.15);
    // cp_l at 273.15 K
    // cp_v at 271.15 K
equation
    d_l = 999.84; // at 273.15 K
    d_s = 916.7583; // at 273.15 K
    lambda_l = 561e-3;
    lambda_s = 2.2;
    h_fusion = 332.5e3;
end TILMedia_SimpleWater;
