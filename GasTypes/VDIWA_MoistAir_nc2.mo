within TILMedia.GasTypes;
record VDIWA_MoistAir_nc2 "Simple moist air based using VDIWA 2006"
  extends TILMedia.GasTypes.BaseGas(
    final fixedMixingRatio=false,
    final nc_propertyCalculation=2,
    final gasNames={"VDIWA2006.Water","VDIWA2006.DryAir"},
    final condensingIndex=1,
    final mixingRatio_propertyCalculation={0.001,1});
end VDIWA_MoistAir_nc2;
