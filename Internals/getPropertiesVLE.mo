within TILMedia.Internals;
function getPropertiesVLE
  input Real d,  h,  p,  s,  T,  cp,  q;
  input Real d_crit,  h_crit,  p_crit,  s_crit,  T_crit;
  input Real d_l,  h_l,  p_l,  s_l,  T_l,  d_v,  h_v,  p_v,  s_v,  T_v;
  input Real Pr,  lambda,  eta,  sigma;
  input Real Pr_l,  Pr_v,  lambda_l,  lambda_v,  eta_l,  eta_v;
  output TILMedia.Internals.PropertyRecord properties;
algorithm
  properties.d := d;
  properties.h := h;
  properties.p := p;
  properties.s := s;
  properties.T := T;
  properties.cp := cp;
  properties.q := q;
  properties.VLE := TILMedia.Internals.VLERecordSimple(
    d_l=d_l,
    h_l=h_l,
    p_l=p_l,
    s_l=s_l,
    T_l=T_l,
    d_v=d_v,
    h_v=h_v,
    p_v=p_v,
    s_v=s_v,
    T_v=T_v);
  properties.VLETransp := TILMedia.Internals.VLETransportPropertyRecord(
    Pr_l=Pr_l,
    Pr_v=Pr_v,
    lambda_l=lambda_l,
    lambda_v=lambda_v,
    eta_l=eta_l,
    eta_v=eta_v);
  properties.transp := TILMedia.Internals.TransportPropertyRecord(
    Pr=Pr,
    lambda=lambda,
    eta=eta,
    sigma=sigma);
  properties.crit := TILMedia.Internals.CriticalDataRecord(
    d=d_crit,
    h=h_crit,
    p=p_crit,
    s=s_crit,
    T=T_crit);
end getPropertiesVLE;
