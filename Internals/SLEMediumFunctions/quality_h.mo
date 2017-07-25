within TILMedia.Internals.SLEMediumFunctions;
function quality_h
  input Real h;
  input Real stableSupercooling;
  input Real cp_s;
  input Real cp_l;
  input Real h_fusion;
  input Real T_s;
  input Real T_l;
  output Real q;
algorithm
  if stableSupercooling==1 then
    q:=1;
  elseif h<0 then
    q:=0;
  else
    q :=min(1, max(0, 1 + ((h - h_fusion)/h_fusion*(1 - min(1, max(0, stableSupercooling))))));
  end if;
end quality_h;
