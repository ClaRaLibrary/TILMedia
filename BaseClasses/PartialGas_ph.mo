within TILMedia.BaseClasses;
partial model PartialGas_ph
  "Gas vapor model with p, h and xi as independent variables"
  replaceable parameter TILMedia.GasTypes.FlueGasTILMedia gasType
    constrainedby TILMedia.GasTypes.BaseGas
    "type record of the gas or gas mixture"
    annotation(choicesAllMatching=true);

  parameter TILMedia.Internals.TILMediaExternalObject gasPointer annotation(Dialog(tab="Advanced"));

  parameter Boolean stateSelectPreferForInputs = false
    "=true, StateSelect.prefer is set for input variables"
    annotation(Evaluate=true,Dialog(tab="Advanced",group "StateSelect"));
  parameter Boolean computeTransportProperties = false
    "=true, if transport properties are calculated"
    annotation(Dialog(tab="Advanced"));

  //Base Properties
  SI.Density d "Density";
  input SI.AbsolutePressure p(stateSelect=if (stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)
    "Pressure" annotation(Dialog);
  input SI.SpecificEnthalpy h(stateSelect=if (stateSelectPreferForInputs) then StateSelect.prefer else StateSelect.default)
    "Specific enthalpy" annotation(Dialog);
  SI.SpecificEntropy s "Specific entropy";
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
  TILMedia.Internals.Units.RelativeHumidity phi(min=-1)
    "Relative humidity";

  //Pure Component Properties
  SI.PartialPressure p_s(min=-1) "Saturation partial pressure of condensing component";
  SI.MassFraction xi_s(min=-1)
    "Saturation mass fraction of condensing component";
  SI.SpecificEnthalpy delta_hv
    "Specific enthalpy of vaporation of condensing component";
  SI.SpecificEnthalpy delta_hd
    "Specific enthalpy of desublimation of condensing component";
  SI.SpecificEnthalpy h_i[gasType.nc]
    "Specific enthalpy of theoretical pure component";
  parameter SI.MolarMass M_i[gasType.nc] "Molar mass of component i";

  //Dry Component Specific Properties
  Real humRatio "Content of condensing component aka humidity ratio";
  Real humRatio_s
    "Saturation content of condensing component aka saturation humidity ratio";
  SI.SpecificEnthalpy h1px
    "Enthalpy H divided by the mass of components that cannot condense";

  TILMedia.Internals.TransportPropertyRecord transp "Transport property record"
    annotation (Placement(transformation(extent={{-80,60},{-60,80}}, rotation=
           0)));

  annotation (defaultComponentName="gas", Icon(graphics={Bitmap(extent={{-100,
              -100},{100,100}},
          imageSource=
              "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",
          fileName="modelica://TILMedia/Resources/Images/Icon_Gas_ph.png"),
                   Text(extent={{-120,-60},{120,-100}},lineColor={255,153,0},textString = "%name")}),
                   Documentation(info="<html>
                   <p>
                   The gas model Gas_ph calculates the thermopyhsical property data with given inputs: pressure (p), enthalpy (h), mass fraction (xi) and the parameter gasType.<br>
                   The interface and the way of using, is demonstrated in the Testers -&gt; <a href=\"modelica://TILMedia.Testers.TestGas\">TestGas</a>.
                   </p>
                   <hr>
                   </html>"));

end PartialGas_ph;
