within TILMedia.Internals;
record CriticalDataRecord "Critical data record"
   extends .TILMedia.Internals.ClassTypes.Record;

  SI.Density d "Critical density";
  SI.SpecificEnthalpy h "Critical specific enthalpy";
  SI.AbsolutePressure p "Critical pressure";
  SI.SpecificEntropy s "Critical specific entropy";
  SI.Temperature T "Critical temperature";
  annotation(defaultComponentName="crit",
    Protection(access=Access.packageDuplicate));
end CriticalDataRecord;
