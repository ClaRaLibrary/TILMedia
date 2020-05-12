within TILMedia.Internals;
package GasObjectFunctions
    extends TILMedia.Internals.ClassTypes.ModelPackage;

  package PureComponentDerivatives
      extends TILMedia.Internals.ClassTypes.ModelPackage;
    function temperature_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction xi[:] "Mass fraction";
      input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
      output SI.Temperature T "Temperature";
    external "C" T = TILMedia_Gas_temperature_phxi(p,h,xi, gasPointer)
      annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_temperature_phxi(double, double, double*, void*);",Library="TILMedia150ClaRa");
       annotation (inverse(h=TILMedia.Internals.GasObjectFunctions.specificEnthalpy_pTxi(p,T,xi,gasPointer)), derivative = TILMedia.Internals.GasObjectFunctions.PureComponentDerivatives.der_temperature_phxi);
    end temperature_phxi;

    function der_temperature_phxi "derivative function for pure components"
    extends TILMedia.BaseClasses.PartialGasFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction xi[:] "Mass fraction";
      input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
      input Real der_p "Pressure";
      input Real der_h "Specific enthalpy";
      input Real der_xi[:] "Mass fraction";
      output Real der_T "Temperature";
    external "C" der_T=TILMedia_GasObjectFunctions_der_temperature_phxi(p,h,xi,der_p,der_h,der_xi, gasPointer)
      annotation(__iti_dllNoExport = true,Include="double TILMedia_GasObjectFunctions_der_temperature_phxi(double, double, double*, double, double, double*, void*);",Library="TILMedia150ClaRa");
    end der_temperature_phxi;

  function specificIsobaricHeatCapacity_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
    external "C" cp = TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_phxi(p, h, xi, gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_phxi(double, double, double*,void*);",Library="TILMedia150ClaRa");
     annotation(derivative(noDerivative=gasPointer)=TILMedia.Internals.GasObjectFunctions.PureComponentDerivatives.der_specificIsobaricHeatCapacity_phxi);
  end specificIsobaricHeatCapacity_phxi;

  function der_specificIsobaricHeatCapacity_phxi "derivative function for pure components"
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    input Real der_p "Pressure";
    input Real der_h "Specific enthalpy";
    input Real[:] der_xi "Mass fractions of the first nc-1 components";
    output Real der_cp "Specific isobaric heat capacity cp";
    external "C" der_cp = TILMedia_GasObjectFunctions_der_specificIsobaricHeatCapacity_phxi(p, h, xi, der_p, der_h, der_xi, gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasObjectFunctions_der_specificIsobaricHeatCapacity_phxi(double, double, double*,double, double, double*,void*);",Library="TILMedia150ClaRa");
  end der_specificIsobaricHeatCapacity_phxi;

  function densityDerivativeWRTspecificEnthalpy_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.DerDensityByEnthalpy drhodh_pxi
        "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
    external "C" drhodh_pxi = TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_phxi(p, h, xi, gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_phxi(double, double, double*,void*);",Library="TILMedia150ClaRa");
    annotation(derivative(noDerivative=gasPointer)=TILMedia.Internals.GasObjectFunctions.PureComponentDerivatives.der_densityDerivativeWRTspecificEnthalpy_phxi);
  end densityDerivativeWRTspecificEnthalpy_phxi;

  function der_densityDerivativeWRTspecificEnthalpy_phxi
      "derivative function for pure components"
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    input Real der_p "Pressure";
    input Real der_h "Specific enthalpy";
    input Real[:] der_xi "Mass fractions of the first nc-1 components";
    output Real der_drhodh_pxi
        "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
    external "C" der_drhodh_pxi = TILMedia_GasObjectFunctions_der_densityDerivativeWRTspecificEnthalpy_phxi(p, h, xi, der_p, der_h, der_xi, gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasObjectFunctions_der_densityDerivativeWRTspecificEnthalpy_phxi(double, double, double*,double, double, double*,void*);",Library="TILMedia150ClaRa");

  end der_densityDerivativeWRTspecificEnthalpy_phxi;

  function densityDerivativeWRTpressure_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.DerDensityByPressure drhodp_hxi
        "Derivative of density wrt pressure at specific enthalpy and mass fraction";
    external "C" drhodp_hxi = TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_phxi(p, h, xi, gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_phxi(double, double, double*,void*);",Library="TILMedia150ClaRa");
    annotation(derivative(noDerivative=gasPointer)=TILMedia.Internals.GasObjectFunctions.PureComponentDerivatives.der_densityDerivativeWRTpressure_phxi);
  end densityDerivativeWRTpressure_phxi;

  function der_densityDerivativeWRTpressure_phxi "derivative function for pure components"
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    input Real der_p "Pressure";
    input Real der_h "Specific enthalpy";
    input Real[:] der_xi "Mass fractions of the first nc-1 components";
    output Real der_drhodp_hxi
        "Derivative of density wrt pressure at specific enthalpy and mass fraction";
    external "C" der_drhodp_hxi = TILMedia_GasObjectFunctions_der_densityDerivativeWRTpressure_phxi(p, h, xi,der_p, der_h, der_xi, gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasObjectFunctions_der_densityDerivativeWRTpressure_phxi(double, double, double*,double, double, double*,void*);",Library="TILMedia150ClaRa");
  end der_densityDerivativeWRTpressure_phxi;

    function specificEnthalpy_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction xi[:] "Mass fraction";
      input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
      output SI.SpecificEnthalpy h "Specific enthalpy";

    external "C" h = TILMedia_Gas_specificEnthalpy_pTxi(p,T,xi,gasPointer)
      annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_specificEnthalpy_pTxi(double, double, double*, void*);",Library="TILMedia150ClaRa");
       annotation (inverse(T=temperature_phxi(p,h,xi,gasPointer)),derivative(noDerivative=gasPointer)=der_specificEnthalpy_pTxi);
    end specificEnthalpy_pTxi;

    function der_specificEnthalpy_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction xi[:] "Mass fraction";
      input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
      input Real der_p "Pressure";
      input Real der_T "Temperature";
      input Real der_xi[:] "Mass fraction";
      output Real der_h "Specific enthalpy";
    algorithm
      der_h :=
          der_p * TILMedia.Internals.GasObjectFunctions.dhdp_Txi_pTxi(p, T, xi, gasPointer)
        + der_T * TILMedia.Internals.GasObjectFunctions.dhdT_pxi_pTxi(p, T, xi, gasPointer)
        + der_xi * {TILMedia.Internals.GasObjectFunctions.dhdxi_pT_pTxin(p, T, xi, i, gasPointer) for i in 1:size(xi,1)};
    end der_specificEnthalpy_pTxi;
  end PureComponentDerivatives;

  function molarMass_nc
  extends TILMedia.BaseClasses.PartialGasFunction;
    input Integer nc "Number of components";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.MolarMass mm_i[nc] "Molar mass of component i";


  external "C" TILMedia_Gas_molarMass(gasPointer, mm_i)
  annotation(__iti_dllNoExport = true,Include="void TILMedia_Gas_molarMass(void*, double*);",Library="TILMedia150ClaRa");
  annotation(Impure=false);
  end molarMass_nc;

  function pureComponentProperties_Tnc
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.Temperature T "Temperature";
    input Integer nc "Number of components";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.PartialPressure ppS
      "Saturation partial pressure of condensing component";
    output SI.SpecificEnthalpy delta_hv
      "Specific enthalpy of vaporation of condensing component";
    output SI.SpecificEnthalpy delta_hd
      "Specific enthalpy of desublimation of condensing component";
    output SI.SpecificEnthalpy h_idealGas[nc]
      "Specific enthalpy of theoretical pure component ideal gas state";


  external "C" TILMedia_Gas_pureComponentProperties_T(T,gasPointer,ppS,delta_hv,delta_hd,h_idealGas)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_Gas_pureComponentProperties_T(double, void*, double*, double*, double*, double*);",Library="TILMedia150ClaRa");
    annotation(Impure=false);
  end pureComponentProperties_Tnc;

  function simpleCondensingProperties_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
    output SI.SpecificHeatCapacity cv "Specific heat capacity cv";
    output SI.LinearExpansionCoefficient beta
      "Isothermal expansion coefficient";
    output SI.Velocity w "Speed of sound";


  external "C" TILMedia_Gas_simpleCondensingProperties_phxi(p,h,xi,gasPointer,cp,cv,beta,w)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_Gas_simpleCondensingProperties_phxi(double p, double h, double*, void*, double*, double*, double*, double*);",Library="TILMedia150ClaRa");
    annotation(Impure=false);
  end simpleCondensingProperties_phxi;

  function simpleCondensingProperties_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
    output SI.SpecificHeatCapacity cv "Specific heat capacity cv";
    output SI.LinearExpansionCoefficient beta
      "Isothermal expansion coefficient";
    output SI.Velocity w "Speed of sound";


  external "C" TILMedia_Gas_simpleCondensingProperties_pTxi(p,T,xi,gasPointer,cp,cv,beta,w)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_Gas_simpleCondensingProperties_pTxi(double, double, double*, void*, double*, double*, double*, double*);",Library="TILMedia150ClaRa");
    annotation(Impure=false);
  end simpleCondensingProperties_pTxi;

  function additionalProperties_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.Density d "Density";
    output SI.Compressibility kappa "Compressibility";
    output SI.DerDensityByPressure drhodp_hxi
      "Derivative of density wrt pressure";
    output SI.DerDensityByEnthalpy drhodh_pxi
      "Derivative of density wrt specific enthalpy";
    output SI.Density drhodxi_ph[size(xi,1)]
      "Derivative of density wrt mass fraction";
    output SI.PartialPressure pp[size(xi,1)+1] "Partial pressure";
    output SI.MassFraction xi_gas
      "Mass fraction of gasoues condensing component";


  external "C" TILMedia_Gas_additionalProperties_pTxi(p,T,xi,gasPointer,d,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,pp,xi_gas)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_Gas_additionalProperties_pTxi(double, double, double*, void*, double*, double*, double*, double*, double*, double*, double*);",Library="TILMedia150ClaRa");
    annotation(Impure=false);
  end additionalProperties_pTxi;

  function transportProperties_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output TILMedia.Internals.TransportPropertyRecord transp
      "Transport property record";


  external "C" TILMedia_Gas_transportProperties_pTxi(p,T,xi,gasPointer,transp.Pr,transp.lambda,transp.eta,transp.sigma)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_Gas_transportProperties_pTxi(double, double, double*, void*, double*, double*, double*, double*);",Library="TILMedia150ClaRa");
    annotation(Impure=false);
  end transportProperties_pTxi;

  function temperature_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.Temperature T "Temperature";


  external "C" T = TILMedia_Gas_temperature_phxi(p,h,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_temperature_phxi(double, double, double*, void*);",Library="TILMedia150ClaRa");
     annotation(inverse(h=specificEnthalpy_pTxi(p,T,xi,gasPointer)));
  end temperature_phxi;

  function temperature_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.Temperature T "Temperature";


  external "C" T = TILMedia_Gas_temperature_psxi(p,s,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_temperature_psxi(double, double, double*, void*);",Library="TILMedia150ClaRa");
     annotation (inverse(s=specificEntropy_pTxi(p,T,xi,gasPointer)));
  end temperature_psxi;

  function specificEnthalpy_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";


  external "C" h = TILMedia_Gas_specificEnthalpy_psxi(p,s,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_specificEnthalpy_psxi(double, double, double*, void*);",Library="TILMedia150ClaRa");
     annotation (inverse(s=specificEntropy_phxi(p,h,xi,gasPointer)));
  end specificEnthalpy_psxi;

  function specificEnthalpy_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";


  external "C" h = TILMedia_Gas_specificEnthalpy_pTxi(p,T,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_specificEnthalpy_pTxi(double, double, double*, void*);",Library="TILMedia150ClaRa");
     annotation (inverse(T=temperature_phxi(p,h,xi,gasPointer)));
  end specificEnthalpy_pTxi;

  function specificEntropy_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.SpecificEntropy s "Specific entropy";


  external "C" s = TILMedia_Gas_specificEntropy_pTxi(p,T,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_specificEntropy_pTxi(double, double, double*, void*);",Library="TILMedia150ClaRa");
     annotation (inverse(T=temperature_psxi(p,s,xi,gasPointer)));
  end specificEntropy_pTxi;

  function specificEntropy_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.SpecificEntropy s "Specific entropy";


  external "C" s = TILMedia_Gas_specificEntropy_phxi(p,h,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_specificEntropy_phxi(double, double, double*, void*);",Library="TILMedia150ClaRa");
     annotation (inverse(h=specificEnthalpy_psxi(p,s,xi,gasPointer)));
  end specificEntropy_phxi;

  function xi_s_pTxidg
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.MassFraction xi_s "Saturation vapour mass fraction";


  external "C" xi_s = TILMedia_Gas_saturationMassFraction_pTxidg(p,T,xi_dryGas,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_saturationMassFraction_pTxidg(double, double, double*, void*);",Library="TILMedia150ClaRa");
  end xi_s_pTxidg;

  function humRatio_s_pTxidg
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output Real humRatio_s "Saturation humidity ratio";


  external "C" humRatio_s = TILMedia_Gas_saturationHumidityRatio_pTxidg(p,T,xi_dryGas,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_saturationHumidityRatio_pTxidg(double, double, double*, void*);",Library="TILMedia150ClaRa");
  end humRatio_s_pTxidg;

  function phi_pThumRatioxidg
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input Real humRatio "Humidity ratio";
    input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";


  external "C" phi = TILMedia_MoistAir_phi_pThumRatioxidg(p,T,humRatio,xi_dryGas,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_MoistAir_phi_pThumRatioxidg(double, double, double, double*, void*);",Library="TILMedia150ClaRa");
     annotation (inverse(humRatio=humRatio_pTphixidg(p,T,phi,xi_dryGas,gasPointer)));
  end phi_pThumRatioxidg;

  function humRatio_pTphixidg
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
    input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output Real humRatio "Humidity ratio";


  external "C" humRatio = TILMedia_MoistAir_humRatio_pTphixidg(p,T,phi,xi_dryGas,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_MoistAir_humRatio_pTphixidg(double, double, double, double*, void*);",Library="TILMedia150ClaRa");
     annotation (inverse(phi=phi_pThumRatioxidg(p,T,humRatio,xi_dryGas,gasPointer)));
  end humRatio_pTphixidg;

  function xi_humRatioxidgnc
  extends TILMedia.BaseClasses.PartialGasFunction;
    input Real humRatioxi_dryGas[nc-1]
      "Humidity ratio and xi_dryGas in one vector";
    input Integer nc;
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.MassFraction xi[nc-1] "Mass fraction";


  external "C" TILMedia_Gas_xi_humRatioxidg(humRatioxi_dryGas,gasPointer,xi)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_Gas_xi_humRatioxidg(double*, void*, double*);",Library="TILMedia150ClaRa");
     annotation (inverse(humRatioxi_dryGas=humRatioxidg_xinc(xi,nc,gasPointer)));
  end xi_humRatioxidgnc;

  function humRatioxidg_xinc
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.MassFraction xi[nc-1] "Mass fraction";
    input Integer nc;
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output Real humRatioxi_dryGas[nc-1]
      "Humidity ratio and xi_dryGas in one vector";


  external "C" TILMedia_Gas_humRatioxidg_xi(xi,gasPointer,humRatioxi_dryGas)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_Gas_humRatioxidg_xi(double*, void*, double*);",Library="TILMedia150ClaRa");
     annotation (inverse(xi=xi_humRatioxidgnc(humRatioxi_dryGas,nc,gasPointer)));
  end humRatioxidg_xinc;

  function wetBulbTemperatureLiquid_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.Temperature T_wetBulb "Wet bulb temperature";


  external "C" T_wetBulb = TILMedia_GasMixture_wetBulbTemperatureLiquid_pTxi(p,T,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasMixture_wetBulbTemperatureLiquid_pTxi(double, double, double*, void*);",Library="TILMedia150ClaRa");
  end wetBulbTemperatureLiquid_pTxi;

  function wetBulbTemperatureSolid_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.Temperature T_wetBulb "Wet bulb temperature";


  external "C" T_wetBulb = TILMedia_GasMixture_wetBulbTemperatureSolid_pTxi(p,T,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasMixture_wetBulbTemperatureSolid_pTxi(double, double, double*, void*);",Library="TILMedia150ClaRa");
  end wetBulbTemperatureSolid_pTxi;

  function wetBulbTemperatureLiquid_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.Temperature T_wetBulb "Wet bulb temperature";


  external "C" T_wetBulb = TILMedia_GasMixture_wetBulbTemperatureLiquid_phxi(p,h,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasMixture_wetBulbTemperatureLiquid_phxi(double, double, double*, void*);",Library="TILMedia150ClaRa");
  end wetBulbTemperatureLiquid_phxi;

  function wetBulbTemperatureSolid_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.Temperature T_wetBulb "Wet bulb temperature";


  external "C" T_wetBulb = TILMedia_GasMixture_wetBulbTemperatureSolid_phxi(p,h,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasMixture_wetBulbTemperatureSolid_phxi(double, double, double*, void*);",Library="TILMedia150ClaRa");
  end wetBulbTemperatureSolid_phxi;

  function wetBulbTemperatureLiquid_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.Temperature T_wetBulb "Wet bulb temperature";


  external "C" T_wetBulb = TILMedia_GasMixture_wetBulbTemperatureLiquid_psxi(p,s,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasMixture_wetBulbTemperatureLiquid_psxi(double, double, double*, void*);",Library="TILMedia150ClaRa");
  end wetBulbTemperatureLiquid_psxi;

  function wetBulbTemperatureSolid_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.Temperature T_wetBulb "Wet bulb temperature";


  external "C" T_wetBulb = TILMedia_GasMixture_wetBulbTemperatureSolid_psxi(p,s,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasMixture_wetBulbTemperatureSolid_psxi(double, double, double*, void*);",Library="TILMedia150ClaRa");
  end wetBulbTemperatureSolid_psxi;

  function temperature_pdxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Density d "Density";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.Temperature T "Temperature";


  external "C" T = TILMedia_GasMixture_temperature_pdxi(p,d,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasMixture_temperature_pdxi(double, double, double*, void*);",Library="TILMedia150ClaRa");
  end temperature_pdxi;

  function liquidDensity_T
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.Temperature T "Temperature";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output SI.Density d "density";


  external "C" d = TILMedia_Gas_liquidDensity_T(T, gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_liquidDensity_T(double, void*);",Library="TILMedia150ClaRa");
  end liquidDensity_T;

function specificEntropyOfPureGas_pTxin
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction xi[:] "Mass fraction";
  input Integer compNo "Component ID";
  input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
  output SI.SpecificEntropy s_i "Specific entropy of theoretical pure component";


  external "C" s_i = TILMedia_GasObjectFunctions_specificEntropyOfPureGas_pTxin(p, T, xi, compNo, gasPointer)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasObjectFunctions_specificEntropyOfPureGas_pTxin(double, double, double*,int, void*);",Library="TILMedia150ClaRa");
end specificEntropyOfPureGas_pTxin;

  function dhdT_pxi_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output Real dhdT_pxi;
  external "C" dhdT_pxi = TILMedia_Gas_dhdT_pxi_pTxi(p,T,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_dhdT_pxi_pTxi(double, double, double*, void*);",Library="TILMedia150ClaRa");
  end dhdT_pxi_pTxi;

  function dhdp_Txi_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output Real dhdp_Txi;
  external "C" dhdp_Txi = TILMedia_Gas_dhdp_Txi_pTxi(p,T,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_dhdp_Txi_pTxi(double, double, double*, void*);",Library="TILMedia150ClaRa");
  end dhdp_Txi_pTxi;

  function dhdxi_pT_pTxin
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input Integer compNo "Component ID";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output Real dhdxi_pT;
  external "C" dhdxi_pT = TILMedia_Gas_dhdxi_pT_pTxi(p,T,xi,compNo,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_dhdxi_pT_pTxi(double, double, double*, int, void*);",Library="TILMedia150ClaRa");
  end dhdxi_pT_pTxin;

  function dd_dT_pxi_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output Real dd_dT_pxi;
  external "C" dd_dT_pxi = TILMedia_Gas_dd_dT_pxi_pTxi(p,T,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_dd_dT_pxi_pTxi(double, double, double*, void*);",Library="TILMedia150ClaRa");
  end dd_dT_pxi_pTxi;

  function dd_dp_Txi_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output Real dd_dp_Txi;
  external "C" dd_dp_Txi = TILMedia_Gas_dd_dp_Txi_pTxi(p,T,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_dd_dp_Txi_pTxi(double, double, double*, void*);",Library="TILMedia150ClaRa");
  end dd_dp_Txi_pTxi;

  function dd_dxi_pT_pTxin
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input Integer compNo "Component ID";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    output Real dd_dxi_pT;
  external "C" dd_dxi_pT = TILMedia_Gas_dd_dxi_pT_pTxi(p,T,xi,compNo,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_dd_dxi_pT_pTxi(double, double, double*, int, void*);",Library="TILMedia150ClaRa");
  end dd_dxi_pT_pTxin;

function density_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
  output SI.Density d "Density";
  external "C" d = TILMedia_GasObjectFunctions_density_pTxi(p, T, xi, gasPointer)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasObjectFunctions_density_pTxi(double, double, double*,void*);",Library="TILMedia150ClaRa");
   annotation(derivative(noDerivative=gasPointer)=TILMedia.Internals.GasObjectFunctions.der_density_pTxi);
end density_pTxi;

  function der_density_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
    input Real der_p "Pressure";
    input Real der_T "Temperature";
    input Real der_xi[:] "Mass fraction";
    output Real der_d "Density";
  algorithm
    der_d :=
        der_p * TILMedia.Internals.GasObjectFunctions.dd_dp_Txi_pTxi(p, T, xi, gasPointer)
      + der_T * TILMedia.Internals.GasObjectFunctions.dd_dT_pxi_pTxi(p, T, xi, gasPointer)
      + der_xi * {TILMedia.Internals.GasObjectFunctions.dd_dxi_pT_pTxin(p, T, xi, i, gasPointer) for i in 1:size(xi,1)};
  end der_density_pTxi;

function density_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
  output SI.Density d "Density";
  external "C" d = TILMedia_GasObjectFunctions_density_phxi(p, h, xi, gasPointer)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasObjectFunctions_density_phxi(double, double, double*,void*);",Library="TILMedia150ClaRa");
   annotation(derivative(noDerivative=gasPointer)=TILMedia.Internals.GasObjectFunctions.der_density_phxi);
end density_phxi;

function der_density_phxi "derivative function for pure components"
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
  input Real der_p "Pressure";
  input Real der_h "Specific enthalpy";
  input Real[:] der_xi "Mass fractions of the first nc-1 components";
  output Real der_d "Density";
  external "C" der_d = TILMedia_GasObjectFunctions_der_density_phxi(p, h, xi, der_p, der_h, der_xi, gasPointer)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasObjectFunctions_der_density_phxi(double, double, double*,double, double, double*,void*);",Library="TILMedia150ClaRa");
end der_density_phxi;

function specificEntropyOfFormation_pTn
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input Integer compNo "Component ID";
  input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
  output SI.SpecificEntropy s_i "Specific entropy of theoretical pure component";

  external "C" s_i = TILMedia_GasObjectFunctions_specificEntropyOfFormation_pTn(p, T, compNo, gasPointer)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasObjectFunctions_specificEntropyOfFormation_pTn(double, double, int, void*);",Library="TILMedia150ClaRa");
end specificEntropyOfFormation_pTn;

function specificEntropyOfLiquidFormation_pTn
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input Integer compNo "Component ID";
  input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
  output SI.SpecificEntropy s_i "Specific entropy of theoretical pure component";

  external "C" s_i = TILMedia_GasObjectFunctions_specificEntropyOfLiquidFormation_pTn(p, T, compNo, gasPointer)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasObjectFunctions_specificEntropyOfLiquidFormation_pTn(double, double, int, void*);",Library="TILMedia150ClaRa");
end specificEntropyOfLiquidFormation_pTn;

function specificEnthalpyOfFormation_Tn
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.Temperature T "Temperature";
  input Integer compNo "Component ID";
  input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
  output SI.SpecificEnthalpy h_i "Specific entropy of theoretical pure component";

  external "C" h_i = TILMedia_GasObjectFunctions_specificEnthalpyOfFormation_Tn(T, compNo, gasPointer)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasObjectFunctions_specificEnthalpyOfFormation_Tn(double, int, void*);",Library="TILMedia150ClaRa");
end specificEnthalpyOfFormation_Tn;

function specificEnthalpyOfLiquidFormation_Tn
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.Temperature T "Temperature";
  input Integer compNo "Component ID";
  input TILMedia.GasObjectFunctions.GasPointerExternalObject gasPointer;
  output SI.SpecificEnthalpy h_i "Specific entropy of theoretical pure component";

  external "C" h_i = TILMedia_GasObjectFunctions_specificEnthalpyOfLiquidFormation_Tn(T, compNo, gasPointer)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasObjectFunctions_specificEnthalpyOfLiquidFormation_Tn(double, int, void*);",Library="TILMedia150ClaRa");
end specificEnthalpyOfLiquidFormation_Tn;
end GasObjectFunctions;
