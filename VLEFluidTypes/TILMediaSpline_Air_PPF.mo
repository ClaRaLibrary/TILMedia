within TILMedia.VLEFluidTypes;
record TILMediaSpline_Air_PPF "TILMediaSpline.Air.PPF"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={""},
    final mixingRatio_propertyCalculation={1},
    final concatVLEFluidName="Interpolation.LoadSpline(filename=AIRPPF_SPLINE.dat)");
end TILMediaSpline_Air_PPF;
