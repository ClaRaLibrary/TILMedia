within TILMedia.BaseClasses;
partial model PartialLiquid_ph
  "Incompressible liquid model with p and h as independent variables"
  replaceable parameter .TILMedia.LiquidTypes.TILMedia_Water liquidType constrainedby
    .TILMedia.LiquidTypes.BaseLiquid "type record of the liquid"
    annotation(choicesAllMatching=true);

  parameter .TILMedia.Internals.TILMediaExternalObject liquidPointer annotation (Dialog(tab="Advanced"));

  parameter Boolean computeTransportProperties = false
    "=true, if transport properties are calculated"
     annotation(Dialog(tab="Advanced"));

  //Base Properties
  SI.Density d "Density";
  input SI.AbsolutePressure p "Pressure" annotation(Dialog);
  input SI.SpecificEnthalpy h "Specific enthalpy" annotation(Dialog);
  SI.SpecificEntropy s "Specific entropy";
  SI.Temperature T "Temperature";
  input SI.MassFraction xi[liquidType.nc-1]=liquidType.xi_default
    "Mass fraction";
//  SI.MoleFraction x[liquidType.nc-1] "Mole fraction";

  SI.SpecificHeatCapacity cp "Specific heat capacity";
  SI.LinearExpansionCoefficient beta "Isobaric expansion coefficient";

  .TILMedia.Internals.TransportPropertyRecord transp "Transport property record"
    annotation (Placement(transformation(extent={{-80,60},{-60,80}}, rotation=
           0)));

  function getProperties = .TILMedia.Internals.getProperties (
      d=d,
      h=h,
      p=p,
      s=s,
      T=T,
      cp=cp,
      Pr=transp.Pr,
      lambda=transp.lambda,
      eta=transp.eta,
      sigma=transp.sigma);

annotation (defaultComponentName="liquid", Icon(graphics={
      Bitmap(extent={{-100,-100},{100,100}},
          imageSource=
              "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",
          fileName="modelica://TILMedia/Images/Icon_Liquid_ph.png"),
                                                          Text(
      extent={{-120,-60},{120,-100}},lineColor={0,170,238},textString="%name")}),
      Documentation(info="<html>
          <p>
          The liquid model is designed for incompressible liquid fluids. 
          All thermophysical properties are calculated dependent on the specific enthalpy (h). 
          Only the specific entropy (s) is dependent on the specific enthalpy (h) <b>and</b> the given pressure (p). 
          The parameter liquidType defines the medium. 
          All available liquids are listed in the User's Guide -> <a href=\"modelica://TILMedia.UsersGuide.SubstanceNames\">Substance Names</a>.
          The interface and the way of using, is demonstrated in the Testers -> <a href=\"modelica://TILMedia.Testers.TestLiquid\">TestLiquid</a>.
          </p>
          <hr>
          </html>"));

end PartialLiquid_ph;
