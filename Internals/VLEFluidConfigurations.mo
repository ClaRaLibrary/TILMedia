within TILMedia.Internals;
package VLEFluidConfigurations
extends TILMedia.Internals.ClassTypes.ModelPackage;
  package PureComponentVLEFluid
  extends TILMedia.Internals.ClassTypes.ModelPackage;

    package InternalLibrary "\"TILMedia.\" pure Mediums"
      extends TILMedia.Internals.ClassTypes.ModelPackage;
      model VLEFluid_dT
        "Compressible fluid model with d, T and xi as independent variables"
        extends BaseClasses.PartialVLEFluid_dT(redeclare class PointerType =
              TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject,
              vleFluidPointer=TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject(
                vleFluidType.concatVLEFluidName,
                computeFlags,
                vleFluidType.mixingRatio_propertyCalculation[1:end - 1]/sum(vleFluidType.mixingRatio_propertyCalculation),
                vleFluidType.nc,
                getInstanceName()));
      protected
        constant Real invalidValue=-1;
        final parameter Integer computeFlags=TILMedia.Internals.calcComputeFlags(
            computeTransportProperties,
            interpolateTransportProperties,
            computeSurfaceTension,
            deactivateTwoPhaseRegion,
            deactivateDensityDerivatives);

      equation
        assert(vleFluidType.nc==1, "This TILMedia VLEFluid interface cannot handle variable concentrations");
        M_i = TILMedia.Internals.VLEFluidObjectFunctions.molarMass_nc(vleFluidType.nc, vleFluidPointer);
        (crit.d, crit.h, crit.p, crit.s, crit.T) = TILMedia.Internals.VLEFluidObjectFunctions.cricondentherm_xi(xi,
          vleFluidPointer);
        //calculate molar mass
        M = M_i[1];

        //Calculate Main Properties of state
        h =TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEnthalpy_dTxi(
          d,
          T,
          xi,
          vleFluidPointer);
        p =TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.pressure_dTxi(
          d,
          T,
          xi,
          vleFluidPointer);
        s =TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEntropy_dTxi(
          d,
          T,
          xi,
          vleFluidPointer);

        //Calculate Additional Properties of state
        (q,cp,cv,beta,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,w,gamma) =
          TILMedia.Internals.VLEFluidObjectFunctions.additionalProperties_dTxi(
          d,
          T,
          xi,
          vleFluidPointer);

        //Calculate VLE Properties
          //VLE only depends on p or T
          (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,
            VLE.s_v,VLE.T_v,VLE.xi_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLEProperties_dTxi(
            -1,
            T,
            xi,
            vleFluidPointer);

        //Calculate Transport Properties
        if computeTransportProperties then
          transp =
            TILMedia.Internals.VLEFluidObjectFunctions.transportPropertyRecord_dTxi(
            d,
            T,
            xi,
            vleFluidPointer);
        else
          transp = TILMedia.Internals.TransportPropertyRecord(
            invalidValue,
            invalidValue,
            invalidValue,
            invalidValue);
        end if;

        //compute VLE Additional Properties
        if computeVLEAdditionalProperties then
            //VLE only depends on p or T
            (VLEAdditional.cp_l,VLEAdditional.beta_l,VLEAdditional.kappa_l,
              VLEAdditional.cp_v,VLEAdditional.beta_v,VLEAdditional.kappa_v) =
              TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_dTxi(
              -1,
              T,
              xi,
              vleFluidPointer);
        else
          VLEAdditional.cp_l = invalidValue;
          VLEAdditional.beta_l = invalidValue;
          VLEAdditional.kappa_l = invalidValue;
          VLEAdditional.cp_v = invalidValue;
          VLEAdditional.beta_v = invalidValue;
          VLEAdditional.kappa_v = invalidValue;
        end if;

        //compute VLE Transport Properties
        if computeVLETransportProperties then
            //VLE only depends on p or T
            (VLETransp.Pr_l,VLETransp.Pr_v,VLETransp.lambda_l,VLETransp.lambda_v,
              VLETransp.eta_l,VLETransp.eta_v) =
              TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_dTxi(
              -1,
              T,
              xi,
              vleFluidPointer);
        else
          VLETransp.Pr_l = invalidValue;
          VLETransp.Pr_v = invalidValue;
          VLETransp.lambda_l = invalidValue;
          VLETransp.lambda_v = invalidValue;
          VLETransp.eta_l = invalidValue;
          VLETransp.eta_v = invalidValue;
        end if;

        annotation (
          defaultComponentName="vleFluid",
          Protection(access=Access.packageDuplicate),
          Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_dT calculates the thermopyhsical property data with given inputs: density (d), temperature (T), mass fraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));
      end VLEFluid_dT;

      model VLEFluid_ph
        "Compressible fluid model with p, h and xi as independent variables"
        extends BaseClasses.PartialVLEFluid_ph(redeclare class PointerType =
              TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject,
              vleFluidPointer=TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject(
                vleFluidType.concatVLEFluidName,
                computeFlags,
                vleFluidType.mixingRatio_propertyCalculation[1:end - 1]/sum(vleFluidType.mixingRatio_propertyCalculation),
                vleFluidType.nc,
                getInstanceName()));
      protected
        constant Real invalidValue=-1;
        final parameter Integer computeFlags=TILMedia.Internals.calcComputeFlags(
            computeTransportProperties,
            interpolateTransportProperties,
            computeSurfaceTension,
            deactivateTwoPhaseRegion,
            deactivateDensityDerivatives);

      equation
        assert(vleFluidType.nc==1, "This TILMedia VLEFluid interface cannot handle variable concentrations");
        M_i = TILMedia.Internals.VLEFluidObjectFunctions.molarMass_nc(vleFluidType.nc, vleFluidPointer);
        (crit.d, crit.h, crit.p, crit.s, crit.T) = TILMedia.Internals.VLEFluidObjectFunctions.cricondenbar_xi(xi,
          vleFluidPointer);
        //calculate molar mass
        M = M_i[1];

        //Calculate Main Properties of state
        d =TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.density_phxi(
          p,
          h,
          xi,
          vleFluidPointer);
        s =TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEntropy_phxi(
          p,
          h,
          xi,
          vleFluidPointer);
        T =TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.temperature_phxi(
          p,
          h,
          xi,
          vleFluidPointer);

        //Calculate Additional Properties of state
        (q,cp,cv,beta,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,w,gamma) =
          TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.additionalProperties_phxi(
          p,
          h,
          xi,
          vleFluidPointer);

        //Calculate VLE Properties
          //VLE only depends on p or T
          (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,
            VLE.s_v,VLE.T_v,VLE.xi_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLEProperties_phxi(
            p,
            -1,
            xi,
            vleFluidPointer);

        //Calculate Transport Properties
        if computeTransportProperties then
          transp =
            TILMedia.Internals.VLEFluidObjectFunctions.transportPropertyRecord_phxi(
            p,
            h,
            xi,
            vleFluidPointer);
        else
          transp = TILMedia.Internals.TransportPropertyRecord(
            invalidValue,
            invalidValue,
            invalidValue,
            invalidValue);
        end if;

        //compute VLE Additional Properties
        if computeVLEAdditionalProperties then
            //VLE only depends on p or T
            (VLEAdditional.cp_l,VLEAdditional.beta_l,VLEAdditional.kappa_l,
              VLEAdditional.cp_v,VLEAdditional.beta_v,VLEAdditional.kappa_v) =
              TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_phxi(
              p,
              -1,
              xi,
              vleFluidPointer);
        else
          VLEAdditional.cp_l = invalidValue;
          VLEAdditional.beta_l = invalidValue;
          VLEAdditional.kappa_l = invalidValue;
          VLEAdditional.cp_v = invalidValue;
          VLEAdditional.beta_v = invalidValue;
          VLEAdditional.kappa_v = invalidValue;
        end if;

        //compute VLE Transport Properties
        if computeVLETransportProperties then
            //VLE only depends on p or T
            (VLETransp.Pr_l,VLETransp.Pr_v,VLETransp.lambda_l,VLETransp.lambda_v,
              VLETransp.eta_l,VLETransp.eta_v) =
              TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_phxi(
              p,
              -1,
              xi,
              vleFluidPointer);
        else
          VLETransp.Pr_l = invalidValue;
          VLETransp.Pr_v = invalidValue;
          VLETransp.lambda_l = invalidValue;
          VLETransp.lambda_v = invalidValue;
          VLETransp.eta_l = invalidValue;
          VLETransp.eta_v = invalidValue;
        end if;

        annotation (
          defaultComponentName="vleFluid",
          Protection(access=Access.packageDuplicate),
          Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_ph calculates the thermopyhsical property data with given inputs: pressure (p), enthalpy (h), mass fraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));
      end VLEFluid_ph;

      model VLEFluid_ps
        "Compressible fluid model with p, s and xi as independent variables"
        extends BaseClasses.PartialVLEFluid_ps(redeclare class PointerType =
              TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject,
              vleFluidPointer=TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject(
                vleFluidType.concatVLEFluidName,
                computeFlags,
                vleFluidType.mixingRatio_propertyCalculation[1:end - 1]/sum(vleFluidType.mixingRatio_propertyCalculation),
                vleFluidType.nc,
                getInstanceName()));
      protected
        constant Real invalidValue=-1;
        final parameter Integer computeFlags=TILMedia.Internals.calcComputeFlags(
            computeTransportProperties,
            interpolateTransportProperties,
            computeSurfaceTension,
            deactivateTwoPhaseRegion,
            deactivateDensityDerivatives);

      equation
        assert(vleFluidType.nc==1, "This TILMedia VLEFluid interface cannot handle variable concentrations");
        M_i = TILMedia.Internals.VLEFluidObjectFunctions.molarMass_nc(vleFluidType.nc, vleFluidPointer);
        (crit.d, crit.h, crit.p, crit.s, crit.T) = TILMedia.Internals.VLEFluidObjectFunctions.cricondenbar_xi(xi,
          vleFluidPointer);
        //calculate molar mass
        M = M_i[1];

        //Calculate Main Properties of state
        d =TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.density_psxi(
          p,
          s,
          xi,
          vleFluidPointer);
        h =TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEnthalpy_psxi(
          p,
          s,
          xi,
          vleFluidPointer);
        T =TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.temperature_psxi(
          p,
          s,
          xi,
          vleFluidPointer);

        //Calculate Additional Properties of state
        (q,cp,cv,beta,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,w,gamma) =
          TILMedia.Internals.VLEFluidObjectFunctions.additionalProperties_phxi(
          p,
          h,
          xi,
          vleFluidPointer);

        //Calculate VLE Properties
          //VLE only depends on p or T
          (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,
            VLE.s_v,VLE.T_v,VLE.xi_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.VLEProperties_phxi(
            p,
            -1,
            xi,
            vleFluidPointer);

        //Calculate Transport Properties
        if computeTransportProperties then
          transp =
            TILMedia.Internals.VLEFluidObjectFunctions.transportPropertyRecord_phxi(
            p,
            h,
            xi,
            vleFluidPointer);
        else
          transp = TILMedia.Internals.TransportPropertyRecord(
            invalidValue,
            invalidValue,
            invalidValue,
            invalidValue);
        end if;

        //compute VLE Additional Properties
        if computeVLEAdditionalProperties then
            //VLE only depends on p or T
            (VLEAdditional.cp_l,VLEAdditional.beta_l,VLEAdditional.kappa_l,
              VLEAdditional.cp_v,VLEAdditional.beta_v,VLEAdditional.kappa_v) =
              TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_phxi(
              p,
              -1,
              xi,
              vleFluidPointer);
        else
          VLEAdditional.cp_l = invalidValue;
          VLEAdditional.beta_l = invalidValue;
          VLEAdditional.kappa_l = invalidValue;
          VLEAdditional.cp_v = invalidValue;
          VLEAdditional.beta_v = invalidValue;
          VLEAdditional.kappa_v = invalidValue;
        end if;

        //compute VLE Transport Properties
        if computeVLETransportProperties then
            //VLE only depends on p or T
            (VLETransp.Pr_l,VLETransp.Pr_v,VLETransp.lambda_l,VLETransp.lambda_v,
              VLETransp.eta_l,VLETransp.eta_v) =
              TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_phxi(
              p,
              -1,
              xi,
              vleFluidPointer);
        else
          VLETransp.Pr_l = invalidValue;
          VLETransp.Pr_v = invalidValue;
          VLETransp.lambda_l = invalidValue;
          VLETransp.lambda_v = invalidValue;
          VLETransp.eta_l = invalidValue;
          VLETransp.eta_v = invalidValue;
        end if;

        annotation (
          defaultComponentName="vleFluid",
          Protection(access=Access.packageDuplicate),
          Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_ps calculates the thermopyhsical property data with given inputs: pressure (p), entropy (s), mass fraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));
      end VLEFluid_ps;

      model VLEFluid_pT
        "Compressible fluid model with p, T and xi as independent variables"
        extends BaseClasses.PartialVLEFluid_pT(redeclare class PointerType =
              TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject,
              vleFluidPointer=TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject(
                vleFluidType.concatVLEFluidName,
                computeFlags,
                vleFluidType.mixingRatio_propertyCalculation[1:end - 1]/sum(vleFluidType.mixingRatio_propertyCalculation),
                vleFluidType.nc,
                getInstanceName()));
      protected
        constant Real invalidValue=-1;
        final parameter Integer computeFlags=TILMedia.Internals.calcComputeFlags(
            computeTransportProperties,
            interpolateTransportProperties,
            computeSurfaceTension,
            deactivateTwoPhaseRegion,
            deactivateDensityDerivatives);

      equation
        assert(vleFluidType.nc==1, "This TILMedia VLEFluid interface cannot handle variable concentrations");
        M_i = TILMedia.Internals.VLEFluidObjectFunctions.molarMass_nc(vleFluidType.nc, vleFluidPointer);
        (crit.d, crit.h, crit.p, crit.s, crit.T) = TILMedia.Internals.VLEFluidObjectFunctions.cricondenbar_xi(xi,
          vleFluidPointer);
        //calculate molar mass
        M = M_i[1];

        //Calculate Main Properties of state
        d =TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.density_pTxi(
          p,
          T,
          xi,
          vleFluidPointer);
        h =TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEnthalpy_pTxi(
          p,
          T,
          xi,
          vleFluidPointer);
        s =TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEntropy_pTxi(
          p,
          T,
          xi,
          vleFluidPointer);

        //Calculate Additional Properties of state
        (q,cp,cv,beta,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,w,gamma) =
          TILMedia.Internals.VLEFluidObjectFunctions.additionalProperties_phxi(
          p,
          h,
          xi,
          vleFluidPointer);

        //Calculate VLE Properties
          //VLE only depends on p or T
          (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,
            VLE.s_v,VLE.T_v,VLE.xi_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.VLEProperties_phxi(
            p,
            -1,
            xi,
            vleFluidPointer);

        //Calculate Transport Properties
        if computeTransportProperties then
          transp =
            TILMedia.Internals.VLEFluidObjectFunctions.transportPropertyRecord_phxi(
            p,
            h,
            xi,
            vleFluidPointer);
        else
          transp = TILMedia.Internals.TransportPropertyRecord(
            invalidValue,
            invalidValue,
            invalidValue,
            invalidValue);
        end if;

        //compute VLE Additional Properties
        if computeVLEAdditionalProperties then
            //VLE only depends on p or T
            (VLEAdditional.cp_l,VLEAdditional.beta_l,VLEAdditional.kappa_l,
              VLEAdditional.cp_v,VLEAdditional.beta_v,VLEAdditional.kappa_v) =
              TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_phxi(
              p,
              -1,
              xi,
              vleFluidPointer);
        else
          VLEAdditional.cp_l = invalidValue;
          VLEAdditional.beta_l = invalidValue;
          VLEAdditional.kappa_l = invalidValue;
          VLEAdditional.cp_v = invalidValue;
          VLEAdditional.beta_v = invalidValue;
          VLEAdditional.kappa_v = invalidValue;
        end if;

        //compute VLE Transport Properties
        if computeVLETransportProperties then
            //VLE only depends on p or T
            (VLETransp.Pr_l,VLETransp.Pr_v,VLETransp.lambda_l,VLETransp.lambda_v,
              VLETransp.eta_l,VLETransp.eta_v) =
              TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_phxi(
              p,
              -1,
              xi,
              vleFluidPointer);
        else
          VLETransp.Pr_l = invalidValue;
          VLETransp.Pr_v = invalidValue;
          VLETransp.lambda_l = invalidValue;
          VLETransp.lambda_v = invalidValue;
          VLETransp.eta_l = invalidValue;
          VLETransp.eta_v = invalidValue;
        end if;

        annotation (
          defaultComponentName="vleFluid",
          Protection(access=Access.packageDuplicate),
          Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_pT calculates the thermopyhsical property data with given inputs: pressure (p), temperature (T), mass fraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));
      end VLEFluid_pT;
    end InternalLibrary;

    package SplineInterpolation "Bicubic Spline Interpolation"
      extends TILMedia.Internals.ClassTypes.ModelPackage;
      model VLEFluid_ph
        "Compressible fluid model with p, h and xi as independent variables"
        extends BaseClasses.PartialVLEFluid_ph(redeclare class PointerType =
              TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject,
            vleFluidPointer=
              TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject(
              vleFluidType.concatVLEFluidName,
              computeFlags,
              vleFluidType.mixingRatio_propertyCalculation[1:end - 1]/sum(
                vleFluidType.mixingRatio_propertyCalculation),
              vleFluidType.nc,
              getInstanceName()));
      protected
        constant Real invalidValue=-1;
        final parameter Integer computeFlags=TILMedia.Internals.calcComputeFlags(
            computeTransportProperties,
            interpolateTransportProperties,
            computeSurfaceTension,
            deactivateTwoPhaseRegion,
            deactivateDensityDerivatives);

      equation
        assert(vleFluidType.nc == 1, "This TILMedia VLEFluid interface cannot handle variable concentrations");
        M_i = TILMedia.Internals.VLEFluidObjectFunctions.molarMass_nc(vleFluidType.nc,
          vleFluidPointer);
        (crit.d,crit.h,crit.p,crit.s,crit.T) =
          TILMedia.Internals.VLEFluidObjectFunctions.cricondenbar_xi(xi,
          vleFluidPointer);
        //calculate molar mass
        M = M_i[1];

        //Calculate Main Properties of state
        d =
          TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.density_phxi(
          p,
          h,
          xi,
          vleFluidPointer);
        s =
          TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEntropy_phxi(
          p,
          h,
          xi,
          vleFluidPointer);
        T =
          TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.temperature_phxi(
          p,
          h,
          xi,
          vleFluidPointer);

        //Calculate Additional Properties of state
        (q,cp,cv,beta,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,w,gamma) =
          TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.additionalProperties_phxi(
          p,
          h,
          xi,
          vleFluidPointer);

        //Calculate VLE Properties
        //VLE only depends on p or T
        (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,VLE.s_v,
          VLE.T_v,VLE.xi_v) =
          TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.VLEProperties_phxi(
          p,
          -1,
          xi,
          vleFluidPointer);

        //Calculate Transport Properties
        if computeTransportProperties then
          transp =
            TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.transportPropertyRecord_phxi(
            p,
            h,
            xi,
            vleFluidPointer);
        else
          transp = TILMedia.Internals.TransportPropertyRecord(
            invalidValue,
            invalidValue,
            invalidValue,
            invalidValue);
        end if;

        //compute VLE Additional Properties
        if computeVLEAdditionalProperties then
          //VLE only depends on p or T
          (VLEAdditional.cp_l,VLEAdditional.beta_l,VLEAdditional.kappa_l,
            VLEAdditional.cp_v,VLEAdditional.beta_v,VLEAdditional.kappa_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_phxi(
            p,
            -1,
            xi,
            vleFluidPointer);
        else
          VLEAdditional.cp_l = invalidValue;
          VLEAdditional.beta_l = invalidValue;
          VLEAdditional.kappa_l = invalidValue;
          VLEAdditional.cp_v = invalidValue;
          VLEAdditional.beta_v = invalidValue;
          VLEAdditional.kappa_v = invalidValue;
        end if;

        //compute VLE Transport Properties
        if computeVLETransportProperties then
          //VLE only depends on p or T
          (VLETransp.Pr_l,VLETransp.Pr_v,VLETransp.lambda_l,VLETransp.lambda_v,
            VLETransp.eta_l,VLETransp.eta_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_phxi(
            p,
            -1,
            xi,
            vleFluidPointer);
        else
          VLETransp.Pr_l = invalidValue;
          VLETransp.Pr_v = invalidValue;
          VLETransp.lambda_l = invalidValue;
          VLETransp.lambda_v = invalidValue;
          VLETransp.eta_l = invalidValue;
          VLETransp.eta_v = invalidValue;
        end if;

        annotation (
          defaultComponentName="vleFluid",
          Protection(access=Access.packageDuplicate),
          Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_ph calculates the thermopyhsical property data with given inputs: pressure (p), enthalpy (h), mass fraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));
      end VLEFluid_ph;

      model VLEFluid_ps
        "Compressible fluid model with p, s and xi as independent variables"
        extends BaseClasses.PartialVLEFluid_ps(redeclare class PointerType =
              TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject,
            vleFluidPointer=
              TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject(
              vleFluidType.concatVLEFluidName,
              computeFlags,
              vleFluidType.mixingRatio_propertyCalculation[1:end - 1]/sum(
                vleFluidType.mixingRatio_propertyCalculation),
              vleFluidType.nc,
              getInstanceName()));
      protected
        constant Real invalidValue=-1;
        final parameter Integer computeFlags=TILMedia.Internals.calcComputeFlags(
            computeTransportProperties,
            interpolateTransportProperties,
            computeSurfaceTension,
            deactivateTwoPhaseRegion,
            deactivateDensityDerivatives);

      equation
        assert(vleFluidType.nc == 1, "This TILMedia VLEFluid interface cannot handle variable concentrations");
        M_i = TILMedia.Internals.VLEFluidObjectFunctions.molarMass_nc(vleFluidType.nc,
          vleFluidPointer);
        (crit.d,crit.h,crit.p,crit.s,crit.T) =
          TILMedia.Internals.VLEFluidObjectFunctions.cricondenbar_xi(xi,
          vleFluidPointer);
        //calculate molar mass
        M = M_i[1];

        //Calculate Main Properties of state
        d =
          TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.density_psxi(
          p,
          s,
          xi,
          vleFluidPointer);
        h =
          TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEnthalpy_psxi(
          p,
          s,
          xi,
          vleFluidPointer);
        T =
          TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.temperature_psxi(
          p,
          s,
          xi,
          vleFluidPointer);

        //Calculate Additional Properties of state
        (q,cp,cv,beta,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,w,gamma) =
          TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.additionalProperties_phxi(
          p,
          h,
          xi,
          vleFluidPointer);

        //Calculate VLE Properties
        //VLE only depends on p or T
        (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,VLE.s_v,
          VLE.T_v,VLE.xi_v) =
          TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.VLEProperties_phxi(
          p,
          -1,
          xi,
          vleFluidPointer);

        //Calculate Transport Properties
        if computeTransportProperties then
          transp =
            TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.transportPropertyRecord_phxi(
            p,
            h,
            xi,
            vleFluidPointer);
        else
          transp = TILMedia.Internals.TransportPropertyRecord(
            invalidValue,
            invalidValue,
            invalidValue,
            invalidValue);
        end if;

        //compute VLE Additional Properties
        if computeVLEAdditionalProperties then
          //VLE only depends on p or T
          (VLEAdditional.cp_l,VLEAdditional.beta_l,VLEAdditional.kappa_l,
            VLEAdditional.cp_v,VLEAdditional.beta_v,VLEAdditional.kappa_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_phxi(
            p,
            -1,
            xi,
            vleFluidPointer);
        else
          VLEAdditional.cp_l = invalidValue;
          VLEAdditional.beta_l = invalidValue;
          VLEAdditional.kappa_l = invalidValue;
          VLEAdditional.cp_v = invalidValue;
          VLEAdditional.beta_v = invalidValue;
          VLEAdditional.kappa_v = invalidValue;
        end if;

        //compute VLE Transport Properties
        if computeVLETransportProperties then
          //VLE only depends on p or T
          (VLETransp.Pr_l,VLETransp.Pr_v,VLETransp.lambda_l,VLETransp.lambda_v,
            VLETransp.eta_l,VLETransp.eta_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_phxi(
            p,
            -1,
            xi,
            vleFluidPointer);
        else
          VLETransp.Pr_l = invalidValue;
          VLETransp.Pr_v = invalidValue;
          VLETransp.lambda_l = invalidValue;
          VLETransp.lambda_v = invalidValue;
          VLETransp.eta_l = invalidValue;
          VLETransp.eta_v = invalidValue;
        end if;

        annotation (
          defaultComponentName="vleFluid",
          Protection(access=Access.packageDuplicate),
          Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_ps calculates the thermopyhsical property data with given inputs: pressure (p), entropy (s), mass fraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));
      end VLEFluid_ps;

      model VLEFluid_pT
        "Compressible fluid model with p, T and xi as independent variables"
        extends BaseClasses.PartialVLEFluid_pT(redeclare class PointerType =
              TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject,
            vleFluidPointer=
              TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject(
              vleFluidType.concatVLEFluidName,
              computeFlags,
              vleFluidType.mixingRatio_propertyCalculation[1:end - 1]/sum(
                vleFluidType.mixingRatio_propertyCalculation),
              vleFluidType.nc,
              getInstanceName()));
      protected
        constant Real invalidValue=-1;
        final parameter Integer computeFlags=TILMedia.Internals.calcComputeFlags(
            computeTransportProperties,
            interpolateTransportProperties,
            computeSurfaceTension,
            deactivateTwoPhaseRegion,
            deactivateDensityDerivatives);

      equation
        assert(vleFluidType.nc == 1, "This TILMedia VLEFluid interface cannot handle variable concentrations");
        M_i = TILMedia.Internals.VLEFluidObjectFunctions.molarMass_nc(vleFluidType.nc,
          vleFluidPointer);
        (crit.d,crit.h,crit.p,crit.s,crit.T) =
          TILMedia.Internals.VLEFluidObjectFunctions.cricondenbar_xi(xi,
          vleFluidPointer);
        //calculate molar mass
        M = M_i[1];

        //Calculate Main Properties of state
        d =
          TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.density_pTxi(
          p,
          T,
          xi,
          vleFluidPointer);
        h =
          TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEnthalpy_pTxi(
          p,
          T,
          xi,
          vleFluidPointer);
        s =
          TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEntropy_pTxi(
          p,
          T,
          xi,
          vleFluidPointer);

        //Calculate Additional Properties of state
        (q,cp,cv,beta,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,w,gamma) =
          TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.additionalProperties_phxi(
          p,
          h,
          xi,
          vleFluidPointer);

        //Calculate VLE Properties
        //VLE only depends on p or T
        (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,VLE.s_v,
          VLE.T_v,VLE.xi_v) =
          TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.VLEProperties_phxi(
          p,
          -1,
          xi,
          vleFluidPointer);

        //Calculate Transport Properties
        if computeTransportProperties then
          transp =
            TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.transportPropertyRecord_phxi(
            p,
            h,
            xi,
            vleFluidPointer);
        else
          transp = TILMedia.Internals.TransportPropertyRecord(
            invalidValue,
            invalidValue,
            invalidValue,
            invalidValue);
        end if;

        //compute VLE Additional Properties
        if computeVLEAdditionalProperties then
          //VLE only depends on p or T
          (VLEAdditional.cp_l,VLEAdditional.beta_l,VLEAdditional.kappa_l,
            VLEAdditional.cp_v,VLEAdditional.beta_v,VLEAdditional.kappa_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_phxi(
            p,
            -1,
            xi,
            vleFluidPointer);
        else
          VLEAdditional.cp_l = invalidValue;
          VLEAdditional.beta_l = invalidValue;
          VLEAdditional.kappa_l = invalidValue;
          VLEAdditional.cp_v = invalidValue;
          VLEAdditional.beta_v = invalidValue;
          VLEAdditional.kappa_v = invalidValue;
        end if;

        //compute VLE Transport Properties
        if computeVLETransportProperties then
          //VLE only depends on p or T
          (VLETransp.Pr_l,VLETransp.Pr_v,VLETransp.lambda_l,VLETransp.lambda_v,
            VLETransp.eta_l,VLETransp.eta_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_phxi(
            p,
            -1,
            xi,
            vleFluidPointer);
        else
          VLETransp.Pr_l = invalidValue;
          VLETransp.Pr_v = invalidValue;
          VLETransp.lambda_l = invalidValue;
          VLETransp.lambda_v = invalidValue;
          VLETransp.eta_l = invalidValue;
          VLETransp.eta_v = invalidValue;
        end if;

        annotation (
          defaultComponentName="vleFluid",
          Protection(access=Access.packageDuplicate),
          Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_pT calculates the thermopyhsical property data with given inputs: pressure (p), temperature (T), mass fraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));
      end VLEFluid_pT;
    end SplineInterpolation;
  end PureComponentVLEFluid;

  package FullyMixtureCompatible
    extends TILMedia.Internals.ClassTypes.ModelPackage;

    model VLEFluid "Compressible fluid model for object and member function based evaluation"
      extends BaseClasses.PartialVLEFluid(
        redeclare class PointerType =
            TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject,
        vleFluidPointer=
            TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject(
            vleFluidType.concatVLEFluidName,
            TILMedia.Internals.calcComputeFlags(
              computeTransportProperties,
              interpolateTransportProperties,
              computeSurfaceTension,
              deactivateTwoPhaseRegion,
              deactivateDensityDerivatives),
            vleFluidType.mixingRatio_propertyCalculation[1:end - 1]/sum(
              vleFluidType.mixingRatio_propertyCalculation),
            vleFluidType.nc,
            getInstanceName()),
        redeclare replaceable function d_phxi =
            TILMedia.VLEFluidObjectFunctions.density_phxi (
             vleFluidPointer=vleFluidPointer),
        redeclare replaceable function T_phxi =
            Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.temperature_phxi
            (vleFluidPointer=vleFluidPointer),
        redeclare replaceable function s_phxi =
            Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.specificEntropy_phxi
            (vleFluidPointer=vleFluidPointer),
        redeclare replaceable function cp_phxi =
            TILMedia.VLEFluidObjectFunctions.specificIsobaricHeatCapacity_phxi
            ( vleFluidPointer=vleFluidPointer),
        redeclare replaceable function eta_phxi =
            TILMedia.VLEFluidObjectFunctions.dynamicViscosity_phxi (vleFluidPointer=
               vleFluidPointer),
        redeclare replaceable function Pr_phxi =
            TILMedia.VLEFluidObjectFunctions.prandtlNumber_phxi (vleFluidPointer=
                vleFluidPointer),
        redeclare replaceable function lambda_phxi =
            TILMedia.VLEFluidObjectFunctions.thermalConductivity_phxi (
              vleFluidPointer=vleFluidPointer),
        redeclare replaceable function d_pTxi =
            Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.density_pTxi
            (vleFluidPointer=vleFluidPointer),
        redeclare replaceable function h_pTxi =
            Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.specificEnthalpy_pTxi
            (vleFluidPointer=vleFluidPointer),
        redeclare replaceable function s_pTxi =
            Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.specificEntropy_pTxi
            (vleFluidPointer=vleFluidPointer),
        redeclare replaceable function cp_pTxi =
            TILMedia.VLEFluidObjectFunctions.specificIsobaricHeatCapacity_pTxi
            ( vleFluidPointer=vleFluidPointer),
        redeclare replaceable function eta_pTxi =
            TILMedia.VLEFluidObjectFunctions.dynamicViscosity_pTxi (vleFluidPointer=
               vleFluidPointer),
        redeclare replaceable function Pr_pTxi =
            TILMedia.VLEFluidObjectFunctions.prandtlNumber_pTxi (vleFluidPointer=
                vleFluidPointer),
        redeclare replaceable function lambda_pTxi =
            TILMedia.VLEFluidObjectFunctions.thermalConductivity_pTxi (
              vleFluidPointer=vleFluidPointer),
        redeclare replaceable function d_psxi =
            Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.density_psxi
            (vleFluidPointer=vleFluidPointer),
        redeclare replaceable function h_psxi =
            Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.specificEnthalpy_psxi
            (vleFluidPointer=vleFluidPointer),
        redeclare replaceable function T_psxi =
            Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.temperature_psxi
            (vleFluidPointer=vleFluidPointer),
        redeclare replaceable function cp_psxi =
            TILMedia.VLEFluidObjectFunctions.specificIsobaricHeatCapacity_psxi
            ( vleFluidPointer=vleFluidPointer),
        redeclare replaceable function eta_psxi =
            TILMedia.VLEFluidObjectFunctions.dynamicViscosity_psxi (vleFluidPointer=
               vleFluidPointer),
        redeclare replaceable function Pr_psxi =
            TILMedia.VLEFluidObjectFunctions.prandtlNumber_psxi (vleFluidPointer=
                vleFluidPointer),
        redeclare replaceable function lambda_psxi =
            TILMedia.VLEFluidObjectFunctions.thermalConductivity_psxi (
              vleFluidPointer=vleFluidPointer),
        redeclare replaceable function T_dew_pxi =
            TILMedia.VLEFluidObjectFunctions.dewTemperature_pxi (vleFluidPointer=
                vleFluidPointer),
        redeclare replaceable function p_dew_Txi =
            TILMedia.VLEFluidObjectFunctions.dewPressure_Txi (vleFluidPointer=
                vleFluidPointer),
        redeclare replaceable function h_vap_dew_Txi =
            TILMedia.VLEFluidObjectFunctions.dewSpecificEnthalpy_Txi (
              vleFluidPointer=vleFluidPointer),
        redeclare replaceable function h_liq_bubble_Txi =
            TILMedia.VLEFluidObjectFunctions.bubbleSpecificEnthalpy_Txi (
              vleFluidPointer=vleFluidPointer));

      annotation (defaultComponentName="vleFluid", Protection(access=Access.packageDuplicate));
    end VLEFluid;

    model VLEFluid_pT
      "Compressible fluid model with p, T and xi as independent variables"
      extends BaseClasses.PartialVLEFluid_pT(redeclare class PointerType =
            TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject,
          vleFluidPointer=
            TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject(
            vleFluidType.concatVLEFluidName,
            computeFlags,
            vleFluidType.mixingRatio_propertyCalculation[1:end - 1]/sum(
              vleFluidType.mixingRatio_propertyCalculation),
            vleFluidType.nc,
            getInstanceName()));
    protected
      constant Real invalidValue=-1;
      final parameter Integer computeFlags=TILMedia.Internals.calcComputeFlags(
          computeTransportProperties,
          interpolateTransportProperties,
          computeSurfaceTension,
          deactivateTwoPhaseRegion,
          deactivateDensityDerivatives);

    equation
      M_i = TILMedia.Internals.VLEFluidObjectFunctions.molarMass_nc(vleFluidType.nc,
        vleFluidPointer);
      (crit.d,crit.h,crit.p,crit.s,crit.T) =
        TILMedia.Internals.VLEFluidObjectFunctions.cricondenbar_xi(xi,
        vleFluidPointer);
      //calculate molar mass
      M = 1/sum(cat(
        1,
        xi,
        {1 - sum(xi)}) ./ M_i);
      //calculate mole fraction
      xi = x .* M_i[1:end - 1]*(sum(cat(
        1,
        xi,
        {1 - sum(xi)}) ./ M_i));
      //xi = x.*M_i/M

      //Calculate Main Properties of state
      d =
        TILMedia.Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.density_pTxi(
        p,
        T,
        xi,
        vleFluidPointer);
      h =
        TILMedia.Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.specificEnthalpy_pTxi(
        p,
        T,
        xi,
        vleFluidPointer);
      s =
        TILMedia.Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.specificEntropy_pTxi(
        p,
        T,
        xi,
        vleFluidPointer);

      //Calculate Additional Properties of state
      (q,cp,cv,beta,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,w,gamma) =
        TILMedia.Internals.VLEFluidObjectFunctions.additionalProperties_phxi(
        p,
        h,
        xi,
        vleFluidPointer);

      //Calculate VLE Properties
      if (vleFluidType.nc == 1) then
        //VLE only depends on p or T
        (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,
          VLE.s_v,VLE.T_v,VLE.xi_v) =
          TILMedia.Internals.VLEFluidObjectFunctions.VLEProperties_phxi(
          p,
          -1,
          zeros(0),
          vleFluidPointer);
      else
        //VLE of a mixture also depends on density/enthalpy/entropy/temperature
        (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,
          VLE.s_v,VLE.T_v,VLE.xi_v) =
          TILMedia.Internals.VLEFluidObjectFunctions.VLEProperties_phxi(
          p,
          h,
          xi,
          vleFluidPointer);
      end if;

      //Calculate Transport Properties
      if computeTransportProperties then
        transp =
          TILMedia.Internals.VLEFluidObjectFunctions.transportPropertyRecord_phxi(
          p,
          h,
          xi,
          vleFluidPointer);
      else
        transp = TILMedia.Internals.TransportPropertyRecord(
          invalidValue,
          invalidValue,
          invalidValue,
          invalidValue);
      end if;

      //compute VLE Additional Properties
      if computeVLEAdditionalProperties then
        if (vleFluidType.nc == 1) then
          //VLE only depends on p or T
          (VLEAdditional.cp_l,VLEAdditional.beta_l,VLEAdditional.kappa_l,
            VLEAdditional.cp_v,VLEAdditional.beta_v,VLEAdditional.kappa_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_phxi(
            p,
            -1,
            zeros(vleFluidType.nc - 1),
            vleFluidPointer);
        else
          //VLE of a mixture also depends on density/enthalpy/entropy/temperature
          (VLEAdditional.cp_l,VLEAdditional.beta_l,VLEAdditional.kappa_l,
            VLEAdditional.cp_v,VLEAdditional.beta_v,VLEAdditional.kappa_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_phxi(
            p,
            h,
            xi,
            vleFluidPointer);
        end if;
      else
        VLEAdditional.cp_l = invalidValue;
        VLEAdditional.beta_l = invalidValue;
        VLEAdditional.kappa_l = invalidValue;
        VLEAdditional.cp_v = invalidValue;
        VLEAdditional.beta_v = invalidValue;
        VLEAdditional.kappa_v = invalidValue;
      end if;

      //compute VLE Transport Properties
      if computeVLETransportProperties then
        if (vleFluidType.nc == 1) then
          //VLE only depends on p or T
          (VLETransp.Pr_l,VLETransp.Pr_v,VLETransp.lambda_l,VLETransp.lambda_v,
            VLETransp.eta_l,VLETransp.eta_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_phxi(
            p,
            -1,
            zeros(0),
            vleFluidPointer);
        else
          //VLE of a mixture also depends on density/enthalpy/entropy/temperature
          (VLETransp.Pr_l,VLETransp.Pr_v,VLETransp.lambda_l,VLETransp.lambda_v,
            VLETransp.eta_l,VLETransp.eta_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_phxi(
            p,
            h,
            xi,
            vleFluidPointer);
        end if;
      else
        VLETransp.Pr_l = invalidValue;
        VLETransp.Pr_v = invalidValue;
        VLETransp.lambda_l = invalidValue;
        VLETransp.lambda_v = invalidValue;
        VLETransp.eta_l = invalidValue;
        VLETransp.eta_v = invalidValue;
      end if;

      annotation (
        defaultComponentName="vleFluid",
        Protection(access=Access.packageDuplicate),
        Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_pT calculates the thermopyhsical property data with given inputs: pressure (p), temperature (T), mass fraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));
    end VLEFluid_pT;

    model VLEFluid_ps
      "Compressible fluid model with p, s and xi as independent variables"
      extends BaseClasses.PartialVLEFluid_ps(redeclare class PointerType =
            TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject,
          vleFluidPointer=
            TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject(
            vleFluidType.concatVLEFluidName,
            computeFlags,
            vleFluidType.mixingRatio_propertyCalculation[1:end - 1]/sum(
              vleFluidType.mixingRatio_propertyCalculation),
            vleFluidType.nc,
            getInstanceName()));
    protected
      constant Real invalidValue=-1;
      final parameter Integer computeFlags=TILMedia.Internals.calcComputeFlags(
          computeTransportProperties,
          interpolateTransportProperties,
          computeSurfaceTension,
          deactivateTwoPhaseRegion,
          deactivateDensityDerivatives);

    equation
      M_i = TILMedia.Internals.VLEFluidObjectFunctions.molarMass_nc(vleFluidType.nc,
        vleFluidPointer);
      (crit.d,crit.h,crit.p,crit.s,crit.T) =
        TILMedia.Internals.VLEFluidObjectFunctions.cricondenbar_xi(xi,
        vleFluidPointer);
      //calculate molar mass
      M = 1/sum(cat(
        1,
        xi,
        {1 - sum(xi)}) ./ M_i);
      //calculate mole fraction
      xi = x .* M_i[1:end - 1]*(sum(cat(
        1,
        xi,
        {1 - sum(xi)}) ./ M_i));
      //xi = x.*M_i/M

      //Calculate Main Properties of state
      d =
        TILMedia.Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.density_psxi(
        p,
        s,
        xi,
        vleFluidPointer);
      h =
        TILMedia.Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.specificEnthalpy_psxi(
        p,
        s,
        xi,
        vleFluidPointer);
      T =
        TILMedia.Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.temperature_psxi(
        p,
        s,
        xi,
        vleFluidPointer);

      //Calculate Additional Properties of state
      (q,cp,cv,beta,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,w,gamma) =
        TILMedia.Internals.VLEFluidObjectFunctions.additionalProperties_phxi(
        p,
        h,
        xi,
        vleFluidPointer);

      //Calculate VLE Properties
      if (vleFluidType.nc == 1) then
        //VLE only depends on p or T
        (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,
          VLE.s_v,VLE.T_v,VLE.xi_v) =
          TILMedia.Internals.VLEFluidObjectFunctions.VLEProperties_phxi(
          p,
          -1,
          zeros(0),
          vleFluidPointer);
      else
        //VLE of a mixture also depends on density/enthalpy/entropy/temperature
        (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,
          VLE.s_v,VLE.T_v,VLE.xi_v) =
          TILMedia.Internals.VLEFluidObjectFunctions.VLEProperties_phxi(
          p,
          h,
          xi,
          vleFluidPointer);
      end if;

      //Calculate Transport Properties
      if computeTransportProperties then
        transp =
          TILMedia.Internals.VLEFluidObjectFunctions.transportPropertyRecord_phxi(
          p,
          h,
          xi,
          vleFluidPointer);
      else
        transp = TILMedia.Internals.TransportPropertyRecord(
          invalidValue,
          invalidValue,
          invalidValue,
          invalidValue);
      end if;

      //compute VLE Additional Properties
      if computeVLEAdditionalProperties then
        if (vleFluidType.nc == 1) then
          //VLE only depends on p or T
          (VLEAdditional.cp_l,VLEAdditional.beta_l,VLEAdditional.kappa_l,
            VLEAdditional.cp_v,VLEAdditional.beta_v,VLEAdditional.kappa_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_phxi(
            p,
            -1,
            zeros(vleFluidType.nc - 1),
            vleFluidPointer);
        else
          //VLE of a mixture also depends on density/enthalpy/entropy/temperature
          (VLEAdditional.cp_l,VLEAdditional.beta_l,VLEAdditional.kappa_l,
            VLEAdditional.cp_v,VLEAdditional.beta_v,VLEAdditional.kappa_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_phxi(
            p,
            h,
            xi,
            vleFluidPointer);
        end if;
      else
        VLEAdditional.cp_l = invalidValue;
        VLEAdditional.beta_l = invalidValue;
        VLEAdditional.kappa_l = invalidValue;
        VLEAdditional.cp_v = invalidValue;
        VLEAdditional.beta_v = invalidValue;
        VLEAdditional.kappa_v = invalidValue;
      end if;

      //compute VLE Transport Properties
      if computeVLETransportProperties then
        if (vleFluidType.nc == 1) then
          //VLE only depends on p or T
          (VLETransp.Pr_l,VLETransp.Pr_v,VLETransp.lambda_l,VLETransp.lambda_v,
            VLETransp.eta_l,VLETransp.eta_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_phxi(
            p,
            -1,
            zeros(0),
            vleFluidPointer);
        else
          //VLE of a mixture also depends on density/enthalpy/entropy/temperature
          (VLETransp.Pr_l,VLETransp.Pr_v,VLETransp.lambda_l,VLETransp.lambda_v,
            VLETransp.eta_l,VLETransp.eta_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_phxi(
            p,
            h,
            xi,
            vleFluidPointer);
        end if;
      else
        VLETransp.Pr_l = invalidValue;
        VLETransp.Pr_v = invalidValue;
        VLETransp.lambda_l = invalidValue;
        VLETransp.lambda_v = invalidValue;
        VLETransp.eta_l = invalidValue;
        VLETransp.eta_v = invalidValue;
      end if;

      annotation (
        defaultComponentName="vleFluid",
        Protection(access=Access.packageDuplicate),
        Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_ps calculates the thermopyhsical property data with given inputs: pressure (p), entropy (s), mass fraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));
    end VLEFluid_ps;

    model VLEFluid_ph
      "Compressible fluid model with p, h and xi as independent variables"
      extends BaseClasses.PartialVLEFluid_ph(redeclare class PointerType =
            TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject,
          vleFluidPointer=
            TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject(
            vleFluidType.concatVLEFluidName,
            computeFlags,
            vleFluidType.mixingRatio_propertyCalculation[1:end - 1]/sum(
              vleFluidType.mixingRatio_propertyCalculation),
            vleFluidType.nc,
            getInstanceName()));
    protected
      constant Real invalidValue=-1;
      final parameter Integer computeFlags=TILMedia.Internals.calcComputeFlags(
          computeTransportProperties,
          interpolateTransportProperties,
          computeSurfaceTension,
          deactivateTwoPhaseRegion,
          deactivateDensityDerivatives);

    equation
      M_i = TILMedia.Internals.VLEFluidObjectFunctions.molarMass_nc(vleFluidType.nc,
        vleFluidPointer);
      (crit.d,crit.h,crit.p,crit.s,crit.T) =
        TILMedia.Internals.VLEFluidObjectFunctions.cricondenbar_xi(xi,
        vleFluidPointer);
      //calculate molar mass
      M = 1/sum(cat(
        1,
        xi,
        {1 - sum(xi)}) ./ M_i);
      //calculate mole fraction
      xi = x .* M_i[1:end - 1]*(sum(cat(
        1,
        xi,
        {1 - sum(xi)}) ./ M_i));
      //xi = x.*M_i/M

      //Calculate Main Properties of state
      d =
        TILMedia.Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.density_phxi(
        p,
        h,
        xi,
        vleFluidPointer);
      s =
        TILMedia.Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.specificEntropy_phxi(
        p,
        h,
        xi,
        vleFluidPointer);
      T =
        TILMedia.Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.temperature_phxi(
        p,
        h,
        xi,
        vleFluidPointer);

      //Calculate Additional Properties of state
      (q,cp,cv,beta,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,w,gamma) =
        TILMedia.Internals.VLEFluidObjectFunctions.additionalProperties_phxi(
        p,
        h,
        xi,
        vleFluidPointer);

      //Calculate VLE Properties
      if (vleFluidType.nc == 1) then
        //VLE only depends on p or T
        (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,
          VLE.s_v,VLE.T_v,VLE.xi_v) =
          TILMedia.Internals.VLEFluidObjectFunctions.VLEProperties_phxi(
          p,
          -1,
          zeros(0),
          vleFluidPointer);
      else
        //VLE of a mixture also depends on density/enthalpy/entropy/temperature
        (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,
          VLE.s_v,VLE.T_v,VLE.xi_v) =
          TILMedia.Internals.VLEFluidObjectFunctions.VLEProperties_phxi(
          p,
          h,
          xi,
          vleFluidPointer);
      end if;

      //Calculate Transport Properties
      if computeTransportProperties then
        transp =
          TILMedia.Internals.VLEFluidObjectFunctions.transportPropertyRecord_phxi(
          p,
          h,
          xi,
          vleFluidPointer);
      else
        transp = TILMedia.Internals.TransportPropertyRecord(
          invalidValue,
          invalidValue,
          invalidValue,
          invalidValue);
      end if;

      //compute VLE Additional Properties
      if computeVLEAdditionalProperties then
        if (vleFluidType.nc == 1) then
          //VLE only depends on p or T
          (VLEAdditional.cp_l,VLEAdditional.beta_l,VLEAdditional.kappa_l,
            VLEAdditional.cp_v,VLEAdditional.beta_v,VLEAdditional.kappa_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_phxi(
            p,
            -1,
            zeros(vleFluidType.nc - 1),
            vleFluidPointer);
        else
          //VLE of a mixture also depends on density/enthalpy/entropy/temperature
          (VLEAdditional.cp_l,VLEAdditional.beta_l,VLEAdditional.kappa_l,
            VLEAdditional.cp_v,VLEAdditional.beta_v,VLEAdditional.kappa_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_phxi(
            p,
            h,
            xi,
            vleFluidPointer);
        end if;
      else
        VLEAdditional.cp_l = invalidValue;
        VLEAdditional.beta_l = invalidValue;
        VLEAdditional.kappa_l = invalidValue;
        VLEAdditional.cp_v = invalidValue;
        VLEAdditional.beta_v = invalidValue;
        VLEAdditional.kappa_v = invalidValue;
      end if;

      //compute VLE Transport Properties
      if computeVLETransportProperties then
        if (vleFluidType.nc == 1) then
          //VLE only depends on p or T
          (VLETransp.Pr_l,VLETransp.Pr_v,VLETransp.lambda_l,VLETransp.lambda_v,
            VLETransp.eta_l,VLETransp.eta_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_phxi(
            p,
            -1,
            zeros(0),
            vleFluidPointer);
        else
          //VLE of a mixture also depends on density/enthalpy/entropy/temperature
          (VLETransp.Pr_l,VLETransp.Pr_v,VLETransp.lambda_l,VLETransp.lambda_v,
            VLETransp.eta_l,VLETransp.eta_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_phxi(
            p,
            h,
            xi,
            vleFluidPointer);
        end if;
      else
        VLETransp.Pr_l = invalidValue;
        VLETransp.Pr_v = invalidValue;
        VLETransp.lambda_l = invalidValue;
        VLETransp.lambda_v = invalidValue;
        VLETransp.eta_l = invalidValue;
        VLETransp.eta_v = invalidValue;
      end if;

      annotation (
        defaultComponentName="vleFluid",
        Protection(access=Access.packageDuplicate),
        Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_ph calculates the thermopyhsical property data with given inputs: pressure (p), enthalpy (h), mass fraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));
    end VLEFluid_ph;

    model VLEFluid_dT
      "Compressible fluid model with d, T and xi as independent variables"
      extends BaseClasses.PartialVLEFluid_dT(redeclare class PointerType =
            TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject,
          vleFluidPointer=
            TILMedia.VLEFluidObjectFunctions.VLEFluidPointerExternalObject(
            vleFluidType.concatVLEFluidName,
            computeFlags,
            vleFluidType.mixingRatio_propertyCalculation[1:end - 1]/sum(
              vleFluidType.mixingRatio_propertyCalculation),
            vleFluidType.nc,
            getInstanceName()));
    protected
      constant Real invalidValue=-1;
      final parameter Integer computeFlags=TILMedia.Internals.calcComputeFlags(
          computeTransportProperties,
          interpolateTransportProperties,
          computeSurfaceTension,
          deactivateTwoPhaseRegion,
          deactivateDensityDerivatives);

    equation
      M_i = TILMedia.Internals.VLEFluidObjectFunctions.molarMass_nc(vleFluidType.nc,
        vleFluidPointer);
      (crit.d,crit.h,crit.p,crit.s,crit.T) =
        TILMedia.Internals.VLEFluidObjectFunctions.cricondentherm_xi(xi,
        vleFluidPointer);
      //calculate molar mass
      M = 1/sum(cat(
        1,
        xi,
        {1 - sum(xi)}) ./ M_i);
      //calculate mole fraction
      xi = x .* M_i[1:end - 1]*(sum(cat(
        1,
        xi,
        {1 - sum(xi)}) ./ M_i));
      //xi = x.*M_i/M

      //Calculate Main Properties of state
      h =
        TILMedia.Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.specificEnthalpy_dTxi(
        d,
        T,
        xi,
        vleFluidPointer);
      p =
        TILMedia.Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.pressure_dTxi(
        d,
        T,
        xi,
        vleFluidPointer);
      s =
        TILMedia.Internals.VLEFluidConfigurations.FullyMixtureCompatible.VLEFluidObjectFunctions.specificEntropy_dTxi(
        d,
        T,
        xi,
        vleFluidPointer);

      //Calculate Additional Properties of state
      (q,cp,cv,beta,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,w,gamma) =
        TILMedia.Internals.VLEFluidObjectFunctions.additionalProperties_dTxi(
        d,
        T,
        xi,
        vleFluidPointer);

      //Calculate VLE Properties
      if (vleFluidType.nc == 1) then
        //VLE only depends on p or T
        (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,
          VLE.s_v,VLE.T_v,VLE.xi_v) =
          TILMedia.Internals.VLEFluidObjectFunctions.VLEProperties_dTxi(
          -1,
          T,
          zeros(0),
          vleFluidPointer);
      else
        //VLE of a mixture also depends on density/enthalpy/entropy/temperature
        (VLE.d_l,VLE.h_l,VLE.p_l,VLE.s_l,VLE.T_l,VLE.xi_l,VLE.d_v,VLE.h_v,VLE.p_v,
          VLE.s_v,VLE.T_v,VLE.xi_v) =
          TILMedia.Internals.VLEFluidObjectFunctions.VLEProperties_dTxi(
          d,
          T,
          xi,
          vleFluidPointer);
      end if;

      //Calculate Transport Properties
      if computeTransportProperties then
        transp =
          TILMedia.Internals.VLEFluidObjectFunctions.transportPropertyRecord_dTxi(
          d,
          T,
          xi,
          vleFluidPointer);
      else
        transp = TILMedia.Internals.TransportPropertyRecord(
          invalidValue,
          invalidValue,
          invalidValue,
          invalidValue);
      end if;

      //compute VLE Additional Properties
      if computeVLEAdditionalProperties then
        if (vleFluidType.nc == 1) then
          //VLE only depends on p or T
          (VLEAdditional.cp_l,VLEAdditional.beta_l,VLEAdditional.kappa_l,
            VLEAdditional.cp_v,VLEAdditional.beta_v,VLEAdditional.kappa_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_dTxi(
            -1,
            T,
            zeros(vleFluidType.nc - 1),
            vleFluidPointer);
        else
          //VLE of a mixture also depends on density/enthalpy/entropy/temperature
          (VLEAdditional.cp_l,VLEAdditional.beta_l,VLEAdditional.kappa_l,
            VLEAdditional.cp_v,VLEAdditional.beta_v,VLEAdditional.kappa_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLEAdditionalProperties_dTxi(
            d,
            T,
            xi,
            vleFluidPointer);
        end if;
      else
        VLEAdditional.cp_l = invalidValue;
        VLEAdditional.beta_l = invalidValue;
        VLEAdditional.kappa_l = invalidValue;
        VLEAdditional.cp_v = invalidValue;
        VLEAdditional.beta_v = invalidValue;
        VLEAdditional.kappa_v = invalidValue;
      end if;

      //compute VLE Transport Properties
      if computeVLETransportProperties then
        if (vleFluidType.nc == 1) then
          //VLE only depends on p or T
          (VLETransp.Pr_l,VLETransp.Pr_v,VLETransp.lambda_l,VLETransp.lambda_v,
            VLETransp.eta_l,VLETransp.eta_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_dTxi(
            -1,
            T,
            zeros(0),
            vleFluidPointer);
        else
          //VLE of a mixture also depends on density/enthalpy/entropy/temperature
          (VLETransp.Pr_l,VLETransp.Pr_v,VLETransp.lambda_l,VLETransp.lambda_v,
            VLETransp.eta_l,VLETransp.eta_v) =
            TILMedia.Internals.VLEFluidObjectFunctions.VLETransportPropertyRecord_dTxi(
            d,
            T,
            xi,
            vleFluidPointer);
        end if;
      else
        VLETransp.Pr_l = invalidValue;
        VLETransp.Pr_v = invalidValue;
        VLETransp.lambda_l = invalidValue;
        VLETransp.lambda_v = invalidValue;
        VLETransp.eta_l = invalidValue;
        VLETransp.eta_v = invalidValue;
      end if;

      annotation (
        defaultComponentName="vleFluid",
        Protection(access=Access.packageDuplicate),
        Documentation(info="<html>
                   <p>
                   The VLE-fluid model VLEFluid_dT calculates the thermopyhsical property data with given inputs: density (d), temperature (T), mass fraction (xi) and the parameter vleFluidType.<br>
                   The interface and the way of using, is demonstrated in the Testers -> <a href=\"Modelica:TILMedia.Testers.TestVLEFluid\">TestVLEFluid</a>.
                   </p>
                   <hr>
                   </html>"));
    end VLEFluid_dT;

    package VLEFluidObjectFunctions
      "Package for calculation of VLEFLuid properties with a functional call, referencing existing external objects for highspeed evaluation"
      extends TILMedia.VLEFluidObjectFunctions;

      redeclare replaceable function extends pressure_dTxi
      external "C" p = TILMedia_VLEFluidObjectFunctions_pressure_dTxi(d, T, xi, vleFluidPointer)
        annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_pressure_dTxi(double, double, double*, void*);",Library="TILMedia151ClaRa");
        annotation(inverse(d=TILMedia.VLEFluidObjectFunctions.density_pTxi(p, T, xi, vleFluidPointer)));
      end pressure_dTxi;

      redeclare replaceable function extends specificEnthalpy_dTxi
      external "C" h = TILMedia_VLEFluidObjectFunctions_specificEnthalpy_dTxi(d, T, xi, vleFluidPointer)
        annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificEnthalpy_dTxi(double, double, double*, void*);",Library="TILMedia151ClaRa");
      end specificEnthalpy_dTxi;

      redeclare replaceable function extends specificEntropy_dTxi
      external "C" s = TILMedia_VLEFluidObjectFunctions_specificEntropy_dTxi(d, T, xi, vleFluidPointer)
        annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificEntropy_dTxi(double, double, double*, void*);",Library="TILMedia151ClaRa");
      end specificEntropy_dTxi;

      redeclare replaceable function extends temperature_phxi
      external "C" T = TILMedia_VLEFluidObjectFunctions_temperature_phxi(p, h, xi, vleFluidPointer)
        annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_temperature_phxi(double, double, double*, void*);",Library="TILMedia151ClaRa");
      annotation(inverse(h=TILMedia.VLEFluidObjectFunctions.specificEnthalpy_pTxi(p, T, xi, vleFluidPointer)),Impure=false);
      end temperature_phxi;

      redeclare replaceable function extends specificEntropy_phxi
      external "C" s = TILMedia_VLEFluidObjectFunctions_specificEntropy_phxi(p, h, xi, vleFluidPointer)
        annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificEntropy_phxi(double, double, double*, void*);",Library="TILMedia151ClaRa");
      end specificEntropy_phxi;

      redeclare replaceable function extends density_pTxi
      external "C" d = TILMedia_VLEFluidObjectFunctions_density_pTxi(p, T, xi, vleFluidPointer)
        annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_density_pTxi(double, double, double*, void*);",Library="TILMedia151ClaRa");
      end density_pTxi;

      redeclare replaceable function extends specificEnthalpy_pTxi
      external "C" h = TILMedia_VLEFluidObjectFunctions_specificEnthalpy_pTxi(p, T, xi, vleFluidPointer)
        annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificEnthalpy_pTxi(double, double, double*, void*);",Library="TILMedia151ClaRa");
      annotation(inverse(T=TILMedia.VLEFluidObjectFunctions.temperature_phxi(p, h, xi, vleFluidPointer)),Impure=false);
      end specificEnthalpy_pTxi;

      redeclare replaceable function extends specificEntropy_pTxi
      external "C" s = TILMedia_VLEFluidObjectFunctions_specificEntropy_pTxi(p, T, xi, vleFluidPointer)
        annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificEntropy_pTxi(double, double, double*, void*);",Library="TILMedia151ClaRa");
      annotation(inverse(T=TILMedia.VLEFluidObjectFunctions.temperature_psxi(p, s, xi, vleFluidPointer)),Impure=false);
      end specificEntropy_pTxi;

      redeclare replaceable function extends density_psxi
      external "C" d = TILMedia_VLEFluidObjectFunctions_density_psxi(p, s, xi, vleFluidPointer)
        annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_density_psxi(double, double, double*, void*);",Library="TILMedia151ClaRa");
      end density_psxi;

      redeclare replaceable function extends temperature_psxi
      external "C" T = TILMedia_VLEFluidObjectFunctions_temperature_psxi(p, s, xi, vleFluidPointer)
        annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_temperature_psxi(double, double, double*, void*);",Library="TILMedia151ClaRa");
      annotation(inverse(s=TILMedia.VLEFluidObjectFunctions.specificEntropy_pTxi(p, T, xi, vleFluidPointer)),Impure=false);
      end temperature_psxi;

      redeclare replaceable function extends specificEnthalpy_psxi
      external "C" h = TILMedia_VLEFluidObjectFunctions_specificEnthalpy_psxi(p, s, xi, vleFluidPointer)
        annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificEnthalpy_psxi(double, double, double*, void*);",Library="TILMedia151ClaRa");
      annotation(inverse(s=TILMedia.VLEFluidObjectFunctions.specificEntropy_phxi(p, h, xi, vleFluidPointer)),Impure=false);
      end specificEnthalpy_psxi;



    end VLEFluidObjectFunctions;

    package VLEFluidFunctions
      "Package for calculation of VLEFluid properties with a functional call"
      extends TILMedia.VLEFluidFunctions;
    end VLEFluidFunctions;
  end FullyMixtureCompatible;
end VLEFluidConfigurations;
