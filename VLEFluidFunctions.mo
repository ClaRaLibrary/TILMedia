within TILMedia;
package VLEFluidFunctions
  "Package for calculation of VLEFluid properties with a functional call"
  extends .TILMedia.BaseClasses.PartialVLEFluidFunctions;

  redeclare function extends specificEnthalpy_dTxi
  algorithm
    h := .TILMedia.Internals.VLEFluidFunctions.specificEnthalpy_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end specificEnthalpy_dTxi;
  redeclare function extends pressure_dTxi
  algorithm
    p := .TILMedia.Internals.VLEFluidFunctions.pressure_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end pressure_dTxi;
  redeclare function extends specificEntropy_dTxi
  algorithm
    s := .TILMedia.Internals.VLEFluidFunctions.specificEntropy_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end specificEntropy_dTxi;
  redeclare function extends moleFraction_dTxin
  algorithm
    x := .TILMedia.Internals.VLEFluidFunctions.moleFraction_dTxin(d,T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end moleFraction_dTxin;
  redeclare function extends steamMassFraction_dTxi
  algorithm
    q := .TILMedia.Internals.VLEFluidFunctions.steamMassFraction_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end steamMassFraction_dTxi;
  redeclare function extends specificIsobaricHeatCapacity_dTxi
  algorithm
    cp := .TILMedia.Internals.VLEFluidFunctions.specificIsobaricHeatCapacity_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end specificIsobaricHeatCapacity_dTxi;
  redeclare function extends specificIsochoricHeatCapacity_dTxi
  algorithm
    cv := .TILMedia.Internals.VLEFluidFunctions.specificIsochoricHeatCapacity_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end specificIsochoricHeatCapacity_dTxi;
  redeclare function extends isobaricThermalExpansionCoefficient_dTxi
  algorithm
    beta := .TILMedia.Internals.VLEFluidFunctions.isobaricThermalExpansionCoefficient_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end isobaricThermalExpansionCoefficient_dTxi;
  redeclare function extends isothermalCompressibility_dTxi
  algorithm
    kappa := .TILMedia.Internals.VLEFluidFunctions.isothermalCompressibility_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end isothermalCompressibility_dTxi;
  redeclare function extends speedOfSound_dTxi
  algorithm
    w := .TILMedia.Internals.VLEFluidFunctions.speedOfSound_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end speedOfSound_dTxi;
  redeclare function extends densityDerivativeWRTspecificEnthalpy_dTxi
  algorithm
    drhodh_pxi := .TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTspecificEnthalpy_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTspecificEnthalpy_dTxi;
  redeclare function extends densityDerivativeWRTpressure_dTxi
  algorithm
    drhodp_hxi := .TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTpressure_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTpressure_dTxi;
  redeclare function extends densityDerivativeWRTmassFraction_dTxin
  algorithm
    drhodxi_ph := .TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTmassFraction_dTxin(d,T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTmassFraction_dTxin;
  redeclare function extends heatCapacityRatio_dTxi
  algorithm
    gamma := .TILMedia.Internals.VLEFluidFunctions.heatCapacityRatio_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end heatCapacityRatio_dTxi;
  redeclare function extends prandtlNumber_dTxi
  algorithm
    Pr := .TILMedia.Internals.VLEFluidFunctions.prandtlNumber_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end prandtlNumber_dTxi;
  redeclare function extends thermalConductivity_dTxi
  algorithm
    lambda := .TILMedia.Internals.VLEFluidFunctions.thermalConductivity_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end thermalConductivity_dTxi;
  redeclare function extends dynamicViscosity_dTxi
  algorithm
    eta := .TILMedia.Internals.VLEFluidFunctions.dynamicViscosity_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dynamicViscosity_dTxi;
  redeclare function extends surfaceTension_dTxi
  algorithm
    sigma := .TILMedia.Internals.VLEFluidFunctions.surfaceTension_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end surfaceTension_dTxi;
  redeclare function extends liquidDensity_dTxi
  algorithm
    d_l := .TILMedia.Internals.VLEFluidFunctions.liquidDensity_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidDensity_dTxi;
  redeclare function extends vapourDensity_dTxi
  algorithm
    d_v := .TILMedia.Internals.VLEFluidFunctions.vapourDensity_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourDensity_dTxi;
  redeclare function extends liquidSpecificEnthalpy_dTxi
  algorithm
    h_l := .TILMedia.Internals.VLEFluidFunctions.liquidSpecificEnthalpy_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidSpecificEnthalpy_dTxi;
  redeclare function extends vapourSpecificEnthalpy_dTxi
  algorithm
    h_v := .TILMedia.Internals.VLEFluidFunctions.vapourSpecificEnthalpy_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourSpecificEnthalpy_dTxi;
  redeclare function extends liquidPressure_dTxi
  algorithm
    p_l := .TILMedia.Internals.VLEFluidFunctions.liquidPressure_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidPressure_dTxi;
  redeclare function extends vapourPressure_dTxi
  algorithm
    p_v := .TILMedia.Internals.VLEFluidFunctions.vapourPressure_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourPressure_dTxi;
  redeclare function extends liquidSpecificEntropy_dTxi
  algorithm
    s_l := .TILMedia.Internals.VLEFluidFunctions.liquidSpecificEntropy_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidSpecificEntropy_dTxi;
  redeclare function extends vapourSpecificEntropy_dTxi
  algorithm
    s_v := .TILMedia.Internals.VLEFluidFunctions.vapourSpecificEntropy_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourSpecificEntropy_dTxi;
  redeclare function extends liquidMassFraction_dTxin
  algorithm
    xi_l := .TILMedia.Internals.VLEFluidFunctions.liquidMassFraction_dTxin(d,T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidMassFraction_dTxin;
  redeclare function extends vapourMassFraction_dTxin
  algorithm
    xi_v := .TILMedia.Internals.VLEFluidFunctions.vapourMassFraction_dTxin(d,T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourMassFraction_dTxin;
  redeclare function extends liquidSpecificHeatCapacity_dTxi
  algorithm
    cp_l := .TILMedia.Internals.VLEFluidFunctions.liquidSpecificHeatCapacity_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidSpecificHeatCapacity_dTxi;
  redeclare function extends vapourSpecificHeatCapacity_dTxi
  algorithm
    cp_v := .TILMedia.Internals.VLEFluidFunctions.vapourSpecificHeatCapacity_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourSpecificHeatCapacity_dTxi;
  redeclare function extends liquidIsobaricThermalExpansionCoefficient_dTxi
  algorithm
    beta_l := .TILMedia.Internals.VLEFluidFunctions.liquidIsobaricThermalExpansionCoefficient_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidIsobaricThermalExpansionCoefficient_dTxi;
  redeclare function extends vapourIsobaricThermalExpansionCoefficient_dTxi
  algorithm
    beta_v := .TILMedia.Internals.VLEFluidFunctions.vapourIsobaricThermalExpansionCoefficient_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourIsobaricThermalExpansionCoefficient_dTxi;
  redeclare function extends liquidIsothermalCompressibility_dTxi
  algorithm
    kappa_l := .TILMedia.Internals.VLEFluidFunctions.liquidIsothermalCompressibility_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidIsothermalCompressibility_dTxi;
  redeclare function extends vapourIsothermalCompressibility_dTxi
  algorithm
    kappa_v := .TILMedia.Internals.VLEFluidFunctions.vapourIsothermalCompressibility_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourIsothermalCompressibility_dTxi;

  redeclare function extends density_phxi
  algorithm
    d := .TILMedia.Internals.VLEFluidFunctions.density_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end density_phxi;
  redeclare function extends specificEntropy_phxi
  algorithm
    s := .TILMedia.Internals.VLEFluidFunctions.specificEntropy_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end specificEntropy_phxi;
  redeclare function extends temperature_phxi
  algorithm
    T := .TILMedia.Internals.VLEFluidFunctions.temperature_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end temperature_phxi;
  redeclare function extends moleFraction_phxin
  algorithm
    x := .TILMedia.Internals.VLEFluidFunctions.moleFraction_phxin(p,h,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end moleFraction_phxin;
  redeclare function extends steamMassFraction_phxi
  algorithm
    q := .TILMedia.Internals.VLEFluidFunctions.steamMassFraction_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end steamMassFraction_phxi;
  redeclare function extends specificIsobaricHeatCapacity_phxi
  algorithm
    cp := .TILMedia.Internals.VLEFluidFunctions.specificIsobaricHeatCapacity_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end specificIsobaricHeatCapacity_phxi;
  redeclare function extends specificIsochoricHeatCapacity_phxi
  algorithm
    cv := .TILMedia.Internals.VLEFluidFunctions.specificIsochoricHeatCapacity_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end specificIsochoricHeatCapacity_phxi;
  redeclare function extends isobaricThermalExpansionCoefficient_phxi
  algorithm
    beta := .TILMedia.Internals.VLEFluidFunctions.isobaricThermalExpansionCoefficient_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end isobaricThermalExpansionCoefficient_phxi;
  redeclare function extends isothermalCompressibility_phxi
  algorithm
    kappa := .TILMedia.Internals.VLEFluidFunctions.isothermalCompressibility_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end isothermalCompressibility_phxi;
  redeclare function extends speedOfSound_phxi
  algorithm
    w := .TILMedia.Internals.VLEFluidFunctions.speedOfSound_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end speedOfSound_phxi;
  redeclare function extends densityDerivativeWRTspecificEnthalpy_phxi
  algorithm
    drhodh_pxi := .TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTspecificEnthalpy_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTspecificEnthalpy_phxi;
  redeclare function extends densityDerivativeWRTpressure_phxi
  algorithm
    drhodp_hxi := .TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTpressure_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTpressure_phxi;
  redeclare function extends densityDerivativeWRTmassFraction_phxin
  algorithm
    drhodxi_ph := .TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTmassFraction_phxin(p,h,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTmassFraction_phxin;
  redeclare function extends heatCapacityRatio_phxi
  algorithm
    gamma := .TILMedia.Internals.VLEFluidFunctions.heatCapacityRatio_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end heatCapacityRatio_phxi;
  redeclare function extends prandtlNumber_phxi
  algorithm
    Pr := .TILMedia.Internals.VLEFluidFunctions.prandtlNumber_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end prandtlNumber_phxi;
  redeclare function extends thermalConductivity_phxi
  algorithm
    lambda := .TILMedia.Internals.VLEFluidFunctions.thermalConductivity_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end thermalConductivity_phxi;
  redeclare function extends dynamicViscosity_phxi
  algorithm
    eta := .TILMedia.Internals.VLEFluidFunctions.dynamicViscosity_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dynamicViscosity_phxi;
  redeclare function extends surfaceTension_phxi
  algorithm
    sigma := .TILMedia.Internals.VLEFluidFunctions.surfaceTension_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end surfaceTension_phxi;
  redeclare function extends liquidDensity_phxi
  algorithm
    d_l := .TILMedia.Internals.VLEFluidFunctions.liquidDensity_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidDensity_phxi;
  redeclare function extends vapourDensity_phxi
  algorithm
    d_v := .TILMedia.Internals.VLEFluidFunctions.vapourDensity_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourDensity_phxi;
  redeclare function extends liquidSpecificEnthalpy_phxi
  algorithm
    h_l := .TILMedia.Internals.VLEFluidFunctions.liquidSpecificEnthalpy_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidSpecificEnthalpy_phxi;
  redeclare function extends vapourSpecificEnthalpy_phxi
  algorithm
    h_v := .TILMedia.Internals.VLEFluidFunctions.vapourSpecificEnthalpy_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourSpecificEnthalpy_phxi;
  redeclare function extends liquidSpecificEntropy_phxi
  algorithm
    s_l := .TILMedia.Internals.VLEFluidFunctions.liquidSpecificEntropy_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidSpecificEntropy_phxi;
  redeclare function extends vapourSpecificEntropy_phxi
  algorithm
    s_v := .TILMedia.Internals.VLEFluidFunctions.vapourSpecificEntropy_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourSpecificEntropy_phxi;
  redeclare function extends liquidTemperature_phxi
  algorithm
    T_l := .TILMedia.Internals.VLEFluidFunctions.liquidTemperature_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidTemperature_phxi;
  redeclare function extends vapourTemperature_phxi
  algorithm
    T_v := .TILMedia.Internals.VLEFluidFunctions.vapourTemperature_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourTemperature_phxi;
  redeclare function extends liquidMassFraction_phxin
  algorithm
    xi_l := .TILMedia.Internals.VLEFluidFunctions.liquidMassFraction_phxin(p,h,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidMassFraction_phxin;
  redeclare function extends vapourMassFraction_phxin
  algorithm
    xi_v := .TILMedia.Internals.VLEFluidFunctions.vapourMassFraction_phxin(p,h,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourMassFraction_phxin;
  redeclare function extends liquidSpecificHeatCapacity_phxi
  algorithm
    cp_l := .TILMedia.Internals.VLEFluidFunctions.liquidSpecificHeatCapacity_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidSpecificHeatCapacity_phxi;
  redeclare function extends vapourSpecificHeatCapacity_phxi
  algorithm
    cp_v := .TILMedia.Internals.VLEFluidFunctions.vapourSpecificHeatCapacity_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourSpecificHeatCapacity_phxi;
  redeclare function extends liquidIsobaricThermalExpansionCoefficient_phxi
  algorithm
    beta_l := .TILMedia.Internals.VLEFluidFunctions.liquidIsobaricThermalExpansionCoefficient_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidIsobaricThermalExpansionCoefficient_phxi;
  redeclare function extends vapourIsobaricThermalExpansionCoefficient_phxi
  algorithm
    beta_v := .TILMedia.Internals.VLEFluidFunctions.vapourIsobaricThermalExpansionCoefficient_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourIsobaricThermalExpansionCoefficient_phxi;
  redeclare function extends liquidIsothermalCompressibility_phxi
  algorithm
    kappa_l := .TILMedia.Internals.VLEFluidFunctions.liquidIsothermalCompressibility_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidIsothermalCompressibility_phxi;
  redeclare function extends vapourIsothermalCompressibility_phxi
  algorithm
    kappa_v := .TILMedia.Internals.VLEFluidFunctions.vapourIsothermalCompressibility_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourIsothermalCompressibility_phxi;

  redeclare function extends density_psxi
  algorithm
    d := .TILMedia.Internals.VLEFluidFunctions.density_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end density_psxi;
  redeclare function extends specificEnthalpy_psxi
  algorithm
    h := .TILMedia.Internals.VLEFluidFunctions.specificEnthalpy_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end specificEnthalpy_psxi;
  redeclare function extends temperature_psxi
  algorithm
    T := .TILMedia.Internals.VLEFluidFunctions.temperature_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end temperature_psxi;
  redeclare function extends moleFraction_psxin
  algorithm
    x := .TILMedia.Internals.VLEFluidFunctions.moleFraction_psxin(p,s,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end moleFraction_psxin;
  redeclare function extends steamMassFraction_psxi
  algorithm
    q := .TILMedia.Internals.VLEFluidFunctions.steamMassFraction_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end steamMassFraction_psxi;
  redeclare function extends specificIsobaricHeatCapacity_psxi
  algorithm
    cp := .TILMedia.Internals.VLEFluidFunctions.specificIsobaricHeatCapacity_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end specificIsobaricHeatCapacity_psxi;
  redeclare function extends specificIsochoricHeatCapacity_psxi
  algorithm
    cv := .TILMedia.Internals.VLEFluidFunctions.specificIsochoricHeatCapacity_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end specificIsochoricHeatCapacity_psxi;
  redeclare function extends isobaricThermalExpansionCoefficient_psxi
  algorithm
    beta := .TILMedia.Internals.VLEFluidFunctions.isobaricThermalExpansionCoefficient_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end isobaricThermalExpansionCoefficient_psxi;
  redeclare function extends isothermalCompressibility_psxi
  algorithm
    kappa := .TILMedia.Internals.VLEFluidFunctions.isothermalCompressibility_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end isothermalCompressibility_psxi;
  redeclare function extends speedOfSound_psxi
  algorithm
    w := .TILMedia.Internals.VLEFluidFunctions.speedOfSound_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end speedOfSound_psxi;
  redeclare function extends densityDerivativeWRTspecificEnthalpy_psxi
  algorithm
    drhodh_pxi := .TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTspecificEnthalpy_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTspecificEnthalpy_psxi;
  redeclare function extends densityDerivativeWRTpressure_psxi
  algorithm
    drhodp_hxi := .TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTpressure_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTpressure_psxi;
  redeclare function extends densityDerivativeWRTmassFraction_psxin
  algorithm
    drhodxi_ph := .TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTmassFraction_psxin(p,s,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTmassFraction_psxin;
  redeclare function extends heatCapacityRatio_psxi
  algorithm
    gamma := .TILMedia.Internals.VLEFluidFunctions.heatCapacityRatio_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end heatCapacityRatio_psxi;
  redeclare function extends prandtlNumber_psxi
  algorithm
    Pr := .TILMedia.Internals.VLEFluidFunctions.prandtlNumber_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end prandtlNumber_psxi;
  redeclare function extends thermalConductivity_psxi
  algorithm
    lambda := .TILMedia.Internals.VLEFluidFunctions.thermalConductivity_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end thermalConductivity_psxi;
  redeclare function extends dynamicViscosity_psxi
  algorithm
    eta := .TILMedia.Internals.VLEFluidFunctions.dynamicViscosity_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dynamicViscosity_psxi;
  redeclare function extends surfaceTension_psxi
  algorithm
    sigma := .TILMedia.Internals.VLEFluidFunctions.surfaceTension_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end surfaceTension_psxi;
  redeclare function extends liquidDensity_psxi
  algorithm
    d_l := .TILMedia.Internals.VLEFluidFunctions.liquidDensity_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidDensity_psxi;
  redeclare function extends vapourDensity_psxi
  algorithm
    d_v := .TILMedia.Internals.VLEFluidFunctions.vapourDensity_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourDensity_psxi;
  redeclare function extends liquidSpecificEnthalpy_psxi
  algorithm
    h_l := .TILMedia.Internals.VLEFluidFunctions.liquidSpecificEnthalpy_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidSpecificEnthalpy_psxi;
  redeclare function extends vapourSpecificEnthalpy_psxi
  algorithm
    h_v := .TILMedia.Internals.VLEFluidFunctions.vapourSpecificEnthalpy_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourSpecificEnthalpy_psxi;
  redeclare function extends liquidSpecificEntropy_psxi
  algorithm
    s_l := .TILMedia.Internals.VLEFluidFunctions.liquidSpecificEntropy_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidSpecificEntropy_psxi;
  redeclare function extends vapourSpecificEntropy_psxi
  algorithm
    s_v := .TILMedia.Internals.VLEFluidFunctions.vapourSpecificEntropy_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourSpecificEntropy_psxi;
  redeclare function extends liquidTemperature_psxi
  algorithm
    T_l := .TILMedia.Internals.VLEFluidFunctions.liquidTemperature_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidTemperature_psxi;
  redeclare function extends vapourTemperature_psxi
  algorithm
    T_v := .TILMedia.Internals.VLEFluidFunctions.vapourTemperature_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourTemperature_psxi;
  redeclare function extends liquidMassFraction_psxin
  algorithm
    xi_l := .TILMedia.Internals.VLEFluidFunctions.liquidMassFraction_psxin(p,s,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidMassFraction_psxin;
  redeclare function extends vapourMassFraction_psxin
  algorithm
    xi_v := .TILMedia.Internals.VLEFluidFunctions.vapourMassFraction_psxin(p,s,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourMassFraction_psxin;
  redeclare function extends liquidSpecificHeatCapacity_psxi
  algorithm
    cp_l := .TILMedia.Internals.VLEFluidFunctions.liquidSpecificHeatCapacity_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidSpecificHeatCapacity_psxi;
  redeclare function extends vapourSpecificHeatCapacity_psxi
  algorithm
    cp_v := .TILMedia.Internals.VLEFluidFunctions.vapourSpecificHeatCapacity_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourSpecificHeatCapacity_psxi;
  redeclare function extends liquidIsobaricThermalExpansionCoefficient_psxi
  algorithm
    beta_l := .TILMedia.Internals.VLEFluidFunctions.liquidIsobaricThermalExpansionCoefficient_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidIsobaricThermalExpansionCoefficient_psxi;
  redeclare function extends vapourIsobaricThermalExpansionCoefficient_psxi
  algorithm
    beta_v := .TILMedia.Internals.VLEFluidFunctions.vapourIsobaricThermalExpansionCoefficient_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourIsobaricThermalExpansionCoefficient_psxi;
  redeclare function extends liquidIsothermalCompressibility_psxi
  algorithm
    kappa_l := .TILMedia.Internals.VLEFluidFunctions.liquidIsothermalCompressibility_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidIsothermalCompressibility_psxi;
  redeclare function extends vapourIsothermalCompressibility_psxi
  algorithm
    kappa_v := .TILMedia.Internals.VLEFluidFunctions.vapourIsothermalCompressibility_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourIsothermalCompressibility_psxi;

  redeclare function extends density_pTxi
  algorithm
    d := .TILMedia.Internals.VLEFluidFunctions.density_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end density_pTxi;
  redeclare function extends specificEnthalpy_pTxi
  algorithm
    h := .TILMedia.Internals.VLEFluidFunctions.specificEnthalpy_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end specificEnthalpy_pTxi;
  redeclare function extends specificEntropy_pTxi
  algorithm
    s := .TILMedia.Internals.VLEFluidFunctions.specificEntropy_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end specificEntropy_pTxi;
  redeclare function extends moleFraction_pTxin
  algorithm
    x := .TILMedia.Internals.VLEFluidFunctions.moleFraction_pTxin(p,T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end moleFraction_pTxin;
  redeclare function extends steamMassFraction_pTxi
  algorithm
    q := .TILMedia.Internals.VLEFluidFunctions.steamMassFraction_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end steamMassFraction_pTxi;
  redeclare function extends specificIsobaricHeatCapacity_pTxi
  algorithm
    cp := .TILMedia.Internals.VLEFluidFunctions.specificIsobaricHeatCapacity_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end specificIsobaricHeatCapacity_pTxi;
  redeclare function extends specificIsochoricHeatCapacity_pTxi
  algorithm
    cv := .TILMedia.Internals.VLEFluidFunctions.specificIsochoricHeatCapacity_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end specificIsochoricHeatCapacity_pTxi;
  redeclare function extends isobaricThermalExpansionCoefficient_pTxi
  algorithm
    beta := .TILMedia.Internals.VLEFluidFunctions.isobaricThermalExpansionCoefficient_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end isobaricThermalExpansionCoefficient_pTxi;
  redeclare function extends isothermalCompressibility_pTxi
  algorithm
    kappa := .TILMedia.Internals.VLEFluidFunctions.isothermalCompressibility_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end isothermalCompressibility_pTxi;
  redeclare function extends speedOfSound_pTxi
  algorithm
    w := .TILMedia.Internals.VLEFluidFunctions.speedOfSound_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end speedOfSound_pTxi;
  redeclare function extends densityDerivativeWRTspecificEnthalpy_pTxi
  algorithm
    drhodh_pxi := .TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTspecificEnthalpy_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTspecificEnthalpy_pTxi;
  redeclare function extends densityDerivativeWRTpressure_pTxi
  algorithm
    drhodp_hxi := .TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTpressure_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTpressure_pTxi;
  redeclare function extends densityDerivativeWRTmassFraction_pTxin
  algorithm
    drhodxi_ph := .TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTmassFraction_pTxin(p,T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTmassFraction_pTxin;
  redeclare function extends heatCapacityRatio_pTxi
  algorithm
    gamma := .TILMedia.Internals.VLEFluidFunctions.heatCapacityRatio_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end heatCapacityRatio_pTxi;
  redeclare function extends prandtlNumber_pTxi
  algorithm
    Pr := .TILMedia.Internals.VLEFluidFunctions.prandtlNumber_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end prandtlNumber_pTxi;
  redeclare function extends thermalConductivity_pTxi
  algorithm
    lambda := .TILMedia.Internals.VLEFluidFunctions.thermalConductivity_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end thermalConductivity_pTxi;
  redeclare function extends dynamicViscosity_pTxi
  algorithm
    eta := .TILMedia.Internals.VLEFluidFunctions.dynamicViscosity_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dynamicViscosity_pTxi;
  redeclare function extends surfaceTension_pTxi
  algorithm
    sigma := .TILMedia.Internals.VLEFluidFunctions.surfaceTension_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end surfaceTension_pTxi;
  redeclare function extends liquidDensity_pTxi
  algorithm
    d_l := .TILMedia.Internals.VLEFluidFunctions.liquidDensity_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidDensity_pTxi;
  redeclare function extends vapourDensity_pTxi
  algorithm
    d_v := .TILMedia.Internals.VLEFluidFunctions.vapourDensity_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourDensity_pTxi;
  redeclare function extends liquidSpecificEnthalpy_pTxi
  algorithm
    h_l := .TILMedia.Internals.VLEFluidFunctions.liquidSpecificEnthalpy_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidSpecificEnthalpy_pTxi;
  redeclare function extends vapourSpecificEnthalpy_pTxi
  algorithm
    h_v := .TILMedia.Internals.VLEFluidFunctions.vapourSpecificEnthalpy_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourSpecificEnthalpy_pTxi;
  redeclare function extends liquidSpecificEntropy_pTxi
  algorithm
    s_l := .TILMedia.Internals.VLEFluidFunctions.liquidSpecificEntropy_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidSpecificEntropy_pTxi;
  redeclare function extends vapourSpecificEntropy_pTxi
  algorithm
    s_v := .TILMedia.Internals.VLEFluidFunctions.vapourSpecificEntropy_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourSpecificEntropy_pTxi;
  redeclare function extends liquidTemperature_pTxi
  algorithm
    T_l := .TILMedia.Internals.VLEFluidFunctions.liquidTemperature_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidTemperature_pTxi;
  redeclare function extends vapourTemperature_pTxi
  algorithm
    T_v := .TILMedia.Internals.VLEFluidFunctions.vapourTemperature_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourTemperature_pTxi;
  redeclare function extends liquidMassFraction_pTxin
  algorithm
    xi_l := .TILMedia.Internals.VLEFluidFunctions.liquidMassFraction_pTxin(p,T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidMassFraction_pTxin;
  redeclare function extends vapourMassFraction_pTxin
  algorithm
    xi_v := .TILMedia.Internals.VLEFluidFunctions.vapourMassFraction_pTxin(p,T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourMassFraction_pTxin;
  redeclare function extends liquidSpecificHeatCapacity_pTxi
  algorithm
    cp_l := .TILMedia.Internals.VLEFluidFunctions.liquidSpecificHeatCapacity_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidSpecificHeatCapacity_pTxi;
  redeclare function extends vapourSpecificHeatCapacity_pTxi
  algorithm
    cp_v := .TILMedia.Internals.VLEFluidFunctions.vapourSpecificHeatCapacity_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourSpecificHeatCapacity_pTxi;
  redeclare function extends liquidIsobaricThermalExpansionCoefficient_pTxi
  algorithm
    beta_l := .TILMedia.Internals.VLEFluidFunctions.liquidIsobaricThermalExpansionCoefficient_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidIsobaricThermalExpansionCoefficient_pTxi;
  redeclare function extends vapourIsobaricThermalExpansionCoefficient_pTxi
  algorithm
    beta_v := .TILMedia.Internals.VLEFluidFunctions.vapourIsobaricThermalExpansionCoefficient_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourIsobaricThermalExpansionCoefficient_pTxi;
  redeclare function extends liquidIsothermalCompressibility_pTxi
  algorithm
    kappa_l := .TILMedia.Internals.VLEFluidFunctions.liquidIsothermalCompressibility_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end liquidIsothermalCompressibility_pTxi;
  redeclare function extends vapourIsothermalCompressibility_pTxi
  algorithm
    kappa_v := .TILMedia.Internals.VLEFluidFunctions.vapourIsothermalCompressibility_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end vapourIsothermalCompressibility_pTxi;


  redeclare function extends dewDensity_Txi
  algorithm
    d_dew := .TILMedia.Internals.VLEFluidFunctions.dewDensity_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dewDensity_Txi;
  redeclare function extends bubbleDensity_Txi
  algorithm
    d_bubble := .TILMedia.Internals.VLEFluidFunctions.bubbleDensity_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end bubbleDensity_Txi;
  redeclare function extends dewSpecificEnthalpy_Txi
  algorithm
    h_dew := .TILMedia.Internals.VLEFluidFunctions.dewSpecificEnthalpy_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dewSpecificEnthalpy_Txi;
  redeclare function extends bubbleSpecificEnthalpy_Txi
  algorithm
    h_bubble := .TILMedia.Internals.VLEFluidFunctions.bubbleSpecificEnthalpy_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end bubbleSpecificEnthalpy_Txi;
  redeclare function extends dewPressure_Txi
  algorithm
    p_dew := .TILMedia.Internals.VLEFluidFunctions.dewPressure_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dewPressure_Txi;
  redeclare function extends bubblePressure_Txi
  algorithm
    p_bubble := .TILMedia.Internals.VLEFluidFunctions.bubblePressure_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end bubblePressure_Txi;
  redeclare function extends dewSpecificEntropy_Txi
  algorithm
    s_dew := .TILMedia.Internals.VLEFluidFunctions.dewSpecificEntropy_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dewSpecificEntropy_Txi;
  redeclare function extends bubbleSpecificEntropy_Txi
  algorithm
    s_bubble := .TILMedia.Internals.VLEFluidFunctions.bubbleSpecificEntropy_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end bubbleSpecificEntropy_Txi;
  redeclare function extends dewLiquidMassFraction_Txin
  algorithm
    xi_ldew := .TILMedia.Internals.VLEFluidFunctions.dewLiquidMassFraction_Txin(T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dewLiquidMassFraction_Txin;
  redeclare function extends bubbleVapourMassFraction_Txin
  algorithm
    xi_vbubble := .TILMedia.Internals.VLEFluidFunctions.bubbleVapourMassFraction_Txin(T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end bubbleVapourMassFraction_Txin;
  redeclare function extends dewSpecificIsobaricHeatCapacity_Txi
  algorithm
    cp_dew := .TILMedia.Internals.VLEFluidFunctions.dewSpecificIsobaricHeatCapacity_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dewSpecificIsobaricHeatCapacity_Txi;
  redeclare function extends bubbleSpecificIsobaricHeatCapacity_Txi
  algorithm
    cp_bubble := .TILMedia.Internals.VLEFluidFunctions.bubbleSpecificIsobaricHeatCapacity_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end bubbleSpecificIsobaricHeatCapacity_Txi;
  redeclare function extends dewIsobaricThermalExpansionCoefficient_Txi
  algorithm
    beta_dew := .TILMedia.Internals.VLEFluidFunctions.dewIsobaricThermalExpansionCoefficient_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dewIsobaricThermalExpansionCoefficient_Txi;
  redeclare function extends bubbleIsobaricThermalExpansionCoefficient_Txi
  algorithm
    beta_bubble := .TILMedia.Internals.VLEFluidFunctions.bubbleIsobaricThermalExpansionCoefficient_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end bubbleIsobaricThermalExpansionCoefficient_Txi;
  redeclare function extends dewIsothermalCompressibility_Txi
  algorithm
    kappa_dew := .TILMedia.Internals.VLEFluidFunctions.dewIsothermalCompressibility_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dewIsothermalCompressibility_Txi;
  redeclare function extends bubbleIsothermalCompressibility_Txi
  algorithm
    kappa_bubble := .TILMedia.Internals.VLEFluidFunctions.bubbleIsothermalCompressibility_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end bubbleIsothermalCompressibility_Txi;

  redeclare function extends dewDensity_pxi
  algorithm
    d_dew := .TILMedia.Internals.VLEFluidFunctions.dewDensity_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dewDensity_pxi;
  redeclare function extends bubbleDensity_pxi
  algorithm
    d_bubble := .TILMedia.Internals.VLEFluidFunctions.bubbleDensity_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end bubbleDensity_pxi;
  redeclare function extends dewSpecificEnthalpy_pxi
  algorithm
    h_dew := .TILMedia.Internals.VLEFluidFunctions.dewSpecificEnthalpy_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dewSpecificEnthalpy_pxi;
  redeclare function extends bubbleSpecificEnthalpy_pxi
  algorithm
    h_bubble := .TILMedia.Internals.VLEFluidFunctions.bubbleSpecificEnthalpy_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end bubbleSpecificEnthalpy_pxi;
  redeclare function extends dewSpecificEntropy_pxi
  algorithm
    s_dew := .TILMedia.Internals.VLEFluidFunctions.dewSpecificEntropy_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dewSpecificEntropy_pxi;
  redeclare function extends bubbleSpecificEntropy_pxi
  algorithm
    s_bubble := .TILMedia.Internals.VLEFluidFunctions.bubbleSpecificEntropy_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end bubbleSpecificEntropy_pxi;
  redeclare function extends dewTemperature_pxi
  algorithm
    T_dew := .TILMedia.Internals.VLEFluidFunctions.dewTemperature_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dewTemperature_pxi;
  redeclare function extends bubbleTemperature_pxi
  algorithm
    T_bubble := .TILMedia.Internals.VLEFluidFunctions.bubbleTemperature_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end bubbleTemperature_pxi;
  redeclare function extends dewLiquidMassFraction_pxin
  algorithm
    xi_ldew := .TILMedia.Internals.VLEFluidFunctions.dewLiquidMassFraction_pxin(p,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dewLiquidMassFraction_pxin;
  redeclare function extends bubbleVapourMassFraction_pxin
  algorithm
    xi_vbubble := .TILMedia.Internals.VLEFluidFunctions.bubbleVapourMassFraction_pxin(p,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end bubbleVapourMassFraction_pxin;
  redeclare function extends dewSpecificIsobaricHeatCapacity_pxi
  algorithm
    cp_dew := .TILMedia.Internals.VLEFluidFunctions.dewSpecificIsobaricHeatCapacity_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dewSpecificIsobaricHeatCapacity_pxi;
  redeclare function extends bubbleSpecificIsobaricHeatCapacity_pxi
  algorithm
    cp_bubble := .TILMedia.Internals.VLEFluidFunctions.bubbleSpecificIsobaricHeatCapacity_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end bubbleSpecificIsobaricHeatCapacity_pxi;
  redeclare function extends dewIsobaricThermalExpansionCoefficient_pxi
  algorithm
    beta_dew := .TILMedia.Internals.VLEFluidFunctions.dewIsobaricThermalExpansionCoefficient_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dewIsobaricThermalExpansionCoefficient_pxi;
  redeclare function extends bubbleIsobaricThermalExpansionCoefficient_pxi
  algorithm
    beta_bubble := .TILMedia.Internals.VLEFluidFunctions.bubbleIsobaricThermalExpansionCoefficient_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end bubbleIsobaricThermalExpansionCoefficient_pxi;
  redeclare function extends dewIsothermalCompressibility_pxi
  algorithm
    kappa_dew := .TILMedia.Internals.VLEFluidFunctions.dewIsothermalCompressibility_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end dewIsothermalCompressibility_pxi;
  redeclare function extends bubbleIsothermalCompressibility_pxi
  algorithm
    kappa_bubble := .TILMedia.Internals.VLEFluidFunctions.bubbleIsothermalCompressibility_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end bubbleIsothermalCompressibility_pxi;



  redeclare function extends averageMolarMass_xi
  algorithm
    M := .TILMedia.Internals.VLEFluidFunctions.averageMolarMass_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end averageMolarMass_xi;
  redeclare function extends criticalDensity_xi
  algorithm
    dc := .TILMedia.Internals.VLEFluidFunctions.criticalDensity_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end criticalDensity_xi;
  redeclare function extends criticalSpecificEnthalpy_xi
  algorithm
    hc := .TILMedia.Internals.VLEFluidFunctions.criticalSpecificEnthalpy_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end criticalSpecificEnthalpy_xi;
  redeclare function extends criticalPressure_xi
  algorithm
    pc := .TILMedia.Internals.VLEFluidFunctions.criticalPressure_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end criticalPressure_xi;
  redeclare function extends criticalSpecificEntropy_xi
  algorithm
    sc := .TILMedia.Internals.VLEFluidFunctions.criticalSpecificEntropy_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end criticalSpecificEntropy_xi;
  redeclare function extends criticalTemperature_xi
  algorithm
    Tc := .TILMedia.Internals.VLEFluidFunctions.criticalTemperature_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end criticalTemperature_xi;
  redeclare function extends criticalSpecificIsobaricHeatCapacity_xi
  algorithm
    cpc := .TILMedia.Internals.VLEFluidFunctions.criticalSpecificIsobaricHeatCapacity_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end criticalSpecificIsobaricHeatCapacity_xi;
  redeclare function extends criticalIsobaricThermalExpansionCoefficient_xi
  algorithm
    betac := .TILMedia.Internals.VLEFluidFunctions.criticalIsobaricThermalExpansionCoefficient_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end criticalIsobaricThermalExpansionCoefficient_xi;
  redeclare function extends criticalIsothermalCompressibility_xi
  algorithm
    kappac := .TILMedia.Internals.VLEFluidFunctions.criticalIsothermalCompressibility_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end criticalIsothermalCompressibility_xi;
  redeclare function extends criticalThermalConductivity_xi
  algorithm
    lambdac := .TILMedia.Internals.VLEFluidFunctions.criticalThermalConductivity_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end criticalThermalConductivity_xi;
  redeclare function extends criticalDynamicViscosity_xi
  algorithm
    etac := .TILMedia.Internals.VLEFluidFunctions.criticalDynamicViscosity_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end criticalDynamicViscosity_xi;
  redeclare function extends criticalSurfaceTension_xi
  algorithm
    sigmac := .TILMedia.Internals.VLEFluidFunctions.criticalSurfaceTension_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end criticalSurfaceTension_xi;
  redeclare function extends cricondenbarTemperature_xi
  algorithm
    T_ccb := .TILMedia.Internals.VLEFluidFunctions.cricondenbarTemperature_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end cricondenbarTemperature_xi;
  redeclare function extends cricondenthermTemperature_xi
  algorithm
    T_cct := .TILMedia.Internals.VLEFluidFunctions.cricondenthermTemperature_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end cricondenthermTemperature_xi;
  redeclare function extends cricondenbarPressure_xi
  algorithm
    p_ccb := .TILMedia.Internals.VLEFluidFunctions.cricondenbarPressure_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end cricondenbarPressure_xi;
  redeclare function extends cricondenthermPressure_xi
  algorithm
    p_cct := .TILMedia.Internals.VLEFluidFunctions.cricondenthermPressure_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end cricondenthermPressure_xi;

  redeclare function extends molarMass_n
  algorithm
    M_i := .TILMedia.Internals.VLEFluidFunctions.molarMass_n(compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+.TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false, LateInline=true);
  end molarMass_n;

end VLEFluidFunctions;
