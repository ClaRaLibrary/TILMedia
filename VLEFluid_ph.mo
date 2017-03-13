within TILMedia;
model VLEFluid_ph
  "VLE-Fluid model describing super-critical, subcooled, superheated fluid including the vapour liquid equilibrium (p, h and xi as independent variables)"
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
  input Modelica.SIunits.SpecificEnthalpy h(stateSelect=if (
        stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)
    "Specific enthalpy" annotation(Dialog);
  input Modelica.SIunits.AbsolutePressure p(stateSelect=if (
        stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)
    "Pressure" annotation(Dialog);
  Modelica.SIunits.SpecificEntropy s "Specific entropy";
  Modelica.SIunits.Temperature T "Temperature";
  input Modelica.SIunits.MassFraction[vleFluidType.nc - 1] xi(each stateSelect=if (
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
  M_i = TILMedia.Internals.VLEFluidObjectFunctions.molarMass_nc(vleFluidType.nc, vleFluidPointer);
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
  d = TILMedia.Internals.VLEFluidObjectFunctions.density_phxi(
    p,
    h,
    xi,
    vleFluidPointer);
  s = TILMedia.Internals.VLEFluidObjectFunctions.specificEntropy_phxi(
    p,
    h,
    xi,
    vleFluidPointer);
  T = TILMedia.Internals.VLEFluidObjectFunctions.temperature_phxi(
    p,
    h,
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

  /*
    Documentation(info="<html>
<p>
Standard refrigerant model that can be used in most applications. This model contains all three data records:
<b>CriticalDataRecord</b>, <b>SaturationPropertyRecord</b> and <b>TransportPropertyRecord</b>. <p> For ppf-media 
data transport properties are roughly estimated. For R245fa no transport properties are implemented yet.</p>
More information on this model can be found in the
<a href=\"Modelica:TILMedia.UsersGuide\">Users Guide</a>.
</p>
</html>")*/
  annotation (
    Placement(transformation(extent={{-80,20},{-60,40}}, rotation=0)),
    defaultComponentName="vleFluid",
    Icon(graphics={Text(
          extent={{-120,-60},{120,-100}},
          lineColor={153,204,0},
          textString="%name"), Bitmap(
          extent={{-100,-100},{100,100}},
          imageSource=
              "iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAAABnRSTlMA/wAAAACkwsAdAAAACXBIWXMAAAsTAAALEwEAmpwYAAAXp0lEQVR42u2dbWxb13nHH76LFElRpCyb1BszvdhJrYi14NTOHJdGURtFUIRBjK1OFoPonBXbPkRF+2ELUFRYgSIDOkAZ0AVbsoFJi2TDEpQGmhT2h41JjNiJY1W2VFempZmSJdKW+P7+zn2gTV9d3nt5eXnfSJ0/7gebIi8PeX58nuc85znnSCqABKH0QiLnC2UWACCQ8ABAIudL5H0NX6hTWnUqKwCY1Dal3GDR2pVyg0ljE89HW/auLN9eWd/wb4fC6xubhM8ZHhzYYzIOD1oOjI8dmBhj5X0luxOsQNwTyiz4E55E3hdKL7B+f5PGZlLb+jQ2k9pm1tv5/4CXLn85f2Pp2vVFBq+dnpo89OTBY0efQmDRhcmf9AQSHn/Cw/NbW3R2s85u0dp5gOztd9/77MpVVm71zJHDx448xcyGdT5Y3qDLn/D4ou58KSp4Y5Qyg9XgsOjsE31O1l3ebz66sHx7hfU2Hxgfe/7ZU83i1bFg+SJub8jli7pF20KrwTFhclp7HVxbKblcZjQYenRavU6nUMhxfy0UivFEIpZIhqPRYrFEYb3OnX1x94KVzPkW78/dCrnEYJ9o2rD9Jufk3hmtysrg5fPXF9969/10JlP/J5VKOWQx9/b06LTdNO+WSKYisVjg/nYqna7/q0atfuXsmUNTk7sLLF/EvbQ111L8JAOQP7wAQEXjJTkAACg+vEotxWEH+2eaMmBkhmqPyWjZ29/drWHcmFg8sRUMbYfCjE1XJ4DlDbqu+WfpZAfqftQACgAlgAygi6XWZAFKAHmAwkPsmpFOaZ22zNKJwH7y81/Upw96dLrBgX0qpZKVj5LL5zc278USifr0xM9e+3Eng8UEKRXm4kE5zMUeXvVUKeTyAfM+bQtWijS6SKU3A/cKxSKOrZdOOygi+nYFqzmkJABqACWAGkAqUIvLABmAPEAGoNISXn/9o9dwQZVO293fZ5JKufps5XJ5KxhKJFO4kOvVH3yfjK32AysQ91wLzNKNpVQAagC1yD5DBiBD14ZZdPZp82wtAVZvq0y9BvrheStKJFOhSJSm3WozsDx3nN6Qi1YYrgHoApCJ+MOUHhJGI+SfMDntj7lwVEkkkj3GXoVCwVuTC4XCdjhSqVQaxlttA5Yv4vb4nI2TCAqAbr7iJxbjsBRAocGzbn96cmvla1iqenv0Crmc58YWisVILI5li3CcKG+Lb/7iisO36qCFVHU81F52WAmgBMhT4RVaG8VSBQB6nVYikRRLJZ4bK5FI9DptLP5oqPjZlauHri/i8ltit1i0DFUVKQV0ggoEeBVzqq/++/ul/KOMiLqrS6kU8gPn84VMNosN5N/8p5+3DViX12cWt+aoniEF0HUKUji8EgBlYicol8vUKnbSbuOj1ld/8JePvO3qnTf+9T/ojkByWewUEM4hitQVJnO+C6uOEAVVEsxwr/PmO+UAvQ9C+5h/EBdaKeSKUrnMzvihvOO7q0CF/p0VckWpVK4FW59duXrMu1IbIYoRLF/E7blpo3J/CgAtgKQTkcKqC0AF6x8f2dmd8kqlgo2dW1FlJ0aVCpSbQVYhl+cLj9z2bz668PeitVhL9+c+p4jTJQCa9ozQGSl2dzAeGMKaK4Dm+r4BWHhAK83eXCKR1G6CLdqRiup79Nxxfn53hspQ6QEUAJXdcm0tPYH9AmRSablSYffCW6wmXy7bme5/+933RGexLq44fBTJTzUGqd2hYk61dXNHdFWpdj57qnepDJws1mh9duXqOVGB9eFNW4isKE/6cI5vl9Xnh1ZGcVEA/V4fHrQcevIgAKTTmfkbS8FwpFnUDoyPHhgfrd5heWV1fcNPEZ5gm3Xp8pfHjj4lFwtVZCsaqgUtkl1HFQCEV0frux37v/3jo3/36t/U/rt8e+Uf33hzaHDg3F/8+fDgQO3xMy88N39j6e1f/2cmnWkYY0Gl8u0Txx3fOanR7JhhXb69+t6H5++SrPPBav7G0jEA2ayYqZKzVybVhvJeeBbncnBP6DMZjx05XPtvMBwGgB/97V/16PW4Z5r39p/406OLN5dxxVW4O6QzmcnH9588cbx+/rHPZPzGIVv9HeoVuL/1/NUrUvFSVZ3oqOzSK7Yx2OyX2Wc0vvgC6YBao1Gfe/l7GnUXpQMdoKg81mjUL55+jk5Llr0rcvFSJduN7u9RoqEOrIaBdp/JCACpdObi/366fHtFo1afPHH8cUxNy/DgwLftx90fX6AO1bdDYffHF4KhcJ/JePLE8RGMVz0wPmYy9gaJSpZ3+k3hwLq44iCN1pW7MVTHKRXcw+RV6czrc79c3/TXwp1zL3/vmSOPlp6ePLEDrHqtbWy+PvfLdCYLAHB7df764i/+4SfdmHhreMDSEKz1Db8wrtBzx0m6MEvxMFTf3Vcurmfwxb73gbtGVe0R7JqIbo26OlqkuMMDqh5EXVncWkXssIBM26GwAGAt3Z8jLdaTI6oeXKlQP4Pvdv4Gfk19OpOd37nQnpqM5dur9ean2Wasb2zy7Qp9ETfpjE212rMMSMy0trGJNTZkZAwPWsju8EcvawupeQUrmfN5btpIs6Cw2+OqFpVOZwgfr6YhHg3u1HwsAeAVrAurDuKaBQmiaoeySX27fwT+wLq8PkNVX4WowqirO47AohtaLVIUwyCq2NDjJEv8cNE6zjNyJJ5GhR6fE3U8DxoesBCBZWlxlCdSsC6uONpl75d2l+PZU7hHNOquQ0/umKVZ9q50Ali+iFvMm1SJVt3GLQavmp6aPHniOJaqcy+fwebN1zY2cRlUTgzn4ADnMRZygsyk0sZTYSY50pdOO44dOTx/fUmj7jo0NbnHZMT+1f3RBR4av8dk5BYszx1nns6KeKR6i2XaDq83tztjOp2pFlGNDA6MEKXXP7vy5fyNJT5CvUELh64wEPd4EVVM1bNvA/eIhEg7ovLNzbd/9T5ZmvTSlav//uv/or6DRAKN3oT4Obj3OjA+xqHFuhaYRXwwB8u8weBVl774avn26osvPIctq1rf2HR/fJHQVqXTGewcM+GAMRgKY5/TsLQBAA5McAaWN+jyo+iqNRmHV5r1hgAQDEf++S2XRq2uZhmC4QgFCuub/tffeLMhrJe++KqpAQRwlyC95kfmqmWwRlZxYOE9F0jqvWX1X5ls9tbK/xG+inXhqgWrZTmcxFjeoIvJjqBIO2UaXqUOs6AOGIkQwrWheqSFFJkr0UquyvWP/QFnGKg7VRCqcHtlVf8hReZKzDJ/7ffY/5bLZalEUrvqx3TYv/Jz4Zbk1zackSNzJWZpTdv6fXfj94ZqRqsCldomtlJJXYwllfDZvHK5jDVXB8YfRYQsWyxfxI3MFbsa/voV7H+LxZJUIpFKpVKpFIeRRAJSPiWR4I5IeR4zU8nyxmu/vWXn/2ytjhd+4zWZrKtL+F1Ws9kcdqNKDjdeS+Z8/kUr4oB1PfaNT0Lro7WtIoulUqlUUioE3SqyUMBSpVGrcfvbsukKF+/PIQg4Gh6OP3MR+0gmm6sAyARSuVLJZHfsUv/K2TP4NrP4+W+hmUHuclojq/1jf8A6xEQyZejRK+R872RfKJaSqR1ngz1z5HD9wnzWwPJF3PlVByKAO40fv5gK76nV0lQqlWgs3tfbW38EIXfK5fPRnZu8Dw8OEB4GxlrwfnHFgQr6uFYxp1r63WlcnZax16Dj4GymeiVS6XDdkSdkx4CxBta/fYX6nZexWEK/cP4l7J7vAKDr7u4zGWUyroqgSqVyMBROpPCHNOH2dmcfLG/QRVYpatZ+k/q1geQnbH1+6vfKl6KhzHXxIKKU9ZjUNiZ2K6+67D58/96OQEchl1v29Xdr2DddqXTaf2+r/lg56iML2XHPFLmryb0zVgNV7PXhTRsr/a1Vjnx3v4fiCZ/fncG+kUk9dXSIdBgbSi9c3vght/G42kbdYAqdHN2xqwwAFIrFtQ2/XqcdNO9TsnQQZj6f3wjciyeSuMfpHITJDlgU0ZUv6qYGa8LkZKULqd+lvpFKmcGis7epQ+zWqH/22o/fevf9S1/sOLo3nkjeTKz0GXv3mEw9ei3j+8fiye1QiHDnUppH97IAViDuyXvtDJirAcEKWBMmJzVVyfxah8Vbr5w9c2jq4Nu/eh+3F0gwHAmGI90a9b7+PYYeva6b9mHjqVQ0Ft8I3Mvl8vV/beqwcRbA8ic9lJFNjNpo6VRWk3qqRW+oVY70aWzMbGpba3pq8sD42HsfuHGmCwBS6cyqbx0A5DJZr6FHr9Oqu7rqt4pMZ7KZbDaeSEaiMYqzxB4YKvJonQOL1WhykAdvSH3/XDHawamQbo36lbNnjh057P74Qv3uVgBQLJW2Q+HtEMOV9QfGx55/9hTF8c+cWaxGYHlD7xwdnFPJDdx5w4Z+MF+KdXYa4vGJsccnxtY2Ni/+z6f11ouZHoVTzXdOq2AF4h7wNg6BfVH3fvIz2Vv0hib1FLUf3D2r0EYGB145e+bF0475G4vz15eYrSI0Dq+cPPryd775Z/AvzFvSKlihzALNYSMFWC16Q2pzlcj5WEyVtYtzfObIU9U9bf/oXVm+vbq+sRkMhckW13cbt1TaeLdpu2ffRnXZ2dDQt1psQ6tgBdO0wFqLnc8Voxx5Q+oAq02jq2B64TLFeVVN9fEY/MkYDJaiQ7R9As1uFd5icecNTeopncpK8YQGZ7SKVflSVEBDS79bydTq7FKINtoNAx1qj8bsVcH0Quelr/gAKy0oWE29fSD5SSLnY+zRmL1qaQvVHgrDVktgUYPSbLhT9Ybs+kFUycPcFxejgoHVrCdm3Rui9BV3op5Q4RasZqEOZa6z6w2pn38r6EJ8CCVeLVZDo9WUNxzpeY7CD+aK0bXYedTBjBVobRkf32fp3GLPG1KbK7TnWxtbrGaDdwBI5teok2/0vSECi1Mx6Fz2wGK0mp4VbzjS8xxFHj+R84mqCrktwWptqwQBDsL0Rd1PD81Re8OG0zvU5mqx/dNXOqV12vxTthDxht7huf0CgFX1hhT1CHTmDTtyfhBnuacts+wkDhIe/sES5oRV6oR4Q29I7Qc7sgp5dwXvrXjDVsaGHW+udjVYrcwlVQvhmaGjlPVQ/DVXjPJv9pHYBMuksbXyxoznDa0GB7UfRJ26e10hLW9IUrzVIH0VdtFtgUTo716CwGr2+6Jx5csx6iy8tcdR/yqlnMoPPqhCptcAtj4I84tniPltjFTAX6Ev1rQ3ZM1cIXFsPuUCNrFhIfyEyXl584d4M0auW2FXE1+QhO/vuqn7+xOe366c4K9T2D49WSrs74TaaOEwoh4PoirkzomxdEpri6GJL97IG2qmak9uUIUcnGMzypHwcgneAPKWEHcuT2CprC1yvRY7n6M8LnrC6KTpB6mNHxLPnSvYqLB2UUfctbGhVjlCAdatsCtfjrE8KBN8VCioxRLSFZrZ2F+KGiyd0mrqmkLmin+12LlsW6zmBxeh7HXq0p+qN8T6RJxypeha/DwTy9pZI3yeO45DsIi30GzeDjccG2qVI33k23V6q1mGtvNE4naFFq1wFos4vmuefW+0gTec3jvL+OVIzMyVkjy/yL3FIpyHrjT9cwllrwcpF/zsJ/eDwcxCKHudE5sheMjMm7mq0O5c3mIsgrdn5K29EYZWh/ELkSi6rEWqWACLII1WYRRmJRgO67xRVxvnJ0USYFXoRc98gkWwozUji5UsrAWbX/7qi7vzZbSInn2L1deyxWp1EpoY7QoTYr1RV5+6udU1voSbo0G7TmGd7v8pW3e7FXUlC2sCNqCqRMHnjdaV15ZpdyufYJn1dqg/RafMBCxfwv20uQmwcqUowdfEFlhK63T/LFt386c8TYPFagNqzaAJlllvb/G9WEiQEnjDMkNvSD0nTWCu2iU/KRG6ARQq0+hQQcAyk4HFcQi/FJprmwJOEEEDCJtBBJZZJGARp2hLTG5FH6xE3hfKoUX0LatEu0MFsFh6u1JmIDBazVuRfCVGky1vzNVOVecisZr1LakzV0qZofUAC9iahCYowSsxvBVNsG7FXMjccGGxmO0EyxVYxOFekYkV8cbfoS79AwB/2pMsriGL1WozirS7UiiwiNcAMjZaSXdjP4jETYA1QXmASBMMc3vYuKbDl2W2sSoAaQI/eHKMnZJJ1gr9iLfxKPK+KABdNK8i7U4UFixrr4NgbFhAlkGsKhCMB629DtGBBQD763mvIKMlVnNVodF9IgFrcu8MnV8GkgjNFWn3iQEsrcpKMFgtAZSQkRDTVSIYD1p0dm3Lq0S5AgsADvYTUZ9DJkJMytHuODGkG2p6/4aVYDlXtyD76CIRjdNT+Md0SuuZJ33svg/7K6GJ9/rNoi4Vh7K0u0xsYE30OQkK4UvEiRMkvs1VicBcsZVt5xYs0l9ABgXOQl8ZnswVV2ARG60yiuKFjtnLPJkr4G7jNdJIq4IshxBXhb/oiluwJvqcxCvD0sh0CKE0QardorNzZK6A060ip81Ev4YCQAGZEH6vAnGqnbiDxA+WWW8nni1PMVzGg8REZYLEFQBMmJyslCDzlyDFyfV7Q76+IlQBoEd9zovixIUMzq9HOX1bzndNtltdxA4RpUz5SYcWaHdKe4Fl7XUQ1+enmdcuI9FSiXioZDU4WKy7EswVUjlEGUCP4FvNd25oFSP46fLgBHmyWFS2twSQRAhwoySxQ+DBCfIKlrXXMUlYmJEHSKGMANtXCiBP8GVP9s/w4AR5dYVVfXjTRnx8pg6gCxkZ9gL2BMHDJo3thScWeGsFr2Alc74PbtryhOtRewBUCIqWlQMg2ohOKTOcfmKB3RpRUbjCqrQq66lRN/10C1JzKgDESWNcPqkC/odkZr396SGi3dUqAFG0pKe1hTdR4n06nx6a4y20EgwsADi4d4Z4qqcCEEF2i6mtihBTNWFyHtw7w3+LeI2xsCJekg8AEgAjKpBvRkWAMClV9sdcgjRKMLCoBokSgB40TqQ9BoyRngDA5zBQRGBRsVUdJ6oROJTKEI8BBadKeLAasKUB6EH4kChGWjUpOFWiAKsBWyoAA5pP3KkyQJR0AYEYqBILWA3YkgP0AigQUJgBYFHUVIF4TMELTyyQ7n5ZBAiiYnkAAEgDBEmpshocIqFKRBarKs8dpzdEPjzuAujdrW6xDBChqo4UMLPQBmABwNL9uc/vkif0JAC9u2+0mCHNf1b19NCcIFnQdgILAHwRt8fnzFPsnbx7TFcjQ6WUGU6NujldFtE5YAFAMue7sOogDeerpksPoOtoqhIAcSpDZdLYTo26eZ5dbm+wqrq8PrO4RXkemAzA2In1NjmAcIM1AZP9M0eH50T7CUQNFi23CAAqAH2nTAFlAeINNrlQygx2q4v/goWOAqsq0hnrTsKLBlLA6lbsCCzapquKlw5A01ZIpQESjZFqC0PVfmBV1SDRhY29tKLfn7K6a2OS1vpKsaWpOg0sAAjEPdcCs/6Eh9az1QAagG6RfYYUQJp4G7R6WXT2afOsCBMKnQZWVd6g65p/lmAXXbLchAagC0AjXParDJAGyBLvKEQondI6bZnlbqchBBZLeNWCsK6HFz8hefVqZjfDtkaqE8BijldVXQBKACWAnD3OsgBFgDxAnsnGJx2AVOeAVRs2Lm3N0Y29CCXHXEAPtezDMLx2MZVFZz/I40plBFZzSuZ8i/fnboVcjRMT4pBSZthvck7unRHnzAwCi8CAeUOuxmlV4WQ1OCZMzo4xUbsFLGwE5k94fFG3GGyYUmawGhyc7iqLwOJbgbjHn/QEEp6W4jCm8ZNZZ7do7W2XjkJgNQ1ZKLMQTC+EMgtUxTlMZdLYTGpbn8ZmUtt2D0wILLxC6YV8MepPegAgkPAAQCLno5O/0CmtOpUVAMw6OwBYtHal3GDS2NBXisBC4kRowR4SAgsJgYWEwEJCQmAhIbCQEFhISAgsJAQWEgILCQmBhYTAQkJgISEhsJAQWEgILCQkBBYSAgsJgYWEhMBCQmAhIbCQkBBYSAgsJAQWEhICCwmBhYTAQkJCYCEhsJAQWEhICCwkBBYSAgsJCYGFhMBCQmAhISGwkBBYSB2s/wddz7oTNC1T0gAAAABJRU5ErkJggg==",
          fileName="modelica://TILMedia/Images/VLE_ph.png")}),
    Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_ph calculates the thermopyhsical property data with given inputs: pressure (p), enthalpy (h), massfraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));
end VLEFluid_ph;
