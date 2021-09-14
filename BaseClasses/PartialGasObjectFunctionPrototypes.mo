within TILMedia.BaseClasses;
package PartialGasObjectFunctionPrototypes
  "Package for calculation of gas vapor properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  partial function density_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Density d "Density";
  end density_phxi;
  partial function specificEntropy_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificEntropy s "Specific entropy";
  end specificEntropy_phxi;
  partial function temperature_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Temperature T "Temperature";
  end temperature_phxi;
  partial function specificIsobaricHeatCapacity_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  end specificIsobaricHeatCapacity_phxi;
  partial function specificIsochoricHeatCapacity_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  end specificIsochoricHeatCapacity_phxi;
  partial function isobaricThermalExpansionCoefficient_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  end isobaricThermalExpansionCoefficient_phxi;
  partial function isothermalCompressibility_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Compressibility kappa "Isothermal compressibility";
  end isothermalCompressibility_phxi;
  partial function speedOfSound_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Velocity w "Speed of sound";
  end speedOfSound_phxi;
  partial function densityDerivativeWRTspecificEnthalpy_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  end densityDerivativeWRTspecificEnthalpy_phxi;
  partial function densityDerivativeWRTpressure_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  end densityDerivativeWRTpressure_phxi;
  partial function densityDerivativeWRTmassFraction_phxin
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  end densityDerivativeWRTmassFraction_phxin;
  partial function partialPressure_phxin
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.PartialPressure p_i "Partial pressure";
  end partialPressure_phxin;
  partial function gaseousMassFraction_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
  end gaseousMassFraction_phxi;
  partial function relativeHumidity_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
  end relativeHumidity_phxi;
  partial function saturationMassFraction_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.MassFraction xi_s "Saturation mass fraction of condensing component";
  end saturationMassFraction_phxi;
  partial function saturationHumidityRatio_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output Real humRatio_s "Saturation content of condensing component aka saturation humidity ratio";
  end saturationHumidityRatio_phxi;
  partial function specificEnthalpy1px_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificEnthalpy h1px "Specific enthalpy h related to the mass of components that cannot condense";
  end specificEnthalpy1px_phxi;
  partial function prandtlNumber_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
  end prandtlNumber_phxi;
  partial function thermalConductivity_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.ThermalConductivity lambda "Thermal conductivity";
  end thermalConductivity_phxi;
  partial function dynamicViscosity_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.DynamicViscosity eta "Dynamic viscosity";
  end dynamicViscosity_phxi;
  partial function dewTemperature_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Temperature T_dew "Temperature at dew point";
  end dewTemperature_phxi;
  partial function wetBulbTemperature_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Temperature T_wetBulb "Wet bulb temperature";
  end wetBulbTemperature_phxi;
  partial function iceBulbTemperature_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Temperature T_iceBulb "Ice bulb temperature";
  end iceBulbTemperature_phxi;

  partial function density_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Density d "Density";
  end density_psxi;
  partial function specificEnthalpy_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
  end specificEnthalpy_psxi;
  partial function temperature_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Temperature T "Temperature";
  end temperature_psxi;
  partial function specificIsobaricHeatCapacity_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  end specificIsobaricHeatCapacity_psxi;
  partial function specificIsochoricHeatCapacity_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  end specificIsochoricHeatCapacity_psxi;
  partial function isobaricThermalExpansionCoefficient_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  end isobaricThermalExpansionCoefficient_psxi;
  partial function isothermalCompressibility_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Compressibility kappa "Isothermal compressibility";
  end isothermalCompressibility_psxi;
  partial function speedOfSound_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Velocity w "Speed of sound";
  end speedOfSound_psxi;
  partial function densityDerivativeWRTspecificEnthalpy_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  end densityDerivativeWRTspecificEnthalpy_psxi;
  partial function densityDerivativeWRTpressure_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  end densityDerivativeWRTpressure_psxi;
  partial function densityDerivativeWRTmassFraction_psxin
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  end densityDerivativeWRTmassFraction_psxin;
  partial function partialPressure_psxin
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.PartialPressure p_i "Partial pressure";
  end partialPressure_psxin;
  partial function gaseousMassFraction_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
  end gaseousMassFraction_psxi;
  partial function relativeHumidity_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
  end relativeHumidity_psxi;
  partial function saturationMassFraction_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.MassFraction xi_s "Saturation mass fraction of condensing component";
  end saturationMassFraction_psxi;
  partial function saturationHumidityRatio_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output Real humRatio_s "Saturation content of condensing component aka saturation humidity ratio";
  end saturationHumidityRatio_psxi;
  partial function specificEnthalpy1px_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificEnthalpy h1px "Specific enthalpy h related to the mass of components that cannot condense";
  end specificEnthalpy1px_psxi;
  partial function prandtlNumber_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
  end prandtlNumber_psxi;
  partial function thermalConductivity_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.ThermalConductivity lambda "Thermal conductivity";
  end thermalConductivity_psxi;
  partial function dynamicViscosity_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.DynamicViscosity eta "Dynamic viscosity";
  end dynamicViscosity_psxi;
  partial function dewTemperature_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Temperature T_dew "Temperature at dew point";
  end dewTemperature_psxi;
  partial function wetBulbTemperature_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Temperature T_wetBulb "Wet bulb temperature";
  end wetBulbTemperature_psxi;
  partial function iceBulbTemperature_psxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Temperature T_iceBulb "Ice bulb temperature";
  end iceBulbTemperature_psxi;

  partial function density_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Density d "Density";
  end density_pTxi;
  partial function specificEnthalpy_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
  end specificEnthalpy_pTxi;
  partial function specificEntropy_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificEntropy s "Specific entropy";
  end specificEntropy_pTxi;
  partial function specificIsobaricHeatCapacity_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  end specificIsobaricHeatCapacity_pTxi;
  partial function specificIsochoricHeatCapacity_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  end specificIsochoricHeatCapacity_pTxi;
  partial function isobaricThermalExpansionCoefficient_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  end isobaricThermalExpansionCoefficient_pTxi;
  partial function isothermalCompressibility_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Compressibility kappa "Isothermal compressibility";
  end isothermalCompressibility_pTxi;
  partial function speedOfSound_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Velocity w "Speed of sound";
  end speedOfSound_pTxi;
  partial function densityDerivativeWRTspecificEnthalpy_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  end densityDerivativeWRTspecificEnthalpy_pTxi;
  partial function densityDerivativeWRTpressure_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  end densityDerivativeWRTpressure_pTxi;
  partial function densityDerivativeWRTmassFraction_pTxin
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  end densityDerivativeWRTmassFraction_pTxin;
  partial function partialPressure_pTxin
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.PartialPressure p_i "Partial pressure";
  end partialPressure_pTxin;
  partial function gaseousMassFraction_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
  end gaseousMassFraction_pTxi;
  partial function relativeHumidity_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
  end relativeHumidity_pTxi;
  partial function saturationMassFraction_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.MassFraction xi_s "Saturation mass fraction of condensing component";
  end saturationMassFraction_pTxi;
  partial function saturationHumidityRatio_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output Real humRatio_s "Saturation content of condensing component aka saturation humidity ratio";
  end saturationHumidityRatio_pTxi;
  partial function specificEnthalpy1px_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificEnthalpy h1px "Specific enthalpy h related to the mass of components that cannot condense";
  end specificEnthalpy1px_pTxi;
  partial function prandtlNumber_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
  end prandtlNumber_pTxi;
  partial function thermalConductivity_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.ThermalConductivity lambda "Thermal conductivity";
  end thermalConductivity_pTxi;
  partial function dynamicViscosity_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.DynamicViscosity eta "Dynamic viscosity";
  end dynamicViscosity_pTxi;
  partial function dewTemperature_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Temperature T_dew "Temperature at dew point";
  end dewTemperature_pTxi;
  partial function wetBulbTemperature_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Temperature T_wetBulb "Wet bulb temperature";
  end wetBulbTemperature_pTxi;
  partial function iceBulbTemperature_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Temperature T_iceBulb "Ice bulb temperature";
  end iceBulbTemperature_pTxi;


  partial function saturationPartialPressure_T
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.Temperature T "Temperature";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.PartialPressure p_s "Saturation partial pressure of condensing component";
  end saturationPartialPressure_T;
  partial function specificEnthalpyOfVaporisation_T
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.Temperature T "Temperature";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificEnthalpy delta_hv "Specific enthalpy of vaporisation of condensing component";
  end specificEnthalpyOfVaporisation_T;
  partial function specificEnthalpyOfDesublimation_T
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.Temperature T "Temperature";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificEnthalpy delta_hd "Specific enthalpy of desublimation of condensing component";
  end specificEnthalpyOfDesublimation_T;
  partial function specificEnthalpyOfPureGas_Tn
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.Temperature T "Temperature";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificEnthalpy h_i "Specific enthalpy of theoretical pure component";
  end specificEnthalpyOfPureGas_Tn;
  partial function specificIsobaricHeatCapacityOfPureGas_Tn
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.Temperature T "Temperature";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificHeatCapacity cp_i "Specific isobaric heat capacity of theoretical pure component";
  end specificIsobaricHeatCapacityOfPureGas_Tn;


  partial function averageMolarMass_xi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.MolarMass M "Average molar mass";
  end averageMolarMass_xi;
  partial function humidityRatio_xi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output Real humRatio "Content of condensing component aka humidity ratio";
  end humidityRatio_xi;

  partial function molarMass_n
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.MolarMass M_i "Molar mass of component i";
  end molarMass_n;
  partial function specificEnthalpyOfFormation_n
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificEnthalpy hF_i "Specific enthalpy of formation";
  end specificEnthalpyOfFormation_n;
  partial function freezingPoint
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Temperature T_freeze "Freezing point of condensing component";
  end freezingPoint;


 replaceable partial function saturationMassFraction_pTxidg
  extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.MassFraction xi_s "Saturation vapour mass fraction";
 end saturationMassFraction_pTxidg;

end PartialGasObjectFunctionPrototypes;
