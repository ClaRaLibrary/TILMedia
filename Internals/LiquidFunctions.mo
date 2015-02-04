within TILMedia.Internals;
package LiquidFunctions
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  function specificEntropy_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s "Specific entropy";
  external "C" s=  TILMedia_LiquidFunctions_specificEntropy_phxi(p, h, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end specificEntropy_phxi;

  function specificEntropy_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s "Specific entropy";
  external "C" s=  TILMedia_LiquidFunctions_specificEntropy_pTxi(p, T, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end specificEntropy_pTxi;

  function density_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.Density d "Density";
  external "C" d=  TILMedia_LiquidFunctions_density_Txi(T, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end density_Txi;

  function specificEnthalpy_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h "Specific enthalpy";
  external "C" h=  TILMedia_LiquidFunctions_specificEnthalpy_Txi(T, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end specificEnthalpy_Txi;

  function pressure_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p "Pressure";
  external "C" p=  TILMedia_LiquidFunctions_pressure_Txi(T, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end pressure_Txi;

  function specificIsobaricHeatCapacity_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external "C" cp=  TILMedia_LiquidFunctions_specificIsobaricHeatCapacity_Txi(T, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end specificIsobaricHeatCapacity_Txi;

  function isobaricThermalExpansionCoefficient_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
  external "C" beta=  TILMedia_LiquidFunctions_isobaricThermalExpansionCoefficient_Txi(T, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end isobaricThermalExpansionCoefficient_Txi;

  function densityDerivativeWRTspecificEnthalpy_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.DerDensityByEnthalpy drhodh_pxi
      "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  external "C" drhodh_pxi=  TILMedia_LiquidFunctions_densityDerivativeWRTspecificEnthalpy_Txi(T, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end densityDerivativeWRTspecificEnthalpy_Txi;

  function prandtlNumber_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.PrandtlNumber Pr "Prandtl number";
  external "C" Pr=  TILMedia_LiquidFunctions_prandtlNumber_Txi(T, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end prandtlNumber_Txi;

  function thermalConductivity_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external "C" lambda=  TILMedia_LiquidFunctions_thermalConductivity_Txi(T, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end thermalConductivity_Txi;

  function dynamicViscosity_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external "C" eta=  TILMedia_LiquidFunctions_dynamicViscosity_Txi(T, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end dynamicViscosity_Txi;

  function density_hxi
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.Density d "Density";
  external "C" d=  TILMedia_LiquidFunctions_density_hxi(h, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end density_hxi;

  function pressure_hxi
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p "Pressure";
  external "C" p=  TILMedia_LiquidFunctions_pressure_hxi(h, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end pressure_hxi;

  function temperature_hxi
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.Temperature T "Temperature";
  external "C" T=  TILMedia_LiquidFunctions_temperature_hxi(h, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end temperature_hxi;

  function specificIsobaricHeatCapacity_hxi
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external "C" cp=  TILMedia_LiquidFunctions_specificIsobaricHeatCapacity_hxi(h, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end specificIsobaricHeatCapacity_hxi;

  function isobaricThermalExpansionCoefficient_hxi
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
  external "C" beta=  TILMedia_LiquidFunctions_isobaricThermalExpansionCoefficient_hxi(h, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end isobaricThermalExpansionCoefficient_hxi;

  function densityDerivativeWRTspecificEnthalpy_hxi
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.DerDensityByEnthalpy drhodh_pxi
      "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  external "C" drhodh_pxi=  TILMedia_LiquidFunctions_densityDerivativeWRTspecificEnthalpy_hxi(h, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end densityDerivativeWRTspecificEnthalpy_hxi;

  function prandtlNumber_hxi
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.PrandtlNumber Pr "Prandtl number";
  external "C" Pr=  TILMedia_LiquidFunctions_prandtlNumber_hxi(h, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end prandtlNumber_hxi;

  function thermalConductivity_hxi
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external "C" lambda=  TILMedia_LiquidFunctions_thermalConductivity_hxi(h, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end thermalConductivity_hxi;

  function dynamicViscosity_hxi
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external "C" eta=  TILMedia_LiquidFunctions_dynamicViscosity_hxi(h, xi, liquidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end dynamicViscosity_hxi;
end LiquidFunctions;
