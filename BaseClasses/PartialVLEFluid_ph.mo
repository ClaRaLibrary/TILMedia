within TILMedia.BaseClasses;
partial model PartialVLEFluid_ph
  "Compressible fluid model with p, h and xi as independent variables"
  replaceable parameter TILMedia.VLEFluidTypes.TILMedia_Water vleFluidType
    constrainedby TILMedia.VLEFluidTypes.BaseVLEFluid
    "type record of the VLE fluid or VLE fluid mixture"
    annotation (choicesAllMatching=true);

  parameter TILMedia.Internals.TILMediaExternalObject vleFluidPointer annotation (Dialog(tab="Advanced"));

  parameter Boolean stateSelectPreferForInputs=false
    "=true, StateSelect.prefer is set for input variables"
    annotation (Evaluate=true, Dialog(tab="Advanced", group "StateSelect"));
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
  parameter Boolean computeVLEAdditionalProperties=false
    "Compute detailed vapor liquid equilibrium properties"
    annotation (Evaluate=true);
  parameter Boolean computeVLETransportProperties=false
    "Compute detailed vapor liquid equilibrium transport properties"
    annotation (Evaluate=true);
  parameter Boolean deactivateTwoPhaseRegion=false
    "Deactivate calculation of two phase region"
    annotation (Evaluate=true);

  //Base Properties
  SI.Density d "Density";
  input SI.AbsolutePressure p(stateSelect=if (
        stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)
    "Pressure" annotation(Dialog);
  input SI.SpecificEnthalpy h(stateSelect=if (
        stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)
    "Specific enthalpy" annotation(Dialog);
  SI.SpecificEntropy s "Specific entropy";
  SI.Temperature T "Temperature";
  input SI.MassFraction[vleFluidType.nc - 1] xi(each stateSelect=if (
        stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)=vleFluidType.xi_default
    "Mass Fraction of Component i" annotation(Dialog);
  SI.MoleFraction x[vleFluidType.nc - 1] "Mole fraction";
  SI.MolarMass M "Average molar mass";

  //Additional Properties
  SI.MassFraction q "Steam mass fraction (quality)";
  SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  SI.Compressibility kappa "Isothermal compressibility";
  SI.Velocity w "Speed of sound";
  SI.DerDensityByEnthalpy drhodh_pxi
    "1st derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  SI.DerDensityByPressure drhodp_hxi
    "1st derivative of density wrt pressure at specific enthalpy and mass fraction";
  TILMedia.Internals.Units.DensityDerMassFraction drhodxi_ph[vleFluidType.nc - 1]
    "1st derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  Real gamma "Heat capacity ratio aka isentropic expansion factor";

  parameter SI.MolarMass M_i[vleFluidType.nc] "Molar mass of component i";

  TILMedia.Internals.CriticalDataRecord crit "Critical data record" annotation (
     Placement(transformation(extent={{-80,60},{-60,80}}, rotation=0)));
  TILMedia.Internals.TransportPropertyRecord transp(eta(min=-1))
    "Transport property record" annotation (Placement(transformation(extent={{-80,
            -100},{-60,-80}}, rotation=0)));
  TILMedia.Internals.VLERecord VLE(final nc=vleFluidType.nc) annotation (
      Placement(transformation(extent={{-80,20},{-60,40}}, rotation=0)));
  TILMedia.Internals.AdditionalVLERecord VLEAdditional annotation (Placement(
        transformation(extent={{-80,-20},{-60,0}}, rotation=0)));
  TILMedia.Internals.VLETransportPropertyRecord VLETransp(eta_l(min=-1), eta_v(min=-1)) annotation (Placement(
        transformation(extent={{-80,-60},{-60,-40}}, rotation=0)));

  function getProperties = TILMedia.Internals.getPropertiesVLE (
      d=d,
      h=h,
      p=p,
      s=s,
      T=T,
      cp=cp,
      q=q,
      d_l=VLE.d_l,
      h_l=VLE.h_l,
      p_l=VLE.p_l,
      s_l=VLE.s_l,
      T_l=VLE.T_l,
      d_v=VLE.d_v,
      h_v=VLE.h_v,
      p_v=VLE.p_v,
      s_v=VLE.s_v,
      T_v=VLE.T_v,
      d_crit=crit.d,
      h_crit=crit.h,
      p_crit=crit.p,
      s_crit=crit.s,
      T_crit=crit.T,
      Pr=transp.Pr,
      lambda=transp.lambda,
      eta=transp.eta,
      sigma=transp.sigma,
      Pr_l=VLETransp.Pr_l,
      Pr_v=VLETransp.Pr_v,
      lambda_l=VLETransp.lambda_l,
      lambda_v=VLETransp.lambda_v,
      eta_l=VLETransp.eta_l,
      eta_v=VLETransp.eta_v);

  annotation (
    defaultComponentName="vleFluid",
    Icon(graphics={            Bitmap(
          extent={{-100,-100},{100,100}},
          imageSource=
              "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",
          fileName="modelica://TILMedia/Resources/Images/Icon_VLEFluid_ph.png"),
                   Text(
          extent={{-120,-60},{120,-100}},
          lineColor={153,204,0},
          textString="%name")}),
    Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_ph calculates the thermopyhsical property data with given inputs: pressure (p), enthalpy (h), mass fraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -&gt; <a href=\"modelica://TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));

end PartialVLEFluid_ph;
