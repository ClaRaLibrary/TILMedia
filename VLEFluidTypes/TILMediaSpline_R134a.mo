within TILMedia.VLEFluidTypes;
record TILMediaSpline_R134a "TILMediaSpline.R134a"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={""},
    final mixingRatio_propertyCalculation={1},
    final concatVLEFluidName="Interpolation.LoadSpline(filename=R134A_SPLINE.dat)");
end TILMediaSpline_R134a;
