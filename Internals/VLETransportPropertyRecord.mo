within TILMedia.Internals;
record VLETransportPropertyRecord "Transport property record"
   extends .TILMedia.Internals.ClassTypes.Record;
  SI.PrandtlNumber Pr_l "Prandtl number of liquid phase";
  SI.PrandtlNumber Pr_v "Prandtl number of vapour phase";
  SI.ThermalConductivity lambda_l "Thermal conductivity of liquid phase";
  SI.ThermalConductivity lambda_v "Thermal conductivity of vapour phase";
  SI.DynamicViscosity eta_l(min=-1) "Dynamic viscosity of liquid phase";
  SI.DynamicViscosity eta_v(min=-1) "Dynamic viscosity of vapour phase";

  annotation(defaultComponentName="transp",
    Protection(access=Access.packageDuplicate));
end VLETransportPropertyRecord;
