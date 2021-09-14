within TILMedia.BaseClasses;
partial model PartialVLEFluid_pT
  "Compressible fluid model with p, T and xi as independent variables"
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
  SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.AbsolutePressure p(stateSelect=if (
        stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)
    "Pressure" annotation(Dialog);
  SI.SpecificEntropy s "Specific entropy";
  input SI.Temperature T(stateSelect=if (
        stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)
    "Temperature" annotation(Dialog);
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
          fileName="modelica://TILMedia/Resources/Images/Icon_VLEFluid_pT.png"),
                   Text(
          extent={{-120,-60},{120,-100}},
          lineColor={153,204,0},
          textString="%name")}),
    Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_pT calculates the thermopyhsical property data with given inputs: pressure (p), temperature (T), mass fraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -&gt; <a href=\"modelica://TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));

end PartialVLEFluid_pT;
