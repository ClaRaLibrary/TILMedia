within TILMedia.Internals;
package LiquidObjectFunctions
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  function molarMass_xi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject liquidPointer;
    output SI.MolarMass mm "Molar mass";
  external "C" mm = TILMedia_Liquid_molarMass_xi(liquidPointer, xi) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_Liquid_molarMass_xi(double*,void*);",
      Library="TILMedia180ClaRa");
    annotation (Impure=false);
  end molarMass_xi;

  function properties_hxi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject liquidPointer;
    output SI.Density d "Density";
    output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
    output SI.LinearExpansionCoefficient beta
      "Isobaric expansion coefficient";
  external "C" TILMedia_Liquid_properties_hxi(
        h,
        xi, liquidPointer,
        d,
        cp,
        beta) annotation (
      __iti_dllNoExport=true,
      Include=
          "void TILMedia_Liquid_properties_hxi(double, double*, void*, double*, double*, double*);",
      Library="TILMedia180ClaRa");

    annotation (Impure=false);
  end properties_hxi;

  function properties_Txi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject liquidPointer;
    output SI.Density d "Density";
    output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
    output SI.LinearExpansionCoefficient beta
      "Isobaric expansion coefficient";
  external "C" TILMedia_Liquid_properties_Txi(
        T,
        xi, liquidPointer,
        d,
        cp,
        beta) annotation (
      __iti_dllNoExport=true,
      Include=
          "void TILMedia_Liquid_properties_Txi(double, double*, void*, double*, double*, double*);",
      Library="TILMedia180ClaRa");

    annotation (Impure=false);
  end properties_Txi;

  function specificEnthalpy_Txi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject liquidPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
  external "C" h = TILMedia_LiquidObjectFunctions_specificEnthalpy_Txi(
        T,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidObjectFunctions_specificEnthalpy_Txi(double, double*, void*);",
      Library="TILMedia180ClaRa");
      annotation (
      inverse(T=temperature_hxi(
              h,
              xi,
              liquidPointer)));

  end specificEnthalpy_Txi;

  function specificEntropy_pTxi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject liquidPointer;
    output SI.SpecificEntropy s "Specific entropy";
  external "C" s = TILMedia_Liquid_specificEntropy_pTxi(
        p,
        T,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_Liquid_specificEntropy_pTxi(double, double, double*, void*);",
      Library="TILMedia180ClaRa");

    annotation (Impure=false);
  end specificEntropy_pTxi;

  function temperature_hxi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject liquidPointer;
    output SI.Temperature T "Temperature";
  external "C" T = TILMedia_LiquidObjectFunctions_temperature_hxi(
        h,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include=
          "double TILMedia_LiquidObjectFunctions_temperature_hxi(double, double*, void*);",
      Library="TILMedia180ClaRa");
      annotation (
      inverse(h=TILMedia.Internals.LiquidObjectFunctions.specificEnthalpy_Txi(
              T,
              xi,
              liquidPointer)));

  end temperature_hxi;

  function transportPropertyRecord_Txi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject liquidPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
    output SI.ThermalConductivity lambda "Thermal conductivity";
    output SI.DynamicViscosity eta "Dynamic viscosity";
    output SI.SurfaceTension sigma "Surface tension";
  external "C" TILMedia_Liquid_transportProperties_Txi(
        T,
        xi, liquidPointer,
        Pr,
        lambda,
        eta,
        sigma) annotation (
      __iti_dllNoExport=true,
      Include=
          "void TILMedia_Liquid_transportProperties_Txi(double, double*, void*, double*, double*, double*, double*);",
      Library="TILMedia180ClaRa");

    annotation (Impure=false);
  end transportPropertyRecord_Txi;

  package PureComponentDerivatives
      extends TILMedia.Internals.ClassTypes.ModelPackage;

    function temperature_hxi
      extends TILMedia.BaseClasses.PartialLiquidFunction;
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject liquidPointer;
      output SI.Temperature T "Temperature";
    external "C" T = TILMedia_LiquidObjectFunctions_temperature_hxi(h, xi, liquidPointer)
      annotation(__iti_dllNoExport = true,Include="double TILMedia_LiquidObjectFunctions_temperature_hxi(double, double*, void*);",Library="TILMedia180ClaRa");
      annotation(inverse(h=TILMedia.Internals.LiquidObjectFunctions.specificEnthalpy_Txi(T,xi,liquidPointer)), derivative = TILMedia.Internals.LiquidObjectFunctions.PureComponentDerivatives.der_temperature_hxi);
    end temperature_hxi;

    function der_temperature_hxi "derivative function for pure components"
      extends TILMedia.BaseClasses.PartialLiquidFunction;
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject liquidPointer;
      input Real der_h "Specific enthalpy";
      input Real[:] der_xi "Mass fractions of the first nc-1 components";
      output Real der_T "Temperature";
      external "C" der_T = TILMedia_LiquidObjectFunctions_der_temperature_hxi(h, xi, der_h, der_xi, liquidPointer)
      annotation(__iti_dllNoExport = true,Include="double TILMedia_LiquidObjectFunctions_der_temperature_hxi(double, double*, double, double*, void*);",Library="TILMedia180ClaRa");
    end der_temperature_hxi;

    function specificEnthalpy_Txi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
      input SI.Temperature T "Temperature";
      input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject liquidPointer;
      output SI.SpecificEnthalpy h "Specific enthalpy";
    external "C" h = TILMedia_LiquidObjectFunctions_specificEnthalpy_Txi(T, xi, liquidPointer)
      annotation(__iti_dllNoExport = true,Include="double TILMedia_LiquidObjectFunctions_specificEnthalpy_Txi(double, double*, void*);",Library="TILMedia180ClaRa");
      annotation(inverse(T=temperature_hxi(h,xi,liquidPointer)), derivative(noDerivative=liquidPointer)=TILMedia.Internals.LiquidObjectFunctions.PureComponentDerivatives.der_specificEnthalpy_Txi);
    end specificEnthalpy_Txi;

      function der_specificEnthalpy_Txi
      "derivative function for pure components"
      extends TILMedia.BaseClasses.PartialLiquidFunction;
      input SI.Temperature T "Temperature";
      input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject liquidPointer;
      input Real der_T "Derivative of Temperature";
      input Real[:] der_xi
        "Derivative of Mass fractions of the first nc-1 components";
      output Real der_h "Derivative of Specific enthalpy";
      external "C" der_h = TILMedia_LiquidObjectFunctions_der_specificEnthalpy_Txi(T, xi, der_T, der_xi, liquidPointer)
          annotation(__iti_dllNoExport = true,Include="double TILMedia_LiquidObjectFunctions_der_specificEnthalpy_Txi(double, double*, double, double*, void*);",Library="TILMedia180ClaRa");
      end der_specificEnthalpy_Txi;

    function properties_hxi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject liquidPointer;
      output SI.Density d "Density";
      output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
      output SI.LinearExpansionCoefficient beta
        "Isobaric expansion coefficient";
    external "C" TILMedia_Liquid_properties_hxi(h,xi, liquidPointer,
          d,
          cp,
          beta)
        annotation(__iti_dllNoExport = true,Include="void TILMedia_Liquid_properties_hxi(double, double*, void*, double*, double*, double*);",Library="TILMedia180ClaRa");
        annotation(derivative(noDerivative=liquidPointer)=TILMedia.Internals.LiquidObjectFunctions.PureComponentDerivatives.der_properties_hxi, Impure=false);
    end properties_hxi;

    function der_properties_hxi "derivative function for pure components"
    extends TILMedia.BaseClasses.PartialLiquidFunction;
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject liquidPointer;
      input Real der_h "Specific enthalpy";
      input Real[:] der_xi "Mass fractions of the first nc-1 components";
      output Real der_d "Density";
      output Real der_cp "Specific heat capacity cp";
      output Real der_beta "Isobaric expansion coefficient";
      external "C" TILMedia_Liquid_der_properties_hxi(h,xi,liquidPointer,der_h,der_xi,der_d,der_cp,der_beta)
        annotation(__iti_dllNoExport = true,Include="void TILMedia_Liquid_der_properties_hxi(double, double*, void*, double, double*, double*, double*, double*);",Library="TILMedia180ClaRa");
        annotation(Impure=false);
    end der_properties_hxi;

    function properties_Txi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
      input SI.Temperature T "Temperature";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject liquidPointer;
      output SI.Density d "Density";
      output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
      output SI.LinearExpansionCoefficient beta
        "Isobaric expansion coefficient";
    external "C" TILMedia_Liquid_properties_Txi(T,xi, liquidPointer,
          d,
          cp,
          beta)
        annotation(__iti_dllNoExport = true,Include="void TILMedia_Liquid_properties_Txi(double, double*, void*, double*, double*, double*);",Library="TILMedia180ClaRa");
        annotation(derivative(noDerivative=liquidPointer)=TILMedia.Internals.LiquidObjectFunctions.PureComponentDerivatives.der_properties_Txi, Impure=false);
    end properties_Txi;

    function der_properties_Txi "derivative function for pure components"
    extends TILMedia.BaseClasses.PartialLiquidFunction;
      input SI.Temperature T "Temperature";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject liquidPointer;
      input Real der_T "Temperature";
      input Real[:] der_xi "Mass fractions of the first nc-1 components";
      output Real der_d "Density";
      output Real der_cp "Specific heat capacity cp";
      output Real der_beta "Isobaric expansion coefficient";
      external "C" TILMedia_Liquid_der_properties_Txi(T,xi,liquidPointer,der_T, der_xi,der_d,der_cp,der_beta)
        annotation(__iti_dllNoExport = true,Include="void TILMedia_Liquid_der_properties_Txi(double, double*, void*, double, double*, double*, double*, double*);",Library="TILMedia180ClaRa");
        annotation(Impure=false);
    end der_properties_Txi;

    function transportPropertyRecord_Txi
      extends TILMedia.BaseClasses.PartialLiquidFunction;
      input SI.Temperature T "Temperature";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject liquidPointer;
      output SI.PrandtlNumber Pr "Prandtl number";
      output SI.ThermalConductivity lambda "Thermal conductivity";
      output SI.DynamicViscosity eta "Dynamic viscosity";
      output SI.SurfaceTension sigma "Surface tension";
    external "C" TILMedia_Liquid_transportProperties_Txi(
          T,
          xi, liquidPointer,
          Pr,
          lambda,
          eta,
          sigma) annotation (
        __iti_dllNoExport=true,
        Include=
            "void TILMedia_Liquid_transportProperties_Txi(double, double*, void*, double*, double*, double*, double*);",
        Library="TILMedia180ClaRa");

      annotation (derivative(noDerivative=liquidPointer)=TILMedia.Internals.LiquidObjectFunctions.PureComponentDerivatives.der_transportPropertyRecord_Txi, Impure=false);
    end transportPropertyRecord_Txi;

    function der_transportPropertyRecord_Txi
      extends TILMedia.BaseClasses.PartialLiquidFunction;
      input SI.Temperature T "Temperature";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject liquidPointer;
      input Real der_T "Temperature";
      input Real[:] der_xi "Mass fractions of the first nc-1 components";
      output Real Pr "Prandtl number";
      output Real lambda "Thermal conductivity";
      output Real eta "Dynamic viscosity";
      output Real sigma "Surface tension";
    external "C" TILMedia_Liquid_der_transportProperties_Txi(
          T,
          xi, liquidPointer,
          der_T,
          der_xi,
          Pr,
          lambda,
          eta,
          sigma) annotation (
        __iti_dllNoExport=true,
        Include=
            "void TILMedia_Liquid_der_transportProperties_Txi(double, double*, void*, double, double*, double*, double*, double*, double*);",
        Library="TILMedia180ClaRa");

      annotation (Impure=false);
    end der_transportPropertyRecord_Txi;
  end PureComponentDerivatives;
end LiquidObjectFunctions;
