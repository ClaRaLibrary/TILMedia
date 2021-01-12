within TILMedia;
model Liquid_pT
  "Incompressible liquid model with p and T as independent variables"
  extends .TILMedia.BaseClasses.PartialLiquid_pT(liquidPointer=
        .TILMedia.Internals.TILMediaExternalObject(
        "Liquid",
        liquidType.concatLiquidName,
        computeFlags,
        liquidType.mixingRatio_propertyCalculation[1:end - 1]/sum(liquidType.mixingRatio_propertyCalculation),
        liquidType.nc,
        0,
        getInstanceName()));
protected
  constant Real invalidValue=-1;
  final parameter Integer computeFlags=.TILMedia.Internals.calcComputeFlags(
      computeTransportProperties,
      false,
      true,
      false,
      false);

equation
  (d,cp,beta) = .TILMedia.Internals.LiquidObjectFunctions.properties_Txi(
    T,
    xi,
    liquidPointer);
  h = .TILMedia.Internals.LiquidObjectFunctions.specificEnthalpy_Txi(
    T,
    xi,
    liquidPointer);
  s = .TILMedia.Internals.LiquidObjectFunctions.specificEntropy_pTxi(
    p,
    T,
    xi,
    liquidPointer);
  if computeTransportProperties then
    (transp.Pr,
     transp.lambda,
     transp.eta,
     transp.sigma) =
      .TILMedia.Internals.LiquidObjectFunctions.transportPropertyRecord_Txi(
      T,
      xi,
      liquidPointer);
  else
    transp = .TILMedia.Internals.TransportPropertyRecord(
      invalidValue,
      invalidValue,
      invalidValue,
      invalidValue);
  end if;

  annotation (
    defaultComponentName="liquid",
    Protection(access=Access.packageDuplicate),
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
end Liquid_pT;
