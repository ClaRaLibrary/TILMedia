within TILMedia.VLEFluidTypes;
record TILMedia_Water "TILMedia.Water"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={""},
    final mixingRatio_propertyCalculation={1},
    final concatVLEFluidName="TILMedia.Water");
end TILMedia_Water;
