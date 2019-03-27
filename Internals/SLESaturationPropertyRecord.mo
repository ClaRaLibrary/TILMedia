within TILMedia.Internals;
record SLESaturationPropertyRecord "Solid-liquid equilibrium property record"
   extends TILMedia.Internals.ClassTypes.Record;
  Modelica.SIunits.Temperature Ts "Solid temperature";
  Modelica.SIunits.Temperature Tl "Liquid temperature";
  Modelica.SIunits.Density ds "Solid density";
  Modelica.SIunits.Density dl "Liquid density";
  Modelica.SIunits.SpecificEnthalpy hs "Solid specific enthalpy";
  Modelica.SIunits.SpecificEnthalpy hl "Liquid specific enthalpy";
  Modelica.SIunits.SpecificEntropy ss "Solid specific entropy";
  Modelica.SIunits.SpecificEntropy sl "Liquid specific entropy";
  annotation(defaultComponentName="sat",
    Protection(access=Access.packageDuplicate));
end SLESaturationPropertyRecord;
