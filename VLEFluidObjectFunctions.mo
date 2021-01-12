within TILMedia;
package VLEFluidObjectFunctions
  "Package for calculation of VLEFLuid properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends .TILMedia.BaseClasses.PartialVLEFluidObjectFunctions;

  redeclare replaceable function specificEnthalpy_dTxi =
    .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEnthalpy_dTxi;
  redeclare replaceable function pressure_dTxi =
    .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.pressure_dTxi;
  redeclare replaceable function specificEntropy_dTxi =
    .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEntropy_dTxi;
  redeclare replaceable function extends moleFraction_dTxin
  external"C" x = TILMedia_VLEFluidObjectFunctions_moleFraction_dTxin(
      d,
      T,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_moleFraction_dTxin(double,double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end moleFraction_dTxin;
  redeclare replaceable function extends steamMassFraction_dTxi
  external"C" q = TILMedia_VLEFluidObjectFunctions_steamMassFraction_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_steamMassFraction_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end steamMassFraction_dTxi;
  redeclare replaceable function extends specificIsobaricHeatCapacity_dTxi
  external"C" cp = TILMedia_VLEFluidObjectFunctions_specificIsobaricHeatCapacity_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_specificIsobaricHeatCapacity_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end specificIsobaricHeatCapacity_dTxi;
  redeclare replaceable function extends specificIsochoricHeatCapacity_dTxi
  external"C" cv = TILMedia_VLEFluidObjectFunctions_specificIsochoricHeatCapacity_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_specificIsochoricHeatCapacity_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end specificIsochoricHeatCapacity_dTxi;
  redeclare replaceable function extends isobaricThermalExpansionCoefficient_dTxi
  external"C" beta = TILMedia_VLEFluidObjectFunctions_isobaricThermalExpansionCoefficient_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_isobaricThermalExpansionCoefficient_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end isobaricThermalExpansionCoefficient_dTxi;
  redeclare replaceable function extends isothermalCompressibility_dTxi
  external"C" kappa = TILMedia_VLEFluidObjectFunctions_isothermalCompressibility_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_isothermalCompressibility_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end isothermalCompressibility_dTxi;
  redeclare replaceable function extends speedOfSound_dTxi
  external"C" w = TILMedia_VLEFluidObjectFunctions_speedOfSound_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_speedOfSound_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end speedOfSound_dTxi;
  redeclare replaceable function extends densityDerivativeWRTspecificEnthalpy_dTxi
  external"C" drhodh_pxi = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTspecificEnthalpy_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTspecificEnthalpy_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end densityDerivativeWRTspecificEnthalpy_dTxi;
  redeclare replaceable function extends densityDerivativeWRTpressure_dTxi
  external"C" drhodp_hxi = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTpressure_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTpressure_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end densityDerivativeWRTpressure_dTxi;
  redeclare replaceable function extends densityDerivativeWRTmassFraction_dTxin
  external"C" drhodxi_ph = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTmassFraction_dTxin(
      d,
      T,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTmassFraction_dTxin(double,double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end densityDerivativeWRTmassFraction_dTxin;
  redeclare replaceable function extends heatCapacityRatio_dTxi
  external"C" gamma = TILMedia_VLEFluidObjectFunctions_heatCapacityRatio_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_heatCapacityRatio_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end heatCapacityRatio_dTxi;
  redeclare replaceable function extends prandtlNumber_dTxi
  external"C" Pr = TILMedia_VLEFluidObjectFunctions_prandtlNumber_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_prandtlNumber_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end prandtlNumber_dTxi;
  redeclare replaceable function extends thermalConductivity_dTxi
  external"C" lambda = TILMedia_VLEFluidObjectFunctions_thermalConductivity_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_thermalConductivity_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end thermalConductivity_dTxi;
  redeclare replaceable function extends dynamicViscosity_dTxi
  external"C" eta = TILMedia_VLEFluidObjectFunctions_dynamicViscosity_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dynamicViscosity_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end dynamicViscosity_dTxi;
  redeclare replaceable function extends surfaceTension_dTxi
  external"C" sigma = TILMedia_VLEFluidObjectFunctions_surfaceTension_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_surfaceTension_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end surfaceTension_dTxi;
  redeclare replaceable function extends liquidDensity_dTxi
  external"C" d_l = TILMedia_VLEFluidObjectFunctions_liquidDensity_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidDensity_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidDensity_dTxi;
  redeclare replaceable function extends vapourDensity_dTxi
  external"C" d_v = TILMedia_VLEFluidObjectFunctions_vapourDensity_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourDensity_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourDensity_dTxi;
  redeclare replaceable function extends liquidSpecificEnthalpy_dTxi
  external"C" h_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificEnthalpy_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidSpecificEnthalpy_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidSpecificEnthalpy_dTxi;
  redeclare replaceable function extends vapourSpecificEnthalpy_dTxi
  external"C" h_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificEnthalpy_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourSpecificEnthalpy_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourSpecificEnthalpy_dTxi;
  redeclare replaceable function extends liquidPressure_dTxi
  external"C" p_l = TILMedia_VLEFluidObjectFunctions_liquidPressure_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidPressure_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidPressure_dTxi;
  redeclare replaceable function extends vapourPressure_dTxi
  external"C" p_v = TILMedia_VLEFluidObjectFunctions_vapourPressure_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourPressure_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourPressure_dTxi;
  redeclare replaceable function extends liquidSpecificEntropy_dTxi
  external"C" s_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificEntropy_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidSpecificEntropy_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidSpecificEntropy_dTxi;
  redeclare replaceable function extends vapourSpecificEntropy_dTxi
  external"C" s_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificEntropy_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourSpecificEntropy_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourSpecificEntropy_dTxi;
  redeclare replaceable function extends liquidMassFraction_dTxin
  external"C" xi_l = TILMedia_VLEFluidObjectFunctions_liquidMassFraction_dTxin(
      d,
      T,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidMassFraction_dTxin(double,double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end liquidMassFraction_dTxin;
  redeclare replaceable function extends vapourMassFraction_dTxin
  external"C" xi_v = TILMedia_VLEFluidObjectFunctions_vapourMassFraction_dTxin(
      d,
      T,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourMassFraction_dTxin(double,double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end vapourMassFraction_dTxin;
  redeclare replaceable function extends liquidSpecificHeatCapacity_dTxi
  external"C" cp_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificHeatCapacity_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidSpecificHeatCapacity_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidSpecificHeatCapacity_dTxi;
  redeclare replaceable function extends vapourSpecificHeatCapacity_dTxi
  external"C" cp_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificHeatCapacity_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourSpecificHeatCapacity_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourSpecificHeatCapacity_dTxi;
  redeclare replaceable function extends liquidIsobaricThermalExpansionCoefficient_dTxi
  external"C" beta_l = TILMedia_VLEFluidObjectFunctions_liquidIsobaricThermalExpansionCoefficient_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidIsobaricThermalExpansionCoefficient_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidIsobaricThermalExpansionCoefficient_dTxi;
  redeclare replaceable function extends vapourIsobaricThermalExpansionCoefficient_dTxi
  external"C" beta_v = TILMedia_VLEFluidObjectFunctions_vapourIsobaricThermalExpansionCoefficient_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourIsobaricThermalExpansionCoefficient_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourIsobaricThermalExpansionCoefficient_dTxi;
  redeclare replaceable function extends liquidIsothermalCompressibility_dTxi
  external"C" kappa_l = TILMedia_VLEFluidObjectFunctions_liquidIsothermalCompressibility_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidIsothermalCompressibility_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidIsothermalCompressibility_dTxi;
  redeclare replaceable function extends vapourIsothermalCompressibility_dTxi
  external"C" kappa_v = TILMedia_VLEFluidObjectFunctions_vapourIsothermalCompressibility_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourIsothermalCompressibility_dTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourIsothermalCompressibility_dTxi;

  redeclare replaceable function density_phxi =
    .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.density_phxi;
  redeclare replaceable function specificEntropy_phxi =
    .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEntropy_phxi;
  redeclare replaceable function temperature_phxi =
    .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.temperature_phxi;
  redeclare replaceable function extends moleFraction_phxin
  external"C" x = TILMedia_VLEFluidObjectFunctions_moleFraction_phxin(
      p,
      h,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_moleFraction_phxin(double,double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end moleFraction_phxin;
  redeclare replaceable function extends steamMassFraction_phxi
  external"C" q = TILMedia_VLEFluidObjectFunctions_steamMassFraction_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_steamMassFraction_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end steamMassFraction_phxi;
  redeclare replaceable function extends specificIsobaricHeatCapacity_phxi
  external"C" cp = TILMedia_VLEFluidObjectFunctions_specificIsobaricHeatCapacity_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_specificIsobaricHeatCapacity_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end specificIsobaricHeatCapacity_phxi;
  redeclare replaceable function extends specificIsochoricHeatCapacity_phxi
  external"C" cv = TILMedia_VLEFluidObjectFunctions_specificIsochoricHeatCapacity_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_specificIsochoricHeatCapacity_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end specificIsochoricHeatCapacity_phxi;
  redeclare replaceable function extends isobaricThermalExpansionCoefficient_phxi
  external"C" beta = TILMedia_VLEFluidObjectFunctions_isobaricThermalExpansionCoefficient_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_isobaricThermalExpansionCoefficient_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end isobaricThermalExpansionCoefficient_phxi;
  redeclare replaceable function extends isothermalCompressibility_phxi
  external"C" kappa = TILMedia_VLEFluidObjectFunctions_isothermalCompressibility_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_isothermalCompressibility_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end isothermalCompressibility_phxi;
  redeclare replaceable function extends speedOfSound_phxi
  external"C" w = TILMedia_VLEFluidObjectFunctions_speedOfSound_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_speedOfSound_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end speedOfSound_phxi;
  redeclare replaceable function extends densityDerivativeWRTspecificEnthalpy_phxi
  external"C" drhodh_pxi = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTspecificEnthalpy_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTspecificEnthalpy_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end densityDerivativeWRTspecificEnthalpy_phxi;
  redeclare replaceable function extends densityDerivativeWRTpressure_phxi
  external"C" drhodp_hxi = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTpressure_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTpressure_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end densityDerivativeWRTpressure_phxi;
  redeclare replaceable function extends densityDerivativeWRTmassFraction_phxin
  external"C" drhodxi_ph = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTmassFraction_phxin(
      p,
      h,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTmassFraction_phxin(double,double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end densityDerivativeWRTmassFraction_phxin;
  redeclare replaceable function extends heatCapacityRatio_phxi
  external"C" gamma = TILMedia_VLEFluidObjectFunctions_heatCapacityRatio_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_heatCapacityRatio_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end heatCapacityRatio_phxi;
  redeclare replaceable function extends prandtlNumber_phxi
  external"C" Pr = TILMedia_VLEFluidObjectFunctions_prandtlNumber_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_prandtlNumber_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end prandtlNumber_phxi;
  redeclare replaceable function extends thermalConductivity_phxi
  external"C" lambda = TILMedia_VLEFluidObjectFunctions_thermalConductivity_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_thermalConductivity_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end thermalConductivity_phxi;
  redeclare replaceable function extends dynamicViscosity_phxi
  external"C" eta = TILMedia_VLEFluidObjectFunctions_dynamicViscosity_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dynamicViscosity_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end dynamicViscosity_phxi;
  redeclare replaceable function extends surfaceTension_phxi
  external"C" sigma = TILMedia_VLEFluidObjectFunctions_surfaceTension_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_surfaceTension_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end surfaceTension_phxi;
  redeclare replaceable function extends liquidDensity_phxi
  external"C" d_l = TILMedia_VLEFluidObjectFunctions_liquidDensity_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidDensity_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidDensity_phxi;
  redeclare replaceable function extends vapourDensity_phxi
  external"C" d_v = TILMedia_VLEFluidObjectFunctions_vapourDensity_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourDensity_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourDensity_phxi;
  redeclare replaceable function extends liquidSpecificEnthalpy_phxi
  external"C" h_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificEnthalpy_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidSpecificEnthalpy_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidSpecificEnthalpy_phxi;
  redeclare replaceable function extends vapourSpecificEnthalpy_phxi
  external"C" h_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificEnthalpy_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourSpecificEnthalpy_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourSpecificEnthalpy_phxi;
  redeclare replaceable function extends liquidSpecificEntropy_phxi
  external"C" s_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificEntropy_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidSpecificEntropy_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidSpecificEntropy_phxi;
  redeclare replaceable function extends vapourSpecificEntropy_phxi
  external"C" s_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificEntropy_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourSpecificEntropy_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourSpecificEntropy_phxi;
  redeclare replaceable function extends liquidTemperature_phxi
  external"C" T_l = TILMedia_VLEFluidObjectFunctions_liquidTemperature_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidTemperature_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidTemperature_phxi;
  redeclare replaceable function extends vapourTemperature_phxi
  external"C" T_v = TILMedia_VLEFluidObjectFunctions_vapourTemperature_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourTemperature_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourTemperature_phxi;
  redeclare replaceable function extends liquidMassFraction_phxin
  external"C" xi_l = TILMedia_VLEFluidObjectFunctions_liquidMassFraction_phxin(
      p,
      h,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidMassFraction_phxin(double,double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end liquidMassFraction_phxin;
  redeclare replaceable function extends vapourMassFraction_phxin
  external"C" xi_v = TILMedia_VLEFluidObjectFunctions_vapourMassFraction_phxin(
      p,
      h,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourMassFraction_phxin(double,double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end vapourMassFraction_phxin;
  redeclare replaceable function extends liquidSpecificHeatCapacity_phxi
  external"C" cp_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificHeatCapacity_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidSpecificHeatCapacity_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidSpecificHeatCapacity_phxi;
  redeclare replaceable function extends vapourSpecificHeatCapacity_phxi
  external"C" cp_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificHeatCapacity_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourSpecificHeatCapacity_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourSpecificHeatCapacity_phxi;
  redeclare replaceable function extends liquidIsobaricThermalExpansionCoefficient_phxi
  external"C" beta_l = TILMedia_VLEFluidObjectFunctions_liquidIsobaricThermalExpansionCoefficient_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidIsobaricThermalExpansionCoefficient_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidIsobaricThermalExpansionCoefficient_phxi;
  redeclare replaceable function extends vapourIsobaricThermalExpansionCoefficient_phxi
  external"C" beta_v = TILMedia_VLEFluidObjectFunctions_vapourIsobaricThermalExpansionCoefficient_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourIsobaricThermalExpansionCoefficient_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourIsobaricThermalExpansionCoefficient_phxi;
  redeclare replaceable function extends liquidIsothermalCompressibility_phxi
  external"C" kappa_l = TILMedia_VLEFluidObjectFunctions_liquidIsothermalCompressibility_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidIsothermalCompressibility_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidIsothermalCompressibility_phxi;
  redeclare replaceable function extends vapourIsothermalCompressibility_phxi
  external"C" kappa_v = TILMedia_VLEFluidObjectFunctions_vapourIsothermalCompressibility_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourIsothermalCompressibility_phxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourIsothermalCompressibility_phxi;

  redeclare replaceable function density_psxi =
    .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.density_psxi;
  redeclare replaceable function specificEnthalpy_psxi =
    .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEnthalpy_psxi;
  redeclare replaceable function temperature_psxi =
    .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.temperature_psxi;
  redeclare replaceable function extends moleFraction_psxin
  external"C" x = TILMedia_VLEFluidObjectFunctions_moleFraction_psxin(
      p,
      s,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_moleFraction_psxin(double,double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end moleFraction_psxin;
  redeclare replaceable function extends steamMassFraction_psxi
  external"C" q = TILMedia_VLEFluidObjectFunctions_steamMassFraction_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_steamMassFraction_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end steamMassFraction_psxi;
  redeclare replaceable function extends specificIsobaricHeatCapacity_psxi
  external"C" cp = TILMedia_VLEFluidObjectFunctions_specificIsobaricHeatCapacity_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_specificIsobaricHeatCapacity_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end specificIsobaricHeatCapacity_psxi;
  redeclare replaceable function extends specificIsochoricHeatCapacity_psxi
  external"C" cv = TILMedia_VLEFluidObjectFunctions_specificIsochoricHeatCapacity_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_specificIsochoricHeatCapacity_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end specificIsochoricHeatCapacity_psxi;
  redeclare replaceable function extends isobaricThermalExpansionCoefficient_psxi
  external"C" beta = TILMedia_VLEFluidObjectFunctions_isobaricThermalExpansionCoefficient_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_isobaricThermalExpansionCoefficient_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end isobaricThermalExpansionCoefficient_psxi;
  redeclare replaceable function extends isothermalCompressibility_psxi
  external"C" kappa = TILMedia_VLEFluidObjectFunctions_isothermalCompressibility_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_isothermalCompressibility_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end isothermalCompressibility_psxi;
  redeclare replaceable function extends speedOfSound_psxi
  external"C" w = TILMedia_VLEFluidObjectFunctions_speedOfSound_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_speedOfSound_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end speedOfSound_psxi;
  redeclare replaceable function extends densityDerivativeWRTspecificEnthalpy_psxi
  external"C" drhodh_pxi = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTspecificEnthalpy_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTspecificEnthalpy_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end densityDerivativeWRTspecificEnthalpy_psxi;
  redeclare replaceable function extends densityDerivativeWRTpressure_psxi
  external"C" drhodp_hxi = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTpressure_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTpressure_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end densityDerivativeWRTpressure_psxi;
  redeclare replaceable function extends densityDerivativeWRTmassFraction_psxin
  external"C" drhodxi_ph = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTmassFraction_psxin(
      p,
      s,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTmassFraction_psxin(double,double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end densityDerivativeWRTmassFraction_psxin;
  redeclare replaceable function extends heatCapacityRatio_psxi
  external"C" gamma = TILMedia_VLEFluidObjectFunctions_heatCapacityRatio_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_heatCapacityRatio_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end heatCapacityRatio_psxi;
  redeclare replaceable function extends prandtlNumber_psxi
  external"C" Pr = TILMedia_VLEFluidObjectFunctions_prandtlNumber_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_prandtlNumber_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end prandtlNumber_psxi;
  redeclare replaceable function extends thermalConductivity_psxi
  external"C" lambda = TILMedia_VLEFluidObjectFunctions_thermalConductivity_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_thermalConductivity_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end thermalConductivity_psxi;
  redeclare replaceable function extends dynamicViscosity_psxi
  external"C" eta = TILMedia_VLEFluidObjectFunctions_dynamicViscosity_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dynamicViscosity_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end dynamicViscosity_psxi;
  redeclare replaceable function extends surfaceTension_psxi
  external"C" sigma = TILMedia_VLEFluidObjectFunctions_surfaceTension_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_surfaceTension_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end surfaceTension_psxi;
  redeclare replaceable function extends liquidDensity_psxi
  external"C" d_l = TILMedia_VLEFluidObjectFunctions_liquidDensity_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidDensity_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidDensity_psxi;
  redeclare replaceable function extends vapourDensity_psxi
  external"C" d_v = TILMedia_VLEFluidObjectFunctions_vapourDensity_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourDensity_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourDensity_psxi;
  redeclare replaceable function extends liquidSpecificEnthalpy_psxi
  external"C" h_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificEnthalpy_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidSpecificEnthalpy_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidSpecificEnthalpy_psxi;
  redeclare replaceable function extends vapourSpecificEnthalpy_psxi
  external"C" h_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificEnthalpy_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourSpecificEnthalpy_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourSpecificEnthalpy_psxi;
  redeclare replaceable function extends liquidSpecificEntropy_psxi
  external"C" s_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificEntropy_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidSpecificEntropy_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidSpecificEntropy_psxi;
  redeclare replaceable function extends vapourSpecificEntropy_psxi
  external"C" s_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificEntropy_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourSpecificEntropy_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourSpecificEntropy_psxi;
  redeclare replaceable function extends liquidTemperature_psxi
  external"C" T_l = TILMedia_VLEFluidObjectFunctions_liquidTemperature_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidTemperature_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidTemperature_psxi;
  redeclare replaceable function extends vapourTemperature_psxi
  external"C" T_v = TILMedia_VLEFluidObjectFunctions_vapourTemperature_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourTemperature_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourTemperature_psxi;
  redeclare replaceable function extends liquidMassFraction_psxin
  external"C" xi_l = TILMedia_VLEFluidObjectFunctions_liquidMassFraction_psxin(
      p,
      s,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidMassFraction_psxin(double,double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end liquidMassFraction_psxin;
  redeclare replaceable function extends vapourMassFraction_psxin
  external"C" xi_v = TILMedia_VLEFluidObjectFunctions_vapourMassFraction_psxin(
      p,
      s,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourMassFraction_psxin(double,double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end vapourMassFraction_psxin;
  redeclare replaceable function extends liquidSpecificHeatCapacity_psxi
  external"C" cp_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificHeatCapacity_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidSpecificHeatCapacity_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidSpecificHeatCapacity_psxi;
  redeclare replaceable function extends vapourSpecificHeatCapacity_psxi
  external"C" cp_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificHeatCapacity_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourSpecificHeatCapacity_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourSpecificHeatCapacity_psxi;
  redeclare replaceable function extends liquidIsobaricThermalExpansionCoefficient_psxi
  external"C" beta_l = TILMedia_VLEFluidObjectFunctions_liquidIsobaricThermalExpansionCoefficient_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidIsobaricThermalExpansionCoefficient_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidIsobaricThermalExpansionCoefficient_psxi;
  redeclare replaceable function extends vapourIsobaricThermalExpansionCoefficient_psxi
  external"C" beta_v = TILMedia_VLEFluidObjectFunctions_vapourIsobaricThermalExpansionCoefficient_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourIsobaricThermalExpansionCoefficient_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourIsobaricThermalExpansionCoefficient_psxi;
  redeclare replaceable function extends liquidIsothermalCompressibility_psxi
  external"C" kappa_l = TILMedia_VLEFluidObjectFunctions_liquidIsothermalCompressibility_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidIsothermalCompressibility_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidIsothermalCompressibility_psxi;
  redeclare replaceable function extends vapourIsothermalCompressibility_psxi
  external"C" kappa_v = TILMedia_VLEFluidObjectFunctions_vapourIsothermalCompressibility_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourIsothermalCompressibility_psxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourIsothermalCompressibility_psxi;

  redeclare replaceable function density_pTxi =
    .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.density_pTxi;
  redeclare replaceable function specificEnthalpy_pTxi =
    .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEnthalpy_pTxi;
  redeclare replaceable function specificEntropy_pTxi =
    .TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.specificEntropy_pTxi;
  redeclare replaceable function extends moleFraction_pTxin
  external"C" x = TILMedia_VLEFluidObjectFunctions_moleFraction_pTxin(
      p,
      T,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_moleFraction_pTxin(double,double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end moleFraction_pTxin;
  redeclare replaceable function extends steamMassFraction_pTxi
  external"C" q = TILMedia_VLEFluidObjectFunctions_steamMassFraction_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_steamMassFraction_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end steamMassFraction_pTxi;
  redeclare replaceable function extends specificIsobaricHeatCapacity_pTxi
  external"C" cp = TILMedia_VLEFluidObjectFunctions_specificIsobaricHeatCapacity_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_specificIsobaricHeatCapacity_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end specificIsobaricHeatCapacity_pTxi;
  redeclare replaceable function extends specificIsochoricHeatCapacity_pTxi
  external"C" cv = TILMedia_VLEFluidObjectFunctions_specificIsochoricHeatCapacity_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_specificIsochoricHeatCapacity_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end specificIsochoricHeatCapacity_pTxi;
  redeclare replaceable function extends isobaricThermalExpansionCoefficient_pTxi
  external"C" beta = TILMedia_VLEFluidObjectFunctions_isobaricThermalExpansionCoefficient_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_isobaricThermalExpansionCoefficient_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end isobaricThermalExpansionCoefficient_pTxi;
  redeclare replaceable function extends isothermalCompressibility_pTxi
  external"C" kappa = TILMedia_VLEFluidObjectFunctions_isothermalCompressibility_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_isothermalCompressibility_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end isothermalCompressibility_pTxi;
  redeclare replaceable function extends speedOfSound_pTxi
  external"C" w = TILMedia_VLEFluidObjectFunctions_speedOfSound_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_speedOfSound_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end speedOfSound_pTxi;
  redeclare replaceable function extends densityDerivativeWRTspecificEnthalpy_pTxi
  external"C" drhodh_pxi = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTspecificEnthalpy_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTspecificEnthalpy_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end densityDerivativeWRTspecificEnthalpy_pTxi;
  redeclare replaceable function extends densityDerivativeWRTpressure_pTxi
  external"C" drhodp_hxi = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTpressure_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTpressure_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end densityDerivativeWRTpressure_pTxi;
  redeclare replaceable function extends densityDerivativeWRTmassFraction_pTxin
  external"C" drhodxi_ph = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTmassFraction_pTxin(
      p,
      T,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTmassFraction_pTxin(double,double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end densityDerivativeWRTmassFraction_pTxin;
  redeclare replaceable function extends heatCapacityRatio_pTxi
  external"C" gamma = TILMedia_VLEFluidObjectFunctions_heatCapacityRatio_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_heatCapacityRatio_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end heatCapacityRatio_pTxi;
  redeclare replaceable function extends prandtlNumber_pTxi
  external"C" Pr = TILMedia_VLEFluidObjectFunctions_prandtlNumber_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_prandtlNumber_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end prandtlNumber_pTxi;
  redeclare replaceable function extends thermalConductivity_pTxi
  external"C" lambda = TILMedia_VLEFluidObjectFunctions_thermalConductivity_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_thermalConductivity_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end thermalConductivity_pTxi;
  redeclare replaceable function extends dynamicViscosity_pTxi
  external"C" eta = TILMedia_VLEFluidObjectFunctions_dynamicViscosity_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dynamicViscosity_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end dynamicViscosity_pTxi;
  redeclare replaceable function extends surfaceTension_pTxi
  external"C" sigma = TILMedia_VLEFluidObjectFunctions_surfaceTension_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_surfaceTension_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end surfaceTension_pTxi;
  redeclare replaceable function extends liquidDensity_pTxi
  external"C" d_l = TILMedia_VLEFluidObjectFunctions_liquidDensity_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidDensity_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidDensity_pTxi;
  redeclare replaceable function extends vapourDensity_pTxi
  external"C" d_v = TILMedia_VLEFluidObjectFunctions_vapourDensity_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourDensity_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourDensity_pTxi;
  redeclare replaceable function extends liquidSpecificEnthalpy_pTxi
  external"C" h_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificEnthalpy_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidSpecificEnthalpy_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidSpecificEnthalpy_pTxi;
  redeclare replaceable function extends vapourSpecificEnthalpy_pTxi
  external"C" h_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificEnthalpy_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourSpecificEnthalpy_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourSpecificEnthalpy_pTxi;
  redeclare replaceable function extends liquidSpecificEntropy_pTxi
  external"C" s_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificEntropy_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidSpecificEntropy_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidSpecificEntropy_pTxi;
  redeclare replaceable function extends vapourSpecificEntropy_pTxi
  external"C" s_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificEntropy_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourSpecificEntropy_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourSpecificEntropy_pTxi;
  redeclare replaceable function extends liquidTemperature_pTxi
  external"C" T_l = TILMedia_VLEFluidObjectFunctions_liquidTemperature_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidTemperature_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidTemperature_pTxi;
  redeclare replaceable function extends vapourTemperature_pTxi
  external"C" T_v = TILMedia_VLEFluidObjectFunctions_vapourTemperature_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourTemperature_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourTemperature_pTxi;
  redeclare replaceable function extends liquidMassFraction_pTxin
  external"C" xi_l = TILMedia_VLEFluidObjectFunctions_liquidMassFraction_pTxin(
      p,
      T,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidMassFraction_pTxin(double,double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end liquidMassFraction_pTxin;
  redeclare replaceable function extends vapourMassFraction_pTxin
  external"C" xi_v = TILMedia_VLEFluidObjectFunctions_vapourMassFraction_pTxin(
      p,
      T,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourMassFraction_pTxin(double,double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end vapourMassFraction_pTxin;
  redeclare replaceable function extends liquidSpecificHeatCapacity_pTxi
  external"C" cp_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificHeatCapacity_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidSpecificHeatCapacity_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidSpecificHeatCapacity_pTxi;
  redeclare replaceable function extends vapourSpecificHeatCapacity_pTxi
  external"C" cp_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificHeatCapacity_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourSpecificHeatCapacity_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourSpecificHeatCapacity_pTxi;
  redeclare replaceable function extends liquidIsobaricThermalExpansionCoefficient_pTxi
  external"C" beta_l = TILMedia_VLEFluidObjectFunctions_liquidIsobaricThermalExpansionCoefficient_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidIsobaricThermalExpansionCoefficient_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidIsobaricThermalExpansionCoefficient_pTxi;
  redeclare replaceable function extends vapourIsobaricThermalExpansionCoefficient_pTxi
  external"C" beta_v = TILMedia_VLEFluidObjectFunctions_vapourIsobaricThermalExpansionCoefficient_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourIsobaricThermalExpansionCoefficient_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourIsobaricThermalExpansionCoefficient_pTxi;
  redeclare replaceable function extends liquidIsothermalCompressibility_pTxi
  external"C" kappa_l = TILMedia_VLEFluidObjectFunctions_liquidIsothermalCompressibility_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_liquidIsothermalCompressibility_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end liquidIsothermalCompressibility_pTxi;
  redeclare replaceable function extends vapourIsothermalCompressibility_pTxi
  external"C" kappa_v = TILMedia_VLEFluidObjectFunctions_vapourIsothermalCompressibility_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_vapourIsothermalCompressibility_pTxi(double,double,double*,void*);",
        Library="TILMedia160ClaRa");
  end vapourIsothermalCompressibility_pTxi;


  redeclare replaceable function extends dewDensity_Txi
  external"C" d_dew = TILMedia_VLEFluidObjectFunctions_dewDensity_Txi(
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dewDensity_Txi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end dewDensity_Txi;
  redeclare replaceable function extends bubbleDensity_Txi
  external"C" d_bubble = TILMedia_VLEFluidObjectFunctions_bubbleDensity_Txi(
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_bubbleDensity_Txi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end bubbleDensity_Txi;
  redeclare replaceable function extends dewSpecificEnthalpy_Txi
  external"C" h_dew = TILMedia_VLEFluidObjectFunctions_dewSpecificEnthalpy_Txi(
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dewSpecificEnthalpy_Txi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end dewSpecificEnthalpy_Txi;
  redeclare replaceable function extends bubbleSpecificEnthalpy_Txi
  external"C" h_bubble = TILMedia_VLEFluidObjectFunctions_bubbleSpecificEnthalpy_Txi(
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_bubbleSpecificEnthalpy_Txi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end bubbleSpecificEnthalpy_Txi;
  redeclare replaceable function extends dewPressure_Txi
  external"C" p_dew = TILMedia_VLEFluidObjectFunctions_dewPressure_Txi(
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dewPressure_Txi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end dewPressure_Txi;
  redeclare replaceable function extends bubblePressure_Txi
  external"C" p_bubble = TILMedia_VLEFluidObjectFunctions_bubblePressure_Txi(
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_bubblePressure_Txi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end bubblePressure_Txi;
  redeclare replaceable function extends dewSpecificEntropy_Txi
  external"C" s_dew = TILMedia_VLEFluidObjectFunctions_dewSpecificEntropy_Txi(
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dewSpecificEntropy_Txi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end dewSpecificEntropy_Txi;
  redeclare replaceable function extends bubbleSpecificEntropy_Txi
  external"C" s_bubble = TILMedia_VLEFluidObjectFunctions_bubbleSpecificEntropy_Txi(
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_bubbleSpecificEntropy_Txi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end bubbleSpecificEntropy_Txi;
  redeclare replaceable function extends dewLiquidMassFraction_Txin
  external"C" xi_ldew = TILMedia_VLEFluidObjectFunctions_dewLiquidMassFraction_Txin(
      T,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dewLiquidMassFraction_Txin(double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end dewLiquidMassFraction_Txin;
  redeclare replaceable function extends bubbleVapourMassFraction_Txin
  external"C" xi_vbubble = TILMedia_VLEFluidObjectFunctions_bubbleVapourMassFraction_Txin(
      T,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_bubbleVapourMassFraction_Txin(double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end bubbleVapourMassFraction_Txin;
  redeclare replaceable function extends dewSpecificIsobaricHeatCapacity_Txi
  external"C" cp_dew = TILMedia_VLEFluidObjectFunctions_dewSpecificIsobaricHeatCapacity_Txi(
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dewSpecificIsobaricHeatCapacity_Txi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end dewSpecificIsobaricHeatCapacity_Txi;
  redeclare replaceable function extends bubbleSpecificIsobaricHeatCapacity_Txi
  external"C" cp_bubble = TILMedia_VLEFluidObjectFunctions_bubbleSpecificIsobaricHeatCapacity_Txi(
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_bubbleSpecificIsobaricHeatCapacity_Txi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end bubbleSpecificIsobaricHeatCapacity_Txi;
  redeclare replaceable function extends dewIsobaricThermalExpansionCoefficient_Txi
  external"C" beta_dew = TILMedia_VLEFluidObjectFunctions_dewIsobaricThermalExpansionCoefficient_Txi(
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dewIsobaricThermalExpansionCoefficient_Txi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end dewIsobaricThermalExpansionCoefficient_Txi;
  redeclare replaceable function extends bubbleIsobaricThermalExpansionCoefficient_Txi
  external"C" beta_bubble = TILMedia_VLEFluidObjectFunctions_bubbleIsobaricThermalExpansionCoefficient_Txi(
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_bubbleIsobaricThermalExpansionCoefficient_Txi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end bubbleIsobaricThermalExpansionCoefficient_Txi;
  redeclare replaceable function extends dewIsothermalCompressibility_Txi
  external"C" kappa_dew = TILMedia_VLEFluidObjectFunctions_dewIsothermalCompressibility_Txi(
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dewIsothermalCompressibility_Txi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end dewIsothermalCompressibility_Txi;
  redeclare replaceable function extends bubbleIsothermalCompressibility_Txi
  external"C" kappa_bubble = TILMedia_VLEFluidObjectFunctions_bubbleIsothermalCompressibility_Txi(
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_bubbleIsothermalCompressibility_Txi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end bubbleIsothermalCompressibility_Txi;

  redeclare replaceable function extends dewDensity_pxi
  external"C" d_dew = TILMedia_VLEFluidObjectFunctions_dewDensity_pxi(
      p,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dewDensity_pxi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end dewDensity_pxi;
  redeclare replaceable function extends bubbleDensity_pxi
  external"C" d_bubble = TILMedia_VLEFluidObjectFunctions_bubbleDensity_pxi(
      p,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_bubbleDensity_pxi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end bubbleDensity_pxi;
  redeclare replaceable function extends dewSpecificEnthalpy_pxi
  external"C" h_dew = TILMedia_VLEFluidObjectFunctions_dewSpecificEnthalpy_pxi(
      p,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dewSpecificEnthalpy_pxi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end dewSpecificEnthalpy_pxi;
  redeclare replaceable function extends bubbleSpecificEnthalpy_pxi
  external"C" h_bubble = TILMedia_VLEFluidObjectFunctions_bubbleSpecificEnthalpy_pxi(
      p,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_bubbleSpecificEnthalpy_pxi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end bubbleSpecificEnthalpy_pxi;
  redeclare replaceable function extends dewSpecificEntropy_pxi
  external"C" s_dew = TILMedia_VLEFluidObjectFunctions_dewSpecificEntropy_pxi(
      p,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dewSpecificEntropy_pxi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end dewSpecificEntropy_pxi;
  redeclare replaceable function extends bubbleSpecificEntropy_pxi
  external"C" s_bubble = TILMedia_VLEFluidObjectFunctions_bubbleSpecificEntropy_pxi(
      p,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_bubbleSpecificEntropy_pxi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end bubbleSpecificEntropy_pxi;
  redeclare replaceable function extends dewTemperature_pxi
  external"C" T_dew = TILMedia_VLEFluidObjectFunctions_dewTemperature_pxi(
      p,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dewTemperature_pxi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end dewTemperature_pxi;
  redeclare replaceable function extends bubbleTemperature_pxi
  external"C" T_bubble = TILMedia_VLEFluidObjectFunctions_bubbleTemperature_pxi(
      p,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_bubbleTemperature_pxi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end bubbleTemperature_pxi;
  redeclare replaceable function extends dewLiquidMassFraction_pxin
  external"C" xi_ldew = TILMedia_VLEFluidObjectFunctions_dewLiquidMassFraction_pxin(
      p,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dewLiquidMassFraction_pxin(double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end dewLiquidMassFraction_pxin;
  redeclare replaceable function extends bubbleVapourMassFraction_pxin
  external"C" xi_vbubble = TILMedia_VLEFluidObjectFunctions_bubbleVapourMassFraction_pxin(
      p,
      xi,
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_bubbleVapourMassFraction_pxin(double,double*,int, void*);",
        Library="TILMedia160ClaRa");
  end bubbleVapourMassFraction_pxin;
  redeclare replaceable function extends dewSpecificIsobaricHeatCapacity_pxi
  external"C" cp_dew = TILMedia_VLEFluidObjectFunctions_dewSpecificIsobaricHeatCapacity_pxi(
      p,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dewSpecificIsobaricHeatCapacity_pxi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end dewSpecificIsobaricHeatCapacity_pxi;
  redeclare replaceable function extends bubbleSpecificIsobaricHeatCapacity_pxi
  external"C" cp_bubble = TILMedia_VLEFluidObjectFunctions_bubbleSpecificIsobaricHeatCapacity_pxi(
      p,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_bubbleSpecificIsobaricHeatCapacity_pxi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end bubbleSpecificIsobaricHeatCapacity_pxi;
  redeclare replaceable function extends dewIsobaricThermalExpansionCoefficient_pxi
  external"C" beta_dew = TILMedia_VLEFluidObjectFunctions_dewIsobaricThermalExpansionCoefficient_pxi(
      p,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dewIsobaricThermalExpansionCoefficient_pxi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end dewIsobaricThermalExpansionCoefficient_pxi;
  redeclare replaceable function extends bubbleIsobaricThermalExpansionCoefficient_pxi
  external"C" beta_bubble = TILMedia_VLEFluidObjectFunctions_bubbleIsobaricThermalExpansionCoefficient_pxi(
      p,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_bubbleIsobaricThermalExpansionCoefficient_pxi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end bubbleIsobaricThermalExpansionCoefficient_pxi;
  redeclare replaceable function extends dewIsothermalCompressibility_pxi
  external"C" kappa_dew = TILMedia_VLEFluidObjectFunctions_dewIsothermalCompressibility_pxi(
      p,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_dewIsothermalCompressibility_pxi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end dewIsothermalCompressibility_pxi;
  redeclare replaceable function extends bubbleIsothermalCompressibility_pxi
  external"C" kappa_bubble = TILMedia_VLEFluidObjectFunctions_bubbleIsothermalCompressibility_pxi(
      p,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_bubbleIsothermalCompressibility_pxi(double,double*,void*);",
        Library="TILMedia160ClaRa");
  end bubbleIsothermalCompressibility_pxi;



  redeclare replaceable function extends averageMolarMass_xi
  external"C" M = TILMedia_VLEFluidObjectFunctions_averageMolarMass_xi(
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_averageMolarMass_xi(double*,void*);",
        Library="TILMedia160ClaRa");
  end averageMolarMass_xi;
  redeclare replaceable function extends criticalDensity_xi
  external"C" dc = TILMedia_VLEFluidObjectFunctions_criticalDensity_xi(
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_criticalDensity_xi(double*,void*);",
        Library="TILMedia160ClaRa");
  end criticalDensity_xi;
  redeclare replaceable function extends criticalSpecificEnthalpy_xi
  external"C" hc = TILMedia_VLEFluidObjectFunctions_criticalSpecificEnthalpy_xi(
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_criticalSpecificEnthalpy_xi(double*,void*);",
        Library="TILMedia160ClaRa");
  end criticalSpecificEnthalpy_xi;
  redeclare replaceable function extends criticalPressure_xi
  external"C" pc = TILMedia_VLEFluidObjectFunctions_criticalPressure_xi(
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_criticalPressure_xi(double*,void*);",
        Library="TILMedia160ClaRa");
  end criticalPressure_xi;
  redeclare replaceable function extends criticalSpecificEntropy_xi
  external"C" sc = TILMedia_VLEFluidObjectFunctions_criticalSpecificEntropy_xi(
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_criticalSpecificEntropy_xi(double*,void*);",
        Library="TILMedia160ClaRa");
  end criticalSpecificEntropy_xi;
  redeclare replaceable function extends criticalTemperature_xi
  external"C" Tc = TILMedia_VLEFluidObjectFunctions_criticalTemperature_xi(
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_criticalTemperature_xi(double*,void*);",
        Library="TILMedia160ClaRa");
  end criticalTemperature_xi;
  redeclare replaceable function extends criticalSpecificIsobaricHeatCapacity_xi
  external"C" cpc = TILMedia_VLEFluidObjectFunctions_criticalSpecificIsobaricHeatCapacity_xi(
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_criticalSpecificIsobaricHeatCapacity_xi(double*,void*);",
        Library="TILMedia160ClaRa");
  end criticalSpecificIsobaricHeatCapacity_xi;
  redeclare replaceable function extends criticalIsobaricThermalExpansionCoefficient_xi
  external"C" betac = TILMedia_VLEFluidObjectFunctions_criticalIsobaricThermalExpansionCoefficient_xi(
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_criticalIsobaricThermalExpansionCoefficient_xi(double*,void*);",
        Library="TILMedia160ClaRa");
  end criticalIsobaricThermalExpansionCoefficient_xi;
  redeclare replaceable function extends criticalIsothermalCompressibility_xi
  external"C" kappac = TILMedia_VLEFluidObjectFunctions_criticalIsothermalCompressibility_xi(
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_criticalIsothermalCompressibility_xi(double*,void*);",
        Library="TILMedia160ClaRa");
  end criticalIsothermalCompressibility_xi;
  redeclare replaceable function extends criticalThermalConductivity_xi
  external"C" lambdac = TILMedia_VLEFluidObjectFunctions_criticalThermalConductivity_xi(
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_criticalThermalConductivity_xi(double*,void*);",
        Library="TILMedia160ClaRa");
  end criticalThermalConductivity_xi;
  redeclare replaceable function extends criticalDynamicViscosity_xi
  external"C" etac = TILMedia_VLEFluidObjectFunctions_criticalDynamicViscosity_xi(
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_criticalDynamicViscosity_xi(double*,void*);",
        Library="TILMedia160ClaRa");
  end criticalDynamicViscosity_xi;
  redeclare replaceable function extends criticalSurfaceTension_xi
  external"C" sigmac = TILMedia_VLEFluidObjectFunctions_criticalSurfaceTension_xi(
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_criticalSurfaceTension_xi(double*,void*);",
        Library="TILMedia160ClaRa");
  end criticalSurfaceTension_xi;
  redeclare replaceable function extends cricondenbarTemperature_xi
  external"C" T_ccb = TILMedia_VLEFluidObjectFunctions_cricondenbarTemperature_xi(
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_cricondenbarTemperature_xi(double*,void*);",
        Library="TILMedia160ClaRa");
  end cricondenbarTemperature_xi;
  redeclare replaceable function extends cricondenthermTemperature_xi
  external"C" T_cct = TILMedia_VLEFluidObjectFunctions_cricondenthermTemperature_xi(
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_cricondenthermTemperature_xi(double*,void*);",
        Library="TILMedia160ClaRa");
  end cricondenthermTemperature_xi;
  redeclare replaceable function extends cricondenbarPressure_xi
  external"C" p_ccb = TILMedia_VLEFluidObjectFunctions_cricondenbarPressure_xi(
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_cricondenbarPressure_xi(double*,void*);",
        Library="TILMedia160ClaRa");
  end cricondenbarPressure_xi;
  redeclare replaceable function extends cricondenthermPressure_xi
  external"C" p_cct = TILMedia_VLEFluidObjectFunctions_cricondenthermPressure_xi(
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_cricondenthermPressure_xi(double*,void*);",
        Library="TILMedia160ClaRa");
  end cricondenthermPressure_xi;

  redeclare replaceable function extends molarMass_n
  external"C" M_i = TILMedia_VLEFluidObjectFunctions_molarMass_n(
      compNo, vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_molarMass_n(int, void*);",
        Library="TILMedia160ClaRa");
  end molarMass_n;

end VLEFluidObjectFunctions;
