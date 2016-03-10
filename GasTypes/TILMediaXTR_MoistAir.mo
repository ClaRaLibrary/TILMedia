within TILMedia.GasTypes;
record TILMediaXTR_MoistAir "TILMediaXTR.MoistAir"
  extends TILMedia.GasTypes.BaseGas(
    final fixedMixingRatio=false,
    final nc_propertyCalculation=2,
    final gasNames={"",""},
    final concatGasName="TILMediaXTR.MoistAir",
    final mixingRatio_propertyCalculation={0.0001,1},
    final condensingIndex=1);
end TILMediaXTR_MoistAir;
