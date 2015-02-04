within TILMedia.Internals;
record SolidPropertyRecord
   extends TILMedia.Internals.ClassTypes.Record;

  Modelica.SIunits.Density d "Density";
  Modelica.SIunits.Temperature T "Temperature";
  Modelica.SIunits.SpecificHeatCapacity cp "Heat capacity";
  Modelica.SIunits.ThermalConductivity lambda "Thermal conductivity";
end SolidPropertyRecord;
