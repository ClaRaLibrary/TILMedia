within TILMedia.Internals;
package LiquidObjectFunctions
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  function molarMass_xi
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer mediumPointer;
    output Modelica.SIunits.MolarMass mm "Molar mass";
  external "C" mm=  TILMedia_Liquid_molarMass_xi(mediumPointer,xi) annotation(Library="TILMedia100ClaRa");
  annotation(Impure=false);
  end molarMass_xi;

  function properties_hxi
    input Modelica.SIunits.SpecificEnthalpy h "Specific enthalpy";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer mediumPointer;
    output Modelica.SIunits.Density d "Density";
    output Modelica.SIunits.Temperature T "Temperature";
    output Modelica.SIunits.SpecificHeatCapacity cp "Specific heat capacity cp";
    output Modelica.SIunits.LinearExpansionCoefficient beta
      "Isobaric expansion coefficient";
  external "C" TILMedia_Liquid_properties_hxi(h,xi,mediumPointer,d,T,cp,beta) annotation(Library="TILMedia100ClaRa");
  annotation(Impure=false);
  end properties_hxi;

  function properties_Txi
    input Modelica.SIunits.Temperature T "Temperature";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer mediumPointer;
    output Modelica.SIunits.Density d "Density";
    output Modelica.SIunits.SpecificEnthalpy h "Specific enthalpy";
    output Modelica.SIunits.SpecificHeatCapacity cp "Specific heat capacity cp";
    output Modelica.SIunits.LinearExpansionCoefficient beta
      "Isobaric expansion coefficient";
  external "C" TILMedia_Liquid_properties_Txi(T,xi,mediumPointer,d,h,cp,beta) annotation(Library="TILMedia100ClaRa");
  annotation(Impure=false);
  end properties_Txi;

  function specificEntropy_pTxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.Temperature T "Temperature";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer mediumPointer;
    output Modelica.SIunits.SpecificEntropy s "Specific entropy";
  external "C" s=  TILMedia_Liquid_specificEntropy_pTxi(p,T,xi,mediumPointer) annotation(Library="TILMedia100ClaRa");
  annotation(Impure=false);
  end specificEntropy_pTxi;

  function transportPropertyRecord_Txi
    input Modelica.SIunits.Temperature T "Temperature";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.LiquidObjectFunctions.LiquidPointer mediumPointer;
    output TILMedia.Internals.TransportPropertyRecord transp
      "Transport property record";
  external "C" TILMedia_Liquid_transportProperties_Txi(T,xi,mediumPointer,transp.Pr,transp.lambda,transp.eta,transp.sigma) annotation(Library="TILMedia100ClaRa");
  annotation(Impure=false);
  end transportPropertyRecord_Txi;
end LiquidObjectFunctions;
