within TILMedia;
model Gas_ps "Gas vapor model with p, s and xi as independent variables"
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
  input SI.SpecificEntropy s(stateSelect=if (stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)
    "Specific entropy" annotation(Dialog);
  SI.Temperature T "Temperature";
  input SI.MassFraction xi[gasType.nc-1](each stateSelect=if (stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default) = gasType.xi_default
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

  T = TILMedia.Internals.GasObjectFunctions.temperature_psxi(p, s, xi, gasPointer);
  h = TILMedia.Internals.GasObjectFunctions.specificEnthalpy_psxi(p, s, xi, gasPointer);
  (cp, cv, beta, w) = TILMedia.Internals.GasObjectFunctions.simpleCondensingProperties_pTxi(p, T, xi, gasPointer);
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

  annotation (defaultComponentName="gas", Icon(graphics={
                   Text(extent={{-120,-60},{120,-100}},lineColor={255,153,0},textString = "%name"), Bitmap(
          extent={{-100,-100},{100,100}},
          imageSource=
              "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",
          fileName="modelica://TILMedia/Images/Gas_ps.png")}),
  __Dymola_Protection(
      allowDuplicate = true,
      showDiagram=true,
      showText=true),
                   Documentation(info="<html>
                   <p>
                   The gas model Gas_ps calculates the thermopyhsical property data with given inputs: pressure (p), entropy (s), mass fraction (xi) and the parameter gasType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestGas\">TestGas</a>.
                   </p>
                   <hr>
                   </html>"));
end Gas_ps;
