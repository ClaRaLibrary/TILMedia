within TILMedia.BaseClasses;
package PartialVLEFluidFunctions
  "Package for calculation of VLEFluid properties with a functional call"
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  replaceable partial function specificEnthalpy_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.specificEnthalpy_dTxi;
  replaceable partial function pressure_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.pressure_dTxi;
  replaceable partial function specificEntropy_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.specificEntropy_dTxi;
  replaceable partial function moleFraction_dTxin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.moleFraction_dTxin;
  replaceable partial function steamMassFraction_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.steamMassFraction_dTxi;
  replaceable partial function specificIsobaricHeatCapacity_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.specificIsobaricHeatCapacity_dTxi;
  replaceable partial function specificIsochoricHeatCapacity_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.specificIsochoricHeatCapacity_dTxi;
  replaceable partial function isobaricThermalExpansionCoefficient_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.isobaricThermalExpansionCoefficient_dTxi;
  replaceable partial function isothermalCompressibility_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.isothermalCompressibility_dTxi;
  replaceable partial function speedOfSound_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.speedOfSound_dTxi;
  replaceable partial function densityDerivativeWRTspecificEnthalpy_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.densityDerivativeWRTspecificEnthalpy_dTxi;
  replaceable partial function densityDerivativeWRTpressure_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.densityDerivativeWRTpressure_dTxi;
  replaceable partial function densityDerivativeWRTmassFraction_dTxin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.densityDerivativeWRTmassFraction_dTxin;
  replaceable partial function heatCapacityRatio_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.heatCapacityRatio_dTxi;
  replaceable partial function prandtlNumber_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.prandtlNumber_dTxi;
  replaceable partial function thermalConductivity_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.thermalConductivity_dTxi;
  replaceable partial function dynamicViscosity_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dynamicViscosity_dTxi;
  replaceable partial function surfaceTension_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.surfaceTension_dTxi;
  replaceable partial function liquidDensity_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidDensity_dTxi;
  replaceable partial function vapourDensity_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourDensity_dTxi;
  replaceable partial function liquidSpecificEnthalpy_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidSpecificEnthalpy_dTxi;
  replaceable partial function vapourSpecificEnthalpy_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourSpecificEnthalpy_dTxi;
  replaceable partial function liquidPressure_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidPressure_dTxi;
  replaceable partial function vapourPressure_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourPressure_dTxi;
  replaceable partial function liquidSpecificEntropy_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidSpecificEntropy_dTxi;
  replaceable partial function vapourSpecificEntropy_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourSpecificEntropy_dTxi;
  replaceable partial function liquidMassFraction_dTxin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidMassFraction_dTxin;
  replaceable partial function vapourMassFraction_dTxin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourMassFraction_dTxin;
  replaceable partial function liquidSpecificHeatCapacity_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidSpecificHeatCapacity_dTxi;
  replaceable partial function vapourSpecificHeatCapacity_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourSpecificHeatCapacity_dTxi;
  replaceable partial function liquidIsobaricThermalExpansionCoefficient_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidIsobaricThermalExpansionCoefficient_dTxi;
  replaceable partial function vapourIsobaricThermalExpansionCoefficient_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourIsobaricThermalExpansionCoefficient_dTxi;
  replaceable partial function liquidIsothermalCompressibility_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidIsothermalCompressibility_dTxi;
  replaceable partial function vapourIsothermalCompressibility_dTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourIsothermalCompressibility_dTxi;

  replaceable partial function density_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.density_phxi;
  replaceable partial function specificEntropy_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.specificEntropy_phxi;
  replaceable partial function temperature_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.temperature_phxi;
  replaceable partial function moleFraction_phxin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.moleFraction_phxin;
  replaceable partial function steamMassFraction_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.steamMassFraction_phxi;
  replaceable partial function specificIsobaricHeatCapacity_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.specificIsobaricHeatCapacity_phxi;
  replaceable partial function specificIsochoricHeatCapacity_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.specificIsochoricHeatCapacity_phxi;
  replaceable partial function isobaricThermalExpansionCoefficient_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.isobaricThermalExpansionCoefficient_phxi;
  replaceable partial function isothermalCompressibility_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.isothermalCompressibility_phxi;
  replaceable partial function speedOfSound_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.speedOfSound_phxi;
  replaceable partial function densityDerivativeWRTspecificEnthalpy_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.densityDerivativeWRTspecificEnthalpy_phxi;
  replaceable partial function densityDerivativeWRTpressure_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.densityDerivativeWRTpressure_phxi;
  replaceable partial function densityDerivativeWRTmassFraction_phxin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.densityDerivativeWRTmassFraction_phxin;
  replaceable partial function heatCapacityRatio_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.heatCapacityRatio_phxi;
  replaceable partial function prandtlNumber_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.prandtlNumber_phxi;
  replaceable partial function thermalConductivity_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.thermalConductivity_phxi;
  replaceable partial function dynamicViscosity_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dynamicViscosity_phxi;
  replaceable partial function surfaceTension_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.surfaceTension_phxi;
  replaceable partial function liquidDensity_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidDensity_phxi;
  replaceable partial function vapourDensity_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourDensity_phxi;
  replaceable partial function liquidSpecificEnthalpy_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidSpecificEnthalpy_phxi;
  replaceable partial function vapourSpecificEnthalpy_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourSpecificEnthalpy_phxi;
  replaceable partial function liquidSpecificEntropy_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidSpecificEntropy_phxi;
  replaceable partial function vapourSpecificEntropy_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourSpecificEntropy_phxi;
  replaceable partial function liquidTemperature_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidTemperature_phxi;
  replaceable partial function vapourTemperature_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourTemperature_phxi;
  replaceable partial function liquidMassFraction_phxin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidMassFraction_phxin;
  replaceable partial function vapourMassFraction_phxin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourMassFraction_phxin;
  replaceable partial function liquidSpecificHeatCapacity_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidSpecificHeatCapacity_phxi;
  replaceable partial function vapourSpecificHeatCapacity_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourSpecificHeatCapacity_phxi;
  replaceable partial function liquidIsobaricThermalExpansionCoefficient_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidIsobaricThermalExpansionCoefficient_phxi;
  replaceable partial function vapourIsobaricThermalExpansionCoefficient_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourIsobaricThermalExpansionCoefficient_phxi;
  replaceable partial function liquidIsothermalCompressibility_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidIsothermalCompressibility_phxi;
  replaceable partial function vapourIsothermalCompressibility_phxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourIsothermalCompressibility_phxi;

  replaceable partial function density_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.density_psxi;
  replaceable partial function specificEnthalpy_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.specificEnthalpy_psxi;
  replaceable partial function temperature_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.temperature_psxi;
  replaceable partial function moleFraction_psxin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.moleFraction_psxin;
  replaceable partial function steamMassFraction_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.steamMassFraction_psxi;
  replaceable partial function specificIsobaricHeatCapacity_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.specificIsobaricHeatCapacity_psxi;
  replaceable partial function specificIsochoricHeatCapacity_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.specificIsochoricHeatCapacity_psxi;
  replaceable partial function isobaricThermalExpansionCoefficient_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.isobaricThermalExpansionCoefficient_psxi;
  replaceable partial function isothermalCompressibility_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.isothermalCompressibility_psxi;
  replaceable partial function speedOfSound_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.speedOfSound_psxi;
  replaceable partial function densityDerivativeWRTspecificEnthalpy_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.densityDerivativeWRTspecificEnthalpy_psxi;
  replaceable partial function densityDerivativeWRTpressure_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.densityDerivativeWRTpressure_psxi;
  replaceable partial function densityDerivativeWRTmassFraction_psxin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.densityDerivativeWRTmassFraction_psxin;
  replaceable partial function heatCapacityRatio_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.heatCapacityRatio_psxi;
  replaceable partial function prandtlNumber_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.prandtlNumber_psxi;
  replaceable partial function thermalConductivity_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.thermalConductivity_psxi;
  replaceable partial function dynamicViscosity_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dynamicViscosity_psxi;
  replaceable partial function surfaceTension_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.surfaceTension_psxi;
  replaceable partial function liquidDensity_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidDensity_psxi;
  replaceable partial function vapourDensity_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourDensity_psxi;
  replaceable partial function liquidSpecificEnthalpy_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidSpecificEnthalpy_psxi;
  replaceable partial function vapourSpecificEnthalpy_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourSpecificEnthalpy_psxi;
  replaceable partial function liquidSpecificEntropy_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidSpecificEntropy_psxi;
  replaceable partial function vapourSpecificEntropy_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourSpecificEntropy_psxi;
  replaceable partial function liquidTemperature_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidTemperature_psxi;
  replaceable partial function vapourTemperature_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourTemperature_psxi;
  replaceable partial function liquidMassFraction_psxin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidMassFraction_psxin;
  replaceable partial function vapourMassFraction_psxin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourMassFraction_psxin;
  replaceable partial function liquidSpecificHeatCapacity_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidSpecificHeatCapacity_psxi;
  replaceable partial function vapourSpecificHeatCapacity_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourSpecificHeatCapacity_psxi;
  replaceable partial function liquidIsobaricThermalExpansionCoefficient_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidIsobaricThermalExpansionCoefficient_psxi;
  replaceable partial function vapourIsobaricThermalExpansionCoefficient_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourIsobaricThermalExpansionCoefficient_psxi;
  replaceable partial function liquidIsothermalCompressibility_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidIsothermalCompressibility_psxi;
  replaceable partial function vapourIsothermalCompressibility_psxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourIsothermalCompressibility_psxi;

  replaceable partial function density_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.density_pTxi;
  replaceable partial function specificEnthalpy_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.specificEnthalpy_pTxi;
  replaceable partial function specificEntropy_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.specificEntropy_pTxi;
  replaceable partial function moleFraction_pTxin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.moleFraction_pTxin;
  replaceable partial function steamMassFraction_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.steamMassFraction_pTxi;
  replaceable partial function specificIsobaricHeatCapacity_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.specificIsobaricHeatCapacity_pTxi;
  replaceable partial function specificIsochoricHeatCapacity_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.specificIsochoricHeatCapacity_pTxi;
  replaceable partial function isobaricThermalExpansionCoefficient_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.isobaricThermalExpansionCoefficient_pTxi;
  replaceable partial function isothermalCompressibility_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.isothermalCompressibility_pTxi;
  replaceable partial function speedOfSound_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.speedOfSound_pTxi;
  replaceable partial function densityDerivativeWRTspecificEnthalpy_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.densityDerivativeWRTspecificEnthalpy_pTxi;
  replaceable partial function densityDerivativeWRTpressure_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.densityDerivativeWRTpressure_pTxi;
  replaceable partial function densityDerivativeWRTmassFraction_pTxin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.densityDerivativeWRTmassFraction_pTxin;
  replaceable partial function heatCapacityRatio_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.heatCapacityRatio_pTxi;
  replaceable partial function prandtlNumber_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.prandtlNumber_pTxi;
  replaceable partial function thermalConductivity_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.thermalConductivity_pTxi;
  replaceable partial function dynamicViscosity_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dynamicViscosity_pTxi;
  replaceable partial function surfaceTension_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.surfaceTension_pTxi;
  replaceable partial function liquidDensity_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidDensity_pTxi;
  replaceable partial function vapourDensity_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourDensity_pTxi;
  replaceable partial function liquidSpecificEnthalpy_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidSpecificEnthalpy_pTxi;
  replaceable partial function vapourSpecificEnthalpy_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourSpecificEnthalpy_pTxi;
  replaceable partial function liquidSpecificEntropy_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidSpecificEntropy_pTxi;
  replaceable partial function vapourSpecificEntropy_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourSpecificEntropy_pTxi;
  replaceable partial function liquidTemperature_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidTemperature_pTxi;
  replaceable partial function vapourTemperature_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourTemperature_pTxi;
  replaceable partial function liquidMassFraction_pTxin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidMassFraction_pTxin;
  replaceable partial function vapourMassFraction_pTxin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourMassFraction_pTxin;
  replaceable partial function liquidSpecificHeatCapacity_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidSpecificHeatCapacity_pTxi;
  replaceable partial function vapourSpecificHeatCapacity_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourSpecificHeatCapacity_pTxi;
  replaceable partial function liquidIsobaricThermalExpansionCoefficient_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidIsobaricThermalExpansionCoefficient_pTxi;
  replaceable partial function vapourIsobaricThermalExpansionCoefficient_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourIsobaricThermalExpansionCoefficient_pTxi;
  replaceable partial function liquidIsothermalCompressibility_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.liquidIsothermalCompressibility_pTxi;
  replaceable partial function vapourIsothermalCompressibility_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.vapourIsothermalCompressibility_pTxi;


  replaceable partial function dewDensity_Txi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dewDensity_Txi;
  replaceable partial function bubbleDensity_Txi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.bubbleDensity_Txi;
  replaceable partial function dewSpecificEnthalpy_Txi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dewSpecificEnthalpy_Txi;
  replaceable partial function bubbleSpecificEnthalpy_Txi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.bubbleSpecificEnthalpy_Txi;
  replaceable partial function dewPressure_Txi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dewPressure_Txi;
  replaceable partial function bubblePressure_Txi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.bubblePressure_Txi;
  replaceable partial function dewSpecificEntropy_Txi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dewSpecificEntropy_Txi;
  replaceable partial function bubbleSpecificEntropy_Txi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.bubbleSpecificEntropy_Txi;
  replaceable partial function dewLiquidMassFraction_Txin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dewLiquidMassFraction_Txin;
  replaceable partial function bubbleVapourMassFraction_Txin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.bubbleVapourMassFraction_Txin;
  replaceable partial function dewSpecificIsobaricHeatCapacity_Txi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dewSpecificIsobaricHeatCapacity_Txi;
  replaceable partial function bubbleSpecificIsobaricHeatCapacity_Txi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.bubbleSpecificIsobaricHeatCapacity_Txi;
  replaceable partial function dewIsobaricThermalExpansionCoefficient_Txi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dewIsobaricThermalExpansionCoefficient_Txi;
  replaceable partial function bubbleIsobaricThermalExpansionCoefficient_Txi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.bubbleIsobaricThermalExpansionCoefficient_Txi;
  replaceable partial function dewIsothermalCompressibility_Txi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dewIsothermalCompressibility_Txi;
  replaceable partial function bubbleIsothermalCompressibility_Txi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.bubbleIsothermalCompressibility_Txi;

  replaceable partial function dewDensity_pxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dewDensity_pxi;
  replaceable partial function bubbleDensity_pxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.bubbleDensity_pxi;
  replaceable partial function dewSpecificEnthalpy_pxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dewSpecificEnthalpy_pxi;
  replaceable partial function bubbleSpecificEnthalpy_pxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.bubbleSpecificEnthalpy_pxi;
  replaceable partial function dewSpecificEntropy_pxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dewSpecificEntropy_pxi;
  replaceable partial function bubbleSpecificEntropy_pxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.bubbleSpecificEntropy_pxi;
  replaceable partial function dewTemperature_pxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dewTemperature_pxi;
  replaceable partial function bubbleTemperature_pxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.bubbleTemperature_pxi;
  replaceable partial function dewLiquidMassFraction_pxin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dewLiquidMassFraction_pxin;
  replaceable partial function bubbleVapourMassFraction_pxin =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.bubbleVapourMassFraction_pxin;
  replaceable partial function dewSpecificIsobaricHeatCapacity_pxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dewSpecificIsobaricHeatCapacity_pxi;
  replaceable partial function bubbleSpecificIsobaricHeatCapacity_pxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.bubbleSpecificIsobaricHeatCapacity_pxi;
  replaceable partial function dewIsobaricThermalExpansionCoefficient_pxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dewIsobaricThermalExpansionCoefficient_pxi;
  replaceable partial function bubbleIsobaricThermalExpansionCoefficient_pxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.bubbleIsobaricThermalExpansionCoefficient_pxi;
  replaceable partial function dewIsothermalCompressibility_pxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.dewIsothermalCompressibility_pxi;
  replaceable partial function bubbleIsothermalCompressibility_pxi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.bubbleIsothermalCompressibility_pxi;



  replaceable partial function averageMolarMass_xi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.averageMolarMass_xi;
  replaceable partial function criticalDensity_xi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.criticalDensity_xi;
  replaceable partial function criticalSpecificEnthalpy_xi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.criticalSpecificEnthalpy_xi;
  replaceable partial function criticalPressure_xi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.criticalPressure_xi;
  replaceable partial function criticalSpecificEntropy_xi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.criticalSpecificEntropy_xi;
  replaceable partial function criticalTemperature_xi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.criticalTemperature_xi;
  replaceable partial function criticalSpecificIsobaricHeatCapacity_xi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.criticalSpecificIsobaricHeatCapacity_xi;
  replaceable partial function criticalIsobaricThermalExpansionCoefficient_xi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.criticalIsobaricThermalExpansionCoefficient_xi;
  replaceable partial function criticalIsothermalCompressibility_xi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.criticalIsothermalCompressibility_xi;
  replaceable partial function criticalThermalConductivity_xi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.criticalThermalConductivity_xi;
  replaceable partial function criticalDynamicViscosity_xi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.criticalDynamicViscosity_xi;
  replaceable partial function criticalSurfaceTension_xi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.criticalSurfaceTension_xi;
  replaceable partial function cricondenbarTemperature_xi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.cricondenbarTemperature_xi;
  replaceable partial function cricondenthermTemperature_xi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.cricondenthermTemperature_xi;
  replaceable partial function cricondenbarPressure_xi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.cricondenbarPressure_xi;
  replaceable partial function cricondenthermPressure_xi =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.cricondenthermPressure_xi;

  replaceable partial function molarMass_n =
      TILMedia.BaseClasses.PartialVLEFluidFunctionPrototypes.molarMass_n;

end PartialVLEFluidFunctions;
