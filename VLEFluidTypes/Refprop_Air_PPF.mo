within TILMedia.VLEFluidTypes;
record Refprop_Air_PPF "Refprop.Air.PPF"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={""},
    final mixingRatio_propertyCalculation={1},
    final concatVLEFluidName="Refprop.Air.PPF");
end Refprop_Air_PPF;
