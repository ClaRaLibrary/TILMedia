within TILMedia.SolidTypes;
model TILMedia_Copper "TILMedia.Copper"
  extends TILMedia.SolidTypes.BaseSolid(
    final d = 8960.0,
    final cp_nominal = 380.0,
    final lambda_nominal = 298.0,
    final nu_nominal=-1,
    final E_nominal=-1,
    final G_nominal=-1,
    final beta_nominal=-1);
equation
  cp=cp_nominal;
  lambda=lambda_nominal;
  nu = nu_nominal;
  E = E_nominal;
  G=G_nominal;
  beta = beta_nominal;
end TILMedia_Copper;
