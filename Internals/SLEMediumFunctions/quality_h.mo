within TILMedia.Internals.SLEMediumFunctions;
function quality_h
  extends .TILMedia.BaseClasses.PartialSLEMediumFunction;
  input Real h;
  input Real iota;
  input Real cp_s;
  input Real cp_l;
  input Real h_fusion;
  input Real T_s;
  input Real T_l;
  output Real q;
algorithm
  q := min(1, max(max(0, iota), h/h_fusion));
end quality_h;
