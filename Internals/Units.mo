within TILMedia.Internals;
package Units "Unit definitions"
extends TILMedia.Internals.ClassTypes.ModelPackage;
  type DensityDerPressure = Real(final unit="kg/(N.m)");
  type DensityDerSpecificEnthalpy = Real(final unit="kg2/(m3.J)");
  type DensityDerMassFraction =     Real(final unit="kg/(m3)");
  type RelativeHumidity = Real(final unit="1", min=0, max=100);
  type SpecificVolumeDerPressure = Real(final unit="m3/(kg.Pa)");
  type SpecificVolumeDerSpecificEnthalpy = Real(final unit="m3/J");
  type SpecificVolumeDerMassFraction =     Real(final unit="m3/kg");
end Units;
