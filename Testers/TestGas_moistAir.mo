within TILMedia.Testers;
model TestGas_moistAir
  extends TILMedia.Internals.ClassTypes.ExampleModel;

  SI.Pressure p;
  SI.SpecificEnthalpy h;

  Real xi1[moistAir1.gasType.nc - 1];
  // Instance of a gas object that requires the pressure p and the specific enthalpy as inputs.
  Gas_ph moistAir1(
    p=p,
    h=h,
    xi=xi1,
    redeclare TILMedia.GasTypes.VDI4670_MoistAir gasType)
                    annotation (Placement(transformation(extent={{-20,60},{0,80}},
                  rotation=0)));

  Real xi2[moistAir2.gasType.nc - 1];
   // Instance of a gas object that requires the pressure p and the temperature T as inputs.
  Gas_pT moistAir2(
    p=p,
    T=moistAir1.T,
    xi=xi2,
    redeclare TILMedia.GasTypes.VDI4670_MoistAir gasType)
                    annotation (Placement(transformation(extent={{-20,20},{0,40}},
                  rotation=0)));
equation
  p = 1e5;
  h = 1e4+time*2e4;
  xi1[1] = 0.003;

  moistAir2.phi = 90;

  annotation (experiment(StopTime=1));
end TestGas_moistAir;
