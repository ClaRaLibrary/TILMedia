within TILMedia.Internals.SLEMediumFunctions;
function specificEnthalpy_T
  input Real T;
  input Real q;
  input Real stableSupercooling;
  input Real TStableLimit;
  input Real cp_s;
  input Real cp_l;
  input Real h_fusion;
  input Real T_s;
  input Real T_l;
  output Real h;

algorithm

  if stableSupercooling==1 or T>TStableLimit then
//     if T < T_s then
//       h := cp_s*(T - T_s);
//     else // T > T_s
    h := cp_l*(T - T_l) + h_fusion;
//     end if;
  else // stableSupercooling == 0
    if T < T_s then
      h := cp_s*(T - T_s);
    elseif T > T_l then
      h := cp_l*(T - T_l) + h_fusion;
    else
      h := h_fusion + h_fusion*(min(1,max(0,q))-1);// /(1-stableSupercooling)
    end if;
  end if;

end specificEnthalpy_T;
