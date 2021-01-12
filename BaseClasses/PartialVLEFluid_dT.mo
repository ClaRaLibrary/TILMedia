within TILMedia.BaseClasses;
partial model PartialVLEFluid_dT
  "Compressible fluid model with d, T and xi as independent variables"
  replaceable parameter .TILMedia.VLEFluidTypes.TILMedia_Water vleFluidType
    constrainedby .TILMedia.VLEFluidTypes.BaseVLEFluid
    "type record of the VLE fluid or VLE fluid mixture"
    annotation (choicesAllMatching=true);

  parameter .TILMedia.Internals.TILMediaExternalObject vleFluidPointer annotation (Dialog(tab="Advanced"));

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
  input SI.Density d(stateSelect=if (stateSelectPreferForInputs) then
        StateSelect.prefer else StateSelect.default) "Density" annotation(Dialog);
  SI.SpecificEnthalpy h "Specific enthalpy";
  SI.AbsolutePressure p "Pressure";
  SI.SpecificEntropy s "Specific entropy";
  input SI.Temperature T(stateSelect=if (stateSelectPreferForInputs) then
        StateSelect.prefer else StateSelect.default) "Temperature" annotation(Dialog);
  input SI.MassFraction[vleFluidType.nc - 1] xi(each stateSelect=if (
        stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)= vleFluidType.xi_default
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
  .TILMedia.Internals.Units.DensityDerMassFraction drhodxi_ph[vleFluidType.nc - 1]
    "1st derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  Real gamma "Heat capacity ratio aka isentropic expansion factor";

  parameter SI.MolarMass M_i[vleFluidType.nc] "Molar mass of component i";

  .TILMedia.Internals.CriticalDataRecord crit "Critical data record" annotation (
     Placement(transformation(extent={{-80,60},{-60,80}}, rotation=0)));
  .TILMedia.Internals.TransportPropertyRecord transp(eta(min=-1))
    "Transport property record" annotation (Placement(transformation(extent={{-80,
            -100},{-60,-80}}, rotation=0)));
  .TILMedia.Internals.VLERecord VLE(final nc=vleFluidType.nc) annotation (
      Placement(transformation(extent={{-80,20},{-60,40}}, rotation=0)));
  .TILMedia.Internals.AdditionalVLERecord VLEAdditional annotation (Placement(
        transformation(extent={{-80,-20},{-60,0}}, rotation=0)));
  .TILMedia.Internals.VLETransportPropertyRecord VLETransp(eta_l(min=-1), eta_v(min=-1)) annotation (Placement(
        transformation(extent={{-80,-60},{-60,-40}}, rotation=0)));

  function getProperties = .TILMedia.Internals.getPropertiesVLE (
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
    Icon(graphics={Text(
          extent={{-120,-60},{120,-100}},
          lineColor={153,204,0},
          textString="%name"),            Bitmap(
          extent={{-100,-100},{100,100}},
          imageSource=
              "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",
          fileName="modelica://TILMedia/Images/Icon_VLEFluid_dT.png")}),
    Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_dT calculates the thermopyhsical property data with given inputs: density (d), temperature (T), mass fraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"modelica://TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));

end PartialVLEFluid_dT;
