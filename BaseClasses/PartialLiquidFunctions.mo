within TILMedia.BaseClasses;
package PartialLiquidFunctions
  "Package for calculation of liquid properties with a functional call"
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  replaceable partial function specificEntropy_phxi =
      TILMedia.BaseClasses.PartialLiquidFunctionPrototypes.specificEntropy_phxi;

  replaceable partial function specificEntropy_pTxi =
      TILMedia.BaseClasses.PartialLiquidFunctionPrototypes.specificEntropy_pTxi;


  replaceable partial function density_Txi =
      TILMedia.BaseClasses.PartialLiquidFunctionPrototypes.density_Txi;
  replaceable partial function specificEnthalpy_Txi =
      TILMedia.BaseClasses.PartialLiquidFunctionPrototypes.specificEnthalpy_Txi;
  replaceable partial function specificIsobaricHeatCapacity_Txi =
      TILMedia.BaseClasses.PartialLiquidFunctionPrototypes.specificIsobaricHeatCapacity_Txi;
  replaceable partial function isobaricThermalExpansionCoefficient_Txi =
      TILMedia.BaseClasses.PartialLiquidFunctionPrototypes.isobaricThermalExpansionCoefficient_Txi;
  replaceable partial function prandtlNumber_Txi =
      TILMedia.BaseClasses.PartialLiquidFunctionPrototypes.prandtlNumber_Txi;
  replaceable partial function thermalConductivity_Txi =
      TILMedia.BaseClasses.PartialLiquidFunctionPrototypes.thermalConductivity_Txi;
  replaceable partial function dynamicViscosity_Txi =
      TILMedia.BaseClasses.PartialLiquidFunctionPrototypes.dynamicViscosity_Txi;

  replaceable partial function density_hxi =
      TILMedia.BaseClasses.PartialLiquidFunctionPrototypes.density_hxi;
  replaceable partial function temperature_hxi =
      TILMedia.BaseClasses.PartialLiquidFunctionPrototypes.temperature_hxi;
  replaceable partial function specificIsobaricHeatCapacity_hxi =
      TILMedia.BaseClasses.PartialLiquidFunctionPrototypes.specificIsobaricHeatCapacity_hxi;
  replaceable partial function isobaricThermalExpansionCoefficient_hxi =
      TILMedia.BaseClasses.PartialLiquidFunctionPrototypes.isobaricThermalExpansionCoefficient_hxi;
  replaceable partial function prandtlNumber_hxi =
      TILMedia.BaseClasses.PartialLiquidFunctionPrototypes.prandtlNumber_hxi;
  replaceable partial function thermalConductivity_hxi =
      TILMedia.BaseClasses.PartialLiquidFunctionPrototypes.thermalConductivity_hxi;
  replaceable partial function dynamicViscosity_hxi =
      TILMedia.BaseClasses.PartialLiquidFunctionPrototypes.dynamicViscosity_hxi;

end PartialLiquidFunctions;
