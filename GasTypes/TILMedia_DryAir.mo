within TILMedia.GasTypes;
record TILMedia_DryAir "TILMedia.DryAir"
  extends TILMedia.GasTypes.BaseGas(
    final fixedMixingRatio=false,
    final nc_propertyCalculation=1,
    final gasNames={""},
    final concatGasName="TILMedia.DryAir",
    final mixingRatio_propertyCalculation={1},
    final condensingIndex=0);
end TILMedia_DryAir;
