within TILMedia;
package LiquidObjectFunctions
  "Package for calculation of liquid properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  class LiquidPointer
     extends ExternalObject;
     function constructor
      input String mediumName;
      input Integer flags;
      input Real[:] xi;
      input Integer nc_propertyCalculation;
      input Integer nc;
      input Integer redirectorDummy;
      output LiquidPointer liquidPointer;
      external "C" liquidPointer = TILMedia_Liquid_createExternalObject(mediumName, flags, xi, nc_propertyCalculation, nc)
                                           annotation(Library="TILMedia120ClaRa");
     end constructor;

     function destructor "Release storage of table"
      input LiquidPointer properties;
      external "C" TILMedia_Liquid_destroyExternalObject(properties)
                                           annotation(Library="TILMedia120ClaRa");
     end destructor;
  end LiquidPointer;

  function specificEntropy_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.SpecificEntropy s "Specific entropy";
  external "C" s = TILMedia_LiquidObjectFunctions_specificEntropy_phxi(p, h, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end specificEntropy_phxi;

  function specificEntropy_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.SpecificEntropy s "Specific entropy";
  external "C" s = TILMedia_LiquidObjectFunctions_specificEntropy_pTxi(p, T, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end specificEntropy_pTxi;

  function density_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.Density d "Density";
  external "C" d = TILMedia_LiquidObjectFunctions_density_Txi(T, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end density_Txi;

  function specificEnthalpy_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
  external "C" h = TILMedia_LiquidObjectFunctions_specificEnthalpy_Txi(T, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end specificEnthalpy_Txi;

  function pressure_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.AbsolutePressure p "Pressure";
  external "C" p = TILMedia_LiquidObjectFunctions_pressure_Txi(T, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end pressure_Txi;

  function specificIsobaricHeatCapacity_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external "C" cp = TILMedia_LiquidObjectFunctions_specificIsobaricHeatCapacity_Txi(T, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end specificIsobaricHeatCapacity_Txi;

  function isobaricThermalExpansionCoefficient_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
  external "C" beta = TILMedia_LiquidObjectFunctions_isobaricThermalExpansionCoefficient_Txi(T, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end isobaricThermalExpansionCoefficient_Txi;

  function densityDerivativeWRTspecificEnthalpy_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.DerDensityByEnthalpy drhodh_pxi
      "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  external "C" drhodh_pxi = TILMedia_LiquidObjectFunctions_densityDerivativeWRTspecificEnthalpy_Txi(T, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end densityDerivativeWRTspecificEnthalpy_Txi;

  function prandtlNumber_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
  external "C" Pr = TILMedia_LiquidObjectFunctions_prandtlNumber_Txi(T, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end prandtlNumber_Txi;

  function thermalConductivity_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external "C" lambda = TILMedia_LiquidObjectFunctions_thermalConductivity_Txi(T, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end thermalConductivity_Txi;

  function dynamicViscosity_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external "C" eta = TILMedia_LiquidObjectFunctions_dynamicViscosity_Txi(T, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end dynamicViscosity_Txi;

  function density_hxi
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.Density d "Density";
  external "C" d = TILMedia_LiquidObjectFunctions_density_hxi(h, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end density_hxi;

  function pressure_hxi
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.AbsolutePressure p "Pressure";
  external "C" p = TILMedia_LiquidObjectFunctions_pressure_hxi(h, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end pressure_hxi;

  function temperature_hxi
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.Temperature T "Temperature";
  external "C" T = TILMedia_LiquidObjectFunctions_temperature_hxi(h, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end temperature_hxi;

  function specificIsobaricHeatCapacity_hxi
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external "C" cp = TILMedia_LiquidObjectFunctions_specificIsobaricHeatCapacity_hxi(h, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end specificIsobaricHeatCapacity_hxi;

  function isobaricThermalExpansionCoefficient_hxi
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
  external "C" beta = TILMedia_LiquidObjectFunctions_isobaricThermalExpansionCoefficient_hxi(h, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end isobaricThermalExpansionCoefficient_hxi;

  function densityDerivativeWRTspecificEnthalpy_hxi
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.DerDensityByEnthalpy drhodh_pxi
      "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  external "C" drhodh_pxi = TILMedia_LiquidObjectFunctions_densityDerivativeWRTspecificEnthalpy_hxi(h, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end densityDerivativeWRTspecificEnthalpy_hxi;

  function prandtlNumber_hxi
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
  external "C" Pr = TILMedia_LiquidObjectFunctions_prandtlNumber_hxi(h, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end prandtlNumber_hxi;

  function thermalConductivity_hxi
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external "C" lambda = TILMedia_LiquidObjectFunctions_thermalConductivity_hxi(h, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end thermalConductivity_hxi;

  function dynamicViscosity_hxi
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external "C" eta = TILMedia_LiquidObjectFunctions_dynamicViscosity_hxi(h, xi, liquidPointer)
    annotation(Library="TILMedia120ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end dynamicViscosity_hxi;
end LiquidObjectFunctions;
