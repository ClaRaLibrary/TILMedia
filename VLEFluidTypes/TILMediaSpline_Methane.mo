within TILMedia.VLEFluidTypes;
record TILMediaSpline_Methane "TILMediaSpline.Methane"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={""},
    final mixingRatio_propertyCalculation={1},
    final concatVLEFluidName="Interpolation.LoadSpline(filename=METHANE_SPLINE.dat)");
end TILMediaSpline_Methane;
