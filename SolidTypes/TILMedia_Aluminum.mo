within TILMedia.SolidTypes;
model TILMedia_Aluminum "TILMedia.Aluminum"
  extends TILMedia.SolidTypes.BaseSolid(
    final d = 2700.0,
    final cp_nominal = 920.0,
    final lambda_nominal = 215.0);
equation
  cp=cp_nominal;
  lambda=lambda_nominal;
end TILMedia_Aluminum;
