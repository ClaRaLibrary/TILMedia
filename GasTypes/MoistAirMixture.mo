within TILMedia.GasTypes;
record MoistAirMixture "Moist air gas mixture with a condensing component"

  extends TILMedia.GasTypes.BaseGas(
    final fixedMixingRatio=false,
    final nc_propertyCalculation=10,
    final gasNames={"TILMedia.ASH","TILMEDIAXTR.CARBON_MONOXIDE","TILMEDIAXTR.CARBON_DIOXIDE","TILMEDIAXTR.SULFUR_DIOXIDE","TILMEDIAXTR.NITROGEN","TILMEDIAXTR.OXYGEN","TILMEDIAXTR.NITROUS_OXIDE","TILMEDIAXTR.WATER","TILMEDIAXTR.AMMONIA","TILMEDIAXTR.ARGON"},
    final condensingIndex=8,
    final mixingRatio_propertyCalculation={0.0,0.0,0.00058,0.0,0.75419,0.23135,0.0,0.001,0.0,0.01288});

end MoistAirMixture;
