within TILMedia.VLEFluidTypes;
record TILMedia_InterpolatedWater
  "Water, IAPWS1995, Linear Interpolation, table based calculation (TLK Implementation)"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={""},
    final mixingRatio_propertyCalculation={1},
    final concatVLEFluidName="Interpolation.LoadLinear(filename=\"" +
        Modelica.Utilities.Files.loadResource(
        "Modelica://TILMedia/Resources/Water.dat") + "\")");
//    final concatVLEFluidName="Interpolation.LoadLinear(filename=Water.dat)");
end TILMedia_InterpolatedWater;
