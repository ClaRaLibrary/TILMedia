within TILMedia.Internals;
record PropertyRecordND "Property record"
  extends TILMedia.Internals.ClassTypes.Record;
  SI.Density d "Density";
  SI.SpecificEnthalpy h "Specific enthalpy";
  SI.AbsolutePressure p "Pressure";
  SI.SpecificEntropy s "Specific entropy";
  SI.Temperature T "Temperature";
  SI.MassFraction q "Steam mass fraction (quality)";
  SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";

  TILMedia.Internals.CriticalDataRecord crit
    "Critical data record";
  TILMedia.Internals.VLERecordSimple VLE
    "Saturation property record";
  TILMedia.Internals.VLETransportPropertyRecord VLETransp
    "Saturation property record";
  TILMedia.Internals.TransportPropertyRecord transp
    "Transport property record";

  annotation(defaultComponentName="properties",
    Protection(access=Access.packageDuplicate));
end PropertyRecordND;
