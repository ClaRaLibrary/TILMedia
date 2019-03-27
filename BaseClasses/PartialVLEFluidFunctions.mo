within TILMedia.BaseClasses;
package PartialVLEFluidFunctions
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  replaceable function specificEnthalpy_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h "Specific enthalpy";
  end specificEnthalpy_dTxi;

  replaceable function pressure_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p "Pressure";
  end pressure_dTxi;

  replaceable function specificEntropy_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s "Specific entropy";
  end specificEntropy_dTxi;

  replaceable function moleFraction_dTxin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MoleFraction x "Mole fraction";
  end moleFraction_dTxin;

  replaceable function steamMassFraction_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  end steamMassFraction_dTxi;

  replaceable function specificIsobaricHeatCapacity_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  end specificIsobaricHeatCapacity_dTxi;

  replaceable function specificIsochoricHeatCapacity_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  end specificIsochoricHeatCapacity_dTxi;

  replaceable function isobaricThermalExpansionCoefficient_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  end isobaricThermalExpansionCoefficient_dTxi;

  replaceable function isothermalCompressibility_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa "Isothermal compressibility";
  end isothermalCompressibility_dTxi;

  replaceable function speedOfSound_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Velocity w "Speed of sound";
  end speedOfSound_dTxi;

  replaceable function densityDerivativeWRTspecificEnthalpy_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  end densityDerivativeWRTspecificEnthalpy_dTxi;

  replaceable function densityDerivativeWRTpressure_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  end densityDerivativeWRTpressure_dTxi;

  replaceable function densityDerivativeWRTmassFraction_dTxin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  end densityDerivativeWRTmassFraction_dTxin;

  replaceable function heatCapacityRatio_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  end heatCapacityRatio_dTxi;

  replaceable function prandtlNumber_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.PrandtlNumber Pr "Prandtl number";
  end prandtlNumber_dTxi;

  replaceable function thermalConductivity_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  end thermalConductivity_dTxi;

  replaceable function dynamicViscosity_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  end dynamicViscosity_dTxi;

  replaceable function surfaceTension_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SurfaceTension sigma "Surface tension";
  end surfaceTension_dTxi;

  replaceable function liquidDensity_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Density d_l "Density of liquid phase";
  end liquidDensity_dTxi;

  replaceable function vapourDensity_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Density d_v "Density of vapour phase";
  end vapourDensity_dTxi;

  replaceable function liquidSpecificEnthalpy_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  end liquidSpecificEnthalpy_dTxi;

  replaceable function vapourSpecificEnthalpy_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  end vapourSpecificEnthalpy_dTxi;

  replaceable function liquidPressure_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p_l "Pressure of liquid phase";
  end liquidPressure_dTxi;

  replaceable function vapourPressure_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p_v "Pressure of vapour phase";
  end vapourPressure_dTxi;

  replaceable function liquidSpecificEntropy_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  end liquidSpecificEntropy_dTxi;

  replaceable function vapourSpecificEntropy_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  end vapourSpecificEntropy_dTxi;

  replaceable function liquidTemperature_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Temperature T_l "Temperature of liquid phase";
  end liquidTemperature_dTxi;

  replaceable function vapourTemperature_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Temperature T_v "Temperature of vapour phase";
  end vapourTemperature_dTxi;

  replaceable function liquidMassFraction_dTxin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  end liquidMassFraction_dTxin;

  replaceable function vapourMassFraction_dTxin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  end vapourMassFraction_dTxin;

  replaceable function liquidSpecificHeatCapacity_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  end liquidSpecificHeatCapacity_dTxi;

  replaceable function vapourSpecificHeatCapacity_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  end vapourSpecificHeatCapacity_dTxi;

  replaceable function liquidIsobaricThermalExpansionCoefficient_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  end liquidIsobaricThermalExpansionCoefficient_dTxi;

  replaceable function vapourIsobaricThermalExpansionCoefficient_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  end vapourIsobaricThermalExpansionCoefficient_dTxi;

  replaceable function liquidIsothermalCompressibility_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  end liquidIsothermalCompressibility_dTxi;

  replaceable function vapourIsothermalCompressibility_dTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  end vapourIsothermalCompressibility_dTxi;

  replaceable function density_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Density d "Density";
  end density_phxi;

  replaceable function specificEntropy_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s "Specific entropy";
  end specificEntropy_phxi;

  replaceable function temperature_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Temperature T "Temperature";
  end temperature_phxi;

  replaceable function moleFraction_phxin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MoleFraction x "Mole fraction";
  end moleFraction_phxin;

  replaceable function steamMassFraction_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  end steamMassFraction_phxi;

  replaceable function specificIsobaricHeatCapacity_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  end specificIsobaricHeatCapacity_phxi;

  replaceable function specificIsochoricHeatCapacity_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  end specificIsochoricHeatCapacity_phxi;

  replaceable function isobaricThermalExpansionCoefficient_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  end isobaricThermalExpansionCoefficient_phxi;

  replaceable function isothermalCompressibility_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa "Isothermal compressibility";
  end isothermalCompressibility_phxi;

  replaceable function speedOfSound_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Velocity w "Speed of sound";
  end speedOfSound_phxi;

  replaceable function densityDerivativeWRTspecificEnthalpy_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  end densityDerivativeWRTspecificEnthalpy_phxi;

  replaceable function densityDerivativeWRTpressure_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  end densityDerivativeWRTpressure_phxi;

  replaceable function densityDerivativeWRTmassFraction_phxin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  end densityDerivativeWRTmassFraction_phxin;

  replaceable function heatCapacityRatio_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  end heatCapacityRatio_phxi;

  replaceable function prandtlNumber_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.PrandtlNumber Pr "Prandtl number";
  end prandtlNumber_phxi;

  replaceable function thermalConductivity_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  end thermalConductivity_phxi;

  replaceable function dynamicViscosity_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  end dynamicViscosity_phxi;

  replaceable function surfaceTension_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SurfaceTension sigma "Surface tension";
  end surfaceTension_phxi;

  replaceable function liquidDensity_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Density d_l "Density of liquid phase";
  end liquidDensity_phxi;

  replaceable function vapourDensity_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Density d_v "Density of vapour phase";
  end vapourDensity_phxi;

  replaceable function liquidSpecificEnthalpy_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  end liquidSpecificEnthalpy_phxi;

  replaceable function vapourSpecificEnthalpy_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  end vapourSpecificEnthalpy_phxi;

  replaceable function liquidSpecificEntropy_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  end liquidSpecificEntropy_phxi;

  replaceable function vapourSpecificEntropy_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  end vapourSpecificEntropy_phxi;

  replaceable function liquidTemperature_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Temperature T_l "Temperature of liquid phase";
  end liquidTemperature_phxi;

  replaceable function vapourTemperature_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Temperature T_v "Temperature of vapour phase";
  end vapourTemperature_phxi;

  replaceable function liquidMassFraction_phxin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  end liquidMassFraction_phxin;

  replaceable function vapourMassFraction_phxin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  end vapourMassFraction_phxin;

  replaceable function liquidSpecificHeatCapacity_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  end liquidSpecificHeatCapacity_phxi;

  replaceable function vapourSpecificHeatCapacity_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  end vapourSpecificHeatCapacity_phxi;

  replaceable function liquidIsobaricThermalExpansionCoefficient_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  end liquidIsobaricThermalExpansionCoefficient_phxi;

  replaceable function vapourIsobaricThermalExpansionCoefficient_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  end vapourIsobaricThermalExpansionCoefficient_phxi;

  replaceable function liquidIsothermalCompressibility_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  end liquidIsothermalCompressibility_phxi;

  replaceable function vapourIsothermalCompressibility_phxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  end vapourIsothermalCompressibility_phxi;

  replaceable function density_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Density d "Density";
  end density_psxi;

  replaceable function specificEnthalpy_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h "Specific enthalpy";
  end specificEnthalpy_psxi;

  replaceable function temperature_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Temperature T "Temperature";
  end temperature_psxi;

  replaceable function moleFraction_psxin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MoleFraction x "Mole fraction";
  end moleFraction_psxin;

  replaceable function steamMassFraction_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  end steamMassFraction_psxi;

  replaceable function specificIsobaricHeatCapacity_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  end specificIsobaricHeatCapacity_psxi;

  replaceable function specificIsochoricHeatCapacity_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  end specificIsochoricHeatCapacity_psxi;

  replaceable function isobaricThermalExpansionCoefficient_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  end isobaricThermalExpansionCoefficient_psxi;

  replaceable function isothermalCompressibility_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa "Isothermal compressibility";
  end isothermalCompressibility_psxi;

  replaceable function speedOfSound_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Velocity w "Speed of sound";
  end speedOfSound_psxi;

  replaceable function densityDerivativeWRTspecificEnthalpy_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  end densityDerivativeWRTspecificEnthalpy_psxi;

  replaceable function densityDerivativeWRTpressure_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  end densityDerivativeWRTpressure_psxi;

  replaceable function densityDerivativeWRTmassFraction_psxin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  end densityDerivativeWRTmassFraction_psxin;

  replaceable function heatCapacityRatio_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  end heatCapacityRatio_psxi;

  replaceable function prandtlNumber_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.PrandtlNumber Pr "Prandtl number";
  end prandtlNumber_psxi;

  replaceable function thermalConductivity_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  end thermalConductivity_psxi;

  replaceable function dynamicViscosity_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  end dynamicViscosity_psxi;

  replaceable function surfaceTension_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SurfaceTension sigma "Surface tension";
  end surfaceTension_psxi;

  replaceable function liquidDensity_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Density d_l "Density of liquid phase";
  end liquidDensity_psxi;

  replaceable function vapourDensity_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Density d_v "Density of vapour phase";
  end vapourDensity_psxi;

  replaceable function liquidSpecificEnthalpy_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  end liquidSpecificEnthalpy_psxi;

  replaceable function vapourSpecificEnthalpy_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  end vapourSpecificEnthalpy_psxi;

  replaceable function liquidSpecificEntropy_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  end liquidSpecificEntropy_psxi;

  replaceable function vapourSpecificEntropy_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  end vapourSpecificEntropy_psxi;

  replaceable function liquidTemperature_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Temperature T_l "Temperature of liquid phase";
  end liquidTemperature_psxi;

  replaceable function vapourTemperature_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Temperature T_v "Temperature of vapour phase";
  end vapourTemperature_psxi;

  replaceable function liquidMassFraction_psxin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  end liquidMassFraction_psxin;

  replaceable function vapourMassFraction_psxin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  end vapourMassFraction_psxin;

  replaceable function liquidSpecificHeatCapacity_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  end liquidSpecificHeatCapacity_psxi;

  replaceable function vapourSpecificHeatCapacity_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  end vapourSpecificHeatCapacity_psxi;

  replaceable function liquidIsobaricThermalExpansionCoefficient_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  end liquidIsobaricThermalExpansionCoefficient_psxi;

  replaceable function vapourIsobaricThermalExpansionCoefficient_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  end vapourIsobaricThermalExpansionCoefficient_psxi;

  replaceable function liquidIsothermalCompressibility_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  end liquidIsothermalCompressibility_psxi;

  replaceable function vapourIsothermalCompressibility_psxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  end vapourIsothermalCompressibility_psxi;

  replaceable function density_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Density d "Density";
  end density_pTxi;

  replaceable function specificEnthalpy_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h "Specific enthalpy";
  end specificEnthalpy_pTxi;

  replaceable function specificEntropy_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s "Specific entropy";
  end specificEntropy_pTxi;

  replaceable function moleFraction_pTxin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MoleFraction x "Mole fraction";
  end moleFraction_pTxin;

  replaceable function steamMassFraction_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  end steamMassFraction_pTxi;

  replaceable function specificIsobaricHeatCapacity_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  end specificIsobaricHeatCapacity_pTxi;

  replaceable function specificIsochoricHeatCapacity_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  end specificIsochoricHeatCapacity_pTxi;

  replaceable function isobaricThermalExpansionCoefficient_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  end isobaricThermalExpansionCoefficient_pTxi;

  replaceable function isothermalCompressibility_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa "Isothermal compressibility";
  end isothermalCompressibility_pTxi;

  replaceable function speedOfSound_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Velocity w "Speed of sound";
  end speedOfSound_pTxi;

  replaceable function densityDerivativeWRTspecificEnthalpy_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  end densityDerivativeWRTspecificEnthalpy_pTxi;

  replaceable function densityDerivativeWRTpressure_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  end densityDerivativeWRTpressure_pTxi;

  replaceable function densityDerivativeWRTmassFraction_pTxin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  end densityDerivativeWRTmassFraction_pTxin;

  replaceable function heatCapacityRatio_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  end heatCapacityRatio_pTxi;

  replaceable function prandtlNumber_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.PrandtlNumber Pr "Prandtl number";
  end prandtlNumber_pTxi;

  replaceable function thermalConductivity_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  end thermalConductivity_pTxi;

  replaceable function dynamicViscosity_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  end dynamicViscosity_pTxi;

  replaceable function surfaceTension_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SurfaceTension sigma "Surface tension";
  end surfaceTension_pTxi;

  replaceable function liquidDensity_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Density d_l "Density of liquid phase";
  end liquidDensity_pTxi;

  replaceable function vapourDensity_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Density d_v "Density of vapour phase";
  end vapourDensity_pTxi;

  replaceable function liquidSpecificEnthalpy_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  end liquidSpecificEnthalpy_pTxi;

  replaceable function vapourSpecificEnthalpy_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  end vapourSpecificEnthalpy_pTxi;

  replaceable function liquidSpecificEntropy_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  end liquidSpecificEntropy_pTxi;

  replaceable function vapourSpecificEntropy_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  end vapourSpecificEntropy_pTxi;

  replaceable function liquidTemperature_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Temperature T_l "Temperature of liquid phase";
  end liquidTemperature_pTxi;

  replaceable function vapourTemperature_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Temperature T_v "Temperature of vapour phase";
  end vapourTemperature_pTxi;

  replaceable function liquidMassFraction_pTxin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  end liquidMassFraction_pTxin;

  replaceable function vapourMassFraction_pTxin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  end vapourMassFraction_pTxin;

  replaceable function liquidSpecificHeatCapacity_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  end liquidSpecificHeatCapacity_pTxi;

  replaceable function vapourSpecificHeatCapacity_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  end vapourSpecificHeatCapacity_pTxi;

  replaceable function liquidIsobaricThermalExpansionCoefficient_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  end liquidIsobaricThermalExpansionCoefficient_pTxi;

  replaceable function vapourIsobaricThermalExpansionCoefficient_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  end vapourIsobaricThermalExpansionCoefficient_pTxi;

  replaceable function liquidIsothermalCompressibility_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  end liquidIsothermalCompressibility_pTxi;

  replaceable function vapourIsothermalCompressibility_pTxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  end vapourIsothermalCompressibility_pTxi;

  replaceable function dewDensity_Txi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Density d_dew "Density at dew point";
  end dewDensity_Txi;

  replaceable function bubbleDensity_Txi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Density d_bubble "Density at bubble point";
  end bubbleDensity_Txi;

  replaceable function dewSpecificEnthalpy_Txi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_dew "Specific enthalpy at dew point";
  end dewSpecificEnthalpy_Txi;

  replaceable function bubbleSpecificEnthalpy_Txi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_bubble "Specific enthalpy at bubble point";
  end bubbleSpecificEnthalpy_Txi;

  replaceable function dewPressure_Txi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p_dew "Pressure at dew point";
  end dewPressure_Txi;

  replaceable function bubblePressure_Txi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p_bubble "Pressure at bubble point";
  end bubblePressure_Txi;

  replaceable function dewSpecificEntropy_Txi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_dew "Specific entropy at dew point";
  end dewSpecificEntropy_Txi;

  replaceable function bubbleSpecificEntropy_Txi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_bubble "Specific entropy at bubble point";
  end bubbleSpecificEntropy_Txi;

  replaceable function dewLiquidMassFraction_Txin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_ldew "Mass fration at dew point";
  end dewLiquidMassFraction_Txin;

  replaceable function bubbleVapourMassFraction_Txin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_vbubble "Mass fration at bubble point";
  end bubbleVapourMassFraction_Txin;

  replaceable function dewSpecificIsobaricHeatCapacity_Txi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_dew "Specific isobaric heat capacity cp at dew point";
  end dewSpecificIsobaricHeatCapacity_Txi;

  replaceable function bubbleSpecificIsobaricHeatCapacity_Txi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_bubble "Specific isobaric heat capacity cp at bubble point";
  end bubbleSpecificIsobaricHeatCapacity_Txi;

  replaceable function dewIsobaricThermalExpansionCoefficient_Txi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_dew "Isobaric thermal expansion coefficient at dew point";
  end dewIsobaricThermalExpansionCoefficient_Txi;

  replaceable function bubbleIsobaricThermalExpansionCoefficient_Txi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_bubble "Isobaric thermal expansion coefficient at bubble point";
  end bubbleIsobaricThermalExpansionCoefficient_Txi;

  replaceable function dewIsothermalCompressibility_Txi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_dew "Isothermal compressibility at dew point";
  end dewIsothermalCompressibility_Txi;

  replaceable function bubbleIsothermalCompressibility_Txi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_bubble "Isothermal compressibility at bubble point";
  end bubbleIsothermalCompressibility_Txi;

  replaceable function dewSpeedOfSound_Txi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Velocity w_dew "Speed of sound at dew point";
  end dewSpeedOfSound_Txi;

  replaceable function bubbleSpeedOfSound_Txi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Velocity w_bubble "Speed of sound at bubble point";
  end bubbleSpeedOfSound_Txi;

  replaceable function dewDensity_pxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Density d_dew "Density at dew point";
  end dewDensity_pxi;

  replaceable function bubbleDensity_pxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Density d_bubble "Density at bubble point";
  end bubbleDensity_pxi;

  replaceable function dewSpecificEnthalpy_pxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_dew "Specific enthalpy at dew point";
  end dewSpecificEnthalpy_pxi;

  replaceable function bubbleSpecificEnthalpy_pxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_bubble "Specific enthalpy at bubble point";
  end bubbleSpecificEnthalpy_pxi;

  replaceable function dewSpecificEntropy_pxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_dew "Specific entropy at dew point";
  end dewSpecificEntropy_pxi;

  replaceable function bubbleSpecificEntropy_pxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_bubble "Specific entropy at bubble point";
  end bubbleSpecificEntropy_pxi;

  replaceable function dewTemperature_pxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Temperature T_dew "Temperature at dew point";
  end dewTemperature_pxi;

  replaceable function bubbleTemperature_pxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Temperature T_bubble "Temperature at bubble point";
  end bubbleTemperature_pxi;

  replaceable function dewLiquidMassFraction_pxin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_ldew "Mass fration at dew point";
  end dewLiquidMassFraction_pxin;

  replaceable function bubbleVapourMassFraction_pxin
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_vbubble "Mass fration at bubble point";
  end bubbleVapourMassFraction_pxin;

  replaceable function dewSpecificIsobaricHeatCapacity_pxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_dew "Specific isobaric heat capacity cp at dew point";
  end dewSpecificIsobaricHeatCapacity_pxi;

  replaceable function bubbleSpecificIsobaricHeatCapacity_pxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_bubble "Specific isobaric heat capacity cp at bubble point";
  end bubbleSpecificIsobaricHeatCapacity_pxi;

  replaceable function dewIsobaricThermalExpansionCoefficient_pxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_dew "Isobaric thermal expansion coefficient at dew point";
  end dewIsobaricThermalExpansionCoefficient_pxi;

  replaceable function bubbleIsobaricThermalExpansionCoefficient_pxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_bubble "Isobaric thermal expansion coefficient at bubble point";
  end bubbleIsobaricThermalExpansionCoefficient_pxi;

  replaceable function dewIsothermalCompressibility_pxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_dew "Isothermal compressibility at dew point";
  end dewIsothermalCompressibility_pxi;

  replaceable function bubbleIsothermalCompressibility_pxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_bubble "Isothermal compressibility at bubble point";
  end bubbleIsothermalCompressibility_pxi;

  replaceable function dewSpeedOfSound_pxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Velocity w_dew "Speed of sound at dew point";
  end dewSpeedOfSound_pxi;

  replaceable function bubbleSpeedOfSound_pxi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Velocity w_bubble "Speed of sound at bubble point";
  end bubbleSpeedOfSound_pxi;

  replaceable function averageMolarMass_xi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.MolarMass M "Average molar mass";
  end averageMolarMass_xi;

  replaceable function criticalDensity_xi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Density dc "Critical density";
  end criticalDensity_xi;

  replaceable function criticalSpecificEnthalpy_xi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy hc "Critical specific enthalpy";
  end criticalSpecificEnthalpy_xi;

  replaceable function criticalPressure_xi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure pc "Critical pressure";
  end criticalPressure_xi;

  replaceable function criticalSpecificEntropy_xi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy sc "Critical specific entropy";
  end criticalSpecificEntropy_xi;

  replaceable function criticalTemperature_xi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Temperature Tc "Critical temperature";
  end criticalTemperature_xi;

  replaceable function criticalSpecificIsobaricHeatCapacity_xi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cpc "Critical specific isobaric heat capacity cp";
  end criticalSpecificIsobaricHeatCapacity_xi;

  replaceable function criticalIsobaricThermalExpansionCoefficient_xi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient betac "Critical isobaric thermal expansion coefficient";
  end criticalIsobaricThermalExpansionCoefficient_xi;

  replaceable function criticalIsothermalCompressibility_xi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappac "Critical isothermal compressibility";
  end criticalIsothermalCompressibility_xi;

  replaceable function criticalThermalConductivity_xi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.ThermalConductivity lambdac "Critical thermal conductivity";
  end criticalThermalConductivity_xi;

  replaceable function criticalDynamicViscosity_xi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.DynamicViscosity etac "Critical dynamic viscosity";
  end criticalDynamicViscosity_xi;

  replaceable function criticalSurfaceTension_xi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.SurfaceTension sigmac "Critical surface tension";
  end criticalSurfaceTension_xi;

  replaceable function cricondenbarTemperature_xi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Temperature T_ccb "";
  end cricondenbarTemperature_xi;

  replaceable function cricondenthermTemperature_xi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.Temperature T_cct "";
  end cricondenthermTemperature_xi;

  replaceable function cricondenbarPressure_xi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p_ccb "";
  end cricondenbarPressure_xi;

  replaceable function cricondenthermPressure_xi
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi = vleFluidType.xi_default "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p_cct "";
  end cricondenthermPressure_xi;

  replaceable function molarMass_n
    extends PartialVLEFluidFunction;
    // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input Integer compNo "Component ID";
    output SI.MolarMass M_i "Molar mass of component i";
  end molarMass_n;
end PartialVLEFluidFunctions;
