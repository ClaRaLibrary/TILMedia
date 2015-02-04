within TILMedia;
model VLEFluid_dT
  "VLE-Fluid model describing super-critical, subcooled, superheated fluid including the vapour liquid equilibrium (d, T and xi as independent variables)"
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
  input SI.Density d(stateSelect=if (stateSelectPreferForInputs) then
        StateSelect.prefer else StateSelect.default) "Density" annotation(Dialog);
  SI.SpecificEnthalpy h "Specific enthalpy";
  SI.AbsolutePressure p "Pressure";
  SI.SpecificEntropy s "Specific entropy";
  input SI.Temperature T(stateSelect=if (stateSelectPreferForInputs) then
        StateSelect.prefer else StateSelect.default) "Temperature" annotation(Dialog);
  input SI.MassFraction[vleFluidType.nc - 1] xi(stateSelect=if (
        stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)= vleFluidType.xi_default
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
      vleFluidType.xi_default,
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
  M_i = TILMedia.Internals.VLEFluidObjectFunctions.molarMass_nc(vleFluidType.nc,
    vleFluidPointer);
  (crit.d, crit.h, crit.p, crit.s, crit.T) = TILMedia.Internals.VLEFluidObjectFunctions.criticalDataRecord_xi(xi,
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
  h = TILMedia.Internals.VLEFluidObjectFunctions.specificEnthalpy_dTxi(
    d,
    T,
    xi,
    vleFluidPointer);
  p = TILMedia.Internals.VLEFluidObjectFunctions.pressure_dTxi(
    d,
    T,
    xi,
    vleFluidPointer);
  s = TILMedia.Internals.VLEFluidObjectFunctions.specificEntropy_dTxi(
    d,
    T,
    xi,
    vleFluidPointer);
  phaseRecord = TILMedia.Internals.VLEFluidObjectFunctions.phase_dTxi(
    d,
    T,
    xi,
    vleFluidPointer);
  phase = phaseRecord.phase;

  //Calculate Additional Properties of state
  (q,cp,cv,beta,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,w,gamma) =
    TILMedia.Internals.VLEFluidObjectFunctions.additionalProperties_dTxi(
    d,
    T,
    xi,
    vleFluidPointer);

  //Calculate VLE Properties
  if (vleFluidType.nc == 1) then
    //VLE only depends on p or T
    (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,
      VLE.s_v,VLE.T_v,VLE.xi_v) =
      TILMedia.Internals.VLEFluidObjectFunctions.VLEProperties_dTxi(
      -1,
      T,
      zeros(0),
      vleFluidPointer);
  else
    //VLE of a mixture also depends on density/enthalpy/entropy/temperature
    (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,
      VLE.s_v,VLE.T_v,VLE.xi_v) =
      TILMedia.Internals.VLEFluidObjectFunctions.VLEProperties_dTxi(
      -1,
      T,
      xi,
      vleFluidPointer);
  end if;

  //Calculate Transport Properties
  if computeTransportProperties then
    transp =
      TILMedia.Internals.VLEFluidObjectFunctions.transportPropertyRecord_dTxi(
      d,
      T,
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
        TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_dTxi(
        -1,
        T,
        zeros(vleFluidType.nc - 1),
        vleFluidPointer);
    else
      //VLE of a mixture also depends on density/enthalpy/entropy/temperature
      (VLEAdditional.cp_l,VLEAdditional.beta_l,VLEAdditional.kappa_l,
        VLEAdditional.cp_v,VLEAdditional.beta_v,VLEAdditional.kappa_v) =
        TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_dTxi(
        d,
        T,
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
        TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_dTxi(
        -1,
        T,
        zeros(0),
        vleFluidPointer);
    else
      //VLE of a mixture also depends on density/enthalpy/entropy/temperature
      (VLETransp.Pr_l,VLETransp.Pr_v,VLETransp.lambda_l,VLETransp.lambda_v,
        VLETransp.eta_l,VLETransp.eta_v) =
        TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_dTxi(
        d,
        T,
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
          extent={{-100,100},{100,-100}},
          imageSource=
              "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",
          fileName="modelica://TILMedia/Images/VLE_dT.png")}),
    Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_dT calculates the thermopyhsical property data with given inputs: density (d), temperature (T), massfraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));
end VLEFluid_dT;
