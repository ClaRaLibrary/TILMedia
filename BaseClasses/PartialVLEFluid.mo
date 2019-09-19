within TILMedia.BaseClasses;
partial model PartialVLEFluid "Compressible fluid model for object and member function based evaluation"
  replaceable parameter VLEFluidTypes.TILMedia_Water vleFluidType constrainedby
    TILMedia.VLEFluidTypes.BaseVLEFluid
    "type record of the VLE fluid or VLE fluid mixture"
    annotation (choicesAllMatching=true);

  replaceable class PointerType = TILMedia.Internals.BasePointer;

  parameter PointerType vleFluidPointer annotation (Dialog(tab="Advanced"));

  parameter Boolean computeTransportProperties=false
    "=true, if transport properties are calculated";
  parameter Boolean interpolateTransportProperties=true
    "Interpolate transport properties in vapor dome"
    annotation (Dialog(tab="Advanced"));
  parameter Boolean computeSurfaceTension=true
    annotation (Dialog(tab="Advanced"));
  parameter Boolean deactivateDensityDerivatives=false
    "Deactivate calculation of partial derivatives of density"
    annotation (Evaluate=true, Dialog(tab="Advanced"));
  parameter Boolean deactivateTwoPhaseRegion=false
    "Deactivate calculation of two phase region" annotation (Evaluate=true);

  replaceable partial function d_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.density_phxi;
  replaceable partial function T_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.temperature_phxi (
        vleFluidPointer=vleFluidPointer);
  replaceable partial function s_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificEntropy_phxi
      (vleFluidPointer=vleFluidPointer);
  replaceable partial function cp_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificIsobaricHeatCapacity_phxi
      (vleFluidPointer=vleFluidPointer);
  replaceable partial function eta_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dynamicViscosity_phxi
      (vleFluidPointer=vleFluidPointer);
  replaceable partial function Pr_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.prandtlNumber_phxi (
        vleFluidPointer=vleFluidPointer);
  replaceable partial function lambda_phxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.thermalConductivity_phxi
      (vleFluidPointer=vleFluidPointer);

  replaceable partial function d_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.density_pTxi (
        vleFluidPointer=vleFluidPointer);
  replaceable partial function h_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificEnthalpy_pTxi
      (vleFluidPointer=vleFluidPointer);
  replaceable partial function s_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificEntropy_pTxi
      (vleFluidPointer=vleFluidPointer);
  replaceable partial function cp_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificIsobaricHeatCapacity_pTxi
      (vleFluidPointer=vleFluidPointer);
  replaceable partial function eta_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dynamicViscosity_pTxi
      (vleFluidPointer=vleFluidPointer);
  replaceable partial function Pr_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.prandtlNumber_pTxi (
        vleFluidPointer=vleFluidPointer);
  replaceable partial function lambda_pTxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.thermalConductivity_pTxi
      (vleFluidPointer=vleFluidPointer);

  replaceable partial function d_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.density_psxi (
        vleFluidPointer=vleFluidPointer);
  replaceable partial function h_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificEnthalpy_psxi
      (vleFluidPointer=vleFluidPointer);
  replaceable partial function T_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.temperature_psxi (
        vleFluidPointer=vleFluidPointer);
  replaceable partial function cp_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.specificIsobaricHeatCapacity_psxi
      (vleFluidPointer=vleFluidPointer);
  replaceable partial function eta_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dynamicViscosity_psxi
      (vleFluidPointer=vleFluidPointer);
  replaceable partial function Pr_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.prandtlNumber_psxi (
        vleFluidPointer=vleFluidPointer);
  replaceable partial function lambda_psxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.thermalConductivity_psxi
      (vleFluidPointer=vleFluidPointer);

  replaceable partial function T_dew_pxi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewTemperature_pxi (
        vleFluidPointer=vleFluidPointer);
  replaceable partial function p_dew_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewPressure_Txi (
        vleFluidPointer=vleFluidPointer);
  replaceable partial function h_vap_dew_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.dewSpecificEnthalpy_Txi
      (vleFluidPointer=vleFluidPointer);
  replaceable partial function h_liq_bubble_Txi =
      TILMedia.BaseClasses.PartialVLEFluidObjectFunctions.bubbleSpecificEnthalpy_Txi
      (vleFluidPointer=vleFluidPointer);
  annotation (
    defaultComponentName="vleFluid",
    Icon(graphics={Bitmap(
          extent={{-100,-100},{100,100}},
          imageSource="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",
          fileName="modelica://TILMedia/Images/Icon_VLEFluid.png"), Text(
          extent={{-120,-60},{120,-100}},
          lineColor={153,204,0},
          textString="%name")}),
    Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_ph calculates the thermopyhsical property data with given inputs: pressure (p), enthalpy (h), mass fraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));

end PartialVLEFluid;
