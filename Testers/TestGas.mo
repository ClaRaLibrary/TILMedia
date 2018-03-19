within TILMedia.Testers;
model TestGas

  // This tester demonstrates the calculation of therodynamic properties of dry air
  // using the gas objects Gas_ph, Gas_ps and Gas_pT
  // Note: Since the gasType "TILMedia.DryAir" is defined with nc = 1 (Number of compenents),
  // there is no need to define a mass fraction vector xi.
  // In contrast, the tester TILMedia.Testers.TestGas_mixture demonstrates the usage of the gas objects for nc > 1

  SI.Pressure p;
  SI.Temperature T;

  // Instance of the gas object Gas_pT that requires the pressure p and the temperature T as inputs.
  TILMedia.Gas_pT gas1(p=p, T=T,
    redeclare GasTypes.FlueGasTILMedia gasType)
                    annotation (Placement(transformation(extent={{-20,20},{0,40}},
          rotation=0)));

  // Instance of the gas object Gas_ps that requires the pressure p and the specific entropy s as inputs.
  TILMedia.Gas_ps gas2(p=p, s=gas1.s,
    redeclare GasTypes.FlueGasTILMedia gasType)
    annotation (Placement(transformation(extent={{-20,-20},{0,0}})));

  // Instance of a gas object Gas_ph that requires the pressure p and the specific enthalpy h as inputs.
  TILMedia.Gas_ph gas3(p=p, h=gas1.h,
    redeclare GasTypes.FlueGasTILMedia gasType)
    annotation (Placement(transformation(extent={{-20,-60},{0,-40}})));

equation
  p = 1e5;
  T = 274 + 50*time;

end TestGas;
