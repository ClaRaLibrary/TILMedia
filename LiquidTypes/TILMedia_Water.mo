within TILMedia.LiquidTypes;
record TILMedia_Water "TILMedia.Water"
  extends TILMedia.LiquidTypes.BaseLiquid(
    final fixedMixingRatio=false,
    final nc_propertyCalculation=1,
    final liquidNames={"TILMedia.Water"},
    final mixingRatio_propertyCalculation={1});
end TILMedia_Water;
