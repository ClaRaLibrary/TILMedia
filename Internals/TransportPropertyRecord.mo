within TILMedia.Internals;
record TransportPropertyRecord "Transport property record"
   extends TILMedia.Internals.ClassTypes.Record;
  SI.PrandtlNumber Pr "Prandtl number";
  SI.ThermalConductivity lambda "Thermal conductivity";
  SI.DynamicViscosity eta(min=-1) "Dynamic viscosity";
  SI.SurfaceTension sigma "Surface tension";
  annotation(defaultComponentName="transp",
    Protection(access=Access.packageDuplicate));
end TransportPropertyRecord;
