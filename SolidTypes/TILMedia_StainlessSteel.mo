within TILMedia.SolidTypes;
model TILMedia_StainlessSteel "TILMedia.StainlessSteel"
  extends TILMedia.SolidTypes.BaseSolid(
    final d = 7900.0,
    final cp_nominal = 450.0,
    final lambda_nominal = 14.6);
equation
  cp=cp_nominal;
  lambda=lambda_nominal;
end TILMedia_StainlessSteel;
