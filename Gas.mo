within TILMedia;
model Gas "Gas vapor model for object and member function based evaluation"
  extends TILMedia.BaseClasses.PartialGas(
    redeclare class PointerType =
        TILMedia.GasObjectFunctions.GasPointerExternalObject,
    gasPointer=TILMedia.GasObjectFunctions.GasPointerExternalObject(
        gasType.concatGasName,
        TILMedia.Internals.calcComputeFlags(
          computeTransportProperties,
          false,
          true,
          false,
          false),
        gasType.mixingRatio_propertyCalculation[1:end - 1]/sum(gasType.mixingRatio_propertyCalculation),
        gasType.nc,
        gasType.condensingIndex,
        getInstanceName()),
    redeclare replaceable function d_phxi = GasObjectFunctions.density_phxi (
          gasPointer=gasPointer),
    redeclare replaceable function T_phxi = GasObjectFunctions.temperature_phxi
        (gasPointer=gasPointer),
    redeclare replaceable function s_phxi =
        GasObjectFunctions.specificEntropy_phxi (gasPointer=gasPointer),
    redeclare replaceable function cp_phxi =
        GasObjectFunctions.specificIsobaricHeatCapacity_phxi (gasPointer=
            gasPointer),
    redeclare replaceable function phi_phxi =
        GasObjectFunctions.relativeHumidity_phxi (gasPointer=gasPointer),
    redeclare replaceable function eta_phxi =
        GasObjectFunctions.dynamicViscosity_phxi (gasPointer=gasPointer),
    redeclare replaceable function Pr_phxi =
        GasObjectFunctions.prandtlNumber_phxi (gasPointer=gasPointer),
    redeclare replaceable function lambda_phxi =
        GasObjectFunctions.thermalConductivity_phxi (gasPointer=gasPointer),
    redeclare replaceable function d_pTxi = GasObjectFunctions.density_pTxi (
          gasPointer=gasPointer),
    redeclare replaceable function h_pTxi =
        GasObjectFunctions.specificEnthalpy_pTxi (gasPointer=gasPointer),
    redeclare replaceable function s_pTxi =
        GasObjectFunctions.specificEntropy_pTxi (gasPointer=gasPointer),
    redeclare replaceable function cp_pTxi =
        GasObjectFunctions.specificIsobaricHeatCapacity_pTxi (gasPointer=
            gasPointer),
    redeclare replaceable function phi_pTxi =
        GasObjectFunctions.relativeHumidity_pTxi (gasPointer=gasPointer),
    redeclare replaceable function xi_s_pTxidg =
        GasObjectFunctions.saturationMassFraction_pTxidg (gasPointer=gasPointer),
    redeclare replaceable function eta_pTxi =
        GasObjectFunctions.dynamicViscosity_pTxi (gasPointer=gasPointer),
    redeclare replaceable function Pr_pTxi =
        GasObjectFunctions.prandtlNumber_pTxi (gasPointer=gasPointer),
    redeclare replaceable function lambda_pTxi =
        GasObjectFunctions.thermalConductivity_pTxi (gasPointer=gasPointer),
    redeclare replaceable function d_psxi = GasObjectFunctions.density_psxi (
          gasPointer=gasPointer),
    redeclare replaceable function h_psxi =
        GasObjectFunctions.specificEnthalpy_psxi (gasPointer=gasPointer),
    redeclare replaceable function T_psxi = GasObjectFunctions.temperature_psxi
        (gasPointer=gasPointer),
    redeclare replaceable function cp_psxi =
        GasObjectFunctions.specificIsobaricHeatCapacity_psxi (gasPointer=
            gasPointer),
    redeclare replaceable function phi_psxi =
        GasObjectFunctions.relativeHumidity_psxi (gasPointer=gasPointer),
    redeclare replaceable function eta_psxi =
        GasObjectFunctions.dynamicViscosity_psxi (gasPointer=gasPointer),
    redeclare replaceable function Pr_psxi =
        GasObjectFunctions.prandtlNumber_psxi (gasPointer=gasPointer),
    redeclare replaceable function lambda_psxi =
        GasObjectFunctions.thermalConductivity_psxi (gasPointer=gasPointer),
    redeclare replaceable function p_s_T =
        GasObjectFunctions.saturationPartialPressure_T (gasPointer=gasPointer),
    redeclare replaceable function h_i_Tn =
        GasObjectFunctions.specificEnthalpyOfPureGas_Tn (gasPointer=gasPointer),
    redeclare replaceable function delta_hv_T =
        GasObjectFunctions.specificEnthalpyOfVaporisation_T (gasPointer=
            gasPointer),
    redeclare replaceable function delta_hd_T =
        GasObjectFunctions.specificEnthalpyOfDesublimation_T (gasPointer=
            gasPointer),
    redeclare replaceable function T_freeze = GasObjectFunctions.freezingPoint
        (gasPointer=gasPointer));

  annotation (defaultComponentName="gas", Protection(access=Access.packageDuplicate));
end Gas;
