within TILMedia.Internals;
record TransportPropertyRecord "Transport property record"
   extends TILMedia.Internals.ClassTypes.Record;
  Modelica.SIunits.PrandtlNumber Pr "Prandtl number";
  Modelica.SIunits.ThermalConductivity lambda "Thermal conductivity";
  Modelica.SIunits.DynamicViscosity eta(min=-1) "Dynamic viscosity";
  Modelica.SIunits.SurfaceTension sigma "Surface tension";
  annotation(defaultComponentName="transp",
    Protection(access=Access.packageDuplicate));
end TransportPropertyRecord;
