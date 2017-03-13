within TILMedia.SolidTypes;
model TILMedia_Copper "TILMedia.Copper"
  extends TILMedia.SolidTypes.BaseSolid(
    final d = 8960.0,
    final cp_nominal = 380.0,
    final lambda_nominal = 298.0);
equation
  cp=cp_nominal;
  lambda=lambda_nominal;
end TILMedia_Copper;
