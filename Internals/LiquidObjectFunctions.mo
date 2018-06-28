within TILMedia.Internals;
package LiquidObjectFunctions
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  function molarMass_xi
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer mediumPointer;
    output Modelica.SIunits.MolarMass mm "Molar mass";
  external "C" mm=  TILMedia_Liquid_molarMass_xi(mediumPointer,xi) 
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Liquid_molarMass_xi(double*,void*);",Library="TILMedia131ClaRa");
    annotation(Impure=false);
  end molarMass_xi;

  function properties_hxi
    input Modelica.SIunits.SpecificEnthalpy h "Specific enthalpy";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer mediumPointer;
    output Modelica.SIunits.Density d "Density";
    output Modelica.SIunits.SpecificHeatCapacity cp "Specific heat capacity cp";
    output Modelica.SIunits.LinearExpansionCoefficient beta
      "Isobaric expansion coefficient";
    external "C" TILMedia_Liquid_properties_hxi(h,xi,mediumPointer,d,cp,beta)
      annotation(__iti_dllNoExport = true,Include="void TILMedia_Liquid_properties_hxi(double, double*, void*, double*, double*, double*);",Library="TILMedia131ClaRa");
      annotation(Impure=false);
  end properties_hxi;

  function properties_Txi
    input Modelica.SIunits.Temperature T "Temperature";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer mediumPointer;
    output Modelica.SIunits.Density d "Density";
    output Modelica.SIunits.SpecificHeatCapacity cp "Specific heat capacity cp";
    output Modelica.SIunits.LinearExpansionCoefficient beta
      "Isobaric expansion coefficient";
    external "C" TILMedia_Liquid_properties_Txi(T,xi,mediumPointer,d,cp,beta)
      annotation(__iti_dllNoExport = true,Include="void TILMedia_Liquid_properties_Txi(double, double*, void*, double*, double*, double*);",Library="TILMedia131ClaRa");
      annotation(Impure=false);
  end properties_Txi;

  function specificEnthalpy_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
    external "C" h=  TILMedia_LiquidObjectFunctions_specificEnthalpy_Txi(T, xi, liquidPointer)
      annotation(__iti_dllNoExport = true,Include="double TILMedia_LiquidObjectFunctions_specificEnthalpy_Txi(double, double*, void*);",Library="TILMedia131ClaRa", inverse(T=temperature_hxi(h,xi,liquidPointer)));
  end specificEnthalpy_Txi;

  function specificEntropy_pTxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.Temperature T "Temperature";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer mediumPointer;
    output Modelica.SIunits.SpecificEntropy s "Specific entropy";
  external "C" s=  TILMedia_Liquid_specificEntropy_pTxi(p,T,xi,mediumPointer) 
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Liquid_specificEntropy_pTxi(double, double, double*, void*);",Library="TILMedia131ClaRa");
    annotation(Impure=false);
  end specificEntropy_pTxi;

  function temperature_hxi
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer;
    output SI.Temperature T "Temperature";
    external "C" T=  TILMedia_LiquidObjectFunctions_temperature_hxi(h, xi, liquidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_LiquidObjectFunctions_temperature_hxi(double, double*, void*);",Library="TILMedia131ClaRa", inverse(h=specificEnthalpy_Txi(T,xi,liquidPointer)));
  end temperature_hxi;

  function transportPropertyRecord_Txi
    input Modelica.SIunits.Temperature T "Temperature";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer mediumPointer;
    output TILMedia.Internals.TransportPropertyRecord transp
      "Transport property record";
  external "C" TILMedia_Liquid_transportProperties_Txi(T,xi,mediumPointer,transp.Pr,transp.lambda,transp.eta,transp.sigma) 
  annotation(__iti_dllNoExport = true,Include="void TILMedia_Liquid_transportProperties_Txi(double, double*, void*, double*, double*, double*, double*);",Library="TILMedia131ClaRa");
  annotation(Impure=false);
  end transportPropertyRecord_Txi;
end LiquidObjectFunctions;
