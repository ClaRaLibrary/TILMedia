within TILMedia.GasTypes;
record VDI4670_MoistAir "VDI4670.MoistAir"
  extends TILMedia.GasTypes.BaseGas(
    final fixedMixingRatio=false,
    final nc_propertyCalculation=2,
    final gasNames={"",""},
    final concatGasName="VDI4670.MoistAir",
    final mixingRatio_propertyCalculation={0.0001,1},
    final condensingIndex=1);
end VDI4670_MoistAir;
