within TILMedia.VLEFluidTypes;
record Refprop_R407C_MIX_nc3 "Refprop.R407C.MIX at variable composition"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=false,
    final nc_propertyCalculation=3,
    final vleFluidNames={"Refprop.R32.FLD","Refprop.R125.FLD",
        "Refprop.R134A.FLD"},
    final mixingRatio_propertyCalculation={0.23,0.25,0.52});

end Refprop_R407C_MIX_nc3;
