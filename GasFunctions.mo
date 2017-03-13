within TILMedia;
package GasFunctions
  "Package for calculation of gas vapor properties with a functional call"
  extends TILMedia.Internals.ClassTypes.ModelPackage;
function density_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Density d "Density";
algorithm
  d := TILMedia.Internals.GasFunctions.density_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end density_phxi;

function specificEntropy_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificEntropy s "Specific entropy";
algorithm
  s := TILMedia.Internals.GasFunctions.specificEntropy_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEntropy_phxi;

function temperature_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Temperature T "Temperature";
algorithm
  T := TILMedia.Internals.GasFunctions.temperature_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end temperature_phxi;

function specificIsobaricHeatCapacity_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
algorithm
  cp := TILMedia.Internals.GasFunctions.specificIsobaricHeatCapacity_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificIsobaricHeatCapacity_phxi;

function specificIsochoricHeatCapacity_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
algorithm
  cv := TILMedia.Internals.GasFunctions.specificIsochoricHeatCapacity_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificIsochoricHeatCapacity_phxi;

function isobaricThermalExpansionCoefficient_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
algorithm
  beta := TILMedia.Internals.GasFunctions.isobaricThermalExpansionCoefficient_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end isobaricThermalExpansionCoefficient_phxi;

function isothermalCompressibility_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Compressibility kappa "Isothermal compressibility";
algorithm
  kappa := TILMedia.Internals.GasFunctions.isothermalCompressibility_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end isothermalCompressibility_phxi;

function speedOfSound_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Velocity w "Speed of sound";
algorithm
  w := TILMedia.Internals.GasFunctions.speedOfSound_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end speedOfSound_phxi;

function densityDerivativeWRTspecificEnthalpy_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
algorithm
  drhodh_pxi := TILMedia.Internals.GasFunctions.densityDerivativeWRTspecificEnthalpy_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTspecificEnthalpy_phxi;

function densityDerivativeWRTpressure_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
algorithm
  drhodp_hxi := TILMedia.Internals.GasFunctions.densityDerivativeWRTpressure_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTpressure_phxi;

function densityDerivativeWRTmassFraction_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
algorithm
  drhodxi_ph := TILMedia.Internals.GasFunctions.densityDerivativeWRTmassFraction_phxin(p,h,xi,compNo, gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTmassFraction_phxi;

function partialPressure_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  output SI.PartialPressure p_i "Partial pressure";
algorithm
  p_i := TILMedia.Internals.GasFunctions.partialPressure_phxin(p,h,xi,compNo, gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end partialPressure_phxi;

function gaseousMassFraction_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
algorithm
  xi_gas := TILMedia.Internals.GasFunctions.gaseousMassFraction_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end gaseousMassFraction_phxi;

function relativeHumidity_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
algorithm
  phi := TILMedia.Internals.GasFunctions.relativeHumidity_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end relativeHumidity_phxi;

function saturationMassFraction_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.MassFraction xi_s "Saturation mass fraction of condensing component";
algorithm
  xi_s := TILMedia.Internals.GasFunctions.saturationMassFraction_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationMassFraction_phxi;

function saturationHumidityRatio_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output Real humRatio_s "Saturation content of condensing component aka saturation humidity ratio";
algorithm
  humRatio_s := TILMedia.Internals.GasFunctions.saturationHumidityRatio_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationHumidityRatio_phxi;

function specificEnthalpy1px_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificEnthalpy h1px "Specific enthalpy h related to the mass of components that cannot condense";
algorithm
  h1px := TILMedia.Internals.GasFunctions.specificEnthalpy1px_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpy1px_phxi;

function prandtlNumber_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.PrandtlNumber Pr "Prandtl number";
algorithm
  Pr := TILMedia.Internals.GasFunctions.prandtlNumber_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end prandtlNumber_phxi;

function thermalConductivity_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.ThermalConductivity lambda "Thermal conductivity";
algorithm
  lambda := TILMedia.Internals.GasFunctions.thermalConductivity_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end thermalConductivity_phxi;

function dynamicViscosity_phxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.DynamicViscosity eta "Dynamic viscosity";
algorithm
  eta := TILMedia.Internals.GasFunctions.dynamicViscosity_phxi(p,h,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end dynamicViscosity_phxi;


function density_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Density d "Density";
algorithm
  d := TILMedia.Internals.GasFunctions.density_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end density_psxi;

function specificEnthalpy_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificEnthalpy h "Specific enthalpy";
algorithm
  h := TILMedia.Internals.GasFunctions.specificEnthalpy_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpy_psxi;

function temperature_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Temperature T "Temperature";
algorithm
  T := TILMedia.Internals.GasFunctions.temperature_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end temperature_psxi;

function specificIsobaricHeatCapacity_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
algorithm
  cp := TILMedia.Internals.GasFunctions.specificIsobaricHeatCapacity_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificIsobaricHeatCapacity_psxi;

function specificIsochoricHeatCapacity_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
algorithm
  cv := TILMedia.Internals.GasFunctions.specificIsochoricHeatCapacity_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificIsochoricHeatCapacity_psxi;

function isobaricThermalExpansionCoefficient_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
algorithm
  beta := TILMedia.Internals.GasFunctions.isobaricThermalExpansionCoefficient_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end isobaricThermalExpansionCoefficient_psxi;

function isothermalCompressibility_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Compressibility kappa "Isothermal compressibility";
algorithm
  kappa := TILMedia.Internals.GasFunctions.isothermalCompressibility_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end isothermalCompressibility_psxi;

function speedOfSound_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Velocity w "Speed of sound";
algorithm
  w := TILMedia.Internals.GasFunctions.speedOfSound_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end speedOfSound_psxi;

function densityDerivativeWRTspecificEnthalpy_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
algorithm
  drhodh_pxi := TILMedia.Internals.GasFunctions.densityDerivativeWRTspecificEnthalpy_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTspecificEnthalpy_psxi;

function densityDerivativeWRTpressure_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
algorithm
  drhodp_hxi := TILMedia.Internals.GasFunctions.densityDerivativeWRTpressure_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTpressure_psxi;

function densityDerivativeWRTmassFraction_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
algorithm
  drhodxi_ph := TILMedia.Internals.GasFunctions.densityDerivativeWRTmassFraction_psxin(p,s,xi,compNo, gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTmassFraction_psxi;

function partialPressure_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  output SI.PartialPressure p_i "Partial pressure";
algorithm
  p_i := TILMedia.Internals.GasFunctions.partialPressure_psxin(p,s,xi,compNo, gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end partialPressure_psxi;

function gaseousMassFraction_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
algorithm
  xi_gas := TILMedia.Internals.GasFunctions.gaseousMassFraction_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end gaseousMassFraction_psxi;

function relativeHumidity_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
algorithm
  phi := TILMedia.Internals.GasFunctions.relativeHumidity_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end relativeHumidity_psxi;

function saturationMassFraction_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.MassFraction xi_s "Saturation mass fraction of condensing component";
algorithm
  xi_s := TILMedia.Internals.GasFunctions.saturationMassFraction_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationMassFraction_psxi;

function saturationHumidityRatio_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output Real humRatio_s "Saturation content of condensing component aka saturation humidity ratio";
algorithm
  humRatio_s := TILMedia.Internals.GasFunctions.saturationHumidityRatio_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationHumidityRatio_psxi;

function specificEnthalpy1px_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificEnthalpy h1px "Specific enthalpy h related to the mass of components that cannot condense";
algorithm
  h1px := TILMedia.Internals.GasFunctions.specificEnthalpy1px_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpy1px_psxi;

function prandtlNumber_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.PrandtlNumber Pr "Prandtl number";
algorithm
  Pr := TILMedia.Internals.GasFunctions.prandtlNumber_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end prandtlNumber_psxi;

function thermalConductivity_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.ThermalConductivity lambda "Thermal conductivity";
algorithm
  lambda := TILMedia.Internals.GasFunctions.thermalConductivity_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end thermalConductivity_psxi;

function dynamicViscosity_psxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.DynamicViscosity eta "Dynamic viscosity";
algorithm
  eta := TILMedia.Internals.GasFunctions.dynamicViscosity_psxi(p,s,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end dynamicViscosity_psxi;


function density_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Density d "Density";
algorithm
  d := TILMedia.Internals.GasFunctions.density_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end density_pTxi;

function specificEnthalpy_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificEnthalpy h "Specific enthalpy";
algorithm
  h := TILMedia.Internals.GasFunctions.specificEnthalpy_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpy_pTxi;

function specificEntropy_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificEntropy s "Specific entropy";
algorithm
  s := TILMedia.Internals.GasFunctions.specificEntropy_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEntropy_pTxi;

function specificIsobaricHeatCapacity_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
algorithm
  cp := TILMedia.Internals.GasFunctions.specificIsobaricHeatCapacity_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificIsobaricHeatCapacity_pTxi;

function specificIsochoricHeatCapacity_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
algorithm
  cv := TILMedia.Internals.GasFunctions.specificIsochoricHeatCapacity_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificIsochoricHeatCapacity_pTxi;

function isobaricThermalExpansionCoefficient_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
algorithm
  beta := TILMedia.Internals.GasFunctions.isobaricThermalExpansionCoefficient_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end isobaricThermalExpansionCoefficient_pTxi;

function isothermalCompressibility_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Compressibility kappa "Isothermal compressibility";
algorithm
  kappa := TILMedia.Internals.GasFunctions.isothermalCompressibility_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end isothermalCompressibility_pTxi;

function speedOfSound_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.Velocity w "Speed of sound";
algorithm
  w := TILMedia.Internals.GasFunctions.speedOfSound_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end speedOfSound_pTxi;

function densityDerivativeWRTspecificEnthalpy_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
algorithm
  drhodh_pxi := TILMedia.Internals.GasFunctions.densityDerivativeWRTspecificEnthalpy_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTspecificEnthalpy_pTxi;

function densityDerivativeWRTpressure_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
algorithm
  drhodp_hxi := TILMedia.Internals.GasFunctions.densityDerivativeWRTpressure_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTpressure_pTxi;

function densityDerivativeWRTmassFraction_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
algorithm
  drhodxi_ph := TILMedia.Internals.GasFunctions.densityDerivativeWRTmassFraction_pTxin(p,T,xi,compNo, gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTmassFraction_pTxi;

function partialPressure_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  output SI.PartialPressure p_i "Partial pressure";
algorithm
  p_i := TILMedia.Internals.GasFunctions.partialPressure_pTxin(p,T,xi,compNo, gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end partialPressure_pTxi;

function gaseousMassFraction_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
algorithm
  xi_gas := TILMedia.Internals.GasFunctions.gaseousMassFraction_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end gaseousMassFraction_pTxi;

function relativeHumidity_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
algorithm
  phi := TILMedia.Internals.GasFunctions.relativeHumidity_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end relativeHumidity_pTxi;

function saturationMassFraction_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.MassFraction xi_s "Saturation mass fraction of condensing component";
algorithm
  xi_s := TILMedia.Internals.GasFunctions.saturationMassFraction_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationMassFraction_pTxi;

function saturationHumidityRatio_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output Real humRatio_s "Saturation content of condensing component aka saturation humidity ratio";
algorithm
  humRatio_s := TILMedia.Internals.GasFunctions.saturationHumidityRatio_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationHumidityRatio_pTxi;

function specificEnthalpy1px_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.SpecificEnthalpy h1px "Specific enthalpy h related to the mass of components that cannot condense";
algorithm
  h1px := TILMedia.Internals.GasFunctions.specificEnthalpy1px_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpy1px_pTxi;

function prandtlNumber_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.PrandtlNumber Pr "Prandtl number";
algorithm
  Pr := TILMedia.Internals.GasFunctions.prandtlNumber_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end prandtlNumber_pTxi;

function thermalConductivity_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.ThermalConductivity lambda "Thermal conductivity";
algorithm
  lambda := TILMedia.Internals.GasFunctions.thermalConductivity_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end thermalConductivity_pTxi;

function dynamicViscosity_pTxi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.DynamicViscosity eta "Dynamic viscosity";
algorithm
  eta := TILMedia.Internals.GasFunctions.dynamicViscosity_pTxi(p,T,xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end dynamicViscosity_pTxi;



function saturationPartialPressure_T
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.Temperature T "Temperature";
  output SI.PartialPressure p_s "Saturation partial pressure of condensing component";
algorithm
  p_s := TILMedia.Internals.GasFunctions.saturationPartialPressure_T(T,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationPartialPressure_T;

function specificEnthalpyOfVaporisation_T
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.Temperature T "Temperature";
  output SI.SpecificEnthalpy delta_hv "Specific enthalpy of vaporisation of condensing component";
algorithm
  delta_hv := TILMedia.Internals.GasFunctions.specificEnthalpyOfVaporisation_T(T,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpyOfVaporisation_T;

function specificEnthalpyOfDesublimation_T
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.Temperature T "Temperature";
  output SI.SpecificEnthalpy delta_hd "Specific enthalpy of desublimation of condensing component";
algorithm
  delta_hd := TILMedia.Internals.GasFunctions.specificEnthalpyOfDesublimation_T(T,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpyOfDesublimation_T;

function specificEnthalpyOfPureGas_Tn
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.Temperature T "Temperature";
  input Integer compNo "Component ID";
  output SI.SpecificEnthalpy h_i "Specific enthalpy of theoretical pure component";
algorithm
  h_i := TILMedia.Internals.GasFunctions.specificEnthalpyOfPureGas_Tn(T,compNo, gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpyOfPureGas_Tn;



function averageMolarMass_xi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output SI.MolarMass M "Average molar mass";
algorithm
  M := TILMedia.Internals.GasFunctions.averageMolarMass_xi(xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end averageMolarMass_xi;

function humidityRatio_xi
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input SI.MassFraction[:] xi=zeros(gasType.nc-1) "Mass fractions of the first nc-1 components";
  output Real humRatio "Content of condensing component aka humidity ratio";
algorithm
  humRatio := TILMedia.Internals.GasFunctions.humidityRatio_xi(xi,gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end humidityRatio_xi;


function molarMass_n
// Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  input Integer compNo "Component ID";
  output SI.MolarMass M_i "Molar mass of component i";
algorithm
  M_i := TILMedia.Internals.GasFunctions.molarMass_n(compNo, gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end molarMass_n;

function freezingPoint
// Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
  input TILMedia.GasTypes.BaseGas gasType "Gas type" annotation(choicesAllMatching=true);
  output SI.Temperature T_freeze "Freezing point of condensing component";
algorithm
  T_freeze := TILMedia.Internals.GasFunctions.freezingPoint(gasType.concatGasName, gasType.nc+TILMedia.Internals.redirectModelicaFormatMessage(), gasType.condensingIndex);
  annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end freezingPoint;

end GasFunctions;
