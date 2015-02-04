within TILMedia.VLEFluidTypes;
record Refprop_R407C_MIX "Refprop.R407C.MIX at constant composition"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={""},
    final mixingRatio_propertyCalculation={1},
    final concatVLEFluidName="Refprop.R407C.MIX");
end Refprop_R407C_MIX;
