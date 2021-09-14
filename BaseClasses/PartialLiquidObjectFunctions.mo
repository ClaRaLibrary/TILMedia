within TILMedia.BaseClasses;
package PartialLiquidObjectFunctions
  "Package for calculation of liquid properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  replaceable partial function specificEntropy_phxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.specificEntropy_phxi;

  replaceable partial function specificEntropy_pTxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.specificEntropy_pTxi;


  replaceable partial function density_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.density_Txi;
  replaceable partial function specificEnthalpy_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.specificEnthalpy_Txi;
  replaceable partial function specificIsobaricHeatCapacity_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.specificIsobaricHeatCapacity_Txi;
  replaceable partial function isobaricThermalExpansionCoefficient_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.isobaricThermalExpansionCoefficient_Txi;
  replaceable partial function prandtlNumber_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.prandtlNumber_Txi;
  replaceable partial function thermalConductivity_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.thermalConductivity_Txi;
  replaceable partial function dynamicViscosity_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.dynamicViscosity_Txi;

  replaceable partial function density_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.density_hxi;
  replaceable partial function temperature_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.temperature_hxi;
  replaceable partial function specificIsobaricHeatCapacity_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.specificIsobaricHeatCapacity_hxi;
  replaceable partial function isobaricThermalExpansionCoefficient_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.isobaricThermalExpansionCoefficient_hxi;
  replaceable partial function prandtlNumber_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.prandtlNumber_hxi;
  replaceable partial function thermalConductivity_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.thermalConductivity_hxi;
  replaceable partial function dynamicViscosity_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.dynamicViscosity_hxi;

end PartialLiquidObjectFunctions;
