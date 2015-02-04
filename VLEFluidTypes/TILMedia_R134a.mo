within TILMedia.VLEFluidTypes;
record TILMedia_R134a "TILMedia.R134a"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={""},
    final mixingRatio_propertyCalculation={1},
    final concatVLEFluidName="TILMedia.R134a");
end TILMedia_R134a;
