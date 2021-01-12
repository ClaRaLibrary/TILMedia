within TILMedia.Internals;
record SolidPropertyRecord
   extends .TILMedia.Internals.ClassTypes.Record;

  SI.Density d "Density";
  SI.Temperature T "Temperature";
  SI.SpecificHeatCapacity cp "Heat capacity";
  SI.ThermalConductivity lambda "Thermal conductivity";

annotation (Protection(access=Access.packageDuplicate));
end SolidPropertyRecord;
