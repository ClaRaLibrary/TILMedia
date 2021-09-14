within TILMedia.SLEMediumTypes;
model TILMedia_SodiumAcetate "TILMedia.SodiumAcetate (Trihydrate)"
  extends TILMedia.SLEMediumTypes.BaseSLEMedium(
    cp_l = 3100,
    cp_s = 2050,
    T_s = 331.15,
    T_l = 331.15,
    TStableLimit = 350,
    TSupercoolingLimit = 273.15-22);

// Literature references:
// TStableLimit
// Araki, Futamura, Makino, Shibata:
// "Measurements of Thermophysical Properties of Sodium Acetate Hydrate"
// 1995
// TSupercoolingLimit:
// LinLin WEI, Kenichi OHSASA:
// "Supercooling and Solidification Behavior of Phase Change Material"
// 2010
equation
    d_l = 1280;
    d_s = 1450;
    lambda_l = 0.4;
    lambda_s = 0.64;
    h_fusion = 260e3;
end TILMedia_SodiumAcetate;
