within TILMedia.SolidTypes;
model TILMedia_Steel "TILMedia.Steel"
  extends TILMedia.SolidTypes.BaseSolid(
    final d = 7800.0,
    final cp_nominal = 490.0,
    final lambda_nominal = 40.0);
equation
  cp=cp_nominal;
  lambda=lambda_nominal;
end TILMedia_Steel;
