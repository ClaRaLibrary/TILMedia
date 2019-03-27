within TILMedia.BaseClasses;
package PartialLiquidObjectFunctions
  "Package for calculation of liquid properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  replaceable partial function specificEntropy_phxi
    extends PartialLiquidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    replaceable input TILMedia.Internals.BasePointer liquidPointer constrainedby
      TILMedia.Internals.BasePointer;
    output SI.SpecificEntropy s "Specific entropy";
  end specificEntropy_phxi;

  replaceable partial function specificEntropy_pTxi
    extends PartialLiquidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    replaceable input TILMedia.Internals.BasePointer liquidPointer constrainedby
      TILMedia.Internals.BasePointer;
    output SI.SpecificEntropy s "Specific entropy";
  end specificEntropy_pTxi;

  replaceable partial function density_Txi
    extends PartialLiquidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    replaceable input TILMedia.Internals.BasePointer liquidPointer constrainedby
      TILMedia.Internals.BasePointer;
    output SI.Density d "Density";
  end density_Txi;

  replaceable partial function specificEnthalpy_Txi
    extends PartialLiquidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    replaceable input TILMedia.Internals.BasePointer liquidPointer constrainedby
      TILMedia.Internals.BasePointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
  end specificEnthalpy_Txi;

  replaceable partial function pressure_Txi
    extends PartialLiquidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    replaceable input TILMedia.Internals.BasePointer liquidPointer constrainedby
      TILMedia.Internals.BasePointer;
    output SI.AbsolutePressure p "Pressure";
  end pressure_Txi;

  replaceable partial function specificIsobaricHeatCapacity_Txi
    extends PartialLiquidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    replaceable input TILMedia.Internals.BasePointer liquidPointer constrainedby
      TILMedia.Internals.BasePointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  end specificIsobaricHeatCapacity_Txi;

  replaceable partial function isobaricThermalExpansionCoefficient_Txi
    extends PartialLiquidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    replaceable input TILMedia.Internals.BasePointer liquidPointer constrainedby
      TILMedia.Internals.BasePointer;
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  end isobaricThermalExpansionCoefficient_Txi;

  replaceable partial function prandtlNumber_Txi
    extends PartialLiquidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    replaceable input TILMedia.Internals.BasePointer liquidPointer constrainedby
      TILMedia.Internals.BasePointer;
    output SI.PrandtlNumber Pr "Prandtl number";
  end prandtlNumber_Txi;

  replaceable partial function thermalConductivity_Txi
    extends PartialLiquidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    replaceable input TILMedia.Internals.BasePointer liquidPointer constrainedby
      TILMedia.Internals.BasePointer;
    output SI.ThermalConductivity lambda "Thermal conductivity";
  end thermalConductivity_Txi;

  replaceable partial function dynamicViscosity_Txi
    extends PartialLiquidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    replaceable input TILMedia.Internals.BasePointer liquidPointer constrainedby
      TILMedia.Internals.BasePointer;
    output SI.DynamicViscosity eta "Dynamic viscosity";
  end dynamicViscosity_Txi;

  replaceable partial function density_hxi
    extends PartialLiquidObjectFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    replaceable input TILMedia.Internals.BasePointer liquidPointer constrainedby
      TILMedia.Internals.BasePointer;
    output SI.Density d "Density";
  end density_hxi;

  replaceable partial function pressure_hxi
    extends PartialLiquidObjectFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    replaceable input TILMedia.Internals.BasePointer liquidPointer constrainedby
      TILMedia.Internals.BasePointer;
    output SI.AbsolutePressure p "Pressure";
  end pressure_hxi;

  replaceable partial function temperature_hxi
    extends PartialLiquidObjectFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    replaceable input TILMedia.Internals.BasePointer liquidPointer constrainedby
      TILMedia.Internals.BasePointer;
    output SI.Temperature T "Temperature";
  end temperature_hxi;

  replaceable partial function specificIsobaricHeatCapacity_hxi
    extends PartialLiquidObjectFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    replaceable input TILMedia.Internals.BasePointer liquidPointer constrainedby
      TILMedia.Internals.BasePointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  end specificIsobaricHeatCapacity_hxi;

  replaceable partial function isobaricThermalExpansionCoefficient_hxi
    extends PartialLiquidObjectFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    replaceable input TILMedia.Internals.BasePointer liquidPointer constrainedby
      TILMedia.Internals.BasePointer;
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  end isobaricThermalExpansionCoefficient_hxi;

  replaceable partial function prandtlNumber_hxi
    extends PartialLiquidObjectFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    replaceable input TILMedia.Internals.BasePointer liquidPointer constrainedby
      TILMedia.Internals.BasePointer;
    output SI.PrandtlNumber Pr "Prandtl number";
  end prandtlNumber_hxi;

  replaceable partial function thermalConductivity_hxi
    extends PartialLiquidObjectFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    replaceable input TILMedia.Internals.BasePointer liquidPointer constrainedby
      TILMedia.Internals.BasePointer;
    output SI.ThermalConductivity lambda "Thermal conductivity";
  end thermalConductivity_hxi;

  replaceable partial function dynamicViscosity_hxi
    extends PartialLiquidObjectFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    replaceable input TILMedia.Internals.BasePointer liquidPointer constrainedby
      TILMedia.Internals.BasePointer;
    output SI.DynamicViscosity eta "Dynamic viscosity";
  end dynamicViscosity_hxi;
end PartialLiquidObjectFunctions;
