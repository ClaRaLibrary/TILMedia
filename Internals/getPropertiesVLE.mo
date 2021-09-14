within TILMedia.Internals;
function getPropertiesVLE
  input Real d;
  input Real h;
  input Real p;
  input Real s;
  input Real T;
  input Real cp;
  input Real q;
  input Real d_crit;
  input Real h_crit;
  input Real p_crit;
  input Real s_crit;
  input Real T_crit;
  input Real d_l;
  input Real h_l;
  input Real p_l;
  input Real s_l;
  input Real T_l;
  input Real d_v;
  input Real h_v;
  input Real p_v;
  input Real s_v;
  input Real T_v;
  input Real Pr;
  input Real lambda;
  input Real eta;
  input Real sigma;
  input Real Pr_l;
  input Real Pr_v;
  input Real lambda_l;
  input Real lambda_v;
  input Real eta_l;
  input Real eta_v;
  output TILMedia.Internals.PropertyRecordND properties;
algorithm
  properties := TILMedia.Internals.PropertyRecordND(
    d=d,
    h=h,
    p=p,
    s=s,
    T=T,
    cp=cp,
    q=q,
    VLE=TILMedia.Internals.VLERecordSimple(
      d_l=d_l,
      h_l=h_l,
      p_l=p_l,
      s_l=s_l,
      T_l=T_l,
      d_v=d_v,
      h_v=h_v,
      p_v=p_v,
      s_v=s_v,
      T_v=T_v),
    VLETransp=TILMedia.Internals.VLETransportPropertyRecord(
      Pr_l=Pr_l,
      Pr_v=Pr_v,
      lambda_l=lambda_l,
      lambda_v=lambda_v,
      eta_l=eta_l,
      eta_v=eta_v),
    transp=TILMedia.Internals.TransportPropertyRecord(
      Pr=Pr,
      lambda=lambda,
      eta=eta,
      sigma=sigma),
    crit=TILMedia.Internals.CriticalDataRecord(
      d=d_crit,
      h=h_crit,
      p=p_crit,
      s=s_crit,
      T=T_crit));
end getPropertiesVLE;
