within TILMedia.UsersGuide;
package SubstanceRecord "Substance Record"
  extends Internals.ClassTypes.Information;
  class ImportRefpropMediums "Import Refprop Mediums"
    extends Internals.ClassTypes.Information;
    annotation (Documentation(info="<html>
<p>This substance property library provides the possibility to import REFPROP fluids and mixtures. The mediums are imported by copying the FLD-file into the library data-path, usually found at: &QUOT;C:\\ProgramData\\TLK-Thermo GmbH\\TILMedia\\&LT;version&GT;\\fluids&QUOT;. Note that the ProgramData is a hidden Windows folder. Therefore, it might be necessary to enable the display of hidden files in the windows folder options. </p>
<p>To access the properties of the copied FLD-file, it is recommended to create a user-defined substance record. A new substance record is easily created by duplicating the substance record of an existing medium (e.g. &QUOT;TILMedia.VLEFluidTypes.TILMedia_R134a&QUOT;). To assign the REFPROP-medium, the <code>VLEFluidName</code> parameter has to be changed to &QUOT;Refprop.NameOfTheFLDFile&QUOT;.</p>
<p>An example of a user-defined substance record is shown below: </p>
<p><code><span style=\"color: #0000ff;\">record</span>&nbsp;User_defined_substance_record&nbsp;<span style=\"color: #006400;\">&quot;e.g. duplicated from TILMedia.VLEFluidTypes.TILMedia_R134&quot;</span></code>
<br><code>&nbsp;&nbsp;<span style=\"color: #0000ff;\">extends&nbsp;</span><span style=\"color: #ff0000;\">TILMedia.VLEFluidTypes.BaseVLEFluid</span>(</code>
<br><code>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #0000ff;\">final&nbsp;</span>fixedMixingRatio=false,</code>
<br><code>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #0000ff;\">final&nbsp;</span>nc_propertyCalculation=1,</code>
<br><code>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #0000ff;\">final&nbsp;</span>vleFluidNames={&quot;Refprop.NameOfTheFLD-File&quot;},</code>
<br><code>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #0000ff;\">final&nbsp;</span>mixingRatio_propertyCalculation={1});</code>
<br><code><span style=\"color: #0000ff;\">end&nbsp;</span>User_defined_substance_record;</code></p></p>
<p>Furthermore, it is possible to create user-defined mixtures of substances by changing the <code>VLEFluidName</code> to a list of substance names (e.g. {&QUOT;Refprop.NameOfTheFLD-File&QUOT;,&QUOT;Refprop.NameOfANotherFLD-File&QUOT;,&QUOT;TILMedia.CO2&QUOT;}) and assigning the composition of the mixture by the <code>mixingRatio_propertyCalculation</code> parameter (e.g. {0.23,0.25,0.52}). It is possible to hand over the relative composition, since the mixing ratio is standardized. </p>
<p>For more information on the substance records see the <a href=\"Modelica:TILMedia.UsersGuide.SubstanceRecord\">substance record documentation</a>. </p>
</html>"));
  end ImportRefpropMediums;

    annotation(__Dymola_DocumentationClass=true,
     Documentation(info="<html>
<p>Every substance model contains a substance record as replaceable parameter for the object-oriented calculation of thermo-physical properties. The substance record contains the following parameters: </p>
<ul>
<li>fixedMixingRatio - Boolean = true, if mixing ratio fixed during simulation. </li>
<li>nc_propertyCalculation - Integer with number of components which are calculated. </li>
<li>&QUOT;substanceNames&QUOT; - gasNames, liquidNames, etc. Array which lists the substance names. </li>
<li>mixingRatio_propertyCalculation - Array with the mixing ratio of all substances. </li>
<li>condensingIndex - Only for gas mixtures: Integer with the index of the component that can condense.</li>
</ul>
<p>To access the properties of an additional substance, it is recommended to create a new substance record. A new substance record is easily created by duplicating the substance record of an existing medium (e.g. &QUOT;TILMedia.VLEFluidTypes.TILMedia_R134a&QUOT;). To assign the new substance, the <code>vleFluidNames</code> parameter has to be changed to the new substance name (e.g. &QUOT;TILMedia.TILMedia_R1233ZD&QUOT;), included in the <a href=\"Modelica:TILMedia.UsersGuide.SubstanceNames\">list of available substances</a>. In the record, the parameters listed above have to be specified, using the modifier (brackets behind the base class) of the new substance record. An example of a user-defined substance record is shown below: </p>
<p>Pure substance example:
<p><code><span style=\"color: #0000ff;\">record</span>&nbsp;TILMedia_R1233ZD&nbsp;<span style=\"color: #006400;\">&quot;TILMedia.R1233ZD&quot;</span></code>
<br><code>&nbsp;&nbsp;<span style=\"color: #0000ff;\">extends&nbsp;</span><span style=\"color: #ff0000;\">TILMedia.VLEFluidTypes.BaseVLEFluid</span>(</code>
<br><code>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #0000ff;\">final&nbsp;</span>fixedMixingRatio=false,</code>
<br><code>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #0000ff;\">final&nbsp;</span>nc_propertyCalculation=1,</code>
<br><code>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #0000ff;\">final&nbsp;</span>vleFluidNames={&quot;TILMedia.R1233ZD&quot;},</code>
<br><code>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #0000ff;\">final&nbsp;</span>mixingRatio_propertyCalculation={1});</code>
<br><code><span style=\"color: #0000ff;\">end&nbsp;</span>TILMedia_R1233ZD;</code></p></p>
<p>Mixture example:
<p><code><span style=\"color: #0000ff;\">record</span>&nbsp;TILMediaXTR_MyGasMixture&nbsp;<span style=\"color: #006400;\">&quot;MyGasMixture&quot;</span></code>
<br><code>&nbsp;&nbsp;<span style=\"color: #0000ff;\">extends&nbsp;</span><span style=\"color: #ff0000;\">TILMedia.GasTypes.BaseGas</span>(</code>
<br><code>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #0000ff;\">final&nbsp;</span>fixedMixingRatio=false,</code>
<br><code>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #0000ff;\">final&nbsp;</span>nc_propertyCalculation=3,</code>
<br><code>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #0000ff;\">final&nbsp;</span>gasNames={&quot;TILMediaXTR.Water&quot;, &quot;TILMediaXTR.Oxygen&quot;, &quot;TILMediaXTR.Nitrogen&quot;, &quot;TILMediaXTR.Carbon_Dioxide&quot;},</code>
<br><code>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #0000ff;\">final&nbsp;</span>condensingIndex=1,</code>
<br><code>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #0000ff;\">final&nbsp;</span>mixingRatio_propertyCalculation={0.001,0.5,0.5});</code>
<br><code><span style=\"color: #0000ff;\">end&nbsp;</span>TILMediaXTR_MyGasMixture;</code></p></p>
<p>The defined <code>mixingRatio_propertyCalculation</code> describes the default mass fractions of all components. It is possible to give other and also time varying mass fractions xi for mixtures during a simulation. This array xi contains only the independent number of mass fractions, therefore it equals the number of components <code>nc</code> minus one. </p>
<p>All available substance names are listed in the user&apos;s guide: <a href=\"Modelica:TILMedia.UsersGuide.SubstanceNames\">Substance Names</a>. On demand, it is also possible to get interpolated property data, which are faster than the TILMedia and REFPROP data. </p>
</html>"));
end SubstanceRecord;
