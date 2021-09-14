within TILMedia.BaseClasses;
package PartialGasFunctions
  "Package for calculation of gas vapor properties with a functional call"
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  replaceable partial function density_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.density_phxi;
  replaceable partial function specificEntropy_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.specificEntropy_phxi;
  replaceable partial function temperature_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.temperature_phxi;
  replaceable partial function specificIsobaricHeatCapacity_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.specificIsobaricHeatCapacity_phxi;
  replaceable partial function specificIsochoricHeatCapacity_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.specificIsochoricHeatCapacity_phxi;
  replaceable partial function isobaricThermalExpansionCoefficient_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.isobaricThermalExpansionCoefficient_phxi;
  replaceable partial function isothermalCompressibility_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.isothermalCompressibility_phxi;
  replaceable partial function speedOfSound_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.speedOfSound_phxi;
  replaceable partial function densityDerivativeWRTspecificEnthalpy_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.densityDerivativeWRTspecificEnthalpy_phxi;
  replaceable partial function densityDerivativeWRTpressure_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.densityDerivativeWRTpressure_phxi;
  replaceable partial function densityDerivativeWRTmassFraction_phxin =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.densityDerivativeWRTmassFraction_phxin;
  replaceable partial function partialPressure_phxin =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.partialPressure_phxin;
  replaceable partial function gaseousMassFraction_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.gaseousMassFraction_phxi;
  replaceable partial function relativeHumidity_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.relativeHumidity_phxi;
  replaceable partial function saturationMassFraction_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.saturationMassFraction_phxi;
  replaceable partial function saturationHumidityRatio_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.saturationHumidityRatio_phxi;
  replaceable partial function specificEnthalpy1px_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.specificEnthalpy1px_phxi;
  replaceable partial function prandtlNumber_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.prandtlNumber_phxi;
  replaceable partial function thermalConductivity_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.thermalConductivity_phxi;
  replaceable partial function dynamicViscosity_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.dynamicViscosity_phxi;
  replaceable partial function dewTemperature_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.dewTemperature_phxi;
  replaceable partial function wetBulbTemperature_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.wetBulbTemperature_phxi;
  replaceable partial function iceBulbTemperature_phxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.iceBulbTemperature_phxi;

  replaceable partial function density_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.density_psxi;
  replaceable partial function specificEnthalpy_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.specificEnthalpy_psxi;
  replaceable partial function temperature_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.temperature_psxi;
  replaceable partial function specificIsobaricHeatCapacity_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.specificIsobaricHeatCapacity_psxi;
  replaceable partial function specificIsochoricHeatCapacity_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.specificIsochoricHeatCapacity_psxi;
  replaceable partial function isobaricThermalExpansionCoefficient_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.isobaricThermalExpansionCoefficient_psxi;
  replaceable partial function isothermalCompressibility_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.isothermalCompressibility_psxi;
  replaceable partial function speedOfSound_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.speedOfSound_psxi;
  replaceable partial function densityDerivativeWRTspecificEnthalpy_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.densityDerivativeWRTspecificEnthalpy_psxi;
  replaceable partial function densityDerivativeWRTpressure_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.densityDerivativeWRTpressure_psxi;
  replaceable partial function densityDerivativeWRTmassFraction_psxin =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.densityDerivativeWRTmassFraction_psxin;
  replaceable partial function partialPressure_psxin =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.partialPressure_psxin;
  replaceable partial function gaseousMassFraction_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.gaseousMassFraction_psxi;
  replaceable partial function relativeHumidity_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.relativeHumidity_psxi;
  replaceable partial function saturationMassFraction_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.saturationMassFraction_psxi;
  replaceable partial function saturationHumidityRatio_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.saturationHumidityRatio_psxi;
  replaceable partial function specificEnthalpy1px_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.specificEnthalpy1px_psxi;
  replaceable partial function prandtlNumber_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.prandtlNumber_psxi;
  replaceable partial function thermalConductivity_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.thermalConductivity_psxi;
  replaceable partial function dynamicViscosity_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.dynamicViscosity_psxi;
  replaceable partial function dewTemperature_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.dewTemperature_psxi;
  replaceable partial function wetBulbTemperature_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.wetBulbTemperature_psxi;
  replaceable partial function iceBulbTemperature_psxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.iceBulbTemperature_psxi;

  replaceable partial function density_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.density_pTxi;
  replaceable partial function specificEnthalpy_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.specificEnthalpy_pTxi;
  replaceable partial function specificEntropy_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.specificEntropy_pTxi;
  replaceable partial function specificIsobaricHeatCapacity_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.specificIsobaricHeatCapacity_pTxi;
  replaceable partial function specificIsochoricHeatCapacity_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.specificIsochoricHeatCapacity_pTxi;
  replaceable partial function isobaricThermalExpansionCoefficient_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.isobaricThermalExpansionCoefficient_pTxi;
  replaceable partial function isothermalCompressibility_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.isothermalCompressibility_pTxi;
  replaceable partial function speedOfSound_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.speedOfSound_pTxi;
  replaceable partial function densityDerivativeWRTspecificEnthalpy_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.densityDerivativeWRTspecificEnthalpy_pTxi;
  replaceable partial function densityDerivativeWRTpressure_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.densityDerivativeWRTpressure_pTxi;
  replaceable partial function densityDerivativeWRTmassFraction_pTxin =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.densityDerivativeWRTmassFraction_pTxin;
  replaceable partial function partialPressure_pTxin =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.partialPressure_pTxin;
  replaceable partial function gaseousMassFraction_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.gaseousMassFraction_pTxi;
  replaceable partial function relativeHumidity_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.relativeHumidity_pTxi;
  replaceable partial function saturationMassFraction_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.saturationMassFraction_pTxi;
  replaceable partial function saturationHumidityRatio_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.saturationHumidityRatio_pTxi;
  replaceable partial function specificEnthalpy1px_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.specificEnthalpy1px_pTxi;
  replaceable partial function prandtlNumber_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.prandtlNumber_pTxi;
  replaceable partial function thermalConductivity_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.thermalConductivity_pTxi;
  replaceable partial function dynamicViscosity_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.dynamicViscosity_pTxi;
  replaceable partial function dewTemperature_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.dewTemperature_pTxi;
  replaceable partial function wetBulbTemperature_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.wetBulbTemperature_pTxi;
  replaceable partial function iceBulbTemperature_pTxi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.iceBulbTemperature_pTxi;


  replaceable partial function saturationPartialPressure_T =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.saturationPartialPressure_T;
  replaceable partial function specificEnthalpyOfVaporisation_T =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.specificEnthalpyOfVaporisation_T;
  replaceable partial function specificEnthalpyOfDesublimation_T =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.specificEnthalpyOfDesublimation_T;
  replaceable partial function specificEnthalpyOfPureGas_Tn =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.specificEnthalpyOfPureGas_Tn;
  replaceable partial function specificIsobaricHeatCapacityOfPureGas_Tn =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.specificIsobaricHeatCapacityOfPureGas_Tn;


  replaceable partial function averageMolarMass_xi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.averageMolarMass_xi;
  replaceable partial function humidityRatio_xi =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.humidityRatio_xi;

  replaceable partial function molarMass_n =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.molarMass_n;
  replaceable partial function specificEnthalpyOfFormation_n =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.specificEnthalpyOfFormation_n;
  replaceable partial function freezingPoint =
      TILMedia.BaseClasses.PartialGasFunctionPrototypes.freezingPoint;

end PartialGasFunctions;
