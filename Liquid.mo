within TILMedia;
model Liquid "Incompressible liquid model for object and member function based evaluation"
  extends TILMedia.BaseClasses.PartialLiquid(
    liquidPointer=TILMedia.Internals.TILMediaExternalObject(
        "Liquid",
        liquidType.concatLiquidName,
        TILMedia.Internals.calcComputeFlags(
          computeTransportProperties,
          false,
          true,
          false,
          false),
        liquidType.mixingRatio_propertyCalculation[1:end - 1]/sum(liquidType.mixingRatio_propertyCalculation),
        liquidType.nc,
        0,
        getInstanceName()),
  redeclare replaceable function s_phxi =
      TILMedia.LiquidObjectFunctions.specificEntropy_phxi,

  redeclare replaceable function s_pTxi =
      TILMedia.LiquidObjectFunctions.specificEntropy_pTxi,


  redeclare replaceable function d_Txi =
      TILMedia.LiquidObjectFunctions.density_Txi,
  redeclare replaceable function h_Txi =
      TILMedia.LiquidObjectFunctions.specificEnthalpy_Txi,
  redeclare replaceable function cp_Txi =
      TILMedia.LiquidObjectFunctions.specificIsobaricHeatCapacity_Txi,
  redeclare replaceable function beta_Txi =
      TILMedia.LiquidObjectFunctions.isobaricThermalExpansionCoefficient_Txi,
  redeclare replaceable function Pr_Txi =
      TILMedia.LiquidObjectFunctions.prandtlNumber_Txi,
  redeclare replaceable function lambda_Txi =
      TILMedia.LiquidObjectFunctions.thermalConductivity_Txi,
  redeclare replaceable function eta_Txi =
      TILMedia.LiquidObjectFunctions.dynamicViscosity_Txi,

  redeclare replaceable function d_hxi =
      TILMedia.LiquidObjectFunctions.density_hxi,
  redeclare replaceable function T_hxi =
      TILMedia.LiquidObjectFunctions.temperature_hxi,
  redeclare replaceable function cp_hxi =
      TILMedia.LiquidObjectFunctions.specificIsobaricHeatCapacity_hxi,
  redeclare replaceable function beta_hxi =
      TILMedia.LiquidObjectFunctions.isobaricThermalExpansionCoefficient_hxi,
  redeclare replaceable function Pr_hxi =
      TILMedia.LiquidObjectFunctions.prandtlNumber_hxi,
  redeclare replaceable function lambda_hxi =
      TILMedia.LiquidObjectFunctions.thermalConductivity_hxi,
  redeclare replaceable function eta_hxi =
      TILMedia.LiquidObjectFunctions.dynamicViscosity_hxi);
  annotation (defaultComponentName="liquid", Protection(access=Access.packageDuplicate));
end Liquid;
