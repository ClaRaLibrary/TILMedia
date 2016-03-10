within TILMedia;
model VLEFluid_pT
  "VLE-Fluid model describing super-critical, subcooled, superheated fluid including the vapour liquid equilibrium (p, T and xi as independent variables)"
  replaceable parameter TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType
    constrainedby TILMedia.VLEFluidTypes.BaseVLEFluid
    "type record of the VLE fluid or VLE fluid mixture"
    annotation (choicesAllMatching=true);

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
    "Compute detailed vapour liquid equilibrium properties"
    annotation (Evaluate=true);
  parameter Boolean computeVLETransportProperties=false
    "Compute detailed vapour liquid equilibrium transport properties"
    annotation (Evaluate=true);
  parameter Boolean deactivateTwoPhaseRegion=false
    "Deactivate calculation of two phase region"
    annotation (Evaluate=true);

  //Base Properties
  Modelica.SIunits.Density d "Density";
  Modelica.SIunits.SpecificEnthalpy h "Specific enthalpy";
  input Modelica.SIunits.AbsolutePressure p(stateSelect=if (
        stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)
    "Pressure" annotation(Dialog);
  Modelica.SIunits.SpecificEntropy s "Specific entropy";
  input Modelica.SIunits.Temperature T(stateSelect=if (
        stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)
    "Temperature" annotation(Dialog);
  input Modelica.SIunits.MassFraction[vleFluidType.nc - 1] xi(stateSelect=if (
        stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)=vleFluidType.xi_default
    "Mass Fraction of Component i" annotation(Dialog);
  SI.MoleFraction x[vleFluidType.nc - 1] "Mole fraction";
  SI.MolarMass M "Average molar mass";

  //Additional Properties
  Integer phase "0=subcooled, 1=two phase, 2=superheated";
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

  SI.MolarMass M_i[vleFluidType.nc] "Molar mass of component i";

  TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer=
      TILMedia.VLEFluidObjectFunctions.VLEFluidPointer(
      vleFluidType.concatVLEFluidName,
      computeFlags,
      vleFluidType.mixingRatio_propertyCalculation[1:end-1]/sum(vleFluidType.mixingRatio_propertyCalculation),
      vleFluidType.nc_propertyCalculation,
      vleFluidType.nc,
      redirectorOutput) "Pointer to external medium memory";

  TILMedia.Internals.CriticalDataRecord crit "Critical data record" annotation (
     Placement(transformation(extent={{-80,60},{-60,80}}, rotation=0)));
  TILMedia.Internals.TransportPropertyRecord transp(eta(min=if
          computeTransportProperties then 0 else -1))
    "Transport property record" annotation (Placement(transformation(extent={{-80,
            -100},{-60,-80}}, rotation=0)));
  TILMedia.Internals.VLERecord VLE(final nc=vleFluidType.nc) annotation (
      Placement(transformation(extent={{-80,20},{-60,40}}, rotation=0)));
  TILMedia.Internals.AdditionalVLERecord VLEAdditional annotation (Placement(
        transformation(extent={{-80,-20},{-60,0}}, rotation=0)));
  TILMedia.Internals.VLETransportPropertyRecord VLETransp(eta_l(min=if
          computeVLETransportProperties then 0 else -1), eta_v(min=if
          computeVLETransportProperties then 0 else -1)) annotation (Placement(
        transformation(extent={{-80,-60},{-60,-40}}, rotation=0)));
protected
  constant Real invalidValue=-1;
  final parameter Integer computeFlags=TILMedia.Internals.calcComputeFlags(
      computeTransportProperties,
      interpolateTransportProperties,
      computeSurfaceTension,
      deactivateTwoPhaseRegion);
  parameter Integer redirectorOutput=TILMedia.Internals.redirectModelicaFormatMessage();
  TILMedia.Internals.PhaseRecord phaseRecord;

public
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
equation
  M_i = TILMedia.VLEFluidObjectFunctions.molarMass_n(
        {i-1 for i in 1:vleFluidType.nc},vleFluidPointer);
  (crit.d, crit.h, crit.p, crit.s, crit.T) = TILMedia.Internals.VLEFluidObjectFunctions.cricondenbar_xi(xi,
    vleFluidPointer);
  //calculate molar mass
  M = 1/sum(cat(
    1,
    xi,
    {1 - sum(xi)}) ./ M_i);
  //calculate mole fraction
  xi = x .* M_i[1:end - 1]*(sum(cat(
    1,
    xi,
    {1 - sum(xi)}) ./ M_i));
  //xi = x.*M_i/M

  //Calculate Main Properties of state
  d = TILMedia.Internals.VLEFluidObjectFunctions.density_pTxi(
    p,
    T,
    xi,
    vleFluidPointer);
  h = TILMedia.Internals.VLEFluidObjectFunctions.specificEnthalpy_pTxi(
    p,
    T,
    xi,
    vleFluidPointer);
  s = TILMedia.Internals.VLEFluidObjectFunctions.specificEntropy_pTxi(
    p,
    T,
    xi,
    vleFluidPointer);
  phaseRecord = TILMedia.Internals.VLEFluidObjectFunctions.phase_phxi(
    p,
    h,
    xi,
    vleFluidPointer);
  phase = phaseRecord.phase;

  //Calculate Additional Properties of state
  (q,cp,cv,beta,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,w,gamma) =
    TILMedia.Internals.VLEFluidObjectFunctions.additionalProperties_phxi(
    p,
    h,
    xi,
    vleFluidPointer);

  //Calculate VLE Properties
  if (vleFluidType.nc == 1) then
    //VLE only depends on p or T
    (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,
      VLE.s_v,VLE.T_v,VLE.xi_v) =
      TILMedia.Internals.VLEFluidObjectFunctions.VLEProperties_phxi(
      p,
      -1,
      zeros(0),
      vleFluidPointer);
  else
    //VLE of a mixture also depends on density/enthalpy/entropy/temperature
    (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,
      VLE.s_v,VLE.T_v,VLE.xi_v) =
      TILMedia.Internals.VLEFluidObjectFunctions.VLEProperties_phxi(
      p,
      h,
      xi,
      vleFluidPointer);
  end if;

  //Calculate Transport Properties
  if computeTransportProperties then
    transp =
      TILMedia.Internals.VLEFluidObjectFunctions.transportPropertyRecord_phxi(
      p,
      h,
      xi,
      vleFluidPointer);
  else
    transp = TILMedia.Internals.TransportPropertyRecord(
      invalidValue,
      invalidValue,
      invalidValue,
      invalidValue);
  end if;

  //compute VLE Additional Properties
  if computeVLEAdditionalProperties then
    if (vleFluidType.nc == 1) then
      //VLE only depends on p or T
      (VLEAdditional.cp_l,VLEAdditional.beta_l,VLEAdditional.kappa_l,
        VLEAdditional.cp_v,VLEAdditional.beta_v,VLEAdditional.kappa_v) =
        TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_phxi(
        p,
        -1,
        zeros(vleFluidType.nc - 1),
        vleFluidPointer);
    else
      //VLE of a mixture also depends on density/enthalpy/entropy/temperature
      (VLEAdditional.cp_l,VLEAdditional.beta_l,VLEAdditional.kappa_l,
        VLEAdditional.cp_v,VLEAdditional.beta_v,VLEAdditional.kappa_v) =
        TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_phxi(
        p,
        h,
        xi,
        vleFluidPointer);
    end if;
  else
    VLEAdditional.cp_l = invalidValue;
    VLEAdditional.beta_l = invalidValue;
    VLEAdditional.kappa_l = invalidValue;
    VLEAdditional.cp_v = invalidValue;
    VLEAdditional.beta_v = invalidValue;
    VLEAdditional.kappa_v = invalidValue;
  end if;

  //compute VLE Transport Properties
  if computeVLETransportProperties then
    if (vleFluidType.nc == 1) then
      //VLE only depends on p or T
      (VLETransp.Pr_l,VLETransp.Pr_v,VLETransp.lambda_l,VLETransp.lambda_v,
        VLETransp.eta_l,VLETransp.eta_v) =
        TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_phxi(
        p,
        -1,
        zeros(0),
        vleFluidPointer);
    else
      //VLE of a mixture also depends on density/enthalpy/entropy/temperature
      (VLETransp.Pr_l,VLETransp.Pr_v,VLETransp.lambda_l,VLETransp.lambda_v,
        VLETransp.eta_l,VLETransp.eta_v) =
        TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_phxi(
        p,
        h,
        xi,
        vleFluidPointer);
    end if;
  else
    VLETransp.Pr_l = invalidValue;
    VLETransp.Pr_v = invalidValue;
    VLETransp.lambda_l = invalidValue;
    VLETransp.lambda_v = invalidValue;
    VLETransp.eta_l = invalidValue;
    VLETransp.eta_v = invalidValue;
  end if;

  /*Documentation(info="<html>
<p>
Standard refrigerant model that can be used in most applications. This model contains all three data records:
<b>CriticalDataRecord</b>, <b>SaturationPropertyRecord</b> and <b>TransportPropertyRecord</b>. <p> For ppf-media 
data transport properties are roughly estimated. For R245fa no transport properties are implemented yet.</p>
More information on this model can be found in the
<a href=\"Modelica:TILMedia.UsersGuide\">Users Guide</a>.
</p>
</html>"),*/
  annotation (
    defaultComponentName="vleFluid",
    Icon(graphics={Text(
          extent={{-120,-60},{120,-100}},
          lineColor={153,204,0},
          textString="%name"), Bitmap(
          extent={{-100,-100},{100,100}},
          imageSource=
              "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",
          fileName="modelica://TILMedia/Images/VLE_pT.png")}),
    Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_pT calculates the thermopyhsical property data with given inputs: pressure (p), temperature (T), massfraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));
end VLEFluid_pT;
