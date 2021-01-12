within TILMedia;
model VLEFluid "Compressible fluid model for object and member function based evaluation"
  extends .TILMedia.Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluid(
    redeclare replaceable function d_pTxi =
        .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.density_pTxi
        (vleFluidPointer=vleFluidPointer),
    redeclare replaceable function h_pTxi =
        .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEnthalpy_pTxi
        (vleFluidPointer=vleFluidPointer),
    redeclare replaceable function s_pTxi =
        .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEntropy_pTxi
        (vleFluidPointer=vleFluidPointer),
    redeclare replaceable function T_phxi =
        .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.temperature_phxi
        (vleFluidPointer=vleFluidPointer),
    redeclare replaceable function s_phxi =
        .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEntropy_phxi
        (vleFluidPointer=vleFluidPointer),
    redeclare replaceable function d_psxi =
        .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.density_psxi
        (vleFluidPointer=vleFluidPointer),
    redeclare replaceable function T_psxi =
        .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.temperature_psxi
        (vleFluidPointer=vleFluidPointer),
    redeclare replaceable function h_psxi =
        .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEnthalpy_psxi
        (vleFluidPointer=vleFluidPointer));
equation
  assert(vleFluidType.nc == 1,
    "This TILMedia VLEFluid interface cannot handle variable concentrations");
  annotation (
    defaultComponentName="vleFluid",
    Protection(access=Access.packageDuplicate));
end VLEFluid;
