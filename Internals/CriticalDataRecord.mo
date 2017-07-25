within TILMedia.Internals;
record CriticalDataRecord "Critical data record"
   extends TILMedia.Internals.ClassTypes.Record;

  Modelica.SIunits.Density d "Critical density";
  Modelica.SIunits.SpecificEnthalpy h "Critical specific enthalpy";
  Modelica.SIunits.AbsolutePressure p "Critical pressure";
  Modelica.SIunits.SpecificEntropy s "Critical specific entropy";
  Modelica.SIunits.Temperature T "Critical temperature";
  annotation(defaultComponentName="crit",
    __Dymola_Protection(
      allowDuplicate = true,
      showDiagram=true,
      showText=true));
end CriticalDataRecord;
