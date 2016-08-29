within TILMedia.Internals;
package GasFunctions
  extends TILMedia.Internals.ClassTypes.ModelPackage;
function density_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Density d "Density";
external "C" d = TILMedia_GasFunctions_density_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end density_phxi;

function specificEntropy_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEntropy s "Specific entropy";
external "C" s = TILMedia_GasFunctions_specificEntropy_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEntropy_phxi;

function temperature_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Temperature T "Temperature";
external "C" T = TILMedia_GasFunctions_temperature_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end temperature_phxi;

function specificIsobaricHeatCapacity_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
external "C" cp = TILMedia_GasFunctions_specificIsobaricHeatCapacity_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificIsobaricHeatCapacity_phxi;

function specificIsochoricHeatCapacity_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
external "C" cv = TILMedia_GasFunctions_specificIsochoricHeatCapacity_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificIsochoricHeatCapacity_phxi;

function isobaricThermalExpansionCoefficient_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
external "C" beta = TILMedia_GasFunctions_isobaricThermalExpansionCoefficient_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end isobaricThermalExpansionCoefficient_phxi;

function isothermalCompressibility_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Compressibility kappa "Isothermal compressibility";
external "C" kappa = TILMedia_GasFunctions_isothermalCompressibility_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end isothermalCompressibility_phxi;

function speedOfSound_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Velocity w "Speed of sound";
external "C" w = TILMedia_GasFunctions_speedOfSound_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end speedOfSound_phxi;

function densityDerivativeWRTspecificEnthalpy_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.DerDensityByEnthalpy drhodh_pxi
      "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
external "C" drhodh_pxi = TILMedia_GasFunctions_densityDerivativeWRTspecificEnthalpy_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTspecificEnthalpy_phxi;

function densityDerivativeWRTpressure_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.DerDensityByPressure drhodp_hxi
      "Derivative of density wrt pressure at specific enthalpy and mass fraction";
external "C" drhodp_hxi = TILMedia_GasFunctions_densityDerivativeWRTpressure_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTpressure_phxi;

function densityDerivativeWRTmassFraction_phxin
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Density drhodxi_ph
      "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
external "C" drhodxi_ph = TILMedia_GasFunctions_densityDerivativeWRTmassFraction_phxin(p, h, xi, compNo, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTmassFraction_phxin;

function partialPressure_phxin
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.PartialPressure p_i "Partial pressure";
external "C" p_i = TILMedia_GasFunctions_partialPressure_phxin(p, h, xi, compNo, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end partialPressure_phxin;

function gaseousMassFraction_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
external "C" xi_gas = TILMedia_GasFunctions_gaseousMassFraction_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end gaseousMassFraction_phxi;

function relativeHumidity_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
external "C" phi = TILMedia_GasFunctions_relativeHumidity_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end relativeHumidity_phxi;

function saturationMassFraction_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.MassFraction xi_s
      "Saturation mass fraction of condensing component";
external "C" xi_s = TILMedia_GasFunctions_saturationMassFraction_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationMassFraction_phxi;

function saturationHumidityRatio_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output Real humRatio_s
      "Saturation content of condensing component aka saturation humidity ratio";
external "C" humRatio_s = TILMedia_GasFunctions_saturationHumidityRatio_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationHumidityRatio_phxi;

function specificEnthalpy1px_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEnthalpy h1px
      "Specific enthalpy h related to the mass of components that cannot condense";
external "C" h1px = TILMedia_GasFunctions_specificEnthalpy1px_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpy1px_phxi;

function prandtlNumber_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.PrandtlNumber Pr "Prandtl number";
external "C" Pr = TILMedia_GasFunctions_prandtlNumber_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end prandtlNumber_phxi;

function thermalConductivity_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.ThermalConductivity lambda "Thermal conductivity";
external "C" lambda = TILMedia_GasFunctions_thermalConductivity_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end thermalConductivity_phxi;

function dynamicViscosity_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.DynamicViscosity eta "Dynamic viscosity";
external "C" eta = TILMedia_GasFunctions_dynamicViscosity_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end dynamicViscosity_phxi;

function wetBulbTemperature_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Temperature T_wetBulb "Wet bulb temperature";
external "C" T_wetBulb = TILMedia_GasFunctions_wetBulbTemperatureLiquid_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end wetBulbTemperature_phxi;

function iceBulbTemperature_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Temperature T_wetBulb "Wet bulb temperature";
external "C" T_wetBulb = TILMedia_GasFunctions_wetBulbTemperatureSolid_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end iceBulbTemperature_phxi;

function density_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Density d "Density";
external "C" d = TILMedia_GasFunctions_density_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end density_psxi;

function specificEnthalpy_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEnthalpy h "Specific enthalpy";
external "C" h = TILMedia_GasFunctions_specificEnthalpy_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpy_psxi;

function temperature_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Temperature T "Temperature";
external "C" T = TILMedia_GasFunctions_temperature_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end temperature_psxi;

function specificIsobaricHeatCapacity_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
external "C" cp = TILMedia_GasFunctions_specificIsobaricHeatCapacity_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificIsobaricHeatCapacity_psxi;

function specificIsochoricHeatCapacity_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
external "C" cv = TILMedia_GasFunctions_specificIsochoricHeatCapacity_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificIsochoricHeatCapacity_psxi;

function isobaricThermalExpansionCoefficient_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
external "C" beta = TILMedia_GasFunctions_isobaricThermalExpansionCoefficient_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end isobaricThermalExpansionCoefficient_psxi;

function isothermalCompressibility_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Compressibility kappa "Isothermal compressibility";
external "C" kappa = TILMedia_GasFunctions_isothermalCompressibility_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end isothermalCompressibility_psxi;

function speedOfSound_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Velocity w "Speed of sound";
external "C" w = TILMedia_GasFunctions_speedOfSound_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end speedOfSound_psxi;

function densityDerivativeWRTspecificEnthalpy_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.DerDensityByEnthalpy drhodh_pxi
      "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
external "C" drhodh_pxi = TILMedia_GasFunctions_densityDerivativeWRTspecificEnthalpy_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTspecificEnthalpy_psxi;

function densityDerivativeWRTpressure_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.DerDensityByPressure drhodp_hxi
      "Derivative of density wrt pressure at specific enthalpy and mass fraction";
external "C" drhodp_hxi = TILMedia_GasFunctions_densityDerivativeWRTpressure_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTpressure_psxi;

function densityDerivativeWRTmassFraction_psxin
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Density drhodxi_ph
      "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
external "C" drhodxi_ph = TILMedia_GasFunctions_densityDerivativeWRTmassFraction_psxin(p, s, xi, compNo, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTmassFraction_psxin;

function partialPressure_psxin
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.PartialPressure p_i "Partial pressure";
external "C" p_i = TILMedia_GasFunctions_partialPressure_psxin(p, s, xi, compNo, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end partialPressure_psxin;

function gaseousMassFraction_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
external "C" xi_gas = TILMedia_GasFunctions_gaseousMassFraction_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end gaseousMassFraction_psxi;

function relativeHumidity_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
external "C" phi = TILMedia_GasFunctions_relativeHumidity_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end relativeHumidity_psxi;

function saturationMassFraction_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.MassFraction xi_s
      "Saturation mass fraction of condensing component";
external "C" xi_s = TILMedia_GasFunctions_saturationMassFraction_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationMassFraction_psxi;

function saturationHumidityRatio_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output Real humRatio_s
      "Saturation content of condensing component aka saturation humidity ratio";
external "C" humRatio_s = TILMedia_GasFunctions_saturationHumidityRatio_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationHumidityRatio_psxi;

function specificEnthalpy1px_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEnthalpy h1px
      "Specific enthalpy h related to the mass of components that cannot condense";
external "C" h1px = TILMedia_GasFunctions_specificEnthalpy1px_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpy1px_psxi;

function prandtlNumber_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.PrandtlNumber Pr "Prandtl number";
external "C" Pr = TILMedia_GasFunctions_prandtlNumber_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end prandtlNumber_psxi;

function thermalConductivity_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.ThermalConductivity lambda "Thermal conductivity";
external "C" lambda = TILMedia_GasFunctions_thermalConductivity_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end thermalConductivity_psxi;

function dynamicViscosity_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.DynamicViscosity eta "Dynamic viscosity";
external "C" eta = TILMedia_GasFunctions_dynamicViscosity_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end dynamicViscosity_psxi;

function wetBulbTemperature_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Temperature T_wetBulb "Wet bulb temperature";
external "C" T_wetBulb = TILMedia_GasFunctions_wetBulbTemperatureLiquid_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end wetBulbTemperature_psxi;

function iceBulbTemperature_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Temperature T_wetBulb "Wet bulb temperature";
external "C" T_wetBulb = TILMedia_GasFunctions_wetBulbTemperatureSolid_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end iceBulbTemperature_psxi;

function density_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Density d "Density";
external "C" d = TILMedia_GasFunctions_density_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end density_pTxi;

function specificEnthalpy_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEnthalpy h "Specific enthalpy";
external "C" h = TILMedia_GasFunctions_specificEnthalpy_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpy_pTxi;

function specificEntropy_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEntropy s "Specific entropy";
external "C" s = TILMedia_GasFunctions_specificEntropy_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEntropy_pTxi;

function specificIsobaricHeatCapacity_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
external "C" cp = TILMedia_GasFunctions_specificIsobaricHeatCapacity_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificIsobaricHeatCapacity_pTxi;

function specificIsochoricHeatCapacity_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
external "C" cv = TILMedia_GasFunctions_specificIsochoricHeatCapacity_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificIsochoricHeatCapacity_pTxi;

function isobaricThermalExpansionCoefficient_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
external "C" beta = TILMedia_GasFunctions_isobaricThermalExpansionCoefficient_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end isobaricThermalExpansionCoefficient_pTxi;

function isothermalCompressibility_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Compressibility kappa "Isothermal compressibility";
external "C" kappa = TILMedia_GasFunctions_isothermalCompressibility_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end isothermalCompressibility_pTxi;

function speedOfSound_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Velocity w "Speed of sound";
external "C" w = TILMedia_GasFunctions_speedOfSound_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end speedOfSound_pTxi;

function densityDerivativeWRTspecificEnthalpy_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.DerDensityByEnthalpy drhodh_pxi
      "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
external "C" drhodh_pxi = TILMedia_GasFunctions_densityDerivativeWRTspecificEnthalpy_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTspecificEnthalpy_pTxi;

function densityDerivativeWRTpressure_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.DerDensityByPressure drhodp_hxi
      "Derivative of density wrt pressure at specific enthalpy and mass fraction";
external "C" drhodp_hxi = TILMedia_GasFunctions_densityDerivativeWRTpressure_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTpressure_pTxi;

function densityDerivativeWRTmassFraction_pTxin
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Density drhodxi_ph
      "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
external "C" drhodxi_ph = TILMedia_GasFunctions_densityDerivativeWRTmassFraction_pTxin(p, T, xi, compNo, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTmassFraction_pTxin;

function partialPressure_pTxin
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.PartialPressure p_i "Partial pressure";
external "C" p_i = TILMedia_GasFunctions_partialPressure_pTxin(p, T, xi, compNo, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end partialPressure_pTxin;

function gaseousMassFraction_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
external "C" xi_gas = TILMedia_GasFunctions_gaseousMassFraction_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end gaseousMassFraction_pTxi;

function relativeHumidity_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
external "C" phi = TILMedia_GasFunctions_relativeHumidity_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end relativeHumidity_pTxi;

function saturationMassFraction_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.MassFraction xi_s
      "Saturation mass fraction of condensing component";
external "C" xi_s = TILMedia_GasFunctions_saturationMassFraction_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationMassFraction_pTxi;

function saturationHumidityRatio_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output Real humRatio_s
      "Saturation content of condensing component aka saturation humidity ratio";
external "C" humRatio_s = TILMedia_GasFunctions_saturationHumidityRatio_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationHumidityRatio_pTxi;

function specificEnthalpy1px_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEnthalpy h1px
      "Specific enthalpy h related to the mass of components that cannot condense";
external "C" h1px = TILMedia_GasFunctions_specificEnthalpy1px_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpy1px_pTxi;

function prandtlNumber_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.PrandtlNumber Pr "Prandtl number";
external "C" Pr = TILMedia_GasFunctions_prandtlNumber_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end prandtlNumber_pTxi;

function thermalConductivity_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.ThermalConductivity lambda "Thermal conductivity";
external "C" lambda = TILMedia_GasFunctions_thermalConductivity_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end thermalConductivity_pTxi;

function dynamicViscosity_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.DynamicViscosity eta "Dynamic viscosity";
external "C" eta = TILMedia_GasFunctions_dynamicViscosity_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end dynamicViscosity_pTxi;

function wetBulbTemperature_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Temperature T_wetBulb "Wet bulb temperature";
external "C" T_wetBulb = TILMedia_GasFunctions_wetBulbTemperatureLiquid_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end wetBulbTemperature_pTxi;

function iceBulbTemperature_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Temperature T_wetBulb "Wet bulb temperature";
external "C" T_wetBulb = TILMedia_GasFunctions_wetBulbTemperatureSolid_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end iceBulbTemperature_pTxi;

function saturationPartialPressure_T
  input SI.Temperature T "Temperature";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.PartialPressure p_s
      "Saturation partial pressure of condensing component";
external "C" p_s = TILMedia_GasFunctions_saturationPartialPressure_T(T, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationPartialPressure_T;

function specificEnthalpyOfVaporisation_T
  input SI.Temperature T "Temperature";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEnthalpy delta_hv
      "Specific enthalpy of vaporisation of condensing component";
external "C" delta_hv = TILMedia_GasFunctions_specificEnthalpyOfVaporisation_T(T, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpyOfVaporisation_T;

function specificEnthalpyOfDesublimation_T
  input SI.Temperature T "Temperature";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEnthalpy delta_hd
      "Specific enthalpy of desublimation of condensing component";
external "C" delta_hd = TILMedia_GasFunctions_specificEnthalpyOfDesublimation_T(T, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpyOfDesublimation_T;

function specificEnthalpyOfPureGas_Tn
  input SI.Temperature T "Temperature";
  input Integer compNo "Component ID";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEnthalpy h_i
      "Specific enthalpy of theoretical pure component";
external "C" h_i = TILMedia_GasFunctions_specificEnthalpyOfPureGas_Tn(T, compNo, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpyOfPureGas_Tn;

function averageMolarMass_xi
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.MolarMass M "Average molar mass";
external "C" M = TILMedia_GasFunctions_averageMolarMass_xi(xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end averageMolarMass_xi;

function humidityRatio_xi
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output Real humRatio "Content of condensing component aka humidity ratio";
external "C" humRatio = TILMedia_GasFunctions_humidityRatio_xi(xi, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end humidityRatio_xi;

function molarMass_n
  input Integer compNo "Component ID";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.MolarMass M_i "Molar mass of component i";
external "C" M_i = TILMedia_GasFunctions_molarMass_n(compNo, gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end molarMass_n;

function freezingPoint
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Temperature T_freeze "Freezing point of condensing component";
external "C" T_freeze = TILMedia_GasFunctions_freezingPoint(gasName, nc, condensingIndex)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end freezingPoint;

end GasFunctions;
