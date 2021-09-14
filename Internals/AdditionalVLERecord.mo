within TILMedia.Internals;
record AdditionalVLERecord "Additional VLE property record"
   extends TILMedia.Internals.ClassTypes.Record;
  SI.SpecificHeatCapacity cp_l
    "Specific heat capacity cp of liquid phase";
  SI.SpecificHeatCapacity cp_v
    "Specific heat capacity cp of vapour phase";
  SI.LinearExpansionCoefficient beta_l
    "Isobaric expansion coefficient of liquid phase";
  SI.LinearExpansionCoefficient beta_v
    "Isobaric expansion coefficient of vapour phase";
  SI.Compressibility kappa_l
    "Isothermal compressibility of liquid phase";
  SI.Compressibility kappa_v
    "Isothermal compressibility of vapour phase";

annotation (Protection(access=Access.packageDuplicate));
end AdditionalVLERecord;
