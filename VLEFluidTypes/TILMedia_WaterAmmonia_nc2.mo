within TILMedia.VLEFluidTypes;
record TILMedia_WaterAmmonia_nc2 "TILMedia Water Ammonia Mixture"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=false,
    final nc_propertyCalculation=2,
    final vleFluidNames={"TILMedia.Water","TILMedia.Ammonia"},
    final mixingRatio_propertyCalculation={0.18,0.82});
end TILMedia_WaterAmmonia_nc2;
