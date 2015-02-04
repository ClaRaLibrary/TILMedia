within TILMedia.VLEFluidTypes;
record TILMedia_CO2 "TILMedia.CO2"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={"TILMedia.CO2"},
    final mixingRatio_propertyCalculation={1});
end TILMedia_CO2;
