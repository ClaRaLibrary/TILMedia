within TILMedia.GasTypes;
record MoistAirMixture "Moist air gas mixture with a condensing component"
  extends TILMedia.GasTypes.BaseGas(
    final fixedMixingRatio=false,
    final nc_propertyCalculation=10,
    final gasNames={"TILMedia.Ash","TILMediaXTR.Carbon_Monoxide","TILMediaXTR.Carbon_Dioxide","TILMediaXTR.Sulfur_Dioxide","TILMediaXTR.Nitrogen","TILMediaXTR.Oxygen","TILMediaXTR.Nitrous_Oxide","TILMediaXTR.Water","TILMediaXTR.Ammonia","TILMediaXTR.Argon"},
    final condensingIndex=8,
    final mixingRatio_propertyCalculation={0.0,0.0,0.00058,0.0,0.75419,0.23135,0.0,0.001,0.0,0.01288});
end MoistAirMixture;
