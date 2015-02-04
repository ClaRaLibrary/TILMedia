within TILMedia.Testers;
model TestSLEMedium

  SI.SpecificEnthalpy h;
  SI.AbsolutePressure p;

  SLEMedium sleSimpleAdBlue(
    redeclare TILMedia.SLEMediumTypes.TILMedia_SimpleAdBlue sleMediumType, p=p, h=h,
    T(start=300))                   annotation (Placement(transformation(
          extent={{-20,40},{0,60}},   rotation=0)));
  SLEMedium sleAdBlue(
    redeclare TILMedia.SLEMediumTypes.TILMedia_AdBlue sleMediumType, p=p, h=h,
    T(start=300))                   annotation (Placement(transformation(
          extent={{-20,0},{0,20}},   rotation=0)));

  SLEMedium sleWater(
    redeclare TILMedia.SLEMediumTypes.TILMedia_SimpleWater sleMediumType, p=p, h=h,
    T(start=300))                   annotation (Placement(transformation(
          extent={{-20,-40},{0,-20}},   rotation=0)));
equation
  h = -10000 + 20000*time;
  p = 1e5;

  annotation (experiment(StopTime=60), experimentSetupOutput);
end TestSLEMedium;
