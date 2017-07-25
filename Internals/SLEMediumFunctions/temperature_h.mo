within TILMedia.Internals.SLEMediumFunctions;
function temperature_h
  input Real h;
  input Real q;
  input Real stableSupercooling;
  input Real cp_s;
  input Real cp_l;
  input Real h_fusion;
  input Real T_s;
  input Real T_l;
  output Real T;
protected
  Real T_transitionParallel "temperature which is parallel to T_liquid but is equal to T_solid at h=0";
  Real T_solid;
  Real T_liquid;
algorithm
  T_transitionParallel := T_s + h/cp_l;
  T_solid := T_s + h/cp_s;
  T_liquid := T_l + (h - h_fusion)/cp_l;

  if h>h_fusion or stableSupercooling==1 then
    T := T_liquid;
  elseif h<0 then
    T := T_solid;
  else
    T := T_transitionParallel + q*(T_liquid - T_transitionParallel);
  end if;

end temperature_h;
