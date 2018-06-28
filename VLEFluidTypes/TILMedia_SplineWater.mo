within TILMedia.VLEFluidTypes;
record TILMedia_SplineWater
  "Water, IAPWS1995, Bicubic Spline Interpolation, table based calculation (TLK Implementation)"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={"Interpolation.LoadSpline(filename=\"" +
        Modelica.Utilities.Files.loadResource(
        "Modelica://TILMedia/Resources/WATER_SPLINE.DAT") + "\")"},
    final mixingRatio_propertyCalculation={1});
//    final vleFluidNames={"Interpolation.LoadSpline(filename=WATER_SPLINE.DAT)"},
end TILMedia_SplineWater;
