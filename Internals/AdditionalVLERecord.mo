within TILMedia.Internals;
record AdditionalVLERecord "Additional VLE property record"
   extends TILMedia.Internals.ClassTypes.Record;
  Modelica.SIunits.SpecificHeatCapacity cp_l
    "Specific heat capacity cp of liquid phase";
  Modelica.SIunits.SpecificHeatCapacity cp_v
    "Specific heat capacity cp of vapour phase";
  Modelica.SIunits.LinearExpansionCoefficient beta_l
    "Isobaric expansion coefficient of liquid phase";
  Modelica.SIunits.LinearExpansionCoefficient beta_v
    "Isobaric expansion coefficient of vapour phase";
  Modelica.SIunits.Compressibility kappa_l
    "Isothermal compressibility of liquid phase";
  Modelica.SIunits.Compressibility kappa_v
    "Isothermal compressibility of vapour phase";

annotation (Protection(access=Access.packageDuplicate));
end AdditionalVLERecord;
