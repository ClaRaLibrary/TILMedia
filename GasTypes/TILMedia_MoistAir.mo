within TILMedia.GasTypes;
record TILMedia_MoistAir "TILMedia.MoistAir"
  extends TILMedia.GasTypes.BaseGas(
    final fixedMixingRatio=false,
    final nc_propertyCalculation=2,
    final gasNames={"",""},
    final concatGasName="TILMedia.MoistAir",
    final mixingRatio_propertyCalculation={0.0001,1},
    final condensingIndex=1);
end TILMedia_MoistAir;
