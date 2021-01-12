within TILMedia.Internals.SLEMediumFunctions;
function density_h
  extends .TILMedia.BaseClasses.PartialSLEMediumFunction;
  input Real h;
  input Real stableSupercooling;
  input Real d_s;
  input Real d_l;
  input Real h_fusion;
  output Real d;
protected
  Real q;
algorithm

  if (h < 0) then
    q := 0;
  else
    q := min(1, max(0, 1 + ((h - h_fusion)/h_fusion*(1 - min(1, max(0,
      stableSupercooling))))));
  end if;

  d := 1/(1/d_s + (1/d_l - 1/d_s)*q);

end density_h;
