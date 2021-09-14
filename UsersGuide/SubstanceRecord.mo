within TILMedia.UsersGuide;
package SubstanceRecord "Substance Record"
  extends TILMedia.Internals.ClassTypes.Information;
  class ImportRefpropMediums "Import Refprop Mediums"
    extends TILMedia.Internals.ClassTypes.Information;
    annotation (Documentation(info="<html>
<p>This substance property library provides the possibility to import REFPROP fluids and mixtures. The mediums are imported by copying the FLD-file into the library data-path, usually found at: \"C:\\ProgramData\\TLK-Thermo GmbH\\TILMedia\\&lt;version&gt;\\Refprop\". Note that the ProgramData is a hidden Windows folder. Therefore, it might be necessary to enable the display of hidden files in the windows folder options. </p>
<p>To access the properties of the copied FLD-file, it is recommended to create a user-defined substance record. A new substance record is easily created by duplicating the substance record of an existing medium (e.g. \"TILMedia.VLEFluidTypes.TILMedia_R134a\"). To assign the REFPROP-medium, the <code>VLEFluidName</code> parameter has to be changed to \"Refprop.NameOfTheFLDFile\".</p>
<p>An example of a user-defined substance record is shown below: </p>
<p><code><span style=\"color: #0000ff;\">record</span> User_defined_substance_record <span style=\"color: #006400;\">\"e.g. duplicated from TILMedia.VLEFluidTypes.TILMedia_R134a\"</span></code>
<br><code>  <span style=\"color: #0000ff;\">extends </span><span style=\"color: #ff0000;\">TILMedia.VLEFluidTypes.BaseVLEFluid</span>(</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>fixedMixingRatio=false,</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>nc_propertyCalculation=1,</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>vleFluidNames={\"Refprop.NameOfTheFLDFile\"},</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>mixingRatio_propertyCalculation={1});</code>
<br><code><span style=\"color: #0000ff;\">end </span>User_defined_substance_record;</code></p>
<p>Furthermore, it is possible to create user-defined mixtures of substances by changing the <code>VLEFluidName</code> to a list of substance names (e.g. {\"Refprop.PROPANE.FLD\",\"Refprop.ISOBUTAN.FLD\",\"Refprop.CO2.FLD\"}) and assigning the composition of the mixture by the <code>mixingRatio_propertyCalculation</code> parameter (e.g. {0.65,0.3,0.05}). It is possible to hand over the relative composition, since the mixing ratio is standardized. </p>
<p>For more information on the substance records see the <a href=\"modelica://TILMedia.UsersGuide.SubstanceRecord\">substance record documentation</a>. </p>
</html>"));
  end ImportRefpropMediums;
    annotation(DocumentationClass=true,
     Documentation(info="<html>
<p>Every substance model contains a substance record as replaceable parameter for the object-oriented calculation of thermo-physical properties. The substance record contains the following parameters: </p>
<ul>
<li>fixedMixingRatio - Boolean = true, if mixing ratio fixed during simulation. </li>
<li>nc_propertyCalculation - Integer with number of components which are calculated. </li>
<li>\"substanceNames\" - gasNames, liquidNames, etc. Array which lists the substance names. </li>
<li>mixingRatio_propertyCalculation - Array with the mixing ratio of all substances. </li>
<li>condensingIndex - Only for gas mixtures: Integer with the index of the component that can condense.</li>
</ul>
<p>To access the properties of an additional substance, it is recommended to create a new substance record. A new substance record is easily created by duplicating the substance record of an existing medium (e.g. \"TILMedia.VLEFluidTypes.TILMedia_R134a\"). To assign the new substance, the <code>vleFluidNames</code> parameter has to be changed to the new substance name (e.g. \"TILMedia.TILMedia_R1233ZD\"), included in the <a href=\"modelica://TILMedia.UsersGuide.SubstanceNames\">list of available substances</a>. In the record, the parameters listed above have to be specified, using the modifier (brackets behind the base class) of the new substance record. An example of a user-defined substance record is shown below: </p>
<p>Pure substance example:
</p><p><code><span style=\"color: #0000ff;\">record</span> TILMedia_R1233ZDE <span style=\"color: #006400;\">\"TILMedia.R1233ZDE\"</span></code>
<br><code>  <span style=\"color: #0000ff;\">extends </span><span style=\"color: #ff0000;\">TILMedia.VLEFluidTypes.BaseVLEFluid</span>(</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>fixedMixingRatio=true,</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>nc_propertyCalculation=1,</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>vleFluidNames={\"TILMedia.R1233ZDE\"},</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>mixingRatio_propertyCalculation={1});</code>
<br><code><span style=\"color: #0000ff;\">end </span>TILMedia_R1233ZDE;</code></p>
<p>Mixture example:
</p><p><code><span style=\"color: #0000ff;\">record</span> TILMediaXTR_MyGasMixture <span style=\"color: #006400;\">\"MyGasMixture\"</span></code>
<br><code>  <span style=\"color: #0000ff;\">extends </span><span style=\"color: #ff0000;\">TILMedia.GasTypes.BaseGas</span>(</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>fixedMixingRatio=false,</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>nc_propertyCalculation=4,</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>gasNames={\"TILMediaXTR.Water\", \"TILMediaXTR.Oxygen\", \"TILMediaXTR.Nitrogen\", \"TILMediaXTR.Carbon_Dioxide\"},</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>condensingIndex=1,</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>mixingRatio_propertyCalculation={0.001,0.25,0.75,0.001});</code>
<br><code><span style=\"color: #0000ff;\">end </span>TILMediaXTR_MyGasMixture;</code></p>
<p>The defined <code>mixingRatio_propertyCalculation</code> describes the default mass fractions of all components. It is possible to give other and also time varying mass fractions xi for mixtures during a simulation. This array xi contains only the independent number of mass fractions, therefore it equals the number of components <code>nc</code> minus one. </p>
<p>All available substance names are listed in the user's guide: <a href=\"modelica://TILMedia.UsersGuide.SubstanceNames\">Substance Names</a>. On demand, it is also possible to get interpolated property data, which are faster than the TILMedia and REFPROP data. </p>
</html>"));
end SubstanceRecord;
