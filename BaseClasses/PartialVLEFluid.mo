within TILMedia.BaseClasses;
partial model PartialVLEFluid "Compressible fluid model for object and member function based evaluation"
  replaceable parameter TILMedia.VLEFluidTypes.TILMedia_Water vleFluidType constrainedby
    TILMedia.VLEFluidTypes.BaseVLEFluid
    "type record of the VLE fluid or VLE fluid mixture"
    annotation (choicesAllMatching=true);

  parameter TILMedia.Internals.TILMediaExternalObject vleFluidPointer annotation (Dialog(tab="Advanced"));

  parameter Boolean computeTransportProperties=false
    "=true, if transport properties are calculated";
  parameter Boolean interpolateTransportProperties=true
    "Interpolate transport properties in vapor dome"
    annotation (Dialog(tab="Advanced"));
  parameter Boolean computeSurfaceTension=true
    annotation (Dialog(tab="Advanced"));
  parameter Boolean deactivateDensityDerivatives=false
    "Deactivate calculation of partial derivatives of density"
    annotation (Evaluate=true, Dialog(tab="Advanced"));
  parameter Boolean deactivateTwoPhaseRegion=false
    "Deactivate calculation of two phase region" annotation (Evaluate=true);

  replaceable partial function h_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificEnthalpy_dTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificEnthalpy_dTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function p_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.pressure_dTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.pressure_dTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function s_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificEntropy_dTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificEntropy_dTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function q_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.steamMassFraction_dTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.steamMassFraction_dTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function cp_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificIsobaricHeatCapacity_dTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificIsobaricHeatCapacity_dTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function cv_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificIsochoricHeatCapacity_dTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificIsochoricHeatCapacity_dTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function beta_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.isobaricThermalExpansionCoefficient_dTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.isobaricThermalExpansionCoefficient_dTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function kappa_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.isothermalCompressibility_dTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.isothermalCompressibility_dTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function w_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.speedOfSound_dTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.speedOfSound_dTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function drhodh_pxi_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.densityDerivativeWRTspecificEnthalpy_dTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.densityDerivativeWRTspecificEnthalpy_dTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function drhodp_hxi_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.densityDerivativeWRTpressure_dTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.densityDerivativeWRTpressure_dTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function gamma_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.heatCapacityRatio_dTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.heatCapacityRatio_dTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function Pr_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.prandtlNumber_dTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.prandtlNumber_dTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function lambda_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.thermalConductivity_dTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.thermalConductivity_dTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function eta_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dynamicViscosity_dTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dynamicViscosity_dTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function sigma_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.surfaceTension_dTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.surfaceTension_dTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);

  replaceable partial function d_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.density_phxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.density_phxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function s_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificEntropy_phxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificEntropy_phxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function T_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.temperature_phxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.temperature_phxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function q_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.steamMassFraction_phxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.steamMassFraction_phxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function cp_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificIsobaricHeatCapacity_phxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificIsobaricHeatCapacity_phxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function cv_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificIsochoricHeatCapacity_phxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificIsochoricHeatCapacity_phxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function beta_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.isobaricThermalExpansionCoefficient_phxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.isobaricThermalExpansionCoefficient_phxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function kappa_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.isothermalCompressibility_phxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.isothermalCompressibility_phxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function w_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.speedOfSound_phxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.speedOfSound_phxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function drhodh_pxi_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.densityDerivativeWRTspecificEnthalpy_phxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.densityDerivativeWRTspecificEnthalpy_phxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function drhodp_hxi_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.densityDerivativeWRTpressure_phxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.densityDerivativeWRTpressure_phxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function gamma_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.heatCapacityRatio_phxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.heatCapacityRatio_phxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function Pr_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.prandtlNumber_phxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.prandtlNumber_phxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function lambda_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.thermalConductivity_phxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.thermalConductivity_phxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function eta_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dynamicViscosity_phxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dynamicViscosity_phxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function sigma_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.surfaceTension_phxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.surfaceTension_phxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);

  replaceable partial function d_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.density_psxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.density_psxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function h_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificEnthalpy_psxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificEnthalpy_psxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function T_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.temperature_psxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.temperature_psxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function q_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.steamMassFraction_psxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.steamMassFraction_psxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function cp_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificIsobaricHeatCapacity_psxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificIsobaricHeatCapacity_psxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function cv_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificIsochoricHeatCapacity_psxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificIsochoricHeatCapacity_psxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function beta_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.isobaricThermalExpansionCoefficient_psxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.isobaricThermalExpansionCoefficient_psxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function kappa_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.isothermalCompressibility_psxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.isothermalCompressibility_psxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function w_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.speedOfSound_psxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.speedOfSound_psxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function drhodh_pxi_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.densityDerivativeWRTspecificEnthalpy_psxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.densityDerivativeWRTspecificEnthalpy_psxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function drhodp_hxi_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.densityDerivativeWRTpressure_psxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.densityDerivativeWRTpressure_psxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function gamma_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.heatCapacityRatio_psxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.heatCapacityRatio_psxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function Pr_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.prandtlNumber_psxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.prandtlNumber_psxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function lambda_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.thermalConductivity_psxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.thermalConductivity_psxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function eta_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dynamicViscosity_psxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dynamicViscosity_psxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function sigma_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.surfaceTension_psxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.surfaceTension_psxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);

  replaceable partial function d_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.density_pTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.density_pTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function h_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificEnthalpy_pTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificEnthalpy_pTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function s_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificEntropy_pTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificEntropy_pTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function q_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.steamMassFraction_pTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.steamMassFraction_pTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function cp_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificIsobaricHeatCapacity_pTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificIsobaricHeatCapacity_pTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function cv_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificIsochoricHeatCapacity_pTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificIsochoricHeatCapacity_pTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function beta_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.isobaricThermalExpansionCoefficient_pTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.isobaricThermalExpansionCoefficient_pTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function kappa_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.isothermalCompressibility_pTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.isothermalCompressibility_pTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function w_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.speedOfSound_pTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.speedOfSound_pTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function drhodh_pxi_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.densityDerivativeWRTspecificEnthalpy_pTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.densityDerivativeWRTspecificEnthalpy_pTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function drhodp_hxi_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.densityDerivativeWRTpressure_pTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.densityDerivativeWRTpressure_pTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function gamma_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.heatCapacityRatio_pTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.heatCapacityRatio_pTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function Pr_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.prandtlNumber_pTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.prandtlNumber_pTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function lambda_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.thermalConductivity_pTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.thermalConductivity_pTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function eta_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dynamicViscosity_pTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dynamicViscosity_pTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function sigma_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.surfaceTension_pTxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.surfaceTension_pTxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);


  replaceable partial function d_dew_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewDensity_Txi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewDensity_Txi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function d_bubble_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleDensity_Txi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleDensity_Txi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function h_dew_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewSpecificEnthalpy_Txi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewSpecificEnthalpy_Txi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function h_bubble_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleSpecificEnthalpy_Txi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleSpecificEnthalpy_Txi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function p_dew_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewPressure_Txi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewPressure_Txi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function p_bubble_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubblePressure_Txi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubblePressure_Txi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function s_dew_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewSpecificEntropy_Txi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewSpecificEntropy_Txi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function s_bubble_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleSpecificEntropy_Txi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleSpecificEntropy_Txi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function cp_dew_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewSpecificIsobaricHeatCapacity_Txi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewSpecificIsobaricHeatCapacity_Txi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function cp_bubble_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleSpecificIsobaricHeatCapacity_Txi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleSpecificIsobaricHeatCapacity_Txi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function beta_dew_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewIsobaricThermalExpansionCoefficient_Txi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewIsobaricThermalExpansionCoefficient_Txi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function beta_bubble_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleIsobaricThermalExpansionCoefficient_Txi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleIsobaricThermalExpansionCoefficient_Txi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function kappa_dew_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewIsothermalCompressibility_Txi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewIsothermalCompressibility_Txi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function kappa_bubble_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleIsothermalCompressibility_Txi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleIsothermalCompressibility_Txi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);

  replaceable partial function d_dew_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewDensity_pxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewDensity_pxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function d_bubble_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleDensity_pxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleDensity_pxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function h_dew_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewSpecificEnthalpy_pxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewSpecificEnthalpy_pxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function h_bubble_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleSpecificEnthalpy_pxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleSpecificEnthalpy_pxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function s_dew_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewSpecificEntropy_pxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewSpecificEntropy_pxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function s_bubble_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleSpecificEntropy_pxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleSpecificEntropy_pxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function T_dew_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewTemperature_pxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewTemperature_pxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function T_bubble_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleTemperature_pxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleTemperature_pxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function cp_dew_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewSpecificIsobaricHeatCapacity_pxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewSpecificIsobaricHeatCapacity_pxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function cp_bubble_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleSpecificIsobaricHeatCapacity_pxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleSpecificIsobaricHeatCapacity_pxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function beta_dew_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewIsobaricThermalExpansionCoefficient_pxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewIsobaricThermalExpansionCoefficient_pxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function beta_bubble_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleIsobaricThermalExpansionCoefficient_pxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleIsobaricThermalExpansionCoefficient_pxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function kappa_dew_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewIsothermalCompressibility_pxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewIsothermalCompressibility_pxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function kappa_bubble_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleIsothermalCompressibility_pxi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleIsothermalCompressibility_pxi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);



  replaceable partial function dc_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.criticalDensity_xi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.criticalDensity_xi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function hc_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.criticalSpecificEnthalpy_xi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.criticalSpecificEnthalpy_xi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function pc_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.criticalPressure_xi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.criticalPressure_xi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function sc_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.criticalSpecificEntropy_xi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.criticalSpecificEntropy_xi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);
  replaceable partial function Tc_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.criticalTemperature_xi
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.criticalTemperature_xi(
        xi=vleFluidType.xi_default, vleFluidPointer=vleFluidPointer);

  replaceable partial function M_i_n =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.molarMass_n
    constrainedby
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.molarMass_n(
        vleFluidPointer=vleFluidPointer);

  annotation (
    defaultComponentName="vleFluid",
    Icon(graphics={Bitmap(
          extent={{-100,-100},{100,100}},
          imageSource="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",
          fileName="modelica://TILMedia/Resources/Images/Icon_VLEFluid.png"), Text(
          extent={{-120,-60},{120,-100}},
          lineColor={153,204,0},
          textString="%name")}),
    Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_ph calculates the thermopyhsical property data with given inputs: pressure (p), enthalpy (h), mass fraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -&gt; <a href=\"modelica://TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));

end PartialVLEFluid;
