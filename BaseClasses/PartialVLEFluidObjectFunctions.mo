within TILMedia.BaseClasses;
package PartialVLEFluidObjectFunctions
  "Package for calculation of VLEFluid properties with a functional call"
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  replaceable partial function specificEnthalpy_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificEnthalpy_dTxi;
  replaceable partial function pressure_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.pressure_dTxi;
  replaceable partial function specificEntropy_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificEntropy_dTxi;
  replaceable partial function moleFraction_dTxin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.moleFraction_dTxin;
  replaceable partial function steamMassFraction_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.steamMassFraction_dTxi;
  replaceable partial function specificIsobaricHeatCapacity_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificIsobaricHeatCapacity_dTxi;
  replaceable partial function specificIsochoricHeatCapacity_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificIsochoricHeatCapacity_dTxi;
  replaceable partial function isobaricThermalExpansionCoefficient_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.isobaricThermalExpansionCoefficient_dTxi;
  replaceable partial function isothermalCompressibility_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.isothermalCompressibility_dTxi;
  replaceable partial function speedOfSound_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.speedOfSound_dTxi;
  replaceable partial function densityDerivativeWRTspecificEnthalpy_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.densityDerivativeWRTspecificEnthalpy_dTxi;
  replaceable partial function densityDerivativeWRTpressure_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.densityDerivativeWRTpressure_dTxi;
  replaceable partial function densityDerivativeWRTmassFraction_dTxin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.densityDerivativeWRTmassFraction_dTxin;
  replaceable partial function heatCapacityRatio_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.heatCapacityRatio_dTxi;
  replaceable partial function prandtlNumber_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.prandtlNumber_dTxi;
  replaceable partial function thermalConductivity_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.thermalConductivity_dTxi;
  replaceable partial function dynamicViscosity_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dynamicViscosity_dTxi;
  replaceable partial function surfaceTension_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.surfaceTension_dTxi;
  replaceable partial function liquidDensity_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidDensity_dTxi;
  replaceable partial function vapourDensity_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourDensity_dTxi;
  replaceable partial function liquidSpecificEnthalpy_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidSpecificEnthalpy_dTxi;
  replaceable partial function vapourSpecificEnthalpy_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourSpecificEnthalpy_dTxi;
  replaceable partial function liquidPressure_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidPressure_dTxi;
  replaceable partial function vapourPressure_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourPressure_dTxi;
  replaceable partial function liquidSpecificEntropy_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidSpecificEntropy_dTxi;
  replaceable partial function vapourSpecificEntropy_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourSpecificEntropy_dTxi;
  replaceable partial function liquidMassFraction_dTxin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidMassFraction_dTxin;
  replaceable partial function vapourMassFraction_dTxin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourMassFraction_dTxin;
  replaceable partial function liquidSpecificHeatCapacity_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidSpecificHeatCapacity_dTxi;
  replaceable partial function vapourSpecificHeatCapacity_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourSpecificHeatCapacity_dTxi;
  replaceable partial function liquidIsobaricThermalExpansionCoefficient_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidIsobaricThermalExpansionCoefficient_dTxi;
  replaceable partial function vapourIsobaricThermalExpansionCoefficient_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourIsobaricThermalExpansionCoefficient_dTxi;
  replaceable partial function liquidIsothermalCompressibility_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidIsothermalCompressibility_dTxi;
  replaceable partial function vapourIsothermalCompressibility_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourIsothermalCompressibility_dTxi;

  replaceable partial function density_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.density_phxi;
  replaceable partial function specificEntropy_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificEntropy_phxi;
  replaceable partial function temperature_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.temperature_phxi;
  replaceable partial function moleFraction_phxin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.moleFraction_phxin;
  replaceable partial function steamMassFraction_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.steamMassFraction_phxi;
  replaceable partial function specificIsobaricHeatCapacity_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificIsobaricHeatCapacity_phxi;
  replaceable partial function specificIsochoricHeatCapacity_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificIsochoricHeatCapacity_phxi;
  replaceable partial function isobaricThermalExpansionCoefficient_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.isobaricThermalExpansionCoefficient_phxi;
  replaceable partial function isothermalCompressibility_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.isothermalCompressibility_phxi;
  replaceable partial function speedOfSound_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.speedOfSound_phxi;
  replaceable partial function densityDerivativeWRTspecificEnthalpy_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.densityDerivativeWRTspecificEnthalpy_phxi;
  replaceable partial function densityDerivativeWRTpressure_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.densityDerivativeWRTpressure_phxi;
  replaceable partial function densityDerivativeWRTmassFraction_phxin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.densityDerivativeWRTmassFraction_phxin;
  replaceable partial function heatCapacityRatio_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.heatCapacityRatio_phxi;
  replaceable partial function prandtlNumber_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.prandtlNumber_phxi;
  replaceable partial function thermalConductivity_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.thermalConductivity_phxi;
  replaceable partial function dynamicViscosity_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dynamicViscosity_phxi;
  replaceable partial function surfaceTension_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.surfaceTension_phxi;
  replaceable partial function liquidDensity_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidDensity_phxi;
  replaceable partial function vapourDensity_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourDensity_phxi;
  replaceable partial function liquidSpecificEnthalpy_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidSpecificEnthalpy_phxi;
  replaceable partial function vapourSpecificEnthalpy_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourSpecificEnthalpy_phxi;
  replaceable partial function liquidSpecificEntropy_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidSpecificEntropy_phxi;
  replaceable partial function vapourSpecificEntropy_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourSpecificEntropy_phxi;
  replaceable partial function liquidTemperature_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidTemperature_phxi;
  replaceable partial function vapourTemperature_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourTemperature_phxi;
  replaceable partial function liquidMassFraction_phxin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidMassFraction_phxin;
  replaceable partial function vapourMassFraction_phxin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourMassFraction_phxin;
  replaceable partial function liquidSpecificHeatCapacity_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidSpecificHeatCapacity_phxi;
  replaceable partial function vapourSpecificHeatCapacity_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourSpecificHeatCapacity_phxi;
  replaceable partial function liquidIsobaricThermalExpansionCoefficient_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidIsobaricThermalExpansionCoefficient_phxi;
  replaceable partial function vapourIsobaricThermalExpansionCoefficient_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourIsobaricThermalExpansionCoefficient_phxi;
  replaceable partial function liquidIsothermalCompressibility_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidIsothermalCompressibility_phxi;
  replaceable partial function vapourIsothermalCompressibility_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourIsothermalCompressibility_phxi;

  replaceable partial function density_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.density_psxi;
  replaceable partial function specificEnthalpy_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificEnthalpy_psxi;
  replaceable partial function temperature_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.temperature_psxi;
  replaceable partial function moleFraction_psxin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.moleFraction_psxin;
  replaceable partial function steamMassFraction_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.steamMassFraction_psxi;
  replaceable partial function specificIsobaricHeatCapacity_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificIsobaricHeatCapacity_psxi;
  replaceable partial function specificIsochoricHeatCapacity_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificIsochoricHeatCapacity_psxi;
  replaceable partial function isobaricThermalExpansionCoefficient_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.isobaricThermalExpansionCoefficient_psxi;
  replaceable partial function isothermalCompressibility_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.isothermalCompressibility_psxi;
  replaceable partial function speedOfSound_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.speedOfSound_psxi;
  replaceable partial function densityDerivativeWRTspecificEnthalpy_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.densityDerivativeWRTspecificEnthalpy_psxi;
  replaceable partial function densityDerivativeWRTpressure_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.densityDerivativeWRTpressure_psxi;
  replaceable partial function densityDerivativeWRTmassFraction_psxin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.densityDerivativeWRTmassFraction_psxin;
  replaceable partial function heatCapacityRatio_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.heatCapacityRatio_psxi;
  replaceable partial function prandtlNumber_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.prandtlNumber_psxi;
  replaceable partial function thermalConductivity_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.thermalConductivity_psxi;
  replaceable partial function dynamicViscosity_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dynamicViscosity_psxi;
  replaceable partial function surfaceTension_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.surfaceTension_psxi;
  replaceable partial function liquidDensity_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidDensity_psxi;
  replaceable partial function vapourDensity_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourDensity_psxi;
  replaceable partial function liquidSpecificEnthalpy_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidSpecificEnthalpy_psxi;
  replaceable partial function vapourSpecificEnthalpy_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourSpecificEnthalpy_psxi;
  replaceable partial function liquidSpecificEntropy_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidSpecificEntropy_psxi;
  replaceable partial function vapourSpecificEntropy_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourSpecificEntropy_psxi;
  replaceable partial function liquidTemperature_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidTemperature_psxi;
  replaceable partial function vapourTemperature_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourTemperature_psxi;
  replaceable partial function liquidMassFraction_psxin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidMassFraction_psxin;
  replaceable partial function vapourMassFraction_psxin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourMassFraction_psxin;
  replaceable partial function liquidSpecificHeatCapacity_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidSpecificHeatCapacity_psxi;
  replaceable partial function vapourSpecificHeatCapacity_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourSpecificHeatCapacity_psxi;
  replaceable partial function liquidIsobaricThermalExpansionCoefficient_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidIsobaricThermalExpansionCoefficient_psxi;
  replaceable partial function vapourIsobaricThermalExpansionCoefficient_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourIsobaricThermalExpansionCoefficient_psxi;
  replaceable partial function liquidIsothermalCompressibility_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidIsothermalCompressibility_psxi;
  replaceable partial function vapourIsothermalCompressibility_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourIsothermalCompressibility_psxi;

  replaceable partial function density_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.density_pTxi;
  replaceable partial function specificEnthalpy_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificEnthalpy_pTxi;
  replaceable partial function specificEntropy_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificEntropy_pTxi;
  replaceable partial function moleFraction_pTxin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.moleFraction_pTxin;
  replaceable partial function steamMassFraction_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.steamMassFraction_pTxi;
  replaceable partial function specificIsobaricHeatCapacity_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificIsobaricHeatCapacity_pTxi;
  replaceable partial function specificIsochoricHeatCapacity_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificIsochoricHeatCapacity_pTxi;
  replaceable partial function isobaricThermalExpansionCoefficient_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.isobaricThermalExpansionCoefficient_pTxi;
  replaceable partial function isothermalCompressibility_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.isothermalCompressibility_pTxi;
  replaceable partial function speedOfSound_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.speedOfSound_pTxi;
  replaceable partial function densityDerivativeWRTspecificEnthalpy_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.densityDerivativeWRTspecificEnthalpy_pTxi;
  replaceable partial function densityDerivativeWRTpressure_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.densityDerivativeWRTpressure_pTxi;
  replaceable partial function densityDerivativeWRTmassFraction_pTxin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.densityDerivativeWRTmassFraction_pTxin;
  replaceable partial function heatCapacityRatio_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.heatCapacityRatio_pTxi;
  replaceable partial function prandtlNumber_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.prandtlNumber_pTxi;
  replaceable partial function thermalConductivity_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.thermalConductivity_pTxi;
  replaceable partial function dynamicViscosity_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dynamicViscosity_pTxi;
  replaceable partial function surfaceTension_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.surfaceTension_pTxi;
  replaceable partial function liquidDensity_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidDensity_pTxi;
  replaceable partial function vapourDensity_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourDensity_pTxi;
  replaceable partial function liquidSpecificEnthalpy_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidSpecificEnthalpy_pTxi;
  replaceable partial function vapourSpecificEnthalpy_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourSpecificEnthalpy_pTxi;
  replaceable partial function liquidSpecificEntropy_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidSpecificEntropy_pTxi;
  replaceable partial function vapourSpecificEntropy_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourSpecificEntropy_pTxi;
  replaceable partial function liquidTemperature_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidTemperature_pTxi;
  replaceable partial function vapourTemperature_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourTemperature_pTxi;
  replaceable partial function liquidMassFraction_pTxin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidMassFraction_pTxin;
  replaceable partial function vapourMassFraction_pTxin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourMassFraction_pTxin;
  replaceable partial function liquidSpecificHeatCapacity_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidSpecificHeatCapacity_pTxi;
  replaceable partial function vapourSpecificHeatCapacity_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourSpecificHeatCapacity_pTxi;
  replaceable partial function liquidIsobaricThermalExpansionCoefficient_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidIsobaricThermalExpansionCoefficient_pTxi;
  replaceable partial function vapourIsobaricThermalExpansionCoefficient_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourIsobaricThermalExpansionCoefficient_pTxi;
  replaceable partial function liquidIsothermalCompressibility_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.liquidIsothermalCompressibility_pTxi;
  replaceable partial function vapourIsothermalCompressibility_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.vapourIsothermalCompressibility_pTxi;


  replaceable partial function dewDensity_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewDensity_Txi;
  replaceable partial function bubbleDensity_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubbleDensity_Txi;
  replaceable partial function dewSpecificEnthalpy_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewSpecificEnthalpy_Txi;
  replaceable partial function bubbleSpecificEnthalpy_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubbleSpecificEnthalpy_Txi;
  replaceable partial function dewPressure_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewPressure_Txi;
  replaceable partial function bubblePressure_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubblePressure_Txi;
  replaceable partial function dewSpecificEntropy_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewSpecificEntropy_Txi;
  replaceable partial function bubbleSpecificEntropy_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubbleSpecificEntropy_Txi;
  replaceable partial function dewLiquidMassFraction_Txin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewLiquidMassFraction_Txin;
  replaceable partial function bubbleVapourMassFraction_Txin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubbleVapourMassFraction_Txin;
  replaceable partial function dewSpecificIsobaricHeatCapacity_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewSpecificIsobaricHeatCapacity_Txi;
  replaceable partial function bubbleSpecificIsobaricHeatCapacity_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubbleSpecificIsobaricHeatCapacity_Txi;
  replaceable partial function dewIsobaricThermalExpansionCoefficient_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewIsobaricThermalExpansionCoefficient_Txi;
  replaceable partial function bubbleIsobaricThermalExpansionCoefficient_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubbleIsobaricThermalExpansionCoefficient_Txi;
  replaceable partial function dewIsothermalCompressibility_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewIsothermalCompressibility_Txi;
  replaceable partial function bubbleIsothermalCompressibility_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubbleIsothermalCompressibility_Txi;

  replaceable partial function dewDensity_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewDensity_pxi;
  replaceable partial function bubbleDensity_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubbleDensity_pxi;
  replaceable partial function dewSpecificEnthalpy_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewSpecificEnthalpy_pxi;
  replaceable partial function bubbleSpecificEnthalpy_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubbleSpecificEnthalpy_pxi;
  replaceable partial function dewSpecificEntropy_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewSpecificEntropy_pxi;
  replaceable partial function bubbleSpecificEntropy_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubbleSpecificEntropy_pxi;
  replaceable partial function dewTemperature_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewTemperature_pxi;
  replaceable partial function bubbleTemperature_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubbleTemperature_pxi;
  replaceable partial function dewLiquidMassFraction_pxin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewLiquidMassFraction_pxin;
  replaceable partial function bubbleVapourMassFraction_pxin =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubbleVapourMassFraction_pxin;
  replaceable partial function dewSpecificIsobaricHeatCapacity_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewSpecificIsobaricHeatCapacity_pxi;
  replaceable partial function bubbleSpecificIsobaricHeatCapacity_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubbleSpecificIsobaricHeatCapacity_pxi;
  replaceable partial function dewIsobaricThermalExpansionCoefficient_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewIsobaricThermalExpansionCoefficient_pxi;
  replaceable partial function bubbleIsobaricThermalExpansionCoefficient_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubbleIsobaricThermalExpansionCoefficient_pxi;
  replaceable partial function dewIsothermalCompressibility_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewIsothermalCompressibility_pxi;
  replaceable partial function bubbleIsothermalCompressibility_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubbleIsothermalCompressibility_pxi;



  replaceable partial function averageMolarMass_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.averageMolarMass_xi;
  replaceable partial function criticalDensity_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.criticalDensity_xi;
  replaceable partial function criticalSpecificEnthalpy_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.criticalSpecificEnthalpy_xi;
  replaceable partial function criticalPressure_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.criticalPressure_xi;
  replaceable partial function criticalSpecificEntropy_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.criticalSpecificEntropy_xi;
  replaceable partial function criticalTemperature_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.criticalTemperature_xi;
  replaceable partial function criticalSpecificIsobaricHeatCapacity_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.criticalSpecificIsobaricHeatCapacity_xi;
  replaceable partial function criticalIsobaricThermalExpansionCoefficient_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.criticalIsobaricThermalExpansionCoefficient_xi;
  replaceable partial function criticalIsothermalCompressibility_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.criticalIsothermalCompressibility_xi;
  replaceable partial function criticalThermalConductivity_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.criticalThermalConductivity_xi;
  replaceable partial function criticalDynamicViscosity_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.criticalDynamicViscosity_xi;
  replaceable partial function criticalSurfaceTension_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.criticalSurfaceTension_xi;
  replaceable partial function cricondenbarTemperature_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.cricondenbarTemperature_xi;
  replaceable partial function cricondenthermTemperature_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.cricondenthermTemperature_xi;
  replaceable partial function cricondenbarPressure_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.cricondenbarPressure_xi;
  replaceable partial function cricondenthermPressure_xi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.cricondenthermPressure_xi;

  replaceable partial function molarMass_n =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.molarMass_n;

end PartialVLEFluidObjectFunctions;
