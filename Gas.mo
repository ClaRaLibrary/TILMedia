within TILMedia;
model Gas "Gas vapor model for object and member function based evaluation"
  extends TILMedia.BaseClasses.PartialGas(
    gasPointer=TILMedia.Internals.TILMediaExternalObject(
        "Gas",
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
  redeclare replaceable function d_phxi =
      TILMedia.GasObjectFunctions.density_phxi,
  redeclare replaceable function s_phxi =
      TILMedia.GasObjectFunctions.specificEntropy_phxi,
  redeclare replaceable function T_phxi =
      TILMedia.GasObjectFunctions.temperature_phxi,
  redeclare replaceable function cp_phxi =
      TILMedia.GasObjectFunctions.specificIsobaricHeatCapacity_phxi,
  redeclare replaceable function cv_phxi =
      TILMedia.GasObjectFunctions.specificIsochoricHeatCapacity_phxi,
  redeclare replaceable function beta_phxi =
      TILMedia.GasObjectFunctions.isobaricThermalExpansionCoefficient_phxi,
  redeclare replaceable function kappa_phxi =
      TILMedia.GasObjectFunctions.isothermalCompressibility_phxi,
  redeclare replaceable function w_phxi =
      TILMedia.GasObjectFunctions.speedOfSound_phxi,
  redeclare replaceable function drhodh_pxi_phxi =
      TILMedia.GasObjectFunctions.densityDerivativeWRTspecificEnthalpy_phxi,
  redeclare replaceable function drhodp_hxi_phxi =
      TILMedia.GasObjectFunctions.densityDerivativeWRTpressure_phxi,
  redeclare replaceable function drhodxi_ph_phxin =
      TILMedia.GasObjectFunctions.densityDerivativeWRTmassFraction_phxin,
  redeclare replaceable function p_i_phxin =
      TILMedia.GasObjectFunctions.partialPressure_phxin,
  redeclare replaceable function xi_gas_phxi =
      TILMedia.GasObjectFunctions.gaseousMassFraction_phxi,
  redeclare replaceable function phi_phxi =
      TILMedia.GasObjectFunctions.relativeHumidity_phxi,
  redeclare replaceable function xi_s_phxi =
      TILMedia.GasObjectFunctions.saturationMassFraction_phxi,
  redeclare replaceable function humRatio_s_phxi =
      TILMedia.GasObjectFunctions.saturationHumidityRatio_phxi,
  redeclare replaceable function h1px_phxi =
      TILMedia.GasObjectFunctions.specificEnthalpy1px_phxi,
  redeclare replaceable function Pr_phxi =
      TILMedia.GasObjectFunctions.prandtlNumber_phxi,
  redeclare replaceable function lambda_phxi =
      TILMedia.GasObjectFunctions.thermalConductivity_phxi,
  redeclare replaceable function eta_phxi =
      TILMedia.GasObjectFunctions.dynamicViscosity_phxi,
  redeclare replaceable function T_dew_phxi =
      TILMedia.GasObjectFunctions.dewTemperature_phxi,
  redeclare replaceable function T_wetBulb_phxi =
      TILMedia.GasObjectFunctions.wetBulbTemperature_phxi,
  redeclare replaceable function T_iceBulb_phxi =
      TILMedia.GasObjectFunctions.iceBulbTemperature_phxi,

  redeclare replaceable function d_psxi =
      TILMedia.GasObjectFunctions.density_psxi,
  redeclare replaceable function h_psxi =
      TILMedia.GasObjectFunctions.specificEnthalpy_psxi,
  redeclare replaceable function T_psxi =
      TILMedia.GasObjectFunctions.temperature_psxi,
  redeclare replaceable function cp_psxi =
      TILMedia.GasObjectFunctions.specificIsobaricHeatCapacity_psxi,
  redeclare replaceable function cv_psxi =
      TILMedia.GasObjectFunctions.specificIsochoricHeatCapacity_psxi,
  redeclare replaceable function beta_psxi =
      TILMedia.GasObjectFunctions.isobaricThermalExpansionCoefficient_psxi,
  redeclare replaceable function kappa_psxi =
      TILMedia.GasObjectFunctions.isothermalCompressibility_psxi,
  redeclare replaceable function w_psxi =
      TILMedia.GasObjectFunctions.speedOfSound_psxi,
  redeclare replaceable function drhodh_pxi_psxi =
      TILMedia.GasObjectFunctions.densityDerivativeWRTspecificEnthalpy_psxi,
  redeclare replaceable function drhodp_hxi_psxi =
      TILMedia.GasObjectFunctions.densityDerivativeWRTpressure_psxi,
  redeclare replaceable function drhodxi_ph_psxin =
      TILMedia.GasObjectFunctions.densityDerivativeWRTmassFraction_psxin,
  redeclare replaceable function p_i_psxin =
      TILMedia.GasObjectFunctions.partialPressure_psxin,
  redeclare replaceable function xi_gas_psxi =
      TILMedia.GasObjectFunctions.gaseousMassFraction_psxi,
  redeclare replaceable function phi_psxi =
      TILMedia.GasObjectFunctions.relativeHumidity_psxi,
  redeclare replaceable function xi_s_psxi =
      TILMedia.GasObjectFunctions.saturationMassFraction_psxi,
  redeclare replaceable function humRatio_s_psxi =
      TILMedia.GasObjectFunctions.saturationHumidityRatio_psxi,
  redeclare replaceable function h1px_psxi =
      TILMedia.GasObjectFunctions.specificEnthalpy1px_psxi,
  redeclare replaceable function Pr_psxi =
      TILMedia.GasObjectFunctions.prandtlNumber_psxi,
  redeclare replaceable function lambda_psxi =
      TILMedia.GasObjectFunctions.thermalConductivity_psxi,
  redeclare replaceable function eta_psxi =
      TILMedia.GasObjectFunctions.dynamicViscosity_psxi,
  redeclare replaceable function T_dew_psxi =
      TILMedia.GasObjectFunctions.dewTemperature_psxi,
  redeclare replaceable function T_wetBulb_psxi =
      TILMedia.GasObjectFunctions.wetBulbTemperature_psxi,
  redeclare replaceable function T_iceBulb_psxi =
      TILMedia.GasObjectFunctions.iceBulbTemperature_psxi,

  redeclare replaceable function d_pTxi =
      TILMedia.GasObjectFunctions.density_pTxi,
  redeclare replaceable function h_pTxi =
      TILMedia.GasObjectFunctions.specificEnthalpy_pTxi,
  redeclare replaceable function s_pTxi =
      TILMedia.GasObjectFunctions.specificEntropy_pTxi,
  redeclare replaceable function cp_pTxi =
      TILMedia.GasObjectFunctions.specificIsobaricHeatCapacity_pTxi,
  redeclare replaceable function cv_pTxi =
      TILMedia.GasObjectFunctions.specificIsochoricHeatCapacity_pTxi,
  redeclare replaceable function beta_pTxi =
      TILMedia.GasObjectFunctions.isobaricThermalExpansionCoefficient_pTxi,
  redeclare replaceable function kappa_pTxi =
      TILMedia.GasObjectFunctions.isothermalCompressibility_pTxi,
  redeclare replaceable function w_pTxi =
      TILMedia.GasObjectFunctions.speedOfSound_pTxi,
  redeclare replaceable function drhodh_pxi_pTxi =
      TILMedia.GasObjectFunctions.densityDerivativeWRTspecificEnthalpy_pTxi,
  redeclare replaceable function drhodp_hxi_pTxi =
      TILMedia.GasObjectFunctions.densityDerivativeWRTpressure_pTxi,
  redeclare replaceable function drhodxi_ph_pTxin =
      TILMedia.GasObjectFunctions.densityDerivativeWRTmassFraction_pTxin,
  redeclare replaceable function p_i_pTxin =
      TILMedia.GasObjectFunctions.partialPressure_pTxin,
  redeclare replaceable function xi_gas_pTxi =
      TILMedia.GasObjectFunctions.gaseousMassFraction_pTxi,
  redeclare replaceable function phi_pTxi =
      TILMedia.GasObjectFunctions.relativeHumidity_pTxi,
  redeclare replaceable function xi_s_pTxi =
      TILMedia.GasObjectFunctions.saturationMassFraction_pTxi,
  redeclare replaceable function humRatio_s_pTxi =
      TILMedia.GasObjectFunctions.saturationHumidityRatio_pTxi,
  redeclare replaceable function h1px_pTxi =
      TILMedia.GasObjectFunctions.specificEnthalpy1px_pTxi,
  redeclare replaceable function Pr_pTxi =
      TILMedia.GasObjectFunctions.prandtlNumber_pTxi,
  redeclare replaceable function lambda_pTxi =
      TILMedia.GasObjectFunctions.thermalConductivity_pTxi,
  redeclare replaceable function eta_pTxi =
      TILMedia.GasObjectFunctions.dynamicViscosity_pTxi,
  redeclare replaceable function T_dew_pTxi =
      TILMedia.GasObjectFunctions.dewTemperature_pTxi,
  redeclare replaceable function T_wetBulb_pTxi =
      TILMedia.GasObjectFunctions.wetBulbTemperature_pTxi,
  redeclare replaceable function T_iceBulb_pTxi =
      TILMedia.GasObjectFunctions.iceBulbTemperature_pTxi,


  redeclare replaceable function p_s_T =
      TILMedia.GasObjectFunctions.saturationPartialPressure_T,
  redeclare replaceable function delta_hv_T =
      TILMedia.GasObjectFunctions.specificEnthalpyOfVaporisation_T,
  redeclare replaceable function delta_hd_T =
      TILMedia.GasObjectFunctions.specificEnthalpyOfDesublimation_T,
  redeclare replaceable function h_i_Tn =
      TILMedia.GasObjectFunctions.specificEnthalpyOfPureGas_Tn,
  redeclare replaceable function cp_i_Tn =
      TILMedia.GasObjectFunctions.specificIsobaricHeatCapacityOfPureGas_Tn,


  redeclare replaceable function M_xi =
      TILMedia.GasObjectFunctions.averageMolarMass_xi,
  redeclare replaceable function humRatio_xi =
      TILMedia.GasObjectFunctions.humidityRatio_xi,

  redeclare replaceable function M_i_n =
      TILMedia.GasObjectFunctions.molarMass_n,
  redeclare replaceable function hF_i_n =
      TILMedia.GasObjectFunctions.specificEnthalpyOfFormation_n,
  redeclare replaceable function T_freeze =
      TILMedia.GasObjectFunctions.freezingPoint,

    redeclare replaceable function xi_s_pTxidg =
        TILMedia.GasObjectFunctions.saturationMassFraction_pTxidg (gasPointer=gasPointer));
  annotation (defaultComponentName="gas", Protection(access=Access.packageDuplicate));
end Gas;
