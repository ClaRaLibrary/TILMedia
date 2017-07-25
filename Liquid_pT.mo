within TILMedia;
model Liquid_pT
  "Incompressible liquid model with p and T as independent variables"
  replaceable parameter TILMedia.LiquidTypes.BaseLiquid liquidType constrainedby
    TILMedia.LiquidTypes.BaseLiquid "type record of the liquid"
    annotation(choicesAllMatching=true);

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

  TILMedia.LiquidObjectFunctions.LiquidPointer liquidPointer=TILMedia.LiquidObjectFunctions.LiquidPointer(liquidType.concatLiquidName, computeFlags, liquidType.mixingRatio_propertyCalculation[1:end-1]/sum(liquidType.mixingRatio_propertyCalculation), liquidType.nc_propertyCalculation, liquidType.nc, redirectorOutput)
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
  (d, cp, beta) = TILMedia.Internals.LiquidObjectFunctions.properties_Txi(T, xi, liquidPointer);
  h = TILMedia.Internals.LiquidObjectFunctions.specificEnthalpy_Txi(T, xi, liquidPointer);
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

annotation (defaultComponentName="liquid", Icon(graphics={Text(
      extent={{-120,-60},{120,-100}},lineColor={0,170,238},textString="%name"),
      Bitmap(extent={{-100,-100},{100,100}},imageSource=
          "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",
          fileName="modelica://TILMedia/Images/Liquid_pT.png")}),
  __Dymola_Protection(
      allowDuplicate = true,
      showDiagram=true,
      showText=true),
      Documentation(info="<html>
          <p>
          The liquid model is designed for incompressible liquid fluids. 
          All thermophysical properties are calculated dependent on the temperature (T). 
          Only the specific entropy (s) is dependent on the temperature (T) <b>and</b> the given pressure (p). 
          The parameter liquidType defines the medium. 
          All available liquids are listed in the User's Guide -> <a href=\"Modelica:TILMedia.UsersGuide.SubstanceNames\">Substance Names</a>. 
          The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestLiquid\">TestLiquid</a>.
          </p>
          <hr>
          </html>"));
end Liquid_pT;
