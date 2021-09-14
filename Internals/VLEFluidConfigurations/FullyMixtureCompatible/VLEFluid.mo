within TILMedia.Internals.VLEFluidConfigurations.FullyMixtureCompatible;
model VLEFluid "Compressible fluid model for object and member function based evaluation"
  extends TILMedia.BaseClasses.PartialVLEFluid(
    vleFluidPointer=TILMedia.Internals.TILMediaExternalObject(
        "VLEFluid",
        vleFluidType.concatVLEFluidName,
        TILMedia.Internals.calcComputeFlags(
          computeTransportProperties,
          interpolateTransportProperties,
          computeSurfaceTension,
          deactivateTwoPhaseRegion,
          deactivateDensityDerivatives),
        vleFluidType.mixingRatio_propertyCalculation[1:end - 1]/sum(
          vleFluidType.mixingRatio_propertyCalculation),
        vleFluidType.nc,
        0,
        getInstanceName()),
  redeclare replaceable function h_dTxi =
      TILMedia.VLEFluidObjectFunctions.specificEnthalpy_dTxi,
  redeclare replaceable function p_dTxi =
      TILMedia.VLEFluidObjectFunctions.pressure_dTxi,
  redeclare replaceable function s_dTxi =
      TILMedia.VLEFluidObjectFunctions.specificEntropy_dTxi,
  redeclare replaceable function q_dTxi =
      TILMedia.VLEFluidObjectFunctions.steamMassFraction_dTxi,
  redeclare replaceable function cp_dTxi =
      TILMedia.VLEFluidObjectFunctions.specificIsobaricHeatCapacity_dTxi,
  redeclare replaceable function cv_dTxi =
      TILMedia.VLEFluidObjectFunctions.specificIsochoricHeatCapacity_dTxi,
  redeclare replaceable function beta_dTxi =
      TILMedia.VLEFluidObjectFunctions.isobaricThermalExpansionCoefficient_dTxi,
  redeclare replaceable function kappa_dTxi =
      TILMedia.VLEFluidObjectFunctions.isothermalCompressibility_dTxi,
  redeclare replaceable function w_dTxi =
      TILMedia.VLEFluidObjectFunctions.speedOfSound_dTxi,
  redeclare replaceable function drhodh_pxi_dTxi =
      TILMedia.VLEFluidObjectFunctions.densityDerivativeWRTspecificEnthalpy_dTxi,
  redeclare replaceable function drhodp_hxi_dTxi =
      TILMedia.VLEFluidObjectFunctions.densityDerivativeWRTpressure_dTxi,
  redeclare replaceable function gamma_dTxi =
      TILMedia.VLEFluidObjectFunctions.heatCapacityRatio_dTxi,
  redeclare replaceable function Pr_dTxi =
      TILMedia.VLEFluidObjectFunctions.prandtlNumber_dTxi,
  redeclare replaceable function lambda_dTxi =
      TILMedia.VLEFluidObjectFunctions.thermalConductivity_dTxi,
  redeclare replaceable function eta_dTxi =
      TILMedia.VLEFluidObjectFunctions.dynamicViscosity_dTxi,
  redeclare replaceable function sigma_dTxi =
      TILMedia.VLEFluidObjectFunctions.surfaceTension_dTxi,

  redeclare replaceable function d_phxi =
      TILMedia.VLEFluidObjectFunctions.density_phxi,
  redeclare replaceable function s_phxi =
      TILMedia.VLEFluidObjectFunctions.specificEntropy_phxi,
  redeclare replaceable function T_phxi =
      TILMedia.VLEFluidObjectFunctions.temperature_phxi,
  redeclare replaceable function q_phxi =
      TILMedia.VLEFluidObjectFunctions.steamMassFraction_phxi,
  redeclare replaceable function cp_phxi =
      TILMedia.VLEFluidObjectFunctions.specificIsobaricHeatCapacity_phxi,
  redeclare replaceable function cv_phxi =
      TILMedia.VLEFluidObjectFunctions.specificIsochoricHeatCapacity_phxi,
  redeclare replaceable function beta_phxi =
      TILMedia.VLEFluidObjectFunctions.isobaricThermalExpansionCoefficient_phxi,
  redeclare replaceable function kappa_phxi =
      TILMedia.VLEFluidObjectFunctions.isothermalCompressibility_phxi,
  redeclare replaceable function w_phxi =
      TILMedia.VLEFluidObjectFunctions.speedOfSound_phxi,
  redeclare replaceable function drhodh_pxi_phxi =
      TILMedia.VLEFluidObjectFunctions.densityDerivativeWRTspecificEnthalpy_phxi,
  redeclare replaceable function drhodp_hxi_phxi =
      TILMedia.VLEFluidObjectFunctions.densityDerivativeWRTpressure_phxi,
  redeclare replaceable function gamma_phxi =
      TILMedia.VLEFluidObjectFunctions.heatCapacityRatio_phxi,
  redeclare replaceable function Pr_phxi =
      TILMedia.VLEFluidObjectFunctions.prandtlNumber_phxi,
  redeclare replaceable function lambda_phxi =
      TILMedia.VLEFluidObjectFunctions.thermalConductivity_phxi,
  redeclare replaceable function eta_phxi =
      TILMedia.VLEFluidObjectFunctions.dynamicViscosity_phxi,
  redeclare replaceable function sigma_phxi =
      TILMedia.VLEFluidObjectFunctions.surfaceTension_phxi,

  redeclare replaceable function d_psxi =
      TILMedia.VLEFluidObjectFunctions.density_psxi,
  redeclare replaceable function h_psxi =
      TILMedia.VLEFluidObjectFunctions.specificEnthalpy_psxi,
  redeclare replaceable function T_psxi =
      TILMedia.VLEFluidObjectFunctions.temperature_psxi,
  redeclare replaceable function q_psxi =
      TILMedia.VLEFluidObjectFunctions.steamMassFraction_psxi,
  redeclare replaceable function cp_psxi =
      TILMedia.VLEFluidObjectFunctions.specificIsobaricHeatCapacity_psxi,
  redeclare replaceable function cv_psxi =
      TILMedia.VLEFluidObjectFunctions.specificIsochoricHeatCapacity_psxi,
  redeclare replaceable function beta_psxi =
      TILMedia.VLEFluidObjectFunctions.isobaricThermalExpansionCoefficient_psxi,
  redeclare replaceable function kappa_psxi =
      TILMedia.VLEFluidObjectFunctions.isothermalCompressibility_psxi,
  redeclare replaceable function w_psxi =
      TILMedia.VLEFluidObjectFunctions.speedOfSound_psxi,
  redeclare replaceable function drhodh_pxi_psxi =
      TILMedia.VLEFluidObjectFunctions.densityDerivativeWRTspecificEnthalpy_psxi,
  redeclare replaceable function drhodp_hxi_psxi =
      TILMedia.VLEFluidObjectFunctions.densityDerivativeWRTpressure_psxi,
  redeclare replaceable function gamma_psxi =
      TILMedia.VLEFluidObjectFunctions.heatCapacityRatio_psxi,
  redeclare replaceable function Pr_psxi =
      TILMedia.VLEFluidObjectFunctions.prandtlNumber_psxi,
  redeclare replaceable function lambda_psxi =
      TILMedia.VLEFluidObjectFunctions.thermalConductivity_psxi,
  redeclare replaceable function eta_psxi =
      TILMedia.VLEFluidObjectFunctions.dynamicViscosity_psxi,
  redeclare replaceable function sigma_psxi =
      TILMedia.VLEFluidObjectFunctions.surfaceTension_psxi,

  redeclare replaceable function d_pTxi =
      TILMedia.VLEFluidObjectFunctions.density_pTxi,
  redeclare replaceable function h_pTxi =
      TILMedia.VLEFluidObjectFunctions.specificEnthalpy_pTxi,
  redeclare replaceable function s_pTxi =
      TILMedia.VLEFluidObjectFunctions.specificEntropy_pTxi,
  redeclare replaceable function q_pTxi =
      TILMedia.VLEFluidObjectFunctions.steamMassFraction_pTxi,
  redeclare replaceable function cp_pTxi =
      TILMedia.VLEFluidObjectFunctions.specificIsobaricHeatCapacity_pTxi,
  redeclare replaceable function cv_pTxi =
      TILMedia.VLEFluidObjectFunctions.specificIsochoricHeatCapacity_pTxi,
  redeclare replaceable function beta_pTxi =
      TILMedia.VLEFluidObjectFunctions.isobaricThermalExpansionCoefficient_pTxi,
  redeclare replaceable function kappa_pTxi =
      TILMedia.VLEFluidObjectFunctions.isothermalCompressibility_pTxi,
  redeclare replaceable function w_pTxi =
      TILMedia.VLEFluidObjectFunctions.speedOfSound_pTxi,
  redeclare replaceable function drhodh_pxi_pTxi =
      TILMedia.VLEFluidObjectFunctions.densityDerivativeWRTspecificEnthalpy_pTxi,
  redeclare replaceable function drhodp_hxi_pTxi =
      TILMedia.VLEFluidObjectFunctions.densityDerivativeWRTpressure_pTxi,
  redeclare replaceable function gamma_pTxi =
      TILMedia.VLEFluidObjectFunctions.heatCapacityRatio_pTxi,
  redeclare replaceable function Pr_pTxi =
      TILMedia.VLEFluidObjectFunctions.prandtlNumber_pTxi,
  redeclare replaceable function lambda_pTxi =
      TILMedia.VLEFluidObjectFunctions.thermalConductivity_pTxi,
  redeclare replaceable function eta_pTxi =
      TILMedia.VLEFluidObjectFunctions.dynamicViscosity_pTxi,
  redeclare replaceable function sigma_pTxi =
      TILMedia.VLEFluidObjectFunctions.surfaceTension_pTxi,


  redeclare replaceable function d_dew_Txi =
      TILMedia.VLEFluidObjectFunctions.dewDensity_Txi,
  redeclare replaceable function d_bubble_Txi =
      TILMedia.VLEFluidObjectFunctions.bubbleDensity_Txi,
  redeclare replaceable function h_dew_Txi =
      TILMedia.VLEFluidObjectFunctions.dewSpecificEnthalpy_Txi,
  redeclare replaceable function h_bubble_Txi =
      TILMedia.VLEFluidObjectFunctions.bubbleSpecificEnthalpy_Txi,
  redeclare replaceable function p_dew_Txi =
      TILMedia.VLEFluidObjectFunctions.dewPressure_Txi,
  redeclare replaceable function p_bubble_Txi =
      TILMedia.VLEFluidObjectFunctions.bubblePressure_Txi,
  redeclare replaceable function s_dew_Txi =
      TILMedia.VLEFluidObjectFunctions.dewSpecificEntropy_Txi,
  redeclare replaceable function s_bubble_Txi =
      TILMedia.VLEFluidObjectFunctions.bubbleSpecificEntropy_Txi,
  redeclare replaceable function cp_dew_Txi =
      TILMedia.VLEFluidObjectFunctions.dewSpecificIsobaricHeatCapacity_Txi,
  redeclare replaceable function cp_bubble_Txi =
      TILMedia.VLEFluidObjectFunctions.bubbleSpecificIsobaricHeatCapacity_Txi,
  redeclare replaceable function beta_dew_Txi =
      TILMedia.VLEFluidObjectFunctions.dewIsobaricThermalExpansionCoefficient_Txi,
  redeclare replaceable function beta_bubble_Txi =
      TILMedia.VLEFluidObjectFunctions.bubbleIsobaricThermalExpansionCoefficient_Txi,
  redeclare replaceable function kappa_dew_Txi =
      TILMedia.VLEFluidObjectFunctions.dewIsothermalCompressibility_Txi,
  redeclare replaceable function kappa_bubble_Txi =
      TILMedia.VLEFluidObjectFunctions.bubbleIsothermalCompressibility_Txi,

  redeclare replaceable function d_dew_pxi =
      TILMedia.VLEFluidObjectFunctions.dewDensity_pxi,
  redeclare replaceable function d_bubble_pxi =
      TILMedia.VLEFluidObjectFunctions.bubbleDensity_pxi,
  redeclare replaceable function h_dew_pxi =
      TILMedia.VLEFluidObjectFunctions.dewSpecificEnthalpy_pxi,
  redeclare replaceable function h_bubble_pxi =
      TILMedia.VLEFluidObjectFunctions.bubbleSpecificEnthalpy_pxi,
  redeclare replaceable function s_dew_pxi =
      TILMedia.VLEFluidObjectFunctions.dewSpecificEntropy_pxi,
  redeclare replaceable function s_bubble_pxi =
      TILMedia.VLEFluidObjectFunctions.bubbleSpecificEntropy_pxi,
  redeclare replaceable function T_dew_pxi =
      TILMedia.VLEFluidObjectFunctions.dewTemperature_pxi,
  redeclare replaceable function T_bubble_pxi =
      TILMedia.VLEFluidObjectFunctions.bubbleTemperature_pxi,
  redeclare replaceable function cp_dew_pxi =
      TILMedia.VLEFluidObjectFunctions.dewSpecificIsobaricHeatCapacity_pxi,
  redeclare replaceable function cp_bubble_pxi =
      TILMedia.VLEFluidObjectFunctions.bubbleSpecificIsobaricHeatCapacity_pxi,
  redeclare replaceable function beta_dew_pxi =
      TILMedia.VLEFluidObjectFunctions.dewIsobaricThermalExpansionCoefficient_pxi,
  redeclare replaceable function beta_bubble_pxi =
      TILMedia.VLEFluidObjectFunctions.bubbleIsobaricThermalExpansionCoefficient_pxi,
  redeclare replaceable function kappa_dew_pxi =
      TILMedia.VLEFluidObjectFunctions.dewIsothermalCompressibility_pxi,
  redeclare replaceable function kappa_bubble_pxi =
      TILMedia.VLEFluidObjectFunctions.bubbleIsothermalCompressibility_pxi,


  redeclare replaceable function dc_xi =
      TILMedia.VLEFluidObjectFunctions.criticalDensity_xi,
  redeclare replaceable function hc_xi =
      TILMedia.VLEFluidObjectFunctions.criticalSpecificEnthalpy_xi,
  redeclare replaceable function pc_xi =
      TILMedia.VLEFluidObjectFunctions.criticalPressure_xi,
  redeclare replaceable function sc_xi =
      TILMedia.VLEFluidObjectFunctions.criticalSpecificEntropy_xi,
  redeclare replaceable function Tc_xi =
      TILMedia.VLEFluidObjectFunctions.criticalTemperature_xi,

  redeclare replaceable function M_i_n =
      TILMedia.VLEFluidObjectFunctions.molarMass_n);
  annotation (defaultComponentName="vleFluid", Protection(access=Access.packageDuplicate));
end VLEFluid;
