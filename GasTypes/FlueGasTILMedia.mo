within TILMedia.GasTypes;
record FlueGasTILMedia "Flue gas TILMedia (Ash,CO,CO2,SO2,N2,O2,NO,H2O,NH3,Ar)"
  extends TILMedia.GasTypes.BaseGas(
    final fixedMixingRatio=false,
    final nc_propertyCalculation=10,
    final gasNames={"TILMedia.Ash","TILMediaXTR.Carbon_Monoxide","TILMediaXTR.Carbon_Dioxide","TILMediaXTR.Sulfur_Dioxide","TILMediaXTR.Nitrogen","TILMediaXTR.Oxygen","TILMediaXTR.Nitrous_Oxide","TILMediaXTR.Water","TILMediaXTR.Ammonia","TILMediaXTR.Argon"},
    final condensingIndex=8,
    final mixingRatio_propertyCalculation={0.001,0.001,0.001,0.001,1,0.001,0.001,0.001,0.001,0.001});
end FlueGasTILMedia;
