within TILMedia.VLEFluidTypes;
record Refprop_R436B_MIX "Refprop.R436B.MIX at constant composition"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={""},
    final mixingRatio_propertyCalculation={1},
    final concatVLEFluidName="Refprop.R436B.MIX");
end Refprop_R436B_MIX;
