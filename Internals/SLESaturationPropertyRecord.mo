within TILMedia.Internals;
record SLESaturationPropertyRecord "Solid-liquid equilibrium property record"
   extends .TILMedia.Internals.ClassTypes.Record;
  SI.Temperature Ts "Solid temperature";
  SI.Temperature Tl "Liquid temperature";
  SI.Density ds "Solid density";
  SI.Density dl "Liquid density";
  SI.SpecificEnthalpy hs "Solid specific enthalpy";
  SI.SpecificEnthalpy hl "Liquid specific enthalpy";
  SI.SpecificEntropy ss "Solid specific entropy";
  SI.SpecificEntropy sl "Liquid specific entropy";
  annotation(defaultComponentName="sat",
    Protection(access=Access.packageDuplicate));
end SLESaturationPropertyRecord;
