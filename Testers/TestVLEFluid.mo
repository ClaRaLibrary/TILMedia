within TILMedia.Testers;
model TestVLEFluid

  // This tester demonstrates the calculation of thermodynamic properties of CO2
  // using the VLEFluid objects VLEFluid_ph, VLEFluid_pT, VLEFluid_ps and VLEFluid_dT

  SI.Density d;
  SI.SpecificEnthalpy h;
  SI.Pressure p;
  SI.SpecificEntropy s;
  SI.Temperature T;

  //Instance of a VLEFluid object that requires the pressure p and the specific enthalpy h as inputs
  VLEFluid_ph vleFluid1(p=p, h=h,
    computeVLEAdditionalProperties=false,
    computeVLETransportProperties=false,
    computeTransportProperties=false,
    redeclare VLEFluidTypes.TILMedia_Water vleFluidType)
    annotation (Placement(transformation(extent={{-10,20},{10,40}})));
   // Instance of a VLEFluid object that requires the pressure p and the temperature T as inputs.
   // Note: the input T is calculated from vleFluid1, i.e. T = vleFluid1.T (see equation below).
   // Since the pressure p is the same for vleFluid2 and vleFluid1, the calculation of the thermodynamic properties
   // from vleFluid2 and vleFluid2 yields the same results.
  VLEFluid_pT vleFluid2(p=p, T=T,
    computeVLEAdditionalProperties=false,
    computeVLETransportProperties=false,
    computeTransportProperties=false,
    redeclare VLEFluidTypes.TILMedia_Water vleFluidType)
    annotation (Placement(transformation(extent={{-10,0},{10,20}})));
   //Instance of a VLEFluid object that requires the pressure p and the specific entropy s as inputs
   // Note: the input s is calculated from vleFluid1, i.e. s = vleFluid1.s (see equation below).
  VLEFluid_ps vleFluid3(p=p, s=s,
    computeVLEAdditionalProperties=false,
    computeVLETransportProperties=false,
    computeTransportProperties=false,
    redeclare VLEFluidTypes.TILMedia_Water vleFluidType)
    annotation (Placement(transformation(extent={{-10,-20},{10,0}})));
   //Instance of a VLEFluid object that requires the density d and the temperature T as inputs
   // Note: the input d is calculated from vleFluid1, i.e. d = vleFluid1.d (see equation below).
  VLEFluid_dT vleFluid4(d=d, T=T,
    computeVLEAdditionalProperties=false,
    computeVLETransportProperties=false,
    computeTransportProperties=false,
    redeclare VLEFluidTypes.TILMedia_Water vleFluidType)
    annotation (Placement(transformation(extent={{-10,-40},{10,-20}})));

equation
  p=100e5+11e5*time;
  h=200e3+300e3*time;

  T=vleFluid1.T;
  s=vleFluid1.s;
  d=vleFluid1.d;

end TestVLEFluid;
