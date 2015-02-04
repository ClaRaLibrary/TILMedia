within TILMedia.Internals;
record VLERecord "VLE property record"
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
  SI.MassFraction[nc-1] xi_l "Mass fraction of liquid phase";
  SI.MassFraction[nc-1] xi_v "Mass fraction of vapour phase";
  parameter Integer nc;
end VLERecord;
