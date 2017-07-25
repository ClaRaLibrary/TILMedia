within TILMedia.Internals;
record VLERecordSimple "VLE property record"
  extends TILMedia.Internals.ClassTypes.Record;
  SI.Density d_l "Density of liquid phase";
  SI.Density d_v "Density of vapour phase";
  SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  SI.AbsolutePressure p_l "Pressure of liquid phase";
  SI.AbsolutePressure p_v "Pressure of vapour phase";
  SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  SI.Temperature T_l "Temperature of liquid phase";
  SI.Temperature T_v "Temperature of vapour phase";
  annotation(  __Dymola_Protection(
      allowDuplicate = true,
      showDiagram=true,
      showText=true));
end VLERecordSimple;
