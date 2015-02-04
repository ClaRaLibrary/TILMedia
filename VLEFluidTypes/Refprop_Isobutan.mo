within TILMedia.VLEFluidTypes;
record Refprop_Isobutan "Refprop.Isobutan"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={""},
    final mixingRatio_propertyCalculation={1},
    final concatVLEFluidName="Refprop.ISOBUTAN");
end Refprop_Isobutan;
