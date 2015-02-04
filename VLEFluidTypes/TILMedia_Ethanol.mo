within TILMedia.VLEFluidTypes;
record TILMedia_Ethanol "TILMedia.Ethanol"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={""},
    final mixingRatio_propertyCalculation={1},
    final concatVLEFluidName="TILMedia.Ethanol");
end TILMedia_Ethanol;
