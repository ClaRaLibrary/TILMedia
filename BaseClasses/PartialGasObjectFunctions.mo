within TILMedia.BaseClasses;
package PartialGasObjectFunctions
  "Package for calculation of gas vapor properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  replaceable partial function density_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.density_phxi;
  replaceable partial function specificEntropy_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.specificEntropy_phxi;
  replaceable partial function temperature_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.temperature_phxi;
  replaceable partial function specificIsobaricHeatCapacity_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.specificIsobaricHeatCapacity_phxi;
  replaceable partial function specificIsochoricHeatCapacity_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.specificIsochoricHeatCapacity_phxi;
  replaceable partial function isobaricThermalExpansionCoefficient_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.isobaricThermalExpansionCoefficient_phxi;
  replaceable partial function isothermalCompressibility_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.isothermalCompressibility_phxi;
  replaceable partial function speedOfSound_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.speedOfSound_phxi;
  replaceable partial function densityDerivativeWRTspecificEnthalpy_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.densityDerivativeWRTspecificEnthalpy_phxi;
  replaceable partial function densityDerivativeWRTpressure_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.densityDerivativeWRTpressure_phxi;
  replaceable partial function densityDerivativeWRTmassFraction_phxin =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.densityDerivativeWRTmassFraction_phxin;
  replaceable partial function partialPressure_phxin =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.partialPressure_phxin;
  replaceable partial function gaseousMassFraction_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.gaseousMassFraction_phxi;
  replaceable partial function relativeHumidity_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.relativeHumidity_phxi;
  replaceable partial function saturationMassFraction_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.saturationMassFraction_phxi;
  replaceable partial function saturationHumidityRatio_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.saturationHumidityRatio_phxi;
  replaceable partial function specificEnthalpy1px_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.specificEnthalpy1px_phxi;
  replaceable partial function prandtlNumber_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.prandtlNumber_phxi;
  replaceable partial function thermalConductivity_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.thermalConductivity_phxi;
  replaceable partial function dynamicViscosity_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.dynamicViscosity_phxi;
  replaceable partial function dewTemperature_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.dewTemperature_phxi;
  replaceable partial function wetBulbTemperature_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.wetBulbTemperature_phxi;
  replaceable partial function iceBulbTemperature_phxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.iceBulbTemperature_phxi;

  replaceable partial function density_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.density_psxi;
  replaceable partial function specificEnthalpy_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.specificEnthalpy_psxi;
  replaceable partial function temperature_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.temperature_psxi;
  replaceable partial function specificIsobaricHeatCapacity_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.specificIsobaricHeatCapacity_psxi;
  replaceable partial function specificIsochoricHeatCapacity_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.specificIsochoricHeatCapacity_psxi;
  replaceable partial function isobaricThermalExpansionCoefficient_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.isobaricThermalExpansionCoefficient_psxi;
  replaceable partial function isothermalCompressibility_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.isothermalCompressibility_psxi;
  replaceable partial function speedOfSound_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.speedOfSound_psxi;
  replaceable partial function densityDerivativeWRTspecificEnthalpy_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.densityDerivativeWRTspecificEnthalpy_psxi;
  replaceable partial function densityDerivativeWRTpressure_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.densityDerivativeWRTpressure_psxi;
  replaceable partial function densityDerivativeWRTmassFraction_psxin =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.densityDerivativeWRTmassFraction_psxin;
  replaceable partial function partialPressure_psxin =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.partialPressure_psxin;
  replaceable partial function gaseousMassFraction_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.gaseousMassFraction_psxi;
  replaceable partial function relativeHumidity_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.relativeHumidity_psxi;
  replaceable partial function saturationMassFraction_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.saturationMassFraction_psxi;
  replaceable partial function saturationHumidityRatio_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.saturationHumidityRatio_psxi;
  replaceable partial function specificEnthalpy1px_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.specificEnthalpy1px_psxi;
  replaceable partial function prandtlNumber_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.prandtlNumber_psxi;
  replaceable partial function thermalConductivity_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.thermalConductivity_psxi;
  replaceable partial function dynamicViscosity_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.dynamicViscosity_psxi;
  replaceable partial function dewTemperature_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.dewTemperature_psxi;
  replaceable partial function wetBulbTemperature_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.wetBulbTemperature_psxi;
  replaceable partial function iceBulbTemperature_psxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.iceBulbTemperature_psxi;

  replaceable partial function density_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.density_pTxi;
  replaceable partial function specificEnthalpy_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.specificEnthalpy_pTxi;
  replaceable partial function specificEntropy_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.specificEntropy_pTxi;
  replaceable partial function specificIsobaricHeatCapacity_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.specificIsobaricHeatCapacity_pTxi;
  replaceable partial function specificIsochoricHeatCapacity_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.specificIsochoricHeatCapacity_pTxi;
  replaceable partial function isobaricThermalExpansionCoefficient_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.isobaricThermalExpansionCoefficient_pTxi;
  replaceable partial function isothermalCompressibility_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.isothermalCompressibility_pTxi;
  replaceable partial function speedOfSound_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.speedOfSound_pTxi;
  replaceable partial function densityDerivativeWRTspecificEnthalpy_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.densityDerivativeWRTspecificEnthalpy_pTxi;
  replaceable partial function densityDerivativeWRTpressure_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.densityDerivativeWRTpressure_pTxi;
  replaceable partial function densityDerivativeWRTmassFraction_pTxin =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.densityDerivativeWRTmassFraction_pTxin;
  replaceable partial function partialPressure_pTxin =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.partialPressure_pTxin;
  replaceable partial function gaseousMassFraction_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.gaseousMassFraction_pTxi;
  replaceable partial function relativeHumidity_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.relativeHumidity_pTxi;
  replaceable partial function saturationMassFraction_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.saturationMassFraction_pTxi;
  replaceable partial function saturationHumidityRatio_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.saturationHumidityRatio_pTxi;
  replaceable partial function specificEnthalpy1px_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.specificEnthalpy1px_pTxi;
  replaceable partial function prandtlNumber_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.prandtlNumber_pTxi;
  replaceable partial function thermalConductivity_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.thermalConductivity_pTxi;
  replaceable partial function dynamicViscosity_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.dynamicViscosity_pTxi;
  replaceable partial function dewTemperature_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.dewTemperature_pTxi;
  replaceable partial function wetBulbTemperature_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.wetBulbTemperature_pTxi;
  replaceable partial function iceBulbTemperature_pTxi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.iceBulbTemperature_pTxi;


  replaceable partial function saturationPartialPressure_T =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.saturationPartialPressure_T;
  replaceable partial function specificEnthalpyOfVaporisation_T =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.specificEnthalpyOfVaporisation_T;
  replaceable partial function specificEnthalpyOfDesublimation_T =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.specificEnthalpyOfDesublimation_T;
  replaceable partial function specificEnthalpyOfPureGas_Tn =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.specificEnthalpyOfPureGas_Tn;
  replaceable partial function specificIsobaricHeatCapacityOfPureGas_Tn =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.specificIsobaricHeatCapacityOfPureGas_Tn;


  replaceable partial function averageMolarMass_xi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.averageMolarMass_xi;
  replaceable partial function humidityRatio_xi =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.humidityRatio_xi;

  replaceable partial function molarMass_n =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.molarMass_n;
  replaceable partial function specificEnthalpyOfFormation_n =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.specificEnthalpyOfFormation_n;
  replaceable partial function freezingPoint =
      TILMedia.BaseClasses.PartialGasObjectFunctionPrototypes.freezingPoint;


 replaceable partial function saturationMassFraction_pTxidg
  extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.MassFraction xi_s "Saturation vapour mass fraction";
 end saturationMassFraction_pTxidg;

end PartialGasObjectFunctions;
