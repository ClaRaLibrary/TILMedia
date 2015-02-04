within TILMedia.VLEFluidTypes;
record Refprop_Water "Refprop.Water"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={""},
    final mixingRatio_propertyCalculation={1},
    final concatVLEFluidName="Refprop.Water");
end Refprop_Water;
