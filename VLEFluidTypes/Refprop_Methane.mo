within TILMedia.VLEFluidTypes;
record Refprop_Methane "Refprop.Methane"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={""},
    final mixingRatio_propertyCalculation={1},
    final concatVLEFluidName="Refprop.METHANE");
end Refprop_Methane;
