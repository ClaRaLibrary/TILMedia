within TILMedia.BaseClasses;
partial model PartialVLEFluid_ps
  "Compressible fluid model with p, s and xi as independent variables"
  replaceable parameter VLEFluidTypes.TILMedia_Water vleFluidType
    constrainedby TILMedia.VLEFluidTypes.BaseVLEFluid
    "type record of the VLE fluid or VLE fluid mixture"
    annotation (choicesAllMatching=true);

  replaceable class PointerType = TILMedia.Internals.BasePointer;
  parameter PointerType vleFluidPointer;

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
  Modelica.SIunits.Density d "Density";
  Modelica.SIunits.SpecificEnthalpy h "Specific enthalpy";
  input Modelica.SIunits.AbsolutePressure p(stateSelect=if (
        stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)
    "Pressure" annotation (Dialog);
  input Modelica.SIunits.SpecificEntropy s(stateSelect=if (
        stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)
    "Specific entropy" annotation (Dialog);
  Modelica.SIunits.Temperature T "Temperature";
  input Modelica.SIunits.MassFraction[vleFluidType.nc - 1] xi(each stateSelect=
        if (stateSelectPreferForInputs) then StateSelect.prefer else
        StateSelect.default) = vleFluidType.xi_default
    "Mass Fraction of Component i" annotation (Dialog);
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
  TILMedia.Internals.Units.DensityDerMassFraction drhodxi_ph[vleFluidType.nc -
    1]
    "1st derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  Real gamma "Heat capacity ratio aka isentropic expansion factor";

  SI.MolarMass M_i[vleFluidType.nc] "Molar mass of component i";

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
          fileName="modelica://TILMedia/Images/Icon_VLEFluid_ps.png"),
                   Text(
          extent={{-120,-60},{120,-100}},
          lineColor={153,204,0},
          textString="%name")}),
    Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_ps calculates the thermopyhsical property data with given inputs: pressure (p), entropy (s), mass fraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));

end PartialVLEFluid_ps;
