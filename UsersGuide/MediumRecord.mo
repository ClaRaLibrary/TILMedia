within TILMedia.UsersGuide;
model MediumRecord "Medium Record"
  extends Internals.ClassTypes.Information;
    annotation(__Dymola_DocumentationClass=true,
     Documentation(info="<html>
Every substance model contains a medium record as replaceable parameter for the object-oriented calculation of thermo-physical properties.
The medium record defines the medium type with the following parameters:
<br>
<ul>
  <li> fixedMixingRatio - Boolean = true, if mixing ration is fixed during simulation.</li>
  <li> nc_propertyCalculation - Integer with number of components which are calculated.</li>
  <li> 'mediaNames' - gasNames, liquidNames, and so on. Array which lists the media names.</li>
  <li> mixingRatio_propertyCalculation - Array with the mixing ratio of all media.</li>
  <li> condensingIndex - Only for gas mixtures: Integer with the index of the component that can condense.</li>
</ul>
<br>
A medium can be added easily to TILMedia Modelica by creating a new record that extends from the corresponding 'BaseRecord'.
The 'BaseRecords' can be found in the packages GasTypes, LiquidTypes, VLEFluidTypes, SolidTypes and SLEMediumTypes.
A new record can be added inside the corresponding package and in this new record the above listed parameters have to be specified.
The parameters can be specified inside the modifier (brackets behind the base class) of the new medium record.
<br><br>
<b>Example:</b>
<blockquote>
<pre>
<b>record</b> Refprop_R407C_MIX_nc3 &quot;Refprop.R407C.MIX at variable composition&quot;
  <b>extends</b> TILMedia.VLEFluidTypes.BaseVLEFluid(
    <b>final</b> fixedMixingRatio=false,
    <b>final</b> nc_propertyCalculation=3,
    <b>final</b> VLEFluidNames={&quot;Refprop.R32.FLD&quot;,&quot;Refprop.R125.FLD&quot;,&quot;Refprop.R134A.FLD&quot;},
    <b>final</b> mixingRatio_propertyCalculation={0.23,0.25,0.52});
<b>end</b> Refprop_R407C_MIX_nc3;
</pre>
</blockquote>
<br>
The defined 'mixingRatio_propertyCalculation' describes the default mass fractions of all components.
It's possible to give other and also time varying mass fractions xi for mixtures during a simulation.
This array xi contains only the independent number of mass fractions, so that it has the number of components minus one.
<br><br>
All available media names are listed in the User's Guide: <a href=\"Modelica:TILMedia.UsersGuide.MediaNames\">Media Names</a>.
On demand it's also possible to get interpolated property data, which are faster than the TILMedia and REFPROP data.
<br>
<br>
</html>"));
end MediumRecord;
