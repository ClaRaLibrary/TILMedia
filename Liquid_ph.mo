within TILMedia;
model Liquid_ph
  "Incompressible liquid model with p and h as independent variables"
  replaceable parameter TILMedia.LiquidTypes.BaseLiquid liquidType constrainedby
    TILMedia.LiquidTypes.BaseLiquid "type record of the liquid"
    annotation(choicesAllMatching=true);

  parameter Boolean computeTransportProperties = false
    "=true, if transport properties are calculated"
     annotation(Dialog(tab="Advanced"));

  //Base Properties
  SI.Density d "Density";
  input SI.SpecificEnthalpy h "Specific enthalpy" annotation(Dialog);
  input SI.AbsolutePressure p "Pressure" annotation(Dialog);
  SI.SpecificEntropy s "Specific entropy";
  SI.Temperature T "Temperature";
  input SI.MassFraction xi[liquidType.nc-1]=liquidType.xi_default
    "Mass fraction";
//  SI.MoleFraction x[liquidType.nc-1] "Mole fraction";

  SI.SpecificHeatCapacity cp "Specific heat capacity";
  SI.LinearExpansionCoefficient beta "Isobaric expansion coefficient";

  TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer=TILMedia.LiquidObjectFunctions.LiquidPointer(liquidType.concatLiquidName, computeFlags, liquidType.xi_default, liquidType.nc_propertyCalculation, liquidType.nc, redirectorOutput)
    "Pointer to external medium memory";
  TILMedia.Internals.TransportPropertyRecord transp "Transport property record"
    annotation (Placement(transformation(extent={{-80,60},{-60,80}}, rotation=
           0)));
protected
  constant Real invalidValue=-1;
  final parameter Integer computeFlags = TILMedia.Internals.calcComputeFlags(computeTransportProperties,false,true,false);

  parameter Integer redirectorOutput=TILMedia.Internals.redirectModelicaFormatMessage();

public
  function getProperties = TILMedia.Internals.getProperties (
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

equation
  (d, T, cp, beta) = TILMedia.Internals.LiquidObjectFunctions.properties_hxi(h, xi, liquidPointer);
  s = TILMedia.Internals.LiquidObjectFunctions.specificEntropy_pTxi(p, T, xi, liquidPointer);
  if computeTransportProperties then
    transp = TILMedia.Internals.LiquidObjectFunctions.transportPropertyRecord_Txi(T, xi, liquidPointer);
  else
    transp = TILMedia.Internals.TransportPropertyRecord(
      invalidValue,
      invalidValue,
      invalidValue,
      invalidValue);
  end if;

/*    Documentation(info="<html>
<p>
The Liquid model is designed for incompressible liquids. All fluid properties are dependent on the Temperature. The specific entropy should be dependent on the pressure but this fact is neglected by setting the parameter \"pressureDependent\" to false.
</p>
<p>
Models for the following liquids have been implemented:
<br>H2O, 
<br>Glysantin_XX, 
<br>Oil_15W40, 
<br>Oil_Aral0W30, 
<br>Propylenglykol_30, 
<br>Propylenglykol_40, 
<br>Propylenglykol_50, 
<br>TherminolD12,
<br>Therminol59, 
<br>Therminol66
</p>
</html>")*/
   annotation (defaultComponentName="liquid", Icon(graphics={Text(
          extent={{-120,-60},{120,-100}},
          lineColor={0,170,238},
          textString="%name"), Bitmap(
          extent={{-100,100},{100,-100}},
          imageSource=
              "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",
          fileName="modelica://TILMedia/Images/Liquid_ph.png")}),
          Documentation(info="<html>
                   <p>
                   The liquid model Liquid_ph calculates the thermopyhsical property data with given inputs: pressure (p), enthalpy (h) and the parameter liquidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestLiquid\">TestLiquid</a>.
                   </p>
                   <hr>
                   </html>"));
end Liquid_ph;
