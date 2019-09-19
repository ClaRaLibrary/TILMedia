within TILMedia;
model VLEFluid_dT
  "Compressible fluid model with d, T and xi as independent variables"
  extends BaseClasses.PartialVLEFluid_dT(redeclare class PointerType =
        TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject,
      vleFluidPointer=
        TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject(
        vleFluidType.concatVLEFluidName,
        computeFlags,
        vleFluidType.mixingRatio_propertyCalculation[1:end - 1]/sum(
          vleFluidType.mixingRatio_propertyCalculation),
        vleFluidType.nc,
        getInstanceName()));
protected
  constant Real invalidValue=-1;
  final parameter Integer computeFlags=TILMedia.Internals.calcComputeFlags(
      computeTransportProperties,
      interpolateTransportProperties,
      computeSurfaceTension,
      deactivateTwoPhaseRegion,
      deactivateDensityDerivatives);

equation
  assert(vleFluidType.nc == 1, "This TILMedia VLEFluid interface cannot handle variable concentrations");
  M_i = TILMedia.Internals.VLEFluidObjectFunctions.molarMass_nc(vleFluidType.nc,
    vleFluidPointer);
  (crit.d,crit.h,crit.p,crit.s,crit.T) =
    TILMedia.Internals.VLEFluidObjectFunctions.cricondentherm_xi(xi,
    vleFluidPointer);
  //calculate molar mass
  M = M_i[1];

  //Calculate Main Properties of state
  h =
    TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEnthalpy_dTxi(
    d,
    T,
    xi,
    vleFluidPointer);
  p =
    TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.pressure_dTxi(
    d,
    T,
    xi,
    vleFluidPointer);
  s =
    TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEntropy_dTxi(
    d,
    T,
    xi,
    vleFluidPointer);

  //Calculate Additional Properties of state
  (q,cp,cv,beta,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,w,gamma) =
    TILMedia.Internals.VLEFluidObjectFunctions.additionalProperties_dTxi(
    d,
    T,
    xi,
    vleFluidPointer);

  //Calculate VLE Properties
  //VLE only depends on p or T
  (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,VLE.s_v,
    VLE.T_v,VLE.xi_v) =
    TILMedia.Internals.VLEFluidObjectFunctions.VLEProperties_dTxi(
    -1,
    T,
    xi,
    vleFluidPointer);

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
    //VLE only depends on p or T
    (VLEAdditional.cp_l,VLEAdditional.beta_l,VLEAdditional.kappa_l,
      VLEAdditional.cp_v,VLEAdditional.beta_v,VLEAdditional.kappa_v) =
      TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_dTxi(
      -1,
      T,
      xi,
      vleFluidPointer);
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
    //VLE only depends on p or T
    (VLETransp.Pr_l,VLETransp.Pr_v,VLETransp.lambda_l,VLETransp.lambda_v,
      VLETransp.eta_l,VLETransp.eta_v) =
      TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_dTxi(
      -1,
      T,
      xi,
      vleFluidPointer);
  else
    VLETransp.Pr_l = invalidValue;
    VLETransp.Pr_v = invalidValue;
    VLETransp.lambda_l = invalidValue;
    VLETransp.lambda_v = invalidValue;
    VLETransp.eta_l = invalidValue;
    VLETransp.eta_v = invalidValue;
  end if;

  annotation (
    defaultComponentName="vleFluid",
    Protection(access=Access.packageDuplicate),
    Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_dT calculates the thermopyhsical property data with given inputs: density (d), temperature (T), mass fraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));
end VLEFluid_dT;
