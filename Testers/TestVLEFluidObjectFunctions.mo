within TILMedia.Testers;
model TestVLEFluidObjectFunctions
  extends TILMedia.Internals.ClassTypes.ExampleModel;

  // This tester demonstrates the usage of the VLEFluidFunctions the VLEFluid class and the VLEFluidObjectFunctions
  // The VLEFluidFunctions uses external c-functions and should only be used for the calculation of start and initial values
  // The VLEFluid class and VLEFluidObjectFunctions uses external c-classes and
  // are optimized for the continuous calculation of the thermodynamic properties

  SI.Pressure p;
  SI.SpecificEnthalpy h(start = h_start, fixed=true);
  SI.Density d;
  SI.Velocity w;
  SI.Temperature T;
  SI.Temperature T1;
  SI.Velocity w2;

  SI.MassFraction xi[vleFluidType.nc-1];

  // Record which defines the VLEFluid (see User's Guide -> Substance Record)
  parameter TILMedia.VLEFluidTypes.TILMedia_CO2 vleFluidType;

  // Start values for the the temperature
  parameter SI.Temperature T_start = 273.15+20;
  parameter SI.Pressure p_start = 4e6;

  // A start value for the enthalpy can be calculated
  // either by using VLEFluidFuctions.specificEnthalpy_pTxi:
  parameter Real h_start = TILMedia.VLEFluidFunctions.specificEnthalpy_pTxi(vleFluidType,  p_start, T_start);
  // or by using the vleFluid instance:
  parameter Real T_startValue = vleFluid.T_phxi(13e5, 300e3, zeros(0));
  // xi does not exist for a pure substance like CO2, because the array of mass fractions has the size nc-1.
  // Therefore xi is set to zeros(0).

  // Instance of a VLEFluid object that requires the vleFluidType as input.
  VLEFluid vleFluid(vleFluidType=vleFluidType)
    annotation (Placement(transformation(extent={{-10,-12},{10,8}})));

  VLEFluid vleFluid2(vleFluidType=vleFluidType)
    annotation (Placement(transformation(extent={{20,-12},{40,8}})));
equation
  p = 4e6;
  der(h) = -h/(1+time);

  // Continuous calculation of the density d and the temperature T in dependence of the pressure p and the specific enthalpy h
  // The vleFluid instance is using an external object with the pointer vleFluid.vleFluidPointer.
  // One vleFluid instance or vleFluidPointer should only be used for one continuously changing thermodynamic state, to improve the caching performance.
  // Due the caching of previous calculated results, these objects are very efficient in the continuous calculation of the property data.
  d = vleFluid.d_phxi(p, h, xi);
  T = vleFluid.T_phxi(p, h, xi);

  // The continuous calculation of the speed of sound w and the temperature T1 can also be done with VLEFluidObjectFunctions.
  // These functions refer to an external object with the pointer vleFluid.vleFluidPointer.
  w = TILMedia.VLEFluidObjectFunctions.speedOfSound_dTxi(d, T, xi, vleFluid.vleFluidPointer);
  T1 = TILMedia.VLEFluidObjectFunctions.temperature_phxi(p, h, xi, vleFluid.vleFluidPointer);
  // T1 = T
  // The speed of sound w2 differs to the state point and calculations before.
  // Therefore is a new pointer needed.
  w2 = TILMedia.VLEFluidObjectFunctions.speedOfSound_phxi(30e5, h_start, xi, vleFluid2.vleFluidPointer);

  // Equivalent calculations are possible for Gas and Liquid.

  annotation (experiment(StopTime=2));
end TestVLEFluidObjectFunctions;
