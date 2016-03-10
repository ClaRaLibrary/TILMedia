within TILMedia.GasTypes;
record VDIWA_Argon "VDIWA2006.Argon"
  extends TILMedia.GasTypes.BaseGas(
    final fixedMixingRatio=false,
    final nc_propertyCalculation=1,
    final gasNames={""},
    final concatGasName="VDIWA2006.Argon",
    final mixingRatio_propertyCalculation={1},
    final condensingIndex=0);
end VDIWA_Argon;
