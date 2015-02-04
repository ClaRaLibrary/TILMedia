within TILMedia.VLEFluidTypes;
record Refprop_R407C_PPF "Refprop.R407C.PPF"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={""},
    final mixingRatio_propertyCalculation={1},
    final concatVLEFluidName="Refprop.R407C.PPF");
end Refprop_R407C_PPF;
