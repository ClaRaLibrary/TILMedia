within TILMedia;
model Gas_ph "Gas vapor model with p, h and xi as independent variables"
  replaceable parameter TILMedia.GasTypes.BaseGas gasType
    constrainedby TILMedia.GasTypes.BaseGas
    "type record of the gas or gas mixture"
    annotation(choicesAllMatching=true);

  parameter Boolean stateSelectPreferForInputs=false
    "=true, StateSelect.prefer is set for input variables"
    annotation(Evaluate=true,Dialog(tab="Advanced",group "StateSelect"));
  parameter Boolean computeTransportProperties = false
    "=true, if transport properties are calculated"
    annotation(Dialog(tab="Advanced"));

  //Base Properties
  SI.Density d "Density";
  input SI.SpecificEnthalpy h(stateSelect=if (stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)
    "Specific enthalpy" annotation(Dialog);
  input SI.AbsolutePressure p(stateSelect=if (stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)
    "Pressure" annotation(Dialog);
  SI.SpecificEntropy s "Specific entropy";
  SI.Temperature T "Temperature";
  input SI.MassFraction xi[gasType.nc-1](stateSelect=if (stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default) = gasType.xi_default
    "Mass fraction" annotation(Dialog);
  SI.MassFraction xi_dryGas[if (gasType.nc>1 and gasType.condensingIndex>0) then gasType.nc-2 else 0]
    "Mass fraction";
  SI.MoleFraction x[gasType.nc-1] "Mole fraction";
  SI.MolarMass M "Average molar mass";

  //Additional Properties
  SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  SI.Compressibility kappa "Isothermal compressibility";
  SI.Velocity w "Speed of sound";
  SI.DerDensityByEnthalpy drhodh_pxi
    "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  SI.DerDensityByPressure drhodp_hxi
    "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  TILMedia.Internals.Units.DensityDerMassFraction drhodxi_ph[gasType.nc-1]
    "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  SI.PartialPressure p_i[gasType.nc] "Partial pressure";
  SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
  TILMedia.Internals.Units.RelativeHumidity phi(min=if (gasType.condensingIndex>0) then 0 else -1)
    "Relative humidity";

  //Pure Component Properties
  SI.PartialPressure p_s "Saturation partial pressure of condensing component";
  SI.MassFraction xi_s(min=if (gasType.condensingIndex>0) then 0 else -1)
    "Saturation mass fraction of condensing component";
  SI.SpecificEnthalpy delta_hv
    "Specific enthalpy of vaporation of condensing component";
  SI.SpecificEnthalpy delta_hd
    "Specific enthalpy of desublimation of condensing component";
  SI.SpecificEnthalpy h_i[gasType.nc]
    "Specific enthalpy of theoretical pure component";
  SI.MolarMass M_i[gasType.nc] "Molar mass of component i";

  //Dry Component Specific Properties
  Real humRatio "Content of condensing component aka humidity ratio";
  Real humRatio_s
    "Saturation content of condensing component aka saturation humidity ratio";
  SI.SpecificEnthalpy h1px
    "Enthalpy H divided by the mass of components that cannot condense";

  TILMedia.Internals.TransportPropertyRecord transp "Transport property record" annotation (extent=[-80,40; -60,60]);

  TILMedia.GasObjectFunctions.GasPointer gasPointer=TILMedia.GasObjectFunctions.GasPointer(gasType.concatGasName, computeFlags, gasType.mixingRatio_propertyCalculation[1:end-1]/sum(gasType.mixingRatio_propertyCalculation), gasType.nc_propertyCalculation, gasType.nc, gasType.condensingIndex, redirectorOutput)
    "Pointer to external medium memory";
protected
  constant Real invalidValue=-1;
  final parameter Integer computeFlags = TILMedia.Internals.calcComputeFlags(computeTransportProperties,false,true,false);
  parameter Integer redirectorOutput=TILMedia.Internals.redirectModelicaFormatMessage();
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
    phi = -1;
    humRatio = -1;
    h1px = -1;
    humRatio_s = -1;
    xi_s = -1;
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
  M_i = TILMedia.GasObjectFunctions.molarMass_n({i-1 for i in 1:gasType.nc},gasPointer);
  (d,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,p_i,xi_gas) = TILMedia.Internals.GasObjectFunctions.additionalProperties_pTxi(p,T,xi,gasPointer);
  (p_s,delta_hv,delta_hd,h_i) = TILMedia.Internals.GasObjectFunctions.pureComponentProperties_Tnc(T,gasType.nc,gasPointer);
  if computeTransportProperties then
    transp = TILMedia.Internals.GasObjectFunctions.transportProperties_pTxi(p, T, xi, gasPointer);
  else
    transp = TILMedia.Internals.TransportPropertyRecord(
      invalidValue,
      invalidValue,
      invalidValue,
      invalidValue);
  end if;

  annotation (defaultComponentName="gas", Icon(graphics={Bitmap(extent={{-100,
              -100},{100,100}},
          imageSource=
              "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",
          fileName="modelica://TILMedia/Images/Gas_ph.png"),
                   Text(extent={{-120,-60},{120,-100}},lineColor={255,153,0},textString = "%name")}),
                   Documentation(info="<html>
                   <p>
                   The gas model Gas_ph calculates the thermopyhsical property data with given inputs: pressure (p), enthalpy (h), massfraction (xi) and the parameter gasType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestGas\">TestGas</a>.
                   </p>
                   <hr>
                   </html>"));
end Gas_ph;
