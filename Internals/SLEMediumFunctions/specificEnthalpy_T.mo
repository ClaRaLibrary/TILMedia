within TILMedia.Internals.SLEMediumFunctions;
function specificEnthalpy_T
  extends .TILMedia.BaseClasses.PartialSLEMediumFunction;
  input Real T;
  input Real iota;
  input Real TSupercoolingLimit;
  input Real cp_s;
  input Real cp_l;
  input Real h_fusion;
  input Real T_s;
  input Real T_l;
  output Real h;
protected
  Real q;
algorithm
  if (T < TSupercoolingLimit) then
    h := cp_s*(T - T_s);
  elseif T > T_l then
    h := cp_l*(T - T_l) + h_fusion;
  else
    if (T_l > T_s) then
      q := min(1, max(max(0, iota), (T - T_s)/(T_l - T_s)));
    else
      q := min(1, max(0, iota));
    end if;
    h := (cp_l*q + cp_s*(1 - q))*(T - (T_l*q + T_s*(1 - q))) + h_fusion*q;
  end if;
end specificEnthalpy_T;
