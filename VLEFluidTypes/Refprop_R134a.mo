within TILMedia.VLEFluidTypes;
record Refprop_R134a "Refprop.R134a"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={""},
    final mixingRatio_propertyCalculation={1},
    final concatVLEFluidName="Refprop.R134a");
end Refprop_R134a;
