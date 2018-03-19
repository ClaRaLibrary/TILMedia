within TILMedia;
model Gas_pT "Gas vapor model with p, T and xi as independent variables"
  replaceable parameter TILMedia.GasTypes.BaseGas gasType constrainedby
    TILMedia.GasTypes.BaseGas "type record of the gas or gas mixture"
    annotation(choicesAllMatching=true);

  parameter Boolean stateSelectPreferForInputs=false
    "=true, StateSelect.prefer is set for input variables"
    annotation(Evaluate=true,Dialog(tab="Advanced",group "StateSelect"));
  parameter Boolean computeTransportProperties = false
    "=true, if transport properties are calculated"
    annotation(Dialog(tab="Advanced"));

  //Base Properties
  SI.Density d "Density";
  SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.AbsolutePressure p(stateSelect=if (stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)
    "Pressure" annotation(Dialog);
  SI.SpecificEntropy s "Specific entropy";
  input SI.Temperature T(stateSelect=if (stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)
    "Temperature" annotation(Dialog);
  input SI.MassFraction xi[gasType.nc-1](each stateSelect=if (stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default) = gasType.xi_default
    "Mass fraction" annotation(Dialog);
  SI.MassFraction xi_dryGas[if (gasType.nc>1 and gasType.condensingIndex>0) then gasType.nc-2 else 0]
    "Mass fraction";
  SI.MoleFraction x[gasType.nc-1] "Mole fraction";
  SI.MolarMass M(min=1e-99) "Average molar mass";

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
  TILMedia.Internals.Units.RelativeHumidity phi(min=if (gasType.condensingIndex>0) then 0 else -2)
    "Relative humidity";

  //Pure Component Properties
  SI.PartialPressure p_s(min=if (gasType.condensingIndex>0) then 0 else -1) "Saturation partial pressure of condensing component";
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

  TILMedia.Internals.TransportPropertyRecord transp "Transport property record"
    annotation (Placement(transformation(extent={{-80,60},{-60,80}}, rotation=
           0)));

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
    h = TILMedia.Internals.GasObjectFunctions.specificEnthalpy_pTxi(-1, T, xi, gasPointer);
    (cp, cv, beta, w) = TILMedia.Internals.GasObjectFunctions.simpleCondensingProperties_pTxi(-1, T, xi, gasPointer);
  else
    h = TILMedia.Internals.GasObjectFunctions.specificEnthalpy_pTxi(p, T, xi, gasPointer);
    (cp, cv, beta, w) = TILMedia.Internals.GasObjectFunctions.simpleCondensingProperties_pTxi(p, T, xi, gasPointer);
  end if;
  s = TILMedia.Internals.GasObjectFunctions.specificEntropy_pTxi(p, T, xi, gasPointer);
  for i in 1:gasType.nc loop
        M_i[i] = TILMedia.GasObjectFunctions.molarMass_n(i-1,gasPointer);
  end for;
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
          fileName="modelica://TILMedia/Images/Gas_pT.png"),
                   Text(extent={{-120,-60},{120,-100}},lineColor={255,153,0},textString = "%name")}),
  __Dymola_Protection(
      allowDuplicate = true,
      showDiagram=true,
      showText=true),
                   Documentation(info="<html>
                   <p>
                   The gas model Gas_pT calculates the thermopyhsical property data with given inputs: pressure (p), temperature (T), mass fraction (xi) and the parameter gasType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestGas\">TestGas</a>.
                   </p>
                   <hr>
                   </html>"));
end Gas_pT;
