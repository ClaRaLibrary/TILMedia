within TILMedia.BaseClasses;
partial model PartialLiquid "Incompressible liquid model for object and member function based evaluation"

  replaceable parameter TILMedia.LiquidTypes.TILMedia_Water liquidType
    constrainedby TILMedia.LiquidTypes.BaseLiquid "type record of the liquid"
    annotation (choicesAllMatching=true);

  parameter TILMedia.Internals.TILMediaExternalObject liquidPointer annotation (Dialog(tab="Advanced"));

  parameter Boolean computeTransportProperties = false
    "=true, if transport properties are calculated"
    annotation (Dialog(tab="Advanced"));


  replaceable partial function s_phxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.specificEntropy_phxi
    constrainedby
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.specificEntropy_phxi(
        xi=liquidType.xi_default, liquidPointer=liquidPointer);

  replaceable partial function s_pTxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.specificEntropy_pTxi
    constrainedby
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.specificEntropy_pTxi(
        xi=liquidType.xi_default, liquidPointer=liquidPointer);


  replaceable partial function d_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.density_Txi
    constrainedby
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.density_Txi(
        xi=liquidType.xi_default, liquidPointer=liquidPointer);
  replaceable partial function h_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.specificEnthalpy_Txi
    constrainedby
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.specificEnthalpy_Txi(
        xi=liquidType.xi_default, liquidPointer=liquidPointer);
  replaceable partial function cp_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.specificIsobaricHeatCapacity_Txi
    constrainedby
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.specificIsobaricHeatCapacity_Txi(
        xi=liquidType.xi_default, liquidPointer=liquidPointer);
  replaceable partial function beta_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.isobaricThermalExpansionCoefficient_Txi
    constrainedby
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.isobaricThermalExpansionCoefficient_Txi(
        xi=liquidType.xi_default, liquidPointer=liquidPointer);
  replaceable partial function Pr_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.prandtlNumber_Txi
    constrainedby
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.prandtlNumber_Txi(
        xi=liquidType.xi_default, liquidPointer=liquidPointer);
  replaceable partial function lambda_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.thermalConductivity_Txi
    constrainedby
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.thermalConductivity_Txi(
        xi=liquidType.xi_default, liquidPointer=liquidPointer);
  replaceable partial function eta_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.dynamicViscosity_Txi
    constrainedby
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.dynamicViscosity_Txi(
        xi=liquidType.xi_default, liquidPointer=liquidPointer);

  replaceable partial function d_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.density_hxi
    constrainedby
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.density_hxi(
        xi=liquidType.xi_default, liquidPointer=liquidPointer);
  replaceable partial function T_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.temperature_hxi
    constrainedby
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.temperature_hxi(
        xi=liquidType.xi_default, liquidPointer=liquidPointer);
  replaceable partial function cp_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.specificIsobaricHeatCapacity_hxi
    constrainedby
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.specificIsobaricHeatCapacity_hxi(
        xi=liquidType.xi_default, liquidPointer=liquidPointer);
  replaceable partial function beta_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.isobaricThermalExpansionCoefficient_hxi
    constrainedby
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.isobaricThermalExpansionCoefficient_hxi(
        xi=liquidType.xi_default, liquidPointer=liquidPointer);
  replaceable partial function Pr_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.prandtlNumber_hxi
    constrainedby
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.prandtlNumber_hxi(
        xi=liquidType.xi_default, liquidPointer=liquidPointer);
  replaceable partial function lambda_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.thermalConductivity_hxi
    constrainedby
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.thermalConductivity_hxi(
        xi=liquidType.xi_default, liquidPointer=liquidPointer);
  replaceable partial function eta_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.dynamicViscosity_hxi
    constrainedby
      TILMedia.BaseClasses.PartialLiquidObjectFunctions.dynamicViscosity_hxi(
        xi=liquidType.xi_default, liquidPointer=liquidPointer);




  annotation (
    defaultComponentName="liquid",
    Icon(graphics={Text(
          extent={{-120,-60},{120,-100}},
          lineColor={0,170,238},
          textString="%name"), Bitmap(
          extent={{-100,-100},{100,100}},
          imageSource="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",
          fileName="modelica://TILMedia/Resources/Images/Icon_Liquid.png")}),
    Documentation(info="<html>
          <p>
          The liquid model is designed for incompressible liquid fluids.
          All thermophysical properties are calculated dependent on the temperature (T).
          Only the specific entropy (s) is dependent on the temperature (T) <b>and</b> the given pressure (p).
          The parameter liquidType defines the medium.
          All available liquids are listed in the User's Guide -&gt; <a href=\"modelica://TILMedia.UsersGuide.SubstanceNames\">Substance Names</a>.
          The interface and the way of using, is demonstrated in the Testers -&gt; <a href=\"modelica://TILMedia.Testers.TestLiquid\">TestLiquid</a>.
          </p>
          <hr>
          </html>"));
end PartialLiquid;
