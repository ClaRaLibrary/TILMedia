within TILMedia.LiquidTypes;
record BaseLiquid "Base record for liquid definitions"
  extends Internals.ClassTypes.Record;
  constant Boolean fixedMixingRatio
    "Treat medium as pseudo pure in Modelica if it is a mixture" annotation(HideResult = true);
  constant Integer nc_propertyCalculation(min=1)
    "Number of components for fluid property calculations" annotation(HideResult = true);
  final constant Integer nc=if fixedMixingRatio then 1 else nc_propertyCalculation
    "Number of components in Modelica models" annotation(Evaluate=true, HideResult = true);
  constant Internals.LiquidName[nc_propertyCalculation] liquidNames "Array of liquid names e.g. {\"liquidName\"} for pure component"
                                                              annotation(choices);
  constant Real[nc_propertyCalculation] mixingRatio_propertyCalculation
    "Mixing ratio for fluid property calculation (={1} for pure components)" annotation(HideResult = true);
  constant Real[nc] defaultMixingRatio = if fixedMixingRatio then {1} else mixingRatio_propertyCalculation
    "Default composition for models in Modelica (={1} for pure components)" annotation(HideResult = true);
  constant Real xi_default[nc-1] = defaultMixingRatio[1:end-1]/sum(defaultMixingRatio)
    "Default mass fractions" annotation(HideResult = true);
  constant String concatLiquidName=TILMedia.Internals.concatNames(liquidNames);
  constant Integer ID=0
    "ID is used to map the selected Liquid to the sim.cumulatedLiquidMass array item" annotation(HideResult = true);
  annotation (Documentation(info="<html>
<p><br>Every liquid substance model contains a substance record as replaceable parameter extending from this base liquid model. The substance record contains the following parameters: </p>
<ul>
<li>fixedMixingRatio - Boolean = true, if mixing ratio is fixed during simulation. </li>
<li>nc_propertyCalculation - Integer with number of components which are calculated. </li>
<li>&QUOT;substanceNames&QUOT; - liquidName 1, liquidName 2, and so on. Array which lists the substance names. </li>
<li>mixingRatio_propertyCalculation - Array with the mixing ratio of all substances. </li>
</ul>
<p><b>Access additional substances:</b> </p>
<p>To acces the properties of an additional substance, it is possible to create a new substance reccord. For more information on the acces of additional propeties see the <a href=\"Modelica:TILMedia.UsersGuide.SubstanceRecord\">substance record documentation</a>. </p>
<p>Furthermore it is possible to parameterize this liquide base record, using a liquid substance name, listed in the <a href=\"Modelica:TILMedia.UsersGuide.SubstanceNames\">substance names documentation</a>. An example how to parameterize the base liquid model is shown below. However note that this is only a local configuration and therefore only accesible in the corresponding model.</p>
<p><img src=\"modelica://TILMedia/Images/Base_Liquid_Parameter_frame.png\"/> </p>
</html>"));
end BaseLiquid;
