within TILMedia.Internals;
package LiquidFunctions
  extends TILMedia.Internals.ClassTypes.ModelPackage;


  function specificEntropy_phxi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s "Specific entropy";
  external "C" s = TILMedia_LiquidFunctions_specificEntropy_phxi(
        p,
        h,
        xi,
        liquidName,
        nc) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidFunctions_specificEntropy_phxi(double, double, double*,const char*, int);",
      Library="TILMedia140ClaRa");

  end specificEntropy_phxi;

  function specificEntropy_pTxi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s "Specific entropy";
  external "C" s = TILMedia_LiquidFunctions_specificEntropy_pTxi(
        p,
        T,
        xi,
        liquidName,
        nc) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidFunctions_specificEntropy_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia140ClaRa");

  end specificEntropy_pTxi;

  function density_Txi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.Density d "Density";
  external "C" d = TILMedia_LiquidFunctions_density_Txi(
        T,
        xi,
        liquidName,
        nc) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidFunctions_density_Txi(double, double*,const char*, int);",
      Library="TILMedia140ClaRa");

  end density_Txi;

  function specificEnthalpy_Txi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h "Specific enthalpy";
  external "C" h = TILMedia_LiquidFunctions_specificEnthalpy_Txi(
        T,
        xi,
        liquidName,
        nc) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidFunctions_specificEnthalpy_Txi(double, double*,const char*, int);",
      Library="TILMedia140ClaRa");

  end specificEnthalpy_Txi;

  function pressure_Txi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p "Pressure";
  external "C" p = TILMedia_LiquidFunctions_pressure_Txi(
        T,
        xi,
        liquidName,
        nc) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidFunctions_pressure_Txi(double, double*,const char*, int);",
      Library="TILMedia140ClaRa");

  end pressure_Txi;

  function specificIsobaricHeatCapacity_Txi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external "C" cp = TILMedia_LiquidFunctions_specificIsobaricHeatCapacity_Txi(
        T,
        xi,
        liquidName,
        nc) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidFunctions_specificIsobaricHeatCapacity_Txi(double, double*,const char*, int);",
      Library="TILMedia140ClaRa");

  end specificIsobaricHeatCapacity_Txi;

  function isobaricThermalExpansionCoefficient_Txi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
  external "C" beta =
      TILMedia_LiquidFunctions_isobaricThermalExpansionCoefficient_Txi(
        T,
        xi,
        liquidName,
        nc) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidFunctions_isobaricThermalExpansionCoefficient_Txi(double, double*,const char*, int);",
      Library="TILMedia140ClaRa");

  end isobaricThermalExpansionCoefficient_Txi;

  function prandtlNumber_Txi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.PrandtlNumber Pr "Prandtl number";
  external "C" Pr = TILMedia_LiquidFunctions_prandtlNumber_Txi(
        T,
        xi,
        liquidName,
        nc) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidFunctions_prandtlNumber_Txi(double, double*,const char*, int);",
      Library="TILMedia140ClaRa");

  end prandtlNumber_Txi;

  function thermalConductivity_Txi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external "C" lambda = TILMedia_LiquidFunctions_thermalConductivity_Txi(
        T,
        xi,
        liquidName,
        nc) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidFunctions_thermalConductivity_Txi(double, double*,const char*, int);",
      Library="TILMedia140ClaRa");

  end thermalConductivity_Txi;

  function dynamicViscosity_Txi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external "C" eta = TILMedia_LiquidFunctions_dynamicViscosity_Txi(
        T,
        xi,
        liquidName,
        nc) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidFunctions_dynamicViscosity_Txi(double, double*,const char*, int);",
      Library="TILMedia140ClaRa");

  end dynamicViscosity_Txi;

  function density_hxi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.Density d "Density";
  external "C" d = TILMedia_LiquidFunctions_density_hxi(
        h,
        xi,
        liquidName,
        nc) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidFunctions_density_hxi(double, double*,const char*, int);",
      Library="TILMedia140ClaRa");

  end density_hxi;

  function pressure_hxi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p "Pressure";
  external "C" p = TILMedia_LiquidFunctions_pressure_hxi(
        h,
        xi,
        liquidName,
        nc) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidFunctions_pressure_hxi(double, double*,const char*, int);",
      Library="TILMedia140ClaRa");

  end pressure_hxi;

  function temperature_hxi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.Temperature T "Temperature";
  external "C" T = TILMedia_LiquidFunctions_temperature_hxi(
        h,
        xi,
        liquidName,
        nc) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidFunctions_temperature_hxi(double, double*,const char*, int);",
      Library="TILMedia140ClaRa");

  end temperature_hxi;

  function specificIsobaricHeatCapacity_hxi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external "C" cp = TILMedia_LiquidFunctions_specificIsobaricHeatCapacity_hxi(
        h,
        xi,
        liquidName,
        nc) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidFunctions_specificIsobaricHeatCapacity_hxi(double, double*,const char*, int);",
      Library="TILMedia140ClaRa");

  end specificIsobaricHeatCapacity_hxi;

  function isobaricThermalExpansionCoefficient_hxi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
  external "C" beta =
      TILMedia_LiquidFunctions_isobaricThermalExpansionCoefficient_hxi(
        h,
        xi,
        liquidName,
        nc) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidFunctions_isobaricThermalExpansionCoefficient_hxi(double, double*,const char*, int);",
      Library="TILMedia140ClaRa");

  end isobaricThermalExpansionCoefficient_hxi;

  function prandtlNumber_hxi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.PrandtlNumber Pr "Prandtl number";
  external "C" Pr = TILMedia_LiquidFunctions_prandtlNumber_hxi(
        h,
        xi,
        liquidName,
        nc) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidFunctions_prandtlNumber_hxi(double, double*,const char*, int);",
      Library="TILMedia140ClaRa");

  end prandtlNumber_hxi;

  function thermalConductivity_hxi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external "C" lambda = TILMedia_LiquidFunctions_thermalConductivity_hxi(
        h,
        xi,
        liquidName,
        nc) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidFunctions_thermalConductivity_hxi(double, double*,const char*, int);",
      Library="TILMedia140ClaRa");

  end thermalConductivity_hxi;

  function dynamicViscosity_hxi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.LiquidName liquidName "Liquid name";
    input Integer nc "Number of components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external "C" eta = TILMedia_LiquidFunctions_dynamicViscosity_hxi(
        h,
        xi,
        liquidName,
        nc) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidFunctions_dynamicViscosity_hxi(double, double*,const char*, int);",
      Library="TILMedia140ClaRa");

  end dynamicViscosity_hxi;
end LiquidFunctions;
