within TILMedia.Internals;
package LiquidConfigurations
extends TILMedia.Internals.ClassTypes.ModelPackage;

  package PureComponentLiquid
  extends TILMedia.Internals.ClassTypes.ModelPackage;

    model Liquid_ph
      "Incompressible liquid model with p and h as independent variables"
      extends TILMedia.BaseClasses.PartialLiquid_ph(redeclare class PointerType =
            TILMedia.LiquidObjectFunctions.LiquidPointerExternalObject,
          liquidPointer=TILMedia.LiquidObjectFunctions.LiquidPointerExternalObject(
            liquidType.concatLiquidName,
            computeFlags,
            liquidType.mixingRatio_propertyCalculation[1:end - 1]/sum(liquidType.mixingRatio_propertyCalculation),
            liquidType.nc,
            getInstanceName()));
    protected
      constant Real invalidValue=-1;
      final parameter Integer computeFlags=TILMedia.Internals.calcComputeFlags(
          computeTransportProperties,
          false,
          true,
          false);

    equation
      (d,cp,beta) =
        TILMedia.Internals.LiquidObjectFunctions.PureComponentDerivatives.properties_hxi(
        h,
        xi,
        liquidPointer);
      T =
        TILMedia.Internals.LiquidObjectFunctions.PureComponentDerivatives.temperature_hxi(
        h,
        xi,
        liquidPointer);
      s = TILMedia.Internals.LiquidObjectFunctions.specificEntropy_pTxi(
        p,
        T,
        xi,
        liquidPointer);
      if computeTransportProperties then
        transp =
          TILMedia.Internals.LiquidObjectFunctions.PureComponentDerivatives.transportPropertyRecord_Txi(
          T,
          xi,
          liquidPointer);
      else
        transp = TILMedia.Internals.TransportPropertyRecord(
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
          All thermophysical properties are calculated dependent on the specific enthalpy (h). 
          Only the specific entropy (s) is dependent on the specific enthalpy (h) <b>and</b> the given pressure (p). 
          The parameter liquidType defines the medium. 
          All available liquids are listed in the User's Guide -> <a href=\"Modelica:TILMedia.UsersGuide.SubstanceNames\">Substance Names</a>.
          The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestLiquid\">TestLiquid</a>.
          </p>
          <hr>
          </html>"));
    end Liquid_ph;

    model Liquid_pT
      "Incompressible liquid model with p and T as independent variables"
      extends TILMedia.BaseClasses.PartialLiquid_pT(redeclare class PointerType =
            TILMedia.LiquidObjectFunctions.LiquidPointerExternalObject,
          liquidPointer=TILMedia.LiquidObjectFunctions.LiquidPointerExternalObject(
            liquidType.concatLiquidName,
            computeFlags,
            liquidType.mixingRatio_propertyCalculation[1:end - 1]/sum(liquidType.mixingRatio_propertyCalculation),
            liquidType.nc,
            getInstanceName()));
    protected
      constant Real invalidValue=-1;
      final parameter Integer computeFlags=TILMedia.Internals.calcComputeFlags(
          computeTransportProperties,
          false,
          true,
          false);
    equation
      (d,cp,beta) =
        TILMedia.Internals.LiquidObjectFunctions.PureComponentDerivatives.properties_Txi(
        T,
        xi,
        liquidPointer);
      h =
        TILMedia.Internals.LiquidObjectFunctions.PureComponentDerivatives.specificEnthalpy_Txi(
        T,
        xi,
        liquidPointer);
      s = TILMedia.Internals.LiquidObjectFunctions.specificEntropy_pTxi(
        p,
        T,
        xi,
        liquidPointer);
      if computeTransportProperties then
        transp =
          TILMedia.Internals.LiquidObjectFunctions.PureComponentDerivatives.transportPropertyRecord_Txi(
          T,
          xi,
          liquidPointer);
      else
        transp = TILMedia.Internals.TransportPropertyRecord(
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
          All available liquids are listed in the User's Guide -> <a href=\"Modelica:TILMedia.UsersGuide.SubstanceNames\">Substance Names</a>. 
          The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestLiquid\">TestLiquid</a>.
          </p>
          <hr>
          </html>"));
    end Liquid_pT;
  end PureComponentLiquid;
end LiquidConfigurations;
