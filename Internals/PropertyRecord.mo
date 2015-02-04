within TILMedia.Internals;
record PropertyRecord "Property record"
  extends TILMedia.Internals.ClassTypes.Record;
  SI.Density d "Density";
  SI.SpecificEnthalpy h "Specific enthalpy";
  SI.AbsolutePressure p "Pressure";
  SI.SpecificEntropy s "Specific entropy";
  SI.Temperature T "Temperature";
  SI.MassFraction q=0 "Steam mass fraction (quality)";
  SI.SpecificHeatCapacity cp=0 "Specific isobaric heat capacity cp";

  TILMedia.Internals.CriticalDataRecord crit=
           TILMedia.Internals.CriticalDataRecord(d=0.0,T=0.0,p=0.0,h=0.0,s=0.0)
    "Critical data record";
  TILMedia.Internals.VLERecordSimple VLE=
           TILMedia.Internals.VLERecordSimple(d_l=0.0, h_l=0.0, p_l=0.0, s_l=0.0, T_l=0.0, d_v=0.0, h_v=0.0, p_v=0.0, s_v=0.0, T_v=0.0)
    "Saturation property record";
  TILMedia.Internals.VLETransportPropertyRecord VLETransp=
           TILMedia.Internals.VLETransportPropertyRecord(Pr_l=0.0, Pr_v=0.0, eta_l=0.0, eta_v=0.0, lambda_l=0.0, lambda_v=0.0)
    "Saturation property record";
  TILMedia.Internals.TransportPropertyRecord transp=
           TILMedia.Internals.TransportPropertyRecord(Pr=0.0,lambda=0.0,eta=0.0,sigma=0.0)
    "Transport property record";

  annotation(defaultComponentName="properties");
end PropertyRecord;
