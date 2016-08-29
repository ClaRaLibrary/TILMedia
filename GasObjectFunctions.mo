within TILMedia;
package GasObjectFunctions
  "Package for calculation of gas vapor properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  class GasPointer
     extends ExternalObject;
     function constructor "get memory"
      input String mediumName;
      input Integer flags;
      input Real[:] xi;
      input Integer nc_propertyCalculation;
      input Integer nc;
      input Integer condensingIndex;
      input Integer redirectorDummy;
      output GasPointer gasPointer;
      external "C" gasPointer = TILMedia_Gas_createExternalObject(mediumName, flags, xi, nc_propertyCalculation, nc, condensingIndex)
                                           annotation(Library="TILMedia111ClaRa");
     end constructor;

     function destructor "free memory"
      input GasPointer gasPointer;
      external "C" TILMedia_Gas_destroyExternalObject(gasPointer)
                                           annotation(Library="TILMedia111ClaRa");
     end destructor;
  end GasPointer;

function density_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.Density d "Density";
external "C" d = TILMedia_GasObjectFunctions_density_phxi(p, h, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end density_phxi;

function specificEntropy_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.SpecificEntropy s "Specific entropy";
external "C" s = TILMedia_GasObjectFunctions_specificEntropy_phxi(p, h, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEntropy_phxi;

function temperature_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.Temperature T "Temperature";
external "C" T = TILMedia_GasObjectFunctions_temperature_phxi(p, h, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end temperature_phxi;

function specificIsobaricHeatCapacity_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
external "C" cp = TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_phxi(p, h, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificIsobaricHeatCapacity_phxi;

function specificIsochoricHeatCapacity_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
external "C" cv = TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_phxi(p, h, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificIsochoricHeatCapacity_phxi;

function isobaricThermalExpansionCoefficient_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
external "C" beta = TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_phxi(p, h, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end isobaricThermalExpansionCoefficient_phxi;

function isothermalCompressibility_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.Compressibility kappa "Isothermal compressibility";
external "C" kappa = TILMedia_GasObjectFunctions_isothermalCompressibility_phxi(p, h, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end isothermalCompressibility_phxi;

function speedOfSound_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.Velocity w "Speed of sound";
external "C" w = TILMedia_GasObjectFunctions_speedOfSound_phxi(p, h, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end speedOfSound_phxi;

function densityDerivativeWRTspecificEnthalpy_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.DerDensityByEnthalpy drhodh_pxi
      "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
external "C" drhodh_pxi = TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_phxi(p, h, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTspecificEnthalpy_phxi;

function densityDerivativeWRTpressure_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.DerDensityByPressure drhodp_hxi
      "Derivative of density wrt pressure at specific enthalpy and mass fraction";
external "C" drhodp_hxi = TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_phxi(p, h, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTpressure_phxi;

function densityDerivativeWRTmassFraction_phxin
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.Density drhodxi_ph
      "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
external "C" drhodxi_ph = TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_phxin(p, h, xi, compNo, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTmassFraction_phxin;

function partialPressure_phxin
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.PartialPressure p_i "Partial pressure";
external "C" p_i = TILMedia_GasObjectFunctions_partialPressure_phxin(p, h, xi, compNo, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end partialPressure_phxin;

function gaseousMassFraction_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
external "C" xi_gas = TILMedia_GasObjectFunctions_gaseousMassFraction_phxi(p, h, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end gaseousMassFraction_phxi;

function relativeHumidity_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
external "C" phi = TILMedia_GasObjectFunctions_relativeHumidity_phxi(p, h, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end relativeHumidity_phxi;

function saturationMassFraction_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.MassFraction xi_s
      "Saturation mass fraction of condensing component";
external "C" xi_s = TILMedia_GasObjectFunctions_saturationMassFraction_phxi(p, h, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationMassFraction_phxi;

function saturationHumidityRatio_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output Real humRatio_s
      "Saturation content of condensing component aka saturation humidity ratio";
external "C" humRatio_s = TILMedia_GasObjectFunctions_saturationHumidityRatio_phxi(p, h, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationHumidityRatio_phxi;

function specificEnthalpy1px_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.SpecificEnthalpy h1px
      "Specific enthalpy h related to the mass of components that cannot condense";
external "C" h1px = TILMedia_GasObjectFunctions_specificEnthalpy1px_phxi(p, h, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpy1px_phxi;

function prandtlNumber_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.PrandtlNumber Pr "Prandtl number";
external "C" Pr = TILMedia_GasObjectFunctions_prandtlNumber_phxi(p, h, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end prandtlNumber_phxi;

function thermalConductivity_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.ThermalConductivity lambda "Thermal conductivity";
external "C" lambda = TILMedia_GasObjectFunctions_thermalConductivity_phxi(p, h, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end thermalConductivity_phxi;

function dynamicViscosity_phxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.DynamicViscosity eta "Dynamic viscosity";
external "C" eta = TILMedia_GasObjectFunctions_dynamicViscosity_phxi(p, h, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end dynamicViscosity_phxi;

function density_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.Density d "Density";
external "C" d = TILMedia_GasObjectFunctions_density_psxi(p, s, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end density_psxi;

function specificEnthalpy_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.SpecificEnthalpy h "Specific enthalpy";
external "C" h = TILMedia_GasObjectFunctions_specificEnthalpy_psxi(p, s, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpy_psxi;

function temperature_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.Temperature T "Temperature";
external "C" T = TILMedia_GasObjectFunctions_temperature_psxi(p, s, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end temperature_psxi;

function specificIsobaricHeatCapacity_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
external "C" cp = TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_psxi(p, s, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificIsobaricHeatCapacity_psxi;

function specificIsochoricHeatCapacity_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
external "C" cv = TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_psxi(p, s, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificIsochoricHeatCapacity_psxi;

function isobaricThermalExpansionCoefficient_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
external "C" beta = TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_psxi(p, s, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end isobaricThermalExpansionCoefficient_psxi;

function isothermalCompressibility_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.Compressibility kappa "Isothermal compressibility";
external "C" kappa = TILMedia_GasObjectFunctions_isothermalCompressibility_psxi(p, s, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end isothermalCompressibility_psxi;

function speedOfSound_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.Velocity w "Speed of sound";
external "C" w = TILMedia_GasObjectFunctions_speedOfSound_psxi(p, s, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end speedOfSound_psxi;

function densityDerivativeWRTspecificEnthalpy_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.DerDensityByEnthalpy drhodh_pxi
      "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
external "C" drhodh_pxi = TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_psxi(p, s, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTspecificEnthalpy_psxi;

function densityDerivativeWRTpressure_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.DerDensityByPressure drhodp_hxi
      "Derivative of density wrt pressure at specific enthalpy and mass fraction";
external "C" drhodp_hxi = TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_psxi(p, s, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTpressure_psxi;

function densityDerivativeWRTmassFraction_psxin
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.Density drhodxi_ph
      "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
external "C" drhodxi_ph = TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_psxin(p, s, xi, compNo, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTmassFraction_psxin;

function partialPressure_psxin
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.PartialPressure p_i "Partial pressure";
external "C" p_i = TILMedia_GasObjectFunctions_partialPressure_psxin(p, s, xi, compNo, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end partialPressure_psxin;

function gaseousMassFraction_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
external "C" xi_gas = TILMedia_GasObjectFunctions_gaseousMassFraction_psxi(p, s, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end gaseousMassFraction_psxi;

function relativeHumidity_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
external "C" phi = TILMedia_GasObjectFunctions_relativeHumidity_psxi(p, s, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end relativeHumidity_psxi;

function saturationMassFraction_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.MassFraction xi_s
      "Saturation mass fraction of condensing component";
external "C" xi_s = TILMedia_GasObjectFunctions_saturationMassFraction_psxi(p, s, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationMassFraction_psxi;

function saturationHumidityRatio_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output Real humRatio_s
      "Saturation content of condensing component aka saturation humidity ratio";
external "C" humRatio_s = TILMedia_GasObjectFunctions_saturationHumidityRatio_psxi(p, s, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationHumidityRatio_psxi;

function specificEnthalpy1px_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.SpecificEnthalpy h1px
      "Specific enthalpy h related to the mass of components that cannot condense";
external "C" h1px = TILMedia_GasObjectFunctions_specificEnthalpy1px_psxi(p, s, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpy1px_psxi;

function prandtlNumber_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.PrandtlNumber Pr "Prandtl number";
external "C" Pr = TILMedia_GasObjectFunctions_prandtlNumber_psxi(p, s, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end prandtlNumber_psxi;

function thermalConductivity_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.ThermalConductivity lambda "Thermal conductivity";
external "C" lambda = TILMedia_GasObjectFunctions_thermalConductivity_psxi(p, s, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end thermalConductivity_psxi;

function dynamicViscosity_psxi
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.DynamicViscosity eta "Dynamic viscosity";
external "C" eta = TILMedia_GasObjectFunctions_dynamicViscosity_psxi(p, s, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end dynamicViscosity_psxi;

function density_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.Density d "Density";
external "C" d = TILMedia_GasObjectFunctions_density_pTxi(p, T, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end density_pTxi;

function specificEnthalpy_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.SpecificEnthalpy h "Specific enthalpy";
external "C" h = TILMedia_GasObjectFunctions_specificEnthalpy_pTxi(p, T, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpy_pTxi;

function specificEntropy_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.SpecificEntropy s "Specific entropy";
external "C" s = TILMedia_GasObjectFunctions_specificEntropy_pTxi(p, T, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEntropy_pTxi;

function specificIsobaricHeatCapacity_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
external "C" cp = TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_pTxi(p, T, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificIsobaricHeatCapacity_pTxi;

function specificIsochoricHeatCapacity_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
external "C" cv = TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_pTxi(p, T, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificIsochoricHeatCapacity_pTxi;

function isobaricThermalExpansionCoefficient_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
external "C" beta = TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_pTxi(p, T, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end isobaricThermalExpansionCoefficient_pTxi;

function isothermalCompressibility_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.Compressibility kappa "Isothermal compressibility";
external "C" kappa = TILMedia_GasObjectFunctions_isothermalCompressibility_pTxi(p, T, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end isothermalCompressibility_pTxi;

function speedOfSound_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.Velocity w "Speed of sound";
external "C" w = TILMedia_GasObjectFunctions_speedOfSound_pTxi(p, T, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end speedOfSound_pTxi;

function densityDerivativeWRTspecificEnthalpy_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.DerDensityByEnthalpy drhodh_pxi
      "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
external "C" drhodh_pxi = TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_pTxi(p, T, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTspecificEnthalpy_pTxi;

function densityDerivativeWRTpressure_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.DerDensityByPressure drhodp_hxi
      "Derivative of density wrt pressure at specific enthalpy and mass fraction";
external "C" drhodp_hxi = TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_pTxi(p, T, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTpressure_pTxi;

function densityDerivativeWRTmassFraction_pTxin
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.Density drhodxi_ph
      "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
external "C" drhodxi_ph = TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_pTxin(p, T, xi, compNo, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end densityDerivativeWRTmassFraction_pTxin;

function partialPressure_pTxin
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.PartialPressure p_i "Partial pressure";
external "C" p_i = TILMedia_GasObjectFunctions_partialPressure_pTxin(p, T, xi, compNo, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end partialPressure_pTxin;

function gaseousMassFraction_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
external "C" xi_gas = TILMedia_GasObjectFunctions_gaseousMassFraction_pTxi(p, T, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end gaseousMassFraction_pTxi;

function relativeHumidity_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
external "C" phi = TILMedia_GasObjectFunctions_relativeHumidity_pTxi(p, T, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end relativeHumidity_pTxi;

function saturationMassFraction_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.MassFraction xi_s
      "Saturation mass fraction of condensing component";
external "C" xi_s = TILMedia_GasObjectFunctions_saturationMassFraction_pTxi(p, T, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationMassFraction_pTxi;

function saturationHumidityRatio_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output Real humRatio_s
      "Saturation content of condensing component aka saturation humidity ratio";
external "C" humRatio_s = TILMedia_GasObjectFunctions_saturationHumidityRatio_pTxi(p, T, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationHumidityRatio_pTxi;

function specificEnthalpy1px_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.SpecificEnthalpy h1px
      "Specific enthalpy h related to the mass of components that cannot condense";
external "C" h1px = TILMedia_GasObjectFunctions_specificEnthalpy1px_pTxi(p, T, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpy1px_pTxi;

function prandtlNumber_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.PrandtlNumber Pr "Prandtl number";
external "C" Pr = TILMedia_GasObjectFunctions_prandtlNumber_pTxi(p, T, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end prandtlNumber_pTxi;

function thermalConductivity_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.ThermalConductivity lambda "Thermal conductivity";
external "C" lambda = TILMedia_GasObjectFunctions_thermalConductivity_pTxi(p, T, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end thermalConductivity_pTxi;

function dynamicViscosity_pTxi
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.DynamicViscosity eta "Dynamic viscosity";
external "C" eta = TILMedia_GasObjectFunctions_dynamicViscosity_pTxi(p, T, xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end dynamicViscosity_pTxi;

function saturationPartialPressure_T
  input SI.Temperature T "Temperature";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.PartialPressure p_s
      "Saturation partial pressure of condensing component";
external "C" p_s = TILMedia_GasObjectFunctions_saturationPartialPressure_T(T, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end saturationPartialPressure_T;

function specificEnthalpyOfVaporisation_T
  input SI.Temperature T "Temperature";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.SpecificEnthalpy delta_hv
      "Specific enthalpy of vaporisation of condensing component";
external "C" delta_hv = TILMedia_GasObjectFunctions_specificEnthalpyOfVaporisation_T(T, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpyOfVaporisation_T;

function specificEnthalpyOfDesublimation_T
  input SI.Temperature T "Temperature";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.SpecificEnthalpy delta_hd
      "Specific enthalpy of desublimation of condensing component";
external "C" delta_hd = TILMedia_GasObjectFunctions_specificEnthalpyOfDesublimation_T(T, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpyOfDesublimation_T;

function specificEnthalpyOfPureGas_Tn
  input SI.Temperature T "Temperature";
  input Integer compNo "Component ID";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.SpecificEnthalpy h_i
      "Specific enthalpy of theoretical pure component";
external "C" h_i = TILMedia_GasObjectFunctions_specificEnthalpyOfPureGas_Tn(T, compNo, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end specificEnthalpyOfPureGas_Tn;

function averageMolarMass_xi
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.MolarMass M "Average molar mass";
external "C" M = TILMedia_GasObjectFunctions_averageMolarMass_xi(xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end averageMolarMass_xi;

function humidityRatio_xi
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output Real humRatio "Content of condensing component aka humidity ratio";
external "C" humRatio = TILMedia_GasObjectFunctions_humidityRatio_xi(xi, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end humidityRatio_xi;

function molarMass_n
  input Integer compNo "Component ID";
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.MolarMass M_i "Molar mass of component i";
external "C" M_i = TILMedia_GasObjectFunctions_molarMass_n(compNo, gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end molarMass_n;

function freezingPoint
  input TILMedia.GasObjectFunctions.GasPointer gasPointer;
  output SI.Temperature T_freeze "Freezing point of condensing component";
external "C" T_freeze = TILMedia_GasObjectFunctions_freezingPoint(gasPointer)
  annotation(Library="TILMedia111ClaRa");
  annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Gas_Function.png")}));
end freezingPoint;

end GasObjectFunctions;
