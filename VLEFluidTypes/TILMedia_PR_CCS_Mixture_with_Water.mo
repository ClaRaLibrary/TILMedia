within TILMedia.VLEFluidTypes;
record TILMedia_PR_CCS_Mixture_with_Water
  "N2, CO2, O2 and Ar + Water using Peng Robinson equation of state"
  extends TILMedia.VLEFluidTypes.BaseVLEFluid(
    final fixedMixingRatio=false,
    final nc_propertyCalculation=5,
    final vleFluidNames={"VDIWA.Nitrogen", "VDIWA.Carbon Dioxide", "VDIWA.Oxygen", "VDIWA.Argon", "VDIWA.Water"},
    final mixingRatio_propertyCalculation={1.7, 96.3, 1.8, 0.05, 0.06});
end TILMedia_PR_CCS_Mixture_with_Water;
