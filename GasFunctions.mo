within TILMedia;
package GasFunctions
  "Package for calculation of gas vapor properties with a functional call"
  extends TILMedia.BaseClasses.PartialGasFunctions;

redeclare replaceable function extends density_phxi
algorithm
  d := TILMedia.Internals.GasFunctions.density_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end density_phxi;

redeclare replaceable function extends specificEntropy_phxi
algorithm
  s := TILMedia.Internals.GasFunctions.specificEntropy_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end specificEntropy_phxi;

redeclare replaceable function extends temperature_phxi
algorithm
  T := TILMedia.Internals.GasFunctions.temperature_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end temperature_phxi;

redeclare replaceable function extends specificIsobaricHeatCapacity_phxi
algorithm
  cp := TILMedia.Internals.GasFunctions.specificIsobaricHeatCapacity_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end specificIsobaricHeatCapacity_phxi;

redeclare replaceable function extends specificIsochoricHeatCapacity_phxi
algorithm
  cv := TILMedia.Internals.GasFunctions.specificIsochoricHeatCapacity_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end specificIsochoricHeatCapacity_phxi;

redeclare replaceable function extends isobaricThermalExpansionCoefficient_phxi



algorithm
  beta := TILMedia.Internals.GasFunctions.isobaricThermalExpansionCoefficient_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end isobaricThermalExpansionCoefficient_phxi;

redeclare replaceable function extends isothermalCompressibility_phxi
algorithm
  kappa := TILMedia.Internals.GasFunctions.isothermalCompressibility_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end isothermalCompressibility_phxi;

redeclare replaceable function extends speedOfSound_phxi
algorithm
  w := TILMedia.Internals.GasFunctions.speedOfSound_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end speedOfSound_phxi;

redeclare replaceable function extends
    densityDerivativeWRTspecificEnthalpy_phxi
algorithm
  drhodh_pxi := TILMedia.Internals.GasFunctions.densityDerivativeWRTspecificEnthalpy_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end densityDerivativeWRTspecificEnthalpy_phxi;

redeclare replaceable function extends densityDerivativeWRTpressure_phxi
algorithm
  drhodp_hxi := TILMedia.Internals.GasFunctions.densityDerivativeWRTpressure_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end densityDerivativeWRTpressure_phxi;

redeclare replaceable function extends densityDerivativeWRTmassFraction_phxi
algorithm
  drhodxi_ph := TILMedia.Internals.GasFunctions.densityDerivativeWRTmassFraction_phxin(p,h,xi,compNo, gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end densityDerivativeWRTmassFraction_phxi;

redeclare replaceable function extends partialPressure_phxi
algorithm
  p_i := TILMedia.Internals.GasFunctions.partialPressure_phxin(p,h,xi,compNo, gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end partialPressure_phxi;

redeclare replaceable function extends gaseousMassFraction_phxi
algorithm
  xi_gas := TILMedia.Internals.GasFunctions.gaseousMassFraction_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end gaseousMassFraction_phxi;

redeclare replaceable function extends relativeHumidity_phxi
algorithm
  phi := TILMedia.Internals.GasFunctions.relativeHumidity_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end relativeHumidity_phxi;

redeclare replaceable function extends saturationMassFraction_phxi
algorithm
  xi_s := TILMedia.Internals.GasFunctions.saturationMassFraction_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end saturationMassFraction_phxi;

redeclare replaceable function extends saturationHumidityRatio_phxi
algorithm
  humRatio_s := TILMedia.Internals.GasFunctions.saturationHumidityRatio_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end saturationHumidityRatio_phxi;

redeclare replaceable function extends specificEnthalpy1px_phxi
algorithm
  h1px := TILMedia.Internals.GasFunctions.specificEnthalpy1px_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end specificEnthalpy1px_phxi;

redeclare replaceable function extends prandtlNumber_phxi
algorithm
  Pr := TILMedia.Internals.GasFunctions.prandtlNumber_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end prandtlNumber_phxi;

redeclare replaceable function extends thermalConductivity_phxi
algorithm
  lambda := TILMedia.Internals.GasFunctions.thermalConductivity_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end thermalConductivity_phxi;

redeclare replaceable function extends dynamicViscosity_phxi
algorithm
  eta := TILMedia.Internals.GasFunctions.dynamicViscosity_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end dynamicViscosity_phxi;

redeclare replaceable function extends density_psxi
algorithm
  d := TILMedia.Internals.GasFunctions.density_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end density_psxi;

redeclare replaceable function extends specificEnthalpy_psxi
algorithm
  h := TILMedia.Internals.GasFunctions.specificEnthalpy_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end specificEnthalpy_psxi;

redeclare replaceable function extends temperature_psxi
algorithm
  T := TILMedia.Internals.GasFunctions.temperature_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end temperature_psxi;

redeclare replaceable function extends specificIsobaricHeatCapacity_psxi
algorithm
  cp := TILMedia.Internals.GasFunctions.specificIsobaricHeatCapacity_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end specificIsobaricHeatCapacity_psxi;

redeclare replaceable function extends specificIsochoricHeatCapacity_psxi
algorithm
  cv := TILMedia.Internals.GasFunctions.specificIsochoricHeatCapacity_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end specificIsochoricHeatCapacity_psxi;

redeclare replaceable function extends isobaricThermalExpansionCoefficient_psxi



algorithm
  beta := TILMedia.Internals.GasFunctions.isobaricThermalExpansionCoefficient_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end isobaricThermalExpansionCoefficient_psxi;

redeclare replaceable function extends isothermalCompressibility_psxi
algorithm
  kappa := TILMedia.Internals.GasFunctions.isothermalCompressibility_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end isothermalCompressibility_psxi;

redeclare replaceable function extends speedOfSound_psxi
algorithm
  w := TILMedia.Internals.GasFunctions.speedOfSound_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end speedOfSound_psxi;

redeclare replaceable function extends
    densityDerivativeWRTspecificEnthalpy_psxi
algorithm
  drhodh_pxi := TILMedia.Internals.GasFunctions.densityDerivativeWRTspecificEnthalpy_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end densityDerivativeWRTspecificEnthalpy_psxi;

redeclare replaceable function extends densityDerivativeWRTpressure_psxi
algorithm
  drhodp_hxi := TILMedia.Internals.GasFunctions.densityDerivativeWRTpressure_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end densityDerivativeWRTpressure_psxi;

redeclare replaceable function extends densityDerivativeWRTmassFraction_psxi
algorithm
  drhodxi_ph := TILMedia.Internals.GasFunctions.densityDerivativeWRTmassFraction_psxin(p,s,xi,compNo, gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end densityDerivativeWRTmassFraction_psxi;

redeclare replaceable function extends partialPressure_psxi
algorithm
  p_i := TILMedia.Internals.GasFunctions.partialPressure_psxin(p,s,xi,compNo, gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end partialPressure_psxi;

redeclare replaceable function extends gaseousMassFraction_psxi
algorithm
  xi_gas := TILMedia.Internals.GasFunctions.gaseousMassFraction_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end gaseousMassFraction_psxi;

redeclare replaceable function extends relativeHumidity_psxi
algorithm
  phi := TILMedia.Internals.GasFunctions.relativeHumidity_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end relativeHumidity_psxi;

redeclare replaceable function extends saturationMassFraction_psxi
algorithm
  xi_s := TILMedia.Internals.GasFunctions.saturationMassFraction_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end saturationMassFraction_psxi;

redeclare replaceable function extends saturationHumidityRatio_psxi
algorithm
  humRatio_s := TILMedia.Internals.GasFunctions.saturationHumidityRatio_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end saturationHumidityRatio_psxi;

redeclare replaceable function extends specificEnthalpy1px_psxi
algorithm
  h1px := TILMedia.Internals.GasFunctions.specificEnthalpy1px_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end specificEnthalpy1px_psxi;

redeclare replaceable function extends prandtlNumber_psxi
algorithm
  Pr := TILMedia.Internals.GasFunctions.prandtlNumber_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end prandtlNumber_psxi;

redeclare replaceable function extends thermalConductivity_psxi
algorithm
  lambda := TILMedia.Internals.GasFunctions.thermalConductivity_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end thermalConductivity_psxi;

redeclare replaceable function extends dynamicViscosity_psxi
algorithm
  eta := TILMedia.Internals.GasFunctions.dynamicViscosity_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end dynamicViscosity_psxi;

redeclare replaceable function extends density_pTxi
algorithm
  d := TILMedia.Internals.GasFunctions.density_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end density_pTxi;

redeclare replaceable function extends specificEnthalpy_pTxi
algorithm
  h := TILMedia.Internals.GasFunctions.specificEnthalpy_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end specificEnthalpy_pTxi;

redeclare replaceable function extends specificEntropy_pTxi
algorithm
  s := TILMedia.Internals.GasFunctions.specificEntropy_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end specificEntropy_pTxi;

redeclare replaceable function extends specificIsobaricHeatCapacity_pTxi
algorithm
  cp := TILMedia.Internals.GasFunctions.specificIsobaricHeatCapacity_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end specificIsobaricHeatCapacity_pTxi;

redeclare replaceable function extends specificIsochoricHeatCapacity_pTxi
algorithm
  cv := TILMedia.Internals.GasFunctions.specificIsochoricHeatCapacity_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end specificIsochoricHeatCapacity_pTxi;

redeclare replaceable function extends isobaricThermalExpansionCoefficient_pTxi



algorithm
  beta := TILMedia.Internals.GasFunctions.isobaricThermalExpansionCoefficient_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end isobaricThermalExpansionCoefficient_pTxi;

redeclare replaceable function extends isothermalCompressibility_pTxi
algorithm
  kappa := TILMedia.Internals.GasFunctions.isothermalCompressibility_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end isothermalCompressibility_pTxi;

redeclare replaceable function extends speedOfSound_pTxi
algorithm
  w := TILMedia.Internals.GasFunctions.speedOfSound_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end speedOfSound_pTxi;

redeclare replaceable function extends
    densityDerivativeWRTspecificEnthalpy_pTxi
algorithm
  drhodh_pxi := TILMedia.Internals.GasFunctions.densityDerivativeWRTspecificEnthalpy_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end densityDerivativeWRTspecificEnthalpy_pTxi;

redeclare replaceable function extends densityDerivativeWRTpressure_pTxi
algorithm
  drhodp_hxi := TILMedia.Internals.GasFunctions.densityDerivativeWRTpressure_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end densityDerivativeWRTpressure_pTxi;

redeclare replaceable function extends densityDerivativeWRTmassFraction_pTxi
algorithm
  drhodxi_ph := TILMedia.Internals.GasFunctions.densityDerivativeWRTmassFraction_pTxin(p,T,xi,compNo, gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end densityDerivativeWRTmassFraction_pTxi;

redeclare replaceable function extends partialPressure_pTxi
algorithm
  p_i := TILMedia.Internals.GasFunctions.partialPressure_pTxin(p,T,xi,compNo, gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end partialPressure_pTxi;

redeclare replaceable function extends gaseousMassFraction_pTxi
algorithm
  xi_gas := TILMedia.Internals.GasFunctions.gaseousMassFraction_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end gaseousMassFraction_pTxi;

redeclare replaceable function extends relativeHumidity_pTxi
algorithm
  phi := TILMedia.Internals.GasFunctions.relativeHumidity_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end relativeHumidity_pTxi;

redeclare replaceable function extends saturationMassFraction_pTxi
algorithm
  xi_s := TILMedia.Internals.GasFunctions.saturationMassFraction_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end saturationMassFraction_pTxi;

redeclare replaceable function extends saturationHumidityRatio_pTxi
algorithm
  humRatio_s := TILMedia.Internals.GasFunctions.saturationHumidityRatio_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end saturationHumidityRatio_pTxi;

redeclare replaceable function extends specificEnthalpy1px_pTxi
algorithm
  h1px := TILMedia.Internals.GasFunctions.specificEnthalpy1px_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end specificEnthalpy1px_pTxi;

redeclare replaceable function extends prandtlNumber_pTxi
algorithm
  Pr := TILMedia.Internals.GasFunctions.prandtlNumber_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end prandtlNumber_pTxi;

redeclare replaceable function extends thermalConductivity_pTxi
algorithm
  lambda := TILMedia.Internals.GasFunctions.thermalConductivity_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end thermalConductivity_pTxi;

redeclare replaceable function extends dynamicViscosity_pTxi
algorithm
  eta := TILMedia.Internals.GasFunctions.dynamicViscosity_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end dynamicViscosity_pTxi;

redeclare replaceable function extends saturationPartialPressure_T
algorithm
  p_s := TILMedia.Internals.GasFunctions.saturationPartialPressure_T(T,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end saturationPartialPressure_T;

redeclare replaceable function extends specificEnthalpyOfVaporisation_T
algorithm
  delta_hv := TILMedia.Internals.GasFunctions.specificEnthalpyOfVaporisation_T(T,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end specificEnthalpyOfVaporisation_T;

redeclare replaceable function extends specificEnthalpyOfDesublimation_T
algorithm
  delta_hd := TILMedia.Internals.GasFunctions.specificEnthalpyOfDesublimation_T(T,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end specificEnthalpyOfDesublimation_T;

redeclare replaceable function extends specificEnthalpyOfPureGas_Tn
algorithm
  h_i := TILMedia.Internals.GasFunctions.specificEnthalpyOfPureGas_Tn(T,compNo, gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end specificEnthalpyOfPureGas_Tn;

redeclare replaceable function extends specificIsobaricHeatCapacityOfPureGas_Tn



algorithm
  cp_i := TILMedia.Internals.GasFunctions.specificIsobaricHeatCapacityOfPureGas_Tn(T,compNo, gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end specificIsobaricHeatCapacityOfPureGas_Tn;

redeclare replaceable function extends averageMolarMass_xi
algorithm
  M := TILMedia.Internals.GasFunctions.averageMolarMass_xi(xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end averageMolarMass_xi;

redeclare replaceable function extends humidityRatio_xi
algorithm
  humRatio := TILMedia.Internals.GasFunctions.humidityRatio_xi(xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end humidityRatio_xi;

redeclare replaceable function extends molarMass_n
algorithm
  M_i := TILMedia.Internals.GasFunctions.molarMass_n(compNo, gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end molarMass_n;

redeclare replaceable function extends specificEnthalpyOfFormation_n
algorithm
  hF_i := TILMedia.Internals.GasFunctions.specificEnthalpyOfFormation_n(compNo, gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end specificEnthalpyOfFormation_n;

redeclare replaceable function extends freezingPoint
algorithm
  T_freeze := TILMedia.Internals.GasFunctions.freezingPoint(gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=false);
end freezingPoint;
end GasFunctions;
