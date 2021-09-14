within TILMedia;
package UsersGuide "User's Guide"
  extends TILMedia.Internals.ClassTypes.Information;


  annotation(DocumentationClass=true,
     Documentation(info="<html><p>
     
TILMedia Suite provides methods of calculation, which express thermo-physical properties of incompressible liquids, ideal gases as well as real fluids containing a vapor liquid equilibrium.
In each fluid category (Gas, Liquid and VLEFluids) mixtures may be created.
The mathematical equations of substance properties are optimized for stable and fast dynamic simulations of systems.
You may select substance data from different sources for your calculation:
<br>
</p>
<ul>
<li> Gas substances</li>
<li>
  <ul> 
    <li> TLK Implementation: 20 mediums</li>
    <li> VDI-Guideline 4670: 9 mediums</li>
    <li> VDI Heat Atlas: 275 mediums</li>
    <li> NASA Glenn Coefficients: 2024 mediums</li>
  </ul>
</li>
<li> Liquid substances</li>
<li>
  <ul> 
    <li> TLK Implementation: 71 mediums</li>
    <li> International Institute of Refrigeration (IIR), Secondary Working Fluids (SWF): 21 mediums</li>
    <li> VDI Heat Atlas: 272 mediums</li>
  </ul>
</li>
<li> VLEFluid substances</li>
<li>
  <ul> 
    <li> TLK Implementation: 97 mediums</li>
    <li> External library Refprop: 279 mediums</li>
    <li> External library CoolProp: 123 mediums</li>
    <li> VDI Heat Atlas: 275 mediums</li>
  </ul>
</li>
</ul>
<br>
All available substances are listed in the User's Guide: <a href=\"modelica://TILMedia.UsersGuide.SubstanceNames\">Substance Names</a>.
On demand it is also possible to get interpolated property data, which are faster than TILMedia and REFPROP data.
<br>
<br>
</html>"));
end UsersGuide;
