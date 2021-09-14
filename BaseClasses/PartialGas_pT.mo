within TILMedia.BaseClasses;
partial model PartialGas_pT
  "Gas vapor model with p, T and xi as independent variables"
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
          fileName="modelica://TILMedia/Resources/Images/Icon_Gas_pT.png"),
                   Text(extent={{-120,-60},{120,-100}},lineColor={255,153,0},textString = "%name")}),
                   Documentation(info="<html>
                   <p>
                   The gas model Gas_pT calculates the thermopyhsical property data with given inputs: pressure (p), temperature (T), mass fraction (xi) and the parameter gasType.<br>
                   The interface and the way of using, is demonstrated in the Testers -&gt; <a href=\"modelica://TILMedia.Testers.TestGas\">TestGas</a>.
                   </p>
                   <hr>
                   </html>"));

end PartialGas_pT;
