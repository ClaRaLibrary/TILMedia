within TILMedia.VLEFluidTypes;
record Refprop_CO2 "Refprop.CO2"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={""},
    final mixingRatio_propertyCalculation={1},
    final concatVLEFluidName="Refprop.CO2");
end Refprop_CO2;
