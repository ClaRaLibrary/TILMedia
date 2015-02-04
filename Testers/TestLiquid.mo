within TILMedia.Testers;
model TestLiquid

  // This tester demonstrates the calculation of thermodynamic properties of water
  // using the liquid objects Liquid_pT and Liquid_ph

  SI.Pressure p;
  SI.Temperature T;

  // Instance of a liquid object that requires the pressure p and the temperature T as inputs.
  TILMedia.Liquid_pT liquid1(
    p=p,
    T=T,
    redeclare TILMedia.LiquidTypes.TILMedia_Water liquidType)
                          annotation (Placement(transformation(extent={{-20,20},{0,40}},
          rotation=0)));
  // Instance of a liquid object that requires the pressure p and the specific enthalpy h as inputs.
  TILMedia.Liquid_ph liquid2(
    p=p,
    h=liquid1.h,
    redeclare TILMedia.LiquidTypes.TILMedia_Water liquidType)
                          annotation (Placement(transformation(extent={{-20,-20},
            {0,0}},
          rotation=0)));

equation
  p = 1e5;
  T = 300 + 50*time;
end TestLiquid;
