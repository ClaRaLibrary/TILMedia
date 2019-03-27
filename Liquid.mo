within TILMedia;
model Liquid "Incompressible liquid model for object and member function based evaluation"
  extends TILMedia.BaseClasses.PartialLiquid(
    redeclare class PointerType =
        TILMedia.LiquidObjectFunctions.LiquidPointerExternalObject,
    liquidPointer=
        TILMedia.LiquidObjectFunctions.LiquidPointerExternalObject(
        liquidType.concatLiquidName,
        TILMedia.Internals.calcComputeFlags(
          computeTransportProperties,
          false,
          true,
          false),
        liquidType.mixingRatio_propertyCalculation[1:end - 1]/sum(liquidType.mixingRatio_propertyCalculation),
        liquidType.nc,
        getInstanceName()),
    redeclare replaceable function d_hxi =
        TILMedia.LiquidObjectFunctions.density_hxi (liquidPointer=liquidPointer),
    redeclare replaceable function T_hxi =
        TILMedia.LiquidObjectFunctions.temperature_hxi (liquidPointer=
            liquidPointer),
    redeclare replaceable function s_phxi =
        TILMedia.LiquidObjectFunctions.specificEntropy_phxi (liquidPointer=
            liquidPointer),
    redeclare replaceable function cp_hxi =
        TILMedia.LiquidObjectFunctions.specificIsobaricHeatCapacity_hxi (
          liquidPointer=liquidPointer),
    redeclare replaceable function Pr_hxi =
        TILMedia.LiquidObjectFunctions.prandtlNumber_hxi (liquidPointer=
            liquidPointer),
    redeclare replaceable function eta_hxi =
        TILMedia.LiquidObjectFunctions.dynamicViscosity_hxi (liquidPointer=
            liquidPointer),
    redeclare replaceable function lambda_hxi =
        TILMedia.LiquidObjectFunctions.thermalConductivity_hxi (liquidPointer=
            liquidPointer),
    redeclare replaceable function d_Txi =
        TILMedia.LiquidObjectFunctions.density_Txi (liquidPointer=liquidPointer),
    redeclare replaceable function h_Txi =
        TILMedia.LiquidObjectFunctions.specificEnthalpy_Txi (liquidPointer=
            liquidPointer),
    redeclare replaceable function s_pTxi =
        TILMedia.LiquidObjectFunctions.specificEntropy_pTxi (liquidPointer=
            liquidPointer),
    redeclare replaceable function cp_Txi =
        TILMedia.LiquidObjectFunctions.specificIsobaricHeatCapacity_Txi (
          liquidPointer=liquidPointer),
    redeclare replaceable function Pr_Txi =
        TILMedia.LiquidObjectFunctions.prandtlNumber_Txi (liquidPointer=
            liquidPointer),
    redeclare replaceable function eta_Txi =
        TILMedia.LiquidObjectFunctions.dynamicViscosity_Txi (liquidPointer=
            liquidPointer),
    redeclare replaceable function lambda_Txi =
        TILMedia.LiquidObjectFunctions.thermalConductivity_Txi (liquidPointer=
            liquidPointer));

  annotation (defaultComponentName="liquid", Protection(access=Access.packageDuplicate));
end Liquid;
