within TILMedia.BaseClasses;
partial model PartialLiquid_pT
  "Incompressible liquid model with p and T as independent variables"
  replaceable parameter .TILMedia.LiquidTypes.TILMedia_Water liquidType constrainedby
    .TILMedia.LiquidTypes.BaseLiquid "type record of the liquid"
    annotation(choicesAllMatching=true);

  parameter .TILMedia.Internals.TILMediaExternalObject liquidPointer annotation (Dialog(tab="Advanced"));

  parameter Boolean computeTransportProperties = false
    "=true, if transport properties are calculated"
    annotation(Dialog(tab="Advanced"));

  //Base Properties
  SI.Density d "Density";
  SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.AbsolutePressure p "Pressure" annotation(Dialog);
  SI.SpecificEntropy s "Specific entropy";
  input SI.Temperature T "Temperature" annotation(Dialog);
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

annotation (defaultComponentName="liquid", Icon(graphics={Text(
      extent={{-120,-60},{120,-100}},lineColor={0,170,238},textString="%name"),
      Bitmap(extent={{-100,-100},{100,100}},
          imageSource=
              "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",
          fileName="modelica://TILMedia/Images/Icon_Liquid_pT.png")}),
      Documentation(info="<html>
          <p>
          The liquid model is designed for incompressible liquid fluids. 
          All thermophysical properties are calculated dependent on the temperature (T). 
          Only the specific entropy (s) is dependent on the temperature (T) <b>and</b> the given pressure (p). 
          The parameter liquidType defines the medium. 
          All available liquids are listed in the User's Guide -> <a href=\"modelica://TILMedia.UsersGuide.SubstanceNames\">Substance Names</a>. 
          The interface and the way of using, is demonstrated in the Testers -> <a href=\"modelica://TILMedia.Testers.TestLiquid\">TestLiquid</a>.
          </p>
          <hr>
          </html>"));

end PartialLiquid_pT;
