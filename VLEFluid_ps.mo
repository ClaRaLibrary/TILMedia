within TILMedia;
model VLEFluid_ps
  "VLE-Fluid model describing super-critical, subcooled, superheated fluid including the vapor liquid equilibrium (p, s and xi as independent variables)"
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
    "Compute detailed vapor liquid equilibrium properties"
    annotation (Evaluate=true);
  parameter Boolean computeVLETransportProperties=false
    "Compute detailed vapor liquid equilibrium transport properties"
    annotation (Evaluate=true);
  parameter Boolean deactivateTwoPhaseRegion=false
    "Deactivate calculation of two phase region" annotation (Evaluate=true);

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

  TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer=
      TILMedia.VLEFluidObjectFunctions.VLEFluidPointer(
      vleFluidType.concatVLEFluidName,
      computeFlags,
      vleFluidType.mixingRatio_propertyCalculation[1:end - 1]/sum(vleFluidType.mixingRatio_propertyCalculation),
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
  parameter Integer redirectorOutput=
      TILMedia.Internals.redirectModelicaFormatMessage();
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
  M_i = TILMedia.Internals.VLEFluidObjectFunctions.molarMass_nc(vleFluidType.nc,
    vleFluidPointer);
  (crit.d,crit.h,crit.p,crit.s,crit.T) =
    TILMedia.Internals.VLEFluidObjectFunctions.cricondenbar_xi(xi,
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
  d = TILMedia.Internals.VLEFluidObjectFunctions.density_psxi(
    p,
    s,
    xi,
    vleFluidPointer);
  h = TILMedia.Internals.VLEFluidObjectFunctions.specificEnthalpy_psxi(
    p,
    s,
    xi,
    vleFluidPointer);
  T = TILMedia.Internals.VLEFluidObjectFunctions.temperature_psxi(
    p,
    s,
    xi,
    vleFluidPointer);

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

  /*    Documentation(info="<html>
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
          fileName="modelica://TILMedia/Images/VLE_ps.png")}),
    __Dymola_Protection(
      allowDuplicate=true,
      showDiagram=true,
      showText=true),
    Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_ps calculates the thermopyhsical property data with given inputs: pressure (p), entropy (s), mass fraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));
end VLEFluid_ps;
