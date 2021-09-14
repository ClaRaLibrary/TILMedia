within TILMedia;
model Gas_ph
  "Gas vapor model with p, h and xi as independent variables"
  extends TILMedia.BaseClasses.PartialGas_ph(gasPointer=
        TILMedia.Internals.TILMediaExternalObject(
        "Gas",
        gasType.concatGasName,
        computeFlags,
        gasType.mixingRatio_propertyCalculation[1:end - 1]/sum(gasType.mixingRatio_propertyCalculation),
        gasType.nc,
        gasType.condensingIndex,
        getInstanceName()),
        M_i = {TILMedia.GasObjectFunctions.molarMass_n(i-1,gasPointer) for i in 1:gasType.nc});
protected
  constant Real invalidValue=-1;
  final parameter Integer computeFlags = TILMedia.Internals.calcComputeFlags(computeTransportProperties,false,true,false,false);
equation
  //calculate molar mass
  M = 1/sum(cat(1,xi,{1-sum(xi)})./M_i);
  //calculate molar fraction
  xi = x.*M_i[1:end-1]*(sum(cat(1,xi,{1-sum(xi)})./M_i)); //xi = x.*M_i/M
  //calculate relative humidity, water content, h1px
  if (gasType.condensingIndex>0 and gasType.nc>1) then
    if (gasType.condensingIndex==gasType.nc) then
      cat(1,xi_dryGas,{1-sum(xi_dryGas)})=xi*(1+humRatio);
    else
      humRatio = xi[gasType.condensingIndex]*(humRatio+1);
      for i in 1:gasType.nc-1 loop
        if (i <> gasType.condensingIndex) then
          xi_dryGas[if (i<gasType.condensingIndex) then i else i-1] = xi[i]*(humRatio+1);
        end if;
      end for;
    end if;
    h1px = h*(1+humRatio);
    phi=TILMedia.Internals.GasObjectFunctions.phi_pThumRatioxidg(p,T,humRatio,xi_dryGas,gasPointer);
    humRatio_s = TILMedia.Internals.GasObjectFunctions.humRatio_s_pTxidg(p, T, xi_dryGas, gasPointer);
    xi_s = TILMedia.Internals.GasObjectFunctions.xi_s_pTxidg(p, T, xi_dryGas, gasPointer);
  else
    phi = invalidValue;
    humRatio = invalidValue;
    h1px = invalidValue;
    humRatio_s = invalidValue;
    xi_s = invalidValue;
  end if;

  if (gasType.condensingIndex<=0) then
    // some properties are only pressure dependent if there is vapour in the mixture
    p_s = invalidValue;
    delta_hv = invalidValue;
    delta_hd = invalidValue;
    h_i = {TILMedia.GasObjectFunctions.specificEnthalpyOfPureGas_Tn(T,i,gasPointer) for i in 0:gasType.nc-1};
  else
    (p_s,delta_hv,delta_hd,h_i) = TILMedia.Internals.GasObjectFunctions.pureComponentProperties_Tnc(T,gasType.nc,gasPointer);
  end if;

  if (gasType.condensingIndex<=0) then
    // some properties are only pressure dependent if there is vapour in the mixture
    T = TILMedia.Internals.GasObjectFunctions.temperature_phxi(-1, h, xi, gasPointer);
    (cp, cv, beta, w) = TILMedia.Internals.GasObjectFunctions.simpleCondensingProperties_phxi(-1, h, xi, gasPointer);
  else
    T = TILMedia.Internals.GasObjectFunctions.temperature_phxi(p, h, xi, gasPointer);
    (cp, cv, beta, w) = TILMedia.Internals.GasObjectFunctions.simpleCondensingProperties_phxi(p, h, xi, gasPointer);
  end if;
  s = TILMedia.Internals.GasObjectFunctions.specificEntropy_phxi(p, h, xi, gasPointer);
  (d,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,p_i,xi_gas) = TILMedia.Internals.GasObjectFunctions.additionalProperties_pTxi(p,T,xi,gasPointer);
  if computeTransportProperties then
    (transp.Pr,
     transp.lambda,
     transp.eta,
     transp.sigma) = TILMedia.Internals.GasObjectFunctions.transportProperties_pTxi(p, T, xi, gasPointer);
  else
    transp = TILMedia.Internals.TransportPropertyRecord(
      invalidValue,
      invalidValue,
      invalidValue,
      invalidValue);
  end if;

  annotation (defaultComponentName="gas",
    Protection(access=Access.packageDuplicate),
                   Documentation(info="<html>
                   <p>
                   The gas model Gas_ph calculates the thermopyhsical property data with given inputs: pressure (p), enthalpy (h), mass fraction (xi) and the parameter gasType.<br>
                   The interface and the way of using, is demonstrated in the Testers -&gt; <a href=\"modelica://TILMedia.Testers.TestGas\">TestGas</a>.
                   </p>
                   <hr>
                   </html>"));
end Gas_ph;
