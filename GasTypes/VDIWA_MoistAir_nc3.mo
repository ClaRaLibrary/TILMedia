within TILMedia.GasTypes;
record VDIWA_MoistAir_nc3 "Detailed moist air using VDIWA 2006"
  extends TILMedia.GasTypes.BaseGas(
    final fixedMixingRatio=false,
    final nc_propertyCalculation=3,
    final gasNames={"VDIWA2006.Water","VDIWA2006.Nitrogen","VDIWA2006.Oxygen"},
    final condensingIndex=1,
    final mixingRatio_propertyCalculation={0.001,0.7,0.3});

end VDIWA_MoistAir_nc3;
