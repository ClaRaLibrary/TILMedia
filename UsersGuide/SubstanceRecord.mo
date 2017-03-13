within TILMedia.UsersGuide;
package SubstanceRecord "Substance Record"
  extends Internals.ClassTypes.Information;
  model ImportRefpropMediums "Import Refprop Mediums"
    extends SubstanceRecord;
    annotation (Documentation(info="<html>
<p>This substance property library provides the possibility to import REFPROP fluids and mixtures. The mediums are imported by coping the FLD-file into the library data-path, usually found at: &QUOT;C:\\ProgramData\\TLK-Thermo GmbH\\TILMedia\\&LT;version&GT;\\fluids&QUOT;. Note that the ProgramData is a hidden Windows-folder. Therefore it might be necessary to enable the displayment of hidden files in the windows options. </p>
<p>To access the properties of the copied FLD-file, it is recommended to create a user defined substance record. A new substance record is easily created, by duplicating the substance record of an existing medium (e.g. &QUOT;TILMedia.VLEFluidTypes.TILMedia_R134a&QUOT;). To assign the REFPROP medium, the <code>VLEFluidName</code> parameter has to be changed to &QUOT;Refprop.NameOfTheFLDFile&QUOT;.</p>
<p>An example of a user defined substance record is shown below: </p>
<p style=\"margin-left: 40px;\"><code><b>record</b> imported_Refprop_medium_record &QUOT;e.g. duplicated from TILMedia.VLEFluidTypes.TILMedia_R134&QUOT;</code></p>
<p style=\"margin-left: 40px;\"><code><b>extends</b> TILMedia.VLEFluidTypes.BaseVLEFluid(</code></p>
<p style=\"margin-left: 40px;\"><code><b>final</b> fixedMixingRatio=true,</code></p>
<p style=\"margin-left: 40px;\"><code><b>final</b> nc_propertyCalculation=1,</code></p>
<p style=\"margin-left: 40px;\"><code><b>final</b> VLEFluidNames={&QUOT;Refprop.NameOfTheFLD-File&QUOT;},</code></p>
<p style=\"margin-left: 40px;\"><code><b>final</b> mixingRatio_propertyCalculation={1});</code></p>
<p style=\"margin-left: 40px;\"><code><b>end</b> User_defined_substance_record;</code></p>
<p>Furthermore it is possible to create user defined mixtures of substances, by changing the <code>VLEFluidName</code> to a list of substance names (e.g. {&QUOT;Refprop.NameOfTheFLD-File&QUOT;,&QUOT;Refprop.NameOfANotherFLD-File&QUOT;,&QUOT;TILMedia.CO2&QUOT;}) and assigning the composition of the mixture by the <code>mixingRatio_propertyCalculation</code> parameter (e.g. {0.23,0.25,0.52}). It is possible to hand over the relative composition, since the mixing ratio is standardized. </p>
<p>For more information on the substance records see the <a href=\"Modelica:TILMedia.UsersGuide.SubstanceRecord\">substance record documentation</a>. </p>
</html>"));
  end ImportRefpropMediums;

    annotation(__Dymola_DocumentationClass=true,
     Documentation(info="<html>
<p>Every substance model contains a substance record as replaceable parameter for the object-oriented calculation of thermo-physical properties. The substance record contains the following parameters: </p>
<ul>
<li>fixedMixingRatio - Boolean = true, if mixing ration is fixed during simulation. </li>
<li>nc_propertyCalculation - Integer with number of components which are calculated. </li>
<li>\"substanceNames\" - gasNames, liquidNames, and so on. Array which lists the substance names. </li>
<li>mixingRatio_propertyCalculation - Array with the mixing ratio of all substances. </li>
<li>condensingIndex - Only for gas mixtures: Integer with the index of the component that can condense.</li>
</ul>
<p>To access the properties of an additional substance, it is recommended to create a new substance record. A new substance record is easily created, by duplicating the substance record of an existing medium (e.g. \"TILMedia.VLEFluidTypes.TILMedia_R134a\"). To assign the new substance the <code>VLEFluidName</code> parameter has to be changed to the new substance name (e.g. \"TILMedia.R161\"), included in the <a href=\"Modelica:TILMedia.UsersGuide.SubstanceNames\">list of available substances</a>. In the record the parameters listed above have to be specified, using the modifier (brackets behind the base class) of the new substance record. An example of a user defined substance record is shown below: </p>
<p><b>Example:</b> </p>
<p style=\"margin-left: 40px;\"><code><b>record</b> Refprop_R407C_MIX_nc3 \"Refprop.R407C.MIX at variable composition\"</code></p>
<p style=\"margin-left: 40px;\"><code><b>extends</b> TILMedia.VLEFluidTypes.BaseVLEFluid(</code></p>
<p style=\"margin-left: 60px;\"><code><b>final</b> fixedMixingRatio=false,</code></p>
<p style=\"margin-left: 60px;\"><code><b>final</b> nc_propertyCalculation=3,</code></p>
<p style=\"margin-left: 60px;\"><code><b>final</b> VLEFluidNames={\"Refprop.R32.FLD\",\"Refprop.R125.FLD\",\"Refprop.R134A.FLD\"},</code></p>
<p style=\"margin-left: 60px;\"><code><b>final</b> mixingRatio_propertyCalculation={0.23,0.25,0.52});</code></p>
<p style=\"margin-left: 40px;\"><code><b>end</b> Refprop_R407C_MIX_nc3;</code></p>
<p>The defined <code>mixingRatio_propertyCalculation</code> describes the default mass fractions of all components. It is possible to give other and also time varying mass fractions xi for mixtures during a simulation. This array xi contains only the independent number of mass fractions, so that it has the number of components <code>nc</code> minus one. </p>
<p>All available substance names are listed in the Users Guide: <a href=\"Modelica:TILMedia.UsersGuide.SubstanceNames\">Substance Names</a>. On demand it is also possible to get interpolated property data, which are faster than the TILMedia and REFPROP data. </p>
<p>Further it is possible to access Refprop-mediums by coping the FLD file in the data-path of TILMedia. To learn more on how to import Refprop-mediums, see the <a href=\"Modelica:TILMedia.UsersGuide.SubstanceRecord.ImportRefpropMediums\">import external media documentation</a> </p>
</html>"));
end SubstanceRecord;
