within TILMedia.BaseClasses;
package PartialLiquidFunctions
  "Package for calculation of liquid properties with a functional call"
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  replaceable partial function specificEntropy_phxi
    extends PartialLiquidFunction;
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s "Specific entropy";
  end specificEntropy_phxi;

  replaceable partial function specificEntropy_pTxi
    extends PartialLiquidFunction;
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s "Specific entropy";
  end specificEntropy_pTxi;

  replaceable partial function density_Txi
    extends PartialLiquidFunction;
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.Density d "Density";
  end density_Txi;

  replaceable partial function specificEnthalpy_Txi
    extends PartialLiquidFunction;
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h "Specific enthalpy";
  end specificEnthalpy_Txi;

  replaceable partial function pressure_Txi
    extends PartialLiquidFunction;
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p "Pressure";
  end pressure_Txi;

  replaceable partial function specificIsobaricHeatCapacity_Txi
    extends PartialLiquidFunction;
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  end specificIsobaricHeatCapacity_Txi;

  replaceable partial function isobaricThermalExpansionCoefficient_Txi
    extends PartialLiquidFunction;
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
  end isobaricThermalExpansionCoefficient_Txi;

  replaceable partial function prandtlNumber_Txi
    extends PartialLiquidFunction;
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.PrandtlNumber Pr "Prandtl number";
  end prandtlNumber_Txi;

  replaceable partial function thermalConductivity_Txi
    extends PartialLiquidFunction;
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  end thermalConductivity_Txi;

  replaceable partial function dynamicViscosity_Txi
    extends PartialLiquidFunction;
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  end dynamicViscosity_Txi;

  replaceable partial function density_hxi
    extends PartialLiquidFunction;
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.Density d "Density";
  end density_hxi;

  replaceable partial function pressure_hxi
    extends PartialLiquidFunction;
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p "Pressure";
  end pressure_hxi;

  replaceable partial function temperature_hxi
    extends PartialLiquidFunction;
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.Temperature T "Temperature";
  end temperature_hxi;

  replaceable partial function specificIsobaricHeatCapacity_hxi
    extends PartialLiquidFunction;
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  end specificIsobaricHeatCapacity_hxi;

  replaceable partial function isobaricThermalExpansionCoefficient_hxi
    extends PartialLiquidFunction;
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
  end isobaricThermalExpansionCoefficient_hxi;

  replaceable partial function prandtlNumber_hxi
    extends PartialLiquidFunction;
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.PrandtlNumber Pr "Prandtl number";
  end prandtlNumber_hxi;

  replaceable partial function thermalConductivity_hxi
    extends PartialLiquidFunction;
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  end thermalConductivity_hxi;

  replaceable partial function dynamicViscosity_hxi
    extends PartialLiquidFunction;
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  end dynamicViscosity_hxi;
end PartialLiquidFunctions;
