within TILMedia.BaseClasses;
package PartialGasFunctions
  "Package for calculation of gas vapor properties with a functional call"
  extends TILMedia.Internals.ClassTypes.ModelPackage;

replaceable partial function density_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Density d "Density";
end density_phxi;

replaceable partial function specificEntropy_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificEntropy s "Specific entropy";
end specificEntropy_phxi;

replaceable partial function temperature_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Temperature T "Temperature";
end temperature_phxi;

replaceable partial function specificIsobaricHeatCapacity_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
end specificIsobaricHeatCapacity_phxi;

replaceable partial function specificIsochoricHeatCapacity_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
end specificIsochoricHeatCapacity_phxi;

replaceable partial function isobaricThermalExpansionCoefficient_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
end isobaricThermalExpansionCoefficient_phxi;

replaceable partial function isothermalCompressibility_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Compressibility kappa "Isothermal compressibility";
end isothermalCompressibility_phxi;

replaceable partial function speedOfSound_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Velocity w "Speed of sound";
end speedOfSound_phxi;

replaceable partial function densityDerivativeWRTspecificEnthalpy_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
end densityDerivativeWRTspecificEnthalpy_phxi;

replaceable partial function densityDerivativeWRTpressure_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
end densityDerivativeWRTpressure_phxi;

replaceable partial function densityDerivativeWRTmassFraction_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
end densityDerivativeWRTmassFraction_phxi;

replaceable partial function partialPressure_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  output SI.PartialPressure p_i "Partial pressure";
end partialPressure_phxi;

replaceable partial function gaseousMassFraction_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
end gaseousMassFraction_phxi;

replaceable partial function relativeHumidity_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
end relativeHumidity_phxi;

replaceable partial function saturationMassFraction_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.MassFraction xi_s "Saturation mass fraction of condensing component";
end saturationMassFraction_phxi;

replaceable partial function saturationHumidityRatio_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output Real humRatio_s "Saturation content of condensing component aka saturation humidity ratio";
end saturationHumidityRatio_phxi;

replaceable partial function specificEnthalpy1px_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificEnthalpy h1px "Specific enthalpy h related to the mass of components that cannot condense";
end specificEnthalpy1px_phxi;

replaceable partial function prandtlNumber_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.PrandtlNumber Pr "Prandtl number";
end prandtlNumber_phxi;

replaceable partial function thermalConductivity_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.ThermalConductivity lambda "Thermal conductivity";
end thermalConductivity_phxi;

replaceable partial function dynamicViscosity_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.DynamicViscosity eta "Dynamic viscosity";
end dynamicViscosity_phxi;

replaceable partial function density_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Density d "Density";
end density_psxi;

replaceable partial function specificEnthalpy_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificEnthalpy h "Specific enthalpy";
end specificEnthalpy_psxi;

replaceable partial function temperature_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Temperature T "Temperature";
end temperature_psxi;

replaceable partial function specificIsobaricHeatCapacity_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
end specificIsobaricHeatCapacity_psxi;

replaceable partial function specificIsochoricHeatCapacity_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
end specificIsochoricHeatCapacity_psxi;

replaceable partial function isobaricThermalExpansionCoefficient_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
end isobaricThermalExpansionCoefficient_psxi;

replaceable partial function isothermalCompressibility_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Compressibility kappa "Isothermal compressibility";
end isothermalCompressibility_psxi;

replaceable partial function speedOfSound_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Velocity w "Speed of sound";
end speedOfSound_psxi;

replaceable partial function densityDerivativeWRTspecificEnthalpy_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
end densityDerivativeWRTspecificEnthalpy_psxi;

replaceable partial function densityDerivativeWRTpressure_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
end densityDerivativeWRTpressure_psxi;

replaceable partial function densityDerivativeWRTmassFraction_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
end densityDerivativeWRTmassFraction_psxi;

replaceable partial function partialPressure_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  output SI.PartialPressure p_i "Partial pressure";
end partialPressure_psxi;

replaceable partial function gaseousMassFraction_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
end gaseousMassFraction_psxi;

replaceable partial function relativeHumidity_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
end relativeHumidity_psxi;

replaceable partial function saturationMassFraction_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.MassFraction xi_s "Saturation mass fraction of condensing component";
end saturationMassFraction_psxi;

replaceable partial function saturationHumidityRatio_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output Real humRatio_s "Saturation content of condensing component aka saturation humidity ratio";
end saturationHumidityRatio_psxi;

replaceable partial function specificEnthalpy1px_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificEnthalpy h1px "Specific enthalpy h related to the mass of components that cannot condense";
end specificEnthalpy1px_psxi;

replaceable partial function prandtlNumber_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.PrandtlNumber Pr "Prandtl number";
end prandtlNumber_psxi;

replaceable partial function thermalConductivity_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.ThermalConductivity lambda "Thermal conductivity";
end thermalConductivity_psxi;

replaceable partial function dynamicViscosity_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.DynamicViscosity eta "Dynamic viscosity";
end dynamicViscosity_psxi;

replaceable partial function density_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Density d "Density";
end density_pTxi;

replaceable partial function specificEnthalpy_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificEnthalpy h "Specific enthalpy";
end specificEnthalpy_pTxi;

replaceable partial function specificEntropy_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificEntropy s "Specific entropy";
end specificEntropy_pTxi;

replaceable partial function specificIsobaricHeatCapacity_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
end specificIsobaricHeatCapacity_pTxi;

replaceable partial function specificIsochoricHeatCapacity_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
end specificIsochoricHeatCapacity_pTxi;

replaceable partial function isobaricThermalExpansionCoefficient_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
end isobaricThermalExpansionCoefficient_pTxi;

replaceable partial function isothermalCompressibility_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Compressibility kappa "Isothermal compressibility";
end isothermalCompressibility_pTxi;

replaceable partial function speedOfSound_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Velocity w "Speed of sound";
end speedOfSound_pTxi;

replaceable partial function densityDerivativeWRTspecificEnthalpy_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
end densityDerivativeWRTspecificEnthalpy_pTxi;

replaceable partial function densityDerivativeWRTpressure_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
end densityDerivativeWRTpressure_pTxi;

replaceable partial function densityDerivativeWRTmassFraction_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
end densityDerivativeWRTmassFraction_pTxi;

replaceable partial function partialPressure_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  output SI.PartialPressure p_i "Partial pressure";
end partialPressure_pTxi;

replaceable partial function gaseousMassFraction_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
end gaseousMassFraction_pTxi;

replaceable partial function relativeHumidity_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
end relativeHumidity_pTxi;

replaceable partial function saturationMassFraction_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.MassFraction xi_s "Saturation mass fraction of condensing component";
end saturationMassFraction_pTxi;

replaceable partial function saturationHumidityRatio_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output Real humRatio_s "Saturation content of condensing component aka saturation humidity ratio";
end saturationHumidityRatio_pTxi;

replaceable partial function specificEnthalpy1px_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificEnthalpy h1px "Specific enthalpy h related to the mass of components that cannot condense";
end specificEnthalpy1px_pTxi;

replaceable partial function prandtlNumber_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.PrandtlNumber Pr "Prandtl number";
end prandtlNumber_pTxi;

replaceable partial function thermalConductivity_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.ThermalConductivity lambda "Thermal conductivity";
end thermalConductivity_pTxi;

replaceable partial function dynamicViscosity_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.DynamicViscosity eta "Dynamic viscosity";
end dynamicViscosity_pTxi;

replaceable partial function saturationPartialPressure_T
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.Temperature T "Temperature";
  output SI.PartialPressure p_s "Saturation partial pressure of condensing component";
end saturationPartialPressure_T;

replaceable partial function specificEnthalpyOfVaporisation_T
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.Temperature T "Temperature";
  output SI.SpecificEnthalpy delta_hv "Specific enthalpy of vaporisation of condensing component";
end specificEnthalpyOfVaporisation_T;

replaceable partial function specificEnthalpyOfDesublimation_T
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.Temperature T "Temperature";
  output SI.SpecificEnthalpy delta_hd "Specific enthalpy of desublimation of condensing component";
end specificEnthalpyOfDesublimation_T;

replaceable partial function specificEnthalpyOfPureGas_Tn
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.Temperature T "Temperature";
  input Integer compNo "Component ID";
  output SI.SpecificEnthalpy h_i "Specific enthalpy of theoretical pure component";
end specificEnthalpyOfPureGas_Tn;

replaceable partial function specificIsobaricHeatCapacityOfPureGas_Tn
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.Temperature T "Temperature";
                                       input Integer compNo "Component ID";
  output SI.SpecificHeatCapacity cp_i "Specific isobaric heat capacity of theoretical pure component";
end specificIsobaricHeatCapacityOfPureGas_Tn;

replaceable partial function averageMolarMass_xi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.MolarMass M "Average molar mass";
end averageMolarMass_xi;

replaceable partial function humidityRatio_xi
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output Real humRatio "Content of condensing component aka humidity ratio";
end humidityRatio_xi;

replaceable partial function molarMass_n
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input Integer compNo "Component ID";
  output SI.MolarMass M_i "Molar mass of component i";
end molarMass_n;

replaceable partial function specificEnthalpyOfFormation_n
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
                                                                                         input Integer compNo "Component ID";
  output SI.SpecificEnthalpy hF_i "Specific enthalpy of formation";
end specificEnthalpyOfFormation_n;

replaceable partial function freezingPoint
  extends TILMedia.BaseClasses.PartialGasFunction;
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  output SI.Temperature T_freeze "Freezing point of condensing component";
end freezingPoint;
end PartialGasFunctions;
