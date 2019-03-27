within TILMedia.Testers;
model TestSLEMedium
  extends TILMedia.Internals.ClassTypes.ExampleModel;

  SI.SpecificEnthalpy h;
  SI.AbsolutePressure p;
  SI.SpecificEnthalpy hInitial = sleSodiumAcetate.specificEnthalpy_T(373,0);

  SLEMedium sleSodiumAcetate(
    p=p, h=h, iota=0,
    redeclare model SLEMediumType = SLEMediumTypes.TILMedia_SodiumAcetate)
    annotation (Placement(transformation(extent={{-20,40},{0,60}},rotation=0)));

  SLEMedium sleSodiumAcetateSupercooling(
    p=p, h=h,iota=1,
    redeclare model SLEMediumType = SLEMediumTypes.TILMedia_SodiumAcetate)
    annotation (Placement(transformation(extent={{-20,0},{0,20}},rotation=0)));

  SLEMedium sleSodiumAcetateNormalSupercooling(
    p=p, h=h,iota=(50 - time)*0.1,
    redeclare model SLEMediumType = SLEMediumTypes.TILMedia_SodiumAcetate)
    annotation (Placement(transformation(extent={{-20,-40},{0,-20}},rotation=0)));
  Boolean supercooledPhaseIsUnstable;
equation
  h = hInitial - 5e3*time;
  p = 1e5;
  if (sleSodiumAcetateSupercooling.T>sleSodiumAcetateSupercooling.TSupercoolingLimit) then
    supercooledPhaseIsUnstable = true;
  else
    supercooledPhaseIsUnstable = false;
  end if;

  annotation (experiment(StopTime=100), experimentSetupOutput);
end TestSLEMedium;
