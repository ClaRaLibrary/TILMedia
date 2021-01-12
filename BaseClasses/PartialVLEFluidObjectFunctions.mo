within TILMedia.BaseClasses;
package PartialVLEFluidObjectFunctions
  "Package for calculation of VLEFluid properties with a functional call"
  extends .TILMedia.Internals.ClassTypes.ModelPackage;

  replaceable partial function specificEnthalpy_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
  end specificEnthalpy_dTxi;
  replaceable partial function pressure_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.AbsolutePressure p "Pressure";
  end pressure_dTxi;
  replaceable partial function specificEntropy_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s "Specific entropy";
  end specificEntropy_dTxi;
  replaceable partial function moleFraction_dTxin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MoleFraction x "Mole fraction";
  end moleFraction_dTxin;
  replaceable partial function steamMassFraction_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  end steamMassFraction_dTxi;
  replaceable partial function specificIsobaricHeatCapacity_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  end specificIsobaricHeatCapacity_dTxi;
  replaceable partial function specificIsochoricHeatCapacity_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  end specificIsochoricHeatCapacity_dTxi;
  replaceable partial function isobaricThermalExpansionCoefficient_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  end isobaricThermalExpansionCoefficient_dTxi;
  replaceable partial function isothermalCompressibility_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa "Isothermal compressibility";
  end isothermalCompressibility_dTxi;
  replaceable partial function speedOfSound_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Velocity w "Speed of sound";
  end speedOfSound_dTxi;
  replaceable partial function densityDerivativeWRTspecificEnthalpy_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  end densityDerivativeWRTspecificEnthalpy_dTxi;
  replaceable partial function densityDerivativeWRTpressure_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  end densityDerivativeWRTpressure_dTxi;
  replaceable partial function densityDerivativeWRTmassFraction_dTxin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  end densityDerivativeWRTmassFraction_dTxin;
  replaceable partial function heatCapacityRatio_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  end heatCapacityRatio_dTxi;
  replaceable partial function prandtlNumber_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
  end prandtlNumber_dTxi;
  replaceable partial function thermalConductivity_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.ThermalConductivity lambda "Thermal conductivity";
  end thermalConductivity_dTxi;
  replaceable partial function dynamicViscosity_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DynamicViscosity eta "Dynamic viscosity";
  end dynamicViscosity_dTxi;
  replaceable partial function surfaceTension_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SurfaceTension sigma "Surface tension";
  end surfaceTension_dTxi;
  replaceable partial function liquidDensity_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_l "Density of liquid phase";
  end liquidDensity_dTxi;
  replaceable partial function vapourDensity_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_v "Density of vapour phase";
  end vapourDensity_dTxi;
  replaceable partial function liquidSpecificEnthalpy_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  end liquidSpecificEnthalpy_dTxi;
  replaceable partial function vapourSpecificEnthalpy_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  end vapourSpecificEnthalpy_dTxi;
  replaceable partial function liquidPressure_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.AbsolutePressure p_l "Pressure of liquid phase";
  end liquidPressure_dTxi;
  replaceable partial function vapourPressure_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.AbsolutePressure p_v "Pressure of vapour phase";
  end vapourPressure_dTxi;
  replaceable partial function liquidSpecificEntropy_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  end liquidSpecificEntropy_dTxi;
  replaceable partial function vapourSpecificEntropy_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  end vapourSpecificEntropy_dTxi;
  replaceable partial function liquidMassFraction_dTxin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  end liquidMassFraction_dTxin;
  replaceable partial function vapourMassFraction_dTxin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  end vapourMassFraction_dTxin;
  replaceable partial function liquidSpecificHeatCapacity_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  end liquidSpecificHeatCapacity_dTxi;
  replaceable partial function vapourSpecificHeatCapacity_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  end vapourSpecificHeatCapacity_dTxi;
  replaceable partial function liquidIsobaricThermalExpansionCoefficient_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  end liquidIsobaricThermalExpansionCoefficient_dTxi;
  replaceable partial function vapourIsobaricThermalExpansionCoefficient_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  end vapourIsobaricThermalExpansionCoefficient_dTxi;
  replaceable partial function liquidIsothermalCompressibility_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  end liquidIsothermalCompressibility_dTxi;
  replaceable partial function vapourIsothermalCompressibility_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  end vapourIsothermalCompressibility_dTxi;

  replaceable partial function density_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d "Density";
  end density_phxi;
  replaceable partial function specificEntropy_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s "Specific entropy";
  end specificEntropy_phxi;
  replaceable partial function temperature_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T "Temperature";
  end temperature_phxi;
  replaceable partial function moleFraction_phxin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MoleFraction x "Mole fraction";
  end moleFraction_phxin;
  replaceable partial function steamMassFraction_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  end steamMassFraction_phxi;
  replaceable partial function specificIsobaricHeatCapacity_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  end specificIsobaricHeatCapacity_phxi;
  replaceable partial function specificIsochoricHeatCapacity_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  end specificIsochoricHeatCapacity_phxi;
  replaceable partial function isobaricThermalExpansionCoefficient_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  end isobaricThermalExpansionCoefficient_phxi;
  replaceable partial function isothermalCompressibility_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa "Isothermal compressibility";
  end isothermalCompressibility_phxi;
  replaceable partial function speedOfSound_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Velocity w "Speed of sound";
  end speedOfSound_phxi;
  replaceable partial function densityDerivativeWRTspecificEnthalpy_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  end densityDerivativeWRTspecificEnthalpy_phxi;
  replaceable partial function densityDerivativeWRTpressure_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  end densityDerivativeWRTpressure_phxi;
  replaceable partial function densityDerivativeWRTmassFraction_phxin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  end densityDerivativeWRTmassFraction_phxin;
  replaceable partial function heatCapacityRatio_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  end heatCapacityRatio_phxi;
  replaceable partial function prandtlNumber_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
  end prandtlNumber_phxi;
  replaceable partial function thermalConductivity_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.ThermalConductivity lambda "Thermal conductivity";
  end thermalConductivity_phxi;
  replaceable partial function dynamicViscosity_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DynamicViscosity eta "Dynamic viscosity";
  end dynamicViscosity_phxi;
  replaceable partial function surfaceTension_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SurfaceTension sigma "Surface tension";
  end surfaceTension_phxi;
  replaceable partial function liquidDensity_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_l "Density of liquid phase";
  end liquidDensity_phxi;
  replaceable partial function vapourDensity_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_v "Density of vapour phase";
  end vapourDensity_phxi;
  replaceable partial function liquidSpecificEnthalpy_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  end liquidSpecificEnthalpy_phxi;
  replaceable partial function vapourSpecificEnthalpy_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  end vapourSpecificEnthalpy_phxi;
  replaceable partial function liquidSpecificEntropy_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  end liquidSpecificEntropy_phxi;
  replaceable partial function vapourSpecificEntropy_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  end vapourSpecificEntropy_phxi;
  replaceable partial function liquidTemperature_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_l "Temperature of liquid phase";
  end liquidTemperature_phxi;
  replaceable partial function vapourTemperature_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_v "Temperature of vapour phase";
  end vapourTemperature_phxi;
  replaceable partial function liquidMassFraction_phxin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  end liquidMassFraction_phxin;
  replaceable partial function vapourMassFraction_phxin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  end vapourMassFraction_phxin;
  replaceable partial function liquidSpecificHeatCapacity_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  end liquidSpecificHeatCapacity_phxi;
  replaceable partial function vapourSpecificHeatCapacity_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  end vapourSpecificHeatCapacity_phxi;
  replaceable partial function liquidIsobaricThermalExpansionCoefficient_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  end liquidIsobaricThermalExpansionCoefficient_phxi;
  replaceable partial function vapourIsobaricThermalExpansionCoefficient_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  end vapourIsobaricThermalExpansionCoefficient_phxi;
  replaceable partial function liquidIsothermalCompressibility_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  end liquidIsothermalCompressibility_phxi;
  replaceable partial function vapourIsothermalCompressibility_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  end vapourIsothermalCompressibility_phxi;

  replaceable partial function density_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d "Density";
  end density_psxi;
  replaceable partial function specificEnthalpy_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
  end specificEnthalpy_psxi;
  replaceable partial function temperature_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T "Temperature";
  end temperature_psxi;
  replaceable partial function moleFraction_psxin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MoleFraction x "Mole fraction";
  end moleFraction_psxin;
  replaceable partial function steamMassFraction_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  end steamMassFraction_psxi;
  replaceable partial function specificIsobaricHeatCapacity_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  end specificIsobaricHeatCapacity_psxi;
  replaceable partial function specificIsochoricHeatCapacity_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  end specificIsochoricHeatCapacity_psxi;
  replaceable partial function isobaricThermalExpansionCoefficient_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  end isobaricThermalExpansionCoefficient_psxi;
  replaceable partial function isothermalCompressibility_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa "Isothermal compressibility";
  end isothermalCompressibility_psxi;
  replaceable partial function speedOfSound_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Velocity w "Speed of sound";
  end speedOfSound_psxi;
  replaceable partial function densityDerivativeWRTspecificEnthalpy_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  end densityDerivativeWRTspecificEnthalpy_psxi;
  replaceable partial function densityDerivativeWRTpressure_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  end densityDerivativeWRTpressure_psxi;
  replaceable partial function densityDerivativeWRTmassFraction_psxin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  end densityDerivativeWRTmassFraction_psxin;
  replaceable partial function heatCapacityRatio_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  end heatCapacityRatio_psxi;
  replaceable partial function prandtlNumber_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
  end prandtlNumber_psxi;
  replaceable partial function thermalConductivity_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.ThermalConductivity lambda "Thermal conductivity";
  end thermalConductivity_psxi;
  replaceable partial function dynamicViscosity_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DynamicViscosity eta "Dynamic viscosity";
  end dynamicViscosity_psxi;
  replaceable partial function surfaceTension_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SurfaceTension sigma "Surface tension";
  end surfaceTension_psxi;
  replaceable partial function liquidDensity_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_l "Density of liquid phase";
  end liquidDensity_psxi;
  replaceable partial function vapourDensity_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_v "Density of vapour phase";
  end vapourDensity_psxi;
  replaceable partial function liquidSpecificEnthalpy_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  end liquidSpecificEnthalpy_psxi;
  replaceable partial function vapourSpecificEnthalpy_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  end vapourSpecificEnthalpy_psxi;
  replaceable partial function liquidSpecificEntropy_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  end liquidSpecificEntropy_psxi;
  replaceable partial function vapourSpecificEntropy_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  end vapourSpecificEntropy_psxi;
  replaceable partial function liquidTemperature_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_l "Temperature of liquid phase";
  end liquidTemperature_psxi;
  replaceable partial function vapourTemperature_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_v "Temperature of vapour phase";
  end vapourTemperature_psxi;
  replaceable partial function liquidMassFraction_psxin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  end liquidMassFraction_psxin;
  replaceable partial function vapourMassFraction_psxin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  end vapourMassFraction_psxin;
  replaceable partial function liquidSpecificHeatCapacity_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  end liquidSpecificHeatCapacity_psxi;
  replaceable partial function vapourSpecificHeatCapacity_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  end vapourSpecificHeatCapacity_psxi;
  replaceable partial function liquidIsobaricThermalExpansionCoefficient_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  end liquidIsobaricThermalExpansionCoefficient_psxi;
  replaceable partial function vapourIsobaricThermalExpansionCoefficient_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  end vapourIsobaricThermalExpansionCoefficient_psxi;
  replaceable partial function liquidIsothermalCompressibility_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  end liquidIsothermalCompressibility_psxi;
  replaceable partial function vapourIsothermalCompressibility_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  end vapourIsothermalCompressibility_psxi;

  replaceable partial function density_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d "Density";
  end density_pTxi;
  replaceable partial function specificEnthalpy_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
  end specificEnthalpy_pTxi;
  replaceable partial function specificEntropy_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s "Specific entropy";
  end specificEntropy_pTxi;
  replaceable partial function moleFraction_pTxin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MoleFraction x "Mole fraction";
  end moleFraction_pTxin;
  replaceable partial function steamMassFraction_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  end steamMassFraction_pTxi;
  replaceable partial function specificIsobaricHeatCapacity_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  end specificIsobaricHeatCapacity_pTxi;
  replaceable partial function specificIsochoricHeatCapacity_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  end specificIsochoricHeatCapacity_pTxi;
  replaceable partial function isobaricThermalExpansionCoefficient_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  end isobaricThermalExpansionCoefficient_pTxi;
  replaceable partial function isothermalCompressibility_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa "Isothermal compressibility";
  end isothermalCompressibility_pTxi;
  replaceable partial function speedOfSound_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Velocity w "Speed of sound";
  end speedOfSound_pTxi;
  replaceable partial function densityDerivativeWRTspecificEnthalpy_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  end densityDerivativeWRTspecificEnthalpy_pTxi;
  replaceable partial function densityDerivativeWRTpressure_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  end densityDerivativeWRTpressure_pTxi;
  replaceable partial function densityDerivativeWRTmassFraction_pTxin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  end densityDerivativeWRTmassFraction_pTxin;
  replaceable partial function heatCapacityRatio_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  end heatCapacityRatio_pTxi;
  replaceable partial function prandtlNumber_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
  end prandtlNumber_pTxi;
  replaceable partial function thermalConductivity_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.ThermalConductivity lambda "Thermal conductivity";
  end thermalConductivity_pTxi;
  replaceable partial function dynamicViscosity_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DynamicViscosity eta "Dynamic viscosity";
  end dynamicViscosity_pTxi;
  replaceable partial function surfaceTension_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SurfaceTension sigma "Surface tension";
  end surfaceTension_pTxi;
  replaceable partial function liquidDensity_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_l "Density of liquid phase";
  end liquidDensity_pTxi;
  replaceable partial function vapourDensity_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_v "Density of vapour phase";
  end vapourDensity_pTxi;
  replaceable partial function liquidSpecificEnthalpy_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  end liquidSpecificEnthalpy_pTxi;
  replaceable partial function vapourSpecificEnthalpy_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  end vapourSpecificEnthalpy_pTxi;
  replaceable partial function liquidSpecificEntropy_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  end liquidSpecificEntropy_pTxi;
  replaceable partial function vapourSpecificEntropy_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  end vapourSpecificEntropy_pTxi;
  replaceable partial function liquidTemperature_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_l "Temperature of liquid phase";
  end liquidTemperature_pTxi;
  replaceable partial function vapourTemperature_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_v "Temperature of vapour phase";
  end vapourTemperature_pTxi;
  replaceable partial function liquidMassFraction_pTxin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  end liquidMassFraction_pTxin;
  replaceable partial function vapourMassFraction_pTxin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  end vapourMassFraction_pTxin;
  replaceable partial function liquidSpecificHeatCapacity_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  end liquidSpecificHeatCapacity_pTxi;
  replaceable partial function vapourSpecificHeatCapacity_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  end vapourSpecificHeatCapacity_pTxi;
  replaceable partial function liquidIsobaricThermalExpansionCoefficient_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  end liquidIsobaricThermalExpansionCoefficient_pTxi;
  replaceable partial function vapourIsobaricThermalExpansionCoefficient_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  end vapourIsobaricThermalExpansionCoefficient_pTxi;
  replaceable partial function liquidIsothermalCompressibility_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  end liquidIsothermalCompressibility_pTxi;
  replaceable partial function vapourIsothermalCompressibility_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  end vapourIsothermalCompressibility_pTxi;


  replaceable partial function dewDensity_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_dew "Density at dew point";
  end dewDensity_Txi;
  replaceable partial function bubbleDensity_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_bubble "Density at bubble point";
  end bubbleDensity_Txi;
  replaceable partial function dewSpecificEnthalpy_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_dew "Specific enthalpy at dew point";
  end dewSpecificEnthalpy_Txi;
  replaceable partial function bubbleSpecificEnthalpy_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_bubble "Specific enthalpy at bubble point";
  end bubbleSpecificEnthalpy_Txi;
  replaceable partial function dewPressure_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.AbsolutePressure p_dew "Pressure at dew point";
  end dewPressure_Txi;
  replaceable partial function bubblePressure_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.AbsolutePressure p_bubble "Pressure at bubble point";
  end bubblePressure_Txi;
  replaceable partial function dewSpecificEntropy_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_dew "Specific entropy at dew point";
  end dewSpecificEntropy_Txi;
  replaceable partial function bubbleSpecificEntropy_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_bubble "Specific entropy at bubble point";
  end bubbleSpecificEntropy_Txi;
  replaceable partial function dewLiquidMassFraction_Txin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_ldew "Mass fration at dew point";
  end dewLiquidMassFraction_Txin;
  replaceable partial function bubbleVapourMassFraction_Txin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_vbubble "Mass fration at bubble point";
  end bubbleVapourMassFraction_Txin;
  replaceable partial function dewSpecificIsobaricHeatCapacity_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_dew "Specific isobaric heat capacity cp at dew point";
  end dewSpecificIsobaricHeatCapacity_Txi;
  replaceable partial function bubbleSpecificIsobaricHeatCapacity_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_bubble "Specific isobaric heat capacity cp at bubble point";
  end bubbleSpecificIsobaricHeatCapacity_Txi;
  replaceable partial function dewIsobaricThermalExpansionCoefficient_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_dew "Isobaric thermal expansion coefficient at dew point";
  end dewIsobaricThermalExpansionCoefficient_Txi;
  replaceable partial function bubbleIsobaricThermalExpansionCoefficient_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_bubble "Isobaric thermal expansion coefficient at bubble point";
  end bubbleIsobaricThermalExpansionCoefficient_Txi;
  replaceable partial function dewIsothermalCompressibility_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_dew "Isothermal compressibility at dew point";
  end dewIsothermalCompressibility_Txi;
  replaceable partial function bubbleIsothermalCompressibility_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_bubble "Isothermal compressibility at bubble point";
  end bubbleIsothermalCompressibility_Txi;

  replaceable partial function dewDensity_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_dew "Density at dew point";
  end dewDensity_pxi;
  replaceable partial function bubbleDensity_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_bubble "Density at bubble point";
  end bubbleDensity_pxi;
  replaceable partial function dewSpecificEnthalpy_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_dew "Specific enthalpy at dew point";
  end dewSpecificEnthalpy_pxi;
  replaceable partial function bubbleSpecificEnthalpy_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_bubble "Specific enthalpy at bubble point";
  end bubbleSpecificEnthalpy_pxi;
  replaceable partial function dewSpecificEntropy_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_dew "Specific entropy at dew point";
  end dewSpecificEntropy_pxi;
  replaceable partial function bubbleSpecificEntropy_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_bubble "Specific entropy at bubble point";
  end bubbleSpecificEntropy_pxi;
  replaceable partial function dewTemperature_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_dew "Temperature at dew point";
  end dewTemperature_pxi;
  replaceable partial function bubbleTemperature_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_bubble "Temperature at bubble point";
  end bubbleTemperature_pxi;
  replaceable partial function dewLiquidMassFraction_pxin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_ldew "Mass fration at dew point";
  end dewLiquidMassFraction_pxin;
  replaceable partial function bubbleVapourMassFraction_pxin
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_vbubble "Mass fration at bubble point";
  end bubbleVapourMassFraction_pxin;
  replaceable partial function dewSpecificIsobaricHeatCapacity_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_dew "Specific isobaric heat capacity cp at dew point";
  end dewSpecificIsobaricHeatCapacity_pxi;
  replaceable partial function bubbleSpecificIsobaricHeatCapacity_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_bubble "Specific isobaric heat capacity cp at bubble point";
  end bubbleSpecificIsobaricHeatCapacity_pxi;
  replaceable partial function dewIsobaricThermalExpansionCoefficient_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_dew "Isobaric thermal expansion coefficient at dew point";
  end dewIsobaricThermalExpansionCoefficient_pxi;
  replaceable partial function bubbleIsobaricThermalExpansionCoefficient_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_bubble "Isobaric thermal expansion coefficient at bubble point";
  end bubbleIsobaricThermalExpansionCoefficient_pxi;
  replaceable partial function dewIsothermalCompressibility_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_dew "Isothermal compressibility at dew point";
  end dewIsothermalCompressibility_pxi;
  replaceable partial function bubbleIsothermalCompressibility_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_bubble "Isothermal compressibility at bubble point";
  end bubbleIsothermalCompressibility_pxi;



  replaceable partial function averageMolarMass_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MolarMass M "Average molar mass";
  end averageMolarMass_xi;
  replaceable partial function criticalDensity_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density dc "Critical density";
  end criticalDensity_xi;
  replaceable partial function criticalSpecificEnthalpy_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy hc "Critical specific enthalpy";
  end criticalSpecificEnthalpy_xi;
  replaceable partial function criticalPressure_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.AbsolutePressure pc "Critical pressure";
  end criticalPressure_xi;
  replaceable partial function criticalSpecificEntropy_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy sc "Critical specific entropy";
  end criticalSpecificEntropy_xi;
  replaceable partial function criticalTemperature_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature Tc "Critical temperature";
  end criticalTemperature_xi;
  replaceable partial function criticalSpecificIsobaricHeatCapacity_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cpc "Critical specific isobaric heat capacity cp";
  end criticalSpecificIsobaricHeatCapacity_xi;
  replaceable partial function criticalIsobaricThermalExpansionCoefficient_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient betac "Critical isobaric thermal expansion coefficient";
  end criticalIsobaricThermalExpansionCoefficient_xi;
  replaceable partial function criticalIsothermalCompressibility_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappac "Critical isothermal compressibility";
  end criticalIsothermalCompressibility_xi;
  replaceable partial function criticalThermalConductivity_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.ThermalConductivity lambdac "Critical thermal conductivity";
  end criticalThermalConductivity_xi;
  replaceable partial function criticalDynamicViscosity_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DynamicViscosity etac "Critical dynamic viscosity";
  end criticalDynamicViscosity_xi;
  replaceable partial function criticalSurfaceTension_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SurfaceTension sigmac "Critical surface tension";
  end criticalSurfaceTension_xi;
  replaceable partial function cricondenbarTemperature_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_ccb "";
  end cricondenbarTemperature_xi;
  replaceable partial function cricondenthermTemperature_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_cct "";
  end cricondenthermTemperature_xi;
  replaceable partial function cricondenbarPressure_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.AbsolutePressure p_ccb "";
  end cricondenbarPressure_xi;
  replaceable partial function cricondenthermPressure_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.AbsolutePressure p_cct "";
  end cricondenthermPressure_xi;

  replaceable partial function molarMass_n
    extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input Integer compNo "Component ID";
    input .TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MolarMass M_i "Molar mass of component i";
  end molarMass_n;

end PartialVLEFluidObjectFunctions;
