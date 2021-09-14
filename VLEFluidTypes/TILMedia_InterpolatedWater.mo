within TILMedia.VLEFluidTypes;
record TILMedia_InterpolatedWater
  "Water, IAPWS1995, Linear Interpolation, table based calculation (TLK Implementation)"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={"Interpolation.LoadLinear(filename=\"" +
        Modelica.Utilities.Files.loadResource(
        "modelica://TILMedia/Resources/TILMediaDataPath/WATER.DAT") + "\")"},
    final mixingRatio_propertyCalculation={1});
end TILMedia_InterpolatedWater;
