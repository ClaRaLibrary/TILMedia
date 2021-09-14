within TILMedia.BaseClasses;
package PartialVLEFluidObjectFunctionPrototypes
  "Package for calculation of VLEFluid properties with a functional call"
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  partial function specificEnthalpy_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
  end specificEnthalpy_dTxi;
  partial function pressure_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.AbsolutePressure p "Pressure";
  end pressure_dTxi;
  partial function specificEntropy_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s "Specific entropy";
  end specificEntropy_dTxi;
  partial function moleFraction_dTxin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MoleFraction x "Mole fraction";
  end moleFraction_dTxin;
  partial function steamMassFraction_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  end steamMassFraction_dTxi;
  partial function specificIsobaricHeatCapacity_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  end specificIsobaricHeatCapacity_dTxi;
  partial function specificIsochoricHeatCapacity_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  end specificIsochoricHeatCapacity_dTxi;
  partial function isobaricThermalExpansionCoefficient_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  end isobaricThermalExpansionCoefficient_dTxi;
  partial function isothermalCompressibility_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa "Isothermal compressibility";
  end isothermalCompressibility_dTxi;
  partial function speedOfSound_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Velocity w "Speed of sound";
  end speedOfSound_dTxi;
  partial function densityDerivativeWRTspecificEnthalpy_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  end densityDerivativeWRTspecificEnthalpy_dTxi;
  partial function densityDerivativeWRTpressure_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  end densityDerivativeWRTpressure_dTxi;
  partial function densityDerivativeWRTmassFraction_dTxin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  end densityDerivativeWRTmassFraction_dTxin;
  partial function heatCapacityRatio_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  end heatCapacityRatio_dTxi;
  partial function prandtlNumber_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
  end prandtlNumber_dTxi;
  partial function thermalConductivity_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.ThermalConductivity lambda "Thermal conductivity";
  end thermalConductivity_dTxi;
  partial function dynamicViscosity_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DynamicViscosity eta "Dynamic viscosity";
  end dynamicViscosity_dTxi;
  partial function surfaceTension_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SurfaceTension sigma "Surface tension";
  end surfaceTension_dTxi;
  partial function liquidDensity_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_l "Density of liquid phase";
  end liquidDensity_dTxi;
  partial function vapourDensity_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_v "Density of vapour phase";
  end vapourDensity_dTxi;
  partial function liquidSpecificEnthalpy_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  end liquidSpecificEnthalpy_dTxi;
  partial function vapourSpecificEnthalpy_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  end vapourSpecificEnthalpy_dTxi;
  partial function liquidPressure_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.AbsolutePressure p_l "Pressure of liquid phase";
  end liquidPressure_dTxi;
  partial function vapourPressure_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.AbsolutePressure p_v "Pressure of vapour phase";
  end vapourPressure_dTxi;
  partial function liquidSpecificEntropy_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  end liquidSpecificEntropy_dTxi;
  partial function vapourSpecificEntropy_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  end vapourSpecificEntropy_dTxi;
  partial function liquidMassFraction_dTxin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  end liquidMassFraction_dTxin;
  partial function vapourMassFraction_dTxin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  end vapourMassFraction_dTxin;
  partial function liquidSpecificHeatCapacity_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  end liquidSpecificHeatCapacity_dTxi;
  partial function vapourSpecificHeatCapacity_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  end vapourSpecificHeatCapacity_dTxi;
  partial function liquidIsobaricThermalExpansionCoefficient_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  end liquidIsobaricThermalExpansionCoefficient_dTxi;
  partial function vapourIsobaricThermalExpansionCoefficient_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  end vapourIsobaricThermalExpansionCoefficient_dTxi;
  partial function liquidIsothermalCompressibility_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  end liquidIsothermalCompressibility_dTxi;
  partial function vapourIsothermalCompressibility_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  end vapourIsothermalCompressibility_dTxi;

  partial function density_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d "Density";
  end density_phxi;
  partial function specificEntropy_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s "Specific entropy";
  end specificEntropy_phxi;
  partial function temperature_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T "Temperature";
  end temperature_phxi;
  partial function moleFraction_phxin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MoleFraction x "Mole fraction";
  end moleFraction_phxin;
  partial function steamMassFraction_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  end steamMassFraction_phxi;
  partial function specificIsobaricHeatCapacity_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  end specificIsobaricHeatCapacity_phxi;
  partial function specificIsochoricHeatCapacity_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  end specificIsochoricHeatCapacity_phxi;
  partial function isobaricThermalExpansionCoefficient_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  end isobaricThermalExpansionCoefficient_phxi;
  partial function isothermalCompressibility_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa "Isothermal compressibility";
  end isothermalCompressibility_phxi;
  partial function speedOfSound_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Velocity w "Speed of sound";
  end speedOfSound_phxi;
  partial function densityDerivativeWRTspecificEnthalpy_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  end densityDerivativeWRTspecificEnthalpy_phxi;
  partial function densityDerivativeWRTpressure_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  end densityDerivativeWRTpressure_phxi;
  partial function densityDerivativeWRTmassFraction_phxin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  end densityDerivativeWRTmassFraction_phxin;
  partial function heatCapacityRatio_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  end heatCapacityRatio_phxi;
  partial function prandtlNumber_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
  end prandtlNumber_phxi;
  partial function thermalConductivity_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.ThermalConductivity lambda "Thermal conductivity";
  end thermalConductivity_phxi;
  partial function dynamicViscosity_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DynamicViscosity eta "Dynamic viscosity";
  end dynamicViscosity_phxi;
  partial function surfaceTension_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SurfaceTension sigma "Surface tension";
  end surfaceTension_phxi;
  partial function liquidDensity_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_l "Density of liquid phase";
  end liquidDensity_phxi;
  partial function vapourDensity_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_v "Density of vapour phase";
  end vapourDensity_phxi;
  partial function liquidSpecificEnthalpy_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  end liquidSpecificEnthalpy_phxi;
  partial function vapourSpecificEnthalpy_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  end vapourSpecificEnthalpy_phxi;
  partial function liquidSpecificEntropy_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  end liquidSpecificEntropy_phxi;
  partial function vapourSpecificEntropy_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  end vapourSpecificEntropy_phxi;
  partial function liquidTemperature_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_l "Temperature of liquid phase";
  end liquidTemperature_phxi;
  partial function vapourTemperature_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_v "Temperature of vapour phase";
  end vapourTemperature_phxi;
  partial function liquidMassFraction_phxin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  end liquidMassFraction_phxin;
  partial function vapourMassFraction_phxin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  end vapourMassFraction_phxin;
  partial function liquidSpecificHeatCapacity_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  end liquidSpecificHeatCapacity_phxi;
  partial function vapourSpecificHeatCapacity_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  end vapourSpecificHeatCapacity_phxi;
  partial function liquidIsobaricThermalExpansionCoefficient_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  end liquidIsobaricThermalExpansionCoefficient_phxi;
  partial function vapourIsobaricThermalExpansionCoefficient_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  end vapourIsobaricThermalExpansionCoefficient_phxi;
  partial function liquidIsothermalCompressibility_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  end liquidIsothermalCompressibility_phxi;
  partial function vapourIsothermalCompressibility_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  end vapourIsothermalCompressibility_phxi;

  partial function density_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d "Density";
  end density_psxi;
  partial function specificEnthalpy_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
  end specificEnthalpy_psxi;
  partial function temperature_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T "Temperature";
  end temperature_psxi;
  partial function moleFraction_psxin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MoleFraction x "Mole fraction";
  end moleFraction_psxin;
  partial function steamMassFraction_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  end steamMassFraction_psxi;
  partial function specificIsobaricHeatCapacity_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  end specificIsobaricHeatCapacity_psxi;
  partial function specificIsochoricHeatCapacity_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  end specificIsochoricHeatCapacity_psxi;
  partial function isobaricThermalExpansionCoefficient_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  end isobaricThermalExpansionCoefficient_psxi;
  partial function isothermalCompressibility_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa "Isothermal compressibility";
  end isothermalCompressibility_psxi;
  partial function speedOfSound_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Velocity w "Speed of sound";
  end speedOfSound_psxi;
  partial function densityDerivativeWRTspecificEnthalpy_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  end densityDerivativeWRTspecificEnthalpy_psxi;
  partial function densityDerivativeWRTpressure_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  end densityDerivativeWRTpressure_psxi;
  partial function densityDerivativeWRTmassFraction_psxin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  end densityDerivativeWRTmassFraction_psxin;
  partial function heatCapacityRatio_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  end heatCapacityRatio_psxi;
  partial function prandtlNumber_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
  end prandtlNumber_psxi;
  partial function thermalConductivity_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.ThermalConductivity lambda "Thermal conductivity";
  end thermalConductivity_psxi;
  partial function dynamicViscosity_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DynamicViscosity eta "Dynamic viscosity";
  end dynamicViscosity_psxi;
  partial function surfaceTension_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SurfaceTension sigma "Surface tension";
  end surfaceTension_psxi;
  partial function liquidDensity_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_l "Density of liquid phase";
  end liquidDensity_psxi;
  partial function vapourDensity_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_v "Density of vapour phase";
  end vapourDensity_psxi;
  partial function liquidSpecificEnthalpy_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  end liquidSpecificEnthalpy_psxi;
  partial function vapourSpecificEnthalpy_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  end vapourSpecificEnthalpy_psxi;
  partial function liquidSpecificEntropy_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  end liquidSpecificEntropy_psxi;
  partial function vapourSpecificEntropy_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  end vapourSpecificEntropy_psxi;
  partial function liquidTemperature_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_l "Temperature of liquid phase";
  end liquidTemperature_psxi;
  partial function vapourTemperature_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_v "Temperature of vapour phase";
  end vapourTemperature_psxi;
  partial function liquidMassFraction_psxin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  end liquidMassFraction_psxin;
  partial function vapourMassFraction_psxin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  end vapourMassFraction_psxin;
  partial function liquidSpecificHeatCapacity_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  end liquidSpecificHeatCapacity_psxi;
  partial function vapourSpecificHeatCapacity_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  end vapourSpecificHeatCapacity_psxi;
  partial function liquidIsobaricThermalExpansionCoefficient_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  end liquidIsobaricThermalExpansionCoefficient_psxi;
  partial function vapourIsobaricThermalExpansionCoefficient_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  end vapourIsobaricThermalExpansionCoefficient_psxi;
  partial function liquidIsothermalCompressibility_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  end liquidIsothermalCompressibility_psxi;
  partial function vapourIsothermalCompressibility_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  end vapourIsothermalCompressibility_psxi;

  partial function density_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d "Density";
  end density_pTxi;
  partial function specificEnthalpy_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
  end specificEnthalpy_pTxi;
  partial function specificEntropy_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s "Specific entropy";
  end specificEntropy_pTxi;
  partial function moleFraction_pTxin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MoleFraction x "Mole fraction";
  end moleFraction_pTxin;
  partial function steamMassFraction_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  end steamMassFraction_pTxi;
  partial function specificIsobaricHeatCapacity_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  end specificIsobaricHeatCapacity_pTxi;
  partial function specificIsochoricHeatCapacity_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  end specificIsochoricHeatCapacity_pTxi;
  partial function isobaricThermalExpansionCoefficient_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  end isobaricThermalExpansionCoefficient_pTxi;
  partial function isothermalCompressibility_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa "Isothermal compressibility";
  end isothermalCompressibility_pTxi;
  partial function speedOfSound_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Velocity w "Speed of sound";
  end speedOfSound_pTxi;
  partial function densityDerivativeWRTspecificEnthalpy_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  end densityDerivativeWRTspecificEnthalpy_pTxi;
  partial function densityDerivativeWRTpressure_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  end densityDerivativeWRTpressure_pTxi;
  partial function densityDerivativeWRTmassFraction_pTxin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  end densityDerivativeWRTmassFraction_pTxin;
  partial function heatCapacityRatio_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  end heatCapacityRatio_pTxi;
  partial function prandtlNumber_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
  end prandtlNumber_pTxi;
  partial function thermalConductivity_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.ThermalConductivity lambda "Thermal conductivity";
  end thermalConductivity_pTxi;
  partial function dynamicViscosity_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DynamicViscosity eta "Dynamic viscosity";
  end dynamicViscosity_pTxi;
  partial function surfaceTension_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SurfaceTension sigma "Surface tension";
  end surfaceTension_pTxi;
  partial function liquidDensity_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_l "Density of liquid phase";
  end liquidDensity_pTxi;
  partial function vapourDensity_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_v "Density of vapour phase";
  end vapourDensity_pTxi;
  partial function liquidSpecificEnthalpy_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  end liquidSpecificEnthalpy_pTxi;
  partial function vapourSpecificEnthalpy_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  end vapourSpecificEnthalpy_pTxi;
  partial function liquidSpecificEntropy_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  end liquidSpecificEntropy_pTxi;
  partial function vapourSpecificEntropy_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  end vapourSpecificEntropy_pTxi;
  partial function liquidTemperature_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_l "Temperature of liquid phase";
  end liquidTemperature_pTxi;
  partial function vapourTemperature_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_v "Temperature of vapour phase";
  end vapourTemperature_pTxi;
  partial function liquidMassFraction_pTxin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  end liquidMassFraction_pTxin;
  partial function vapourMassFraction_pTxin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  end vapourMassFraction_pTxin;
  partial function liquidSpecificHeatCapacity_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  end liquidSpecificHeatCapacity_pTxi;
  partial function vapourSpecificHeatCapacity_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  end vapourSpecificHeatCapacity_pTxi;
  partial function liquidIsobaricThermalExpansionCoefficient_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  end liquidIsobaricThermalExpansionCoefficient_pTxi;
  partial function vapourIsobaricThermalExpansionCoefficient_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  end vapourIsobaricThermalExpansionCoefficient_pTxi;
  partial function liquidIsothermalCompressibility_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  end liquidIsothermalCompressibility_pTxi;
  partial function vapourIsothermalCompressibility_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  end vapourIsothermalCompressibility_pTxi;


  partial function dewDensity_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_dew "Density at dew point";
  end dewDensity_Txi;
  partial function bubbleDensity_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_bubble "Density at bubble point";
  end bubbleDensity_Txi;
  partial function dewSpecificEnthalpy_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_dew "Specific enthalpy at dew point";
  end dewSpecificEnthalpy_Txi;
  partial function bubbleSpecificEnthalpy_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_bubble "Specific enthalpy at bubble point";
  end bubbleSpecificEnthalpy_Txi;
  partial function dewPressure_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.AbsolutePressure p_dew "Pressure at dew point";
  end dewPressure_Txi;
  partial function bubblePressure_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.AbsolutePressure p_bubble "Pressure at bubble point";
  end bubblePressure_Txi;
  partial function dewSpecificEntropy_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_dew "Specific entropy at dew point";
  end dewSpecificEntropy_Txi;
  partial function bubbleSpecificEntropy_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_bubble "Specific entropy at bubble point";
  end bubbleSpecificEntropy_Txi;
  partial function dewLiquidMassFraction_Txin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_ldew "Mass fration at dew point";
  end dewLiquidMassFraction_Txin;
  partial function bubbleVapourMassFraction_Txin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_vbubble "Mass fration at bubble point";
  end bubbleVapourMassFraction_Txin;
  partial function dewSpecificIsobaricHeatCapacity_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_dew "Specific isobaric heat capacity cp at dew point";
  end dewSpecificIsobaricHeatCapacity_Txi;
  partial function bubbleSpecificIsobaricHeatCapacity_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_bubble "Specific isobaric heat capacity cp at bubble point";
  end bubbleSpecificIsobaricHeatCapacity_Txi;
  partial function dewIsobaricThermalExpansionCoefficient_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_dew "Isobaric thermal expansion coefficient at dew point";
  end dewIsobaricThermalExpansionCoefficient_Txi;
  partial function bubbleIsobaricThermalExpansionCoefficient_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_bubble "Isobaric thermal expansion coefficient at bubble point";
  end bubbleIsobaricThermalExpansionCoefficient_Txi;
  partial function dewIsothermalCompressibility_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_dew "Isothermal compressibility at dew point";
  end dewIsothermalCompressibility_Txi;
  partial function bubbleIsothermalCompressibility_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_bubble "Isothermal compressibility at bubble point";
  end bubbleIsothermalCompressibility_Txi;

  partial function dewDensity_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_dew "Density at dew point";
  end dewDensity_pxi;
  partial function bubbleDensity_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density d_bubble "Density at bubble point";
  end bubbleDensity_pxi;
  partial function dewSpecificEnthalpy_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_dew "Specific enthalpy at dew point";
  end dewSpecificEnthalpy_pxi;
  partial function bubbleSpecificEnthalpy_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy h_bubble "Specific enthalpy at bubble point";
  end bubbleSpecificEnthalpy_pxi;
  partial function dewSpecificEntropy_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_dew "Specific entropy at dew point";
  end dewSpecificEntropy_pxi;
  partial function bubbleSpecificEntropy_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy s_bubble "Specific entropy at bubble point";
  end bubbleSpecificEntropy_pxi;
  partial function dewTemperature_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_dew "Temperature at dew point";
  end dewTemperature_pxi;
  partial function bubbleTemperature_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_bubble "Temperature at bubble point";
  end bubbleTemperature_pxi;
  partial function dewLiquidMassFraction_pxin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_ldew "Mass fration at dew point";
  end dewLiquidMassFraction_pxin;
  partial function bubbleVapourMassFraction_pxin
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MassFraction xi_vbubble "Mass fration at bubble point";
  end bubbleVapourMassFraction_pxin;
  partial function dewSpecificIsobaricHeatCapacity_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_dew "Specific isobaric heat capacity cp at dew point";
  end dewSpecificIsobaricHeatCapacity_pxi;
  partial function bubbleSpecificIsobaricHeatCapacity_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cp_bubble "Specific isobaric heat capacity cp at bubble point";
  end bubbleSpecificIsobaricHeatCapacity_pxi;
  partial function dewIsobaricThermalExpansionCoefficient_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_dew "Isobaric thermal expansion coefficient at dew point";
  end dewIsobaricThermalExpansionCoefficient_pxi;
  partial function bubbleIsobaricThermalExpansionCoefficient_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_bubble "Isobaric thermal expansion coefficient at bubble point";
  end bubbleIsobaricThermalExpansionCoefficient_pxi;
  partial function dewIsothermalCompressibility_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_dew "Isothermal compressibility at dew point";
  end dewIsothermalCompressibility_pxi;
  partial function bubbleIsothermalCompressibility_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappa_bubble "Isothermal compressibility at bubble point";
  end bubbleIsothermalCompressibility_pxi;



  partial function averageMolarMass_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MolarMass M "Average molar mass";
  end averageMolarMass_xi;
  partial function criticalDensity_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Density dc "Critical density";
  end criticalDensity_xi;
  partial function criticalSpecificEnthalpy_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEnthalpy hc "Critical specific enthalpy";
  end criticalSpecificEnthalpy_xi;
  partial function criticalPressure_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.AbsolutePressure pc "Critical pressure";
  end criticalPressure_xi;
  partial function criticalSpecificEntropy_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificEntropy sc "Critical specific entropy";
  end criticalSpecificEntropy_xi;
  partial function criticalTemperature_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature Tc "Critical temperature";
  end criticalTemperature_xi;
  partial function criticalSpecificIsobaricHeatCapacity_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SpecificHeatCapacity cpc "Critical specific isobaric heat capacity cp";
  end criticalSpecificIsobaricHeatCapacity_xi;
  partial function criticalIsobaricThermalExpansionCoefficient_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.LinearExpansionCoefficient betac "Critical isobaric thermal expansion coefficient";
  end criticalIsobaricThermalExpansionCoefficient_xi;
  partial function criticalIsothermalCompressibility_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Compressibility kappac "Critical isothermal compressibility";
  end criticalIsothermalCompressibility_xi;
  partial function criticalThermalConductivity_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.ThermalConductivity lambdac "Critical thermal conductivity";
  end criticalThermalConductivity_xi;
  partial function criticalDynamicViscosity_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.DynamicViscosity etac "Critical dynamic viscosity";
  end criticalDynamicViscosity_xi;
  partial function criticalSurfaceTension_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.SurfaceTension sigmac "Critical surface tension";
  end criticalSurfaceTension_xi;
  partial function cricondenbarTemperature_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_ccb "Cricondenbar temperature";
  end cricondenbarTemperature_xi;
  partial function cricondenthermTemperature_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.Temperature T_cct "Cricondentherm temperature";
  end cricondenthermTemperature_xi;
  partial function cricondenbarPressure_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.AbsolutePressure p_ccb "Cricondenbar pressure";
  end cricondenbarPressure_xi;
  partial function cricondenthermPressure_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.AbsolutePressure p_cct "Cricondentherm pressure";
  end cricondenthermPressure_xi;

  partial function molarMass_n
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject vleFluidPointer;
    output SI.MolarMass M_i "Molar mass of component i";
  end molarMass_n;

end PartialVLEFluidObjectFunctionPrototypes;
