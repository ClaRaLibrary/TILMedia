within TILMedia.Internals.SLEMediumFunctions;
function temperature_h
  input Real h;
  input Real iota;
  input Real cp_s;
  input Real cp_l;
  input Real h_fusion;
  input Real T_s;
  input Real T_l;
  output Real T;
protected
  Real q_x;
  Real q;
algorithm
  q_x := h / h_fusion; // this should be q
  q := min(1,max(max(0,iota), q_x));
  T := T_s + q*(T_l-T_s) - (q - q_x)*h_fusion/(cp_l*q+(1-q)*cp_s);
end temperature_h;
