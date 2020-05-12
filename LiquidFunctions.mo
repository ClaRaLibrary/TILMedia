within TILMedia;
package LiquidFunctions
  "Package for calculation of liquid properties with a functional call"
  extends TILMedia.BaseClasses.PartialLiquidFunctions;


  redeclare replaceable function extends specificEntropy_phxi
  algorithm
    s := TILMedia.Internals.LiquidFunctions.specificEntropy_phxi(p,h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false);
  end specificEntropy_phxi;

  redeclare replaceable function extends specificEntropy_pTxi
  algorithm
    s := TILMedia.Internals.LiquidFunctions.specificEntropy_pTxi(p,T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false);
  end specificEntropy_pTxi;

  redeclare replaceable function extends density_Txi
  algorithm
    d := TILMedia.Internals.LiquidFunctions.density_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false);
  end density_Txi;

  redeclare replaceable function extends specificEnthalpy_Txi
  algorithm
    h := TILMedia.Internals.LiquidFunctions.specificEnthalpy_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false);
  end specificEnthalpy_Txi;

  redeclare replaceable function extends pressure_Txi
  algorithm
    p := TILMedia.Internals.LiquidFunctions.pressure_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false);
  end pressure_Txi;

  redeclare replaceable function extends specificIsobaricHeatCapacity_Txi
  algorithm
    cp := TILMedia.Internals.LiquidFunctions.specificIsobaricHeatCapacity_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false);
  end specificIsobaricHeatCapacity_Txi;

  redeclare replaceable function extends
    isobaricThermalExpansionCoefficient_Txi
  algorithm
    beta := TILMedia.Internals.LiquidFunctions.isobaricThermalExpansionCoefficient_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false);
  end isobaricThermalExpansionCoefficient_Txi;

  redeclare replaceable function extends prandtlNumber_Txi
  algorithm
    Pr := TILMedia.Internals.LiquidFunctions.prandtlNumber_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false);
  end prandtlNumber_Txi;

  redeclare replaceable function extends thermalConductivity_Txi
  algorithm
    lambda := TILMedia.Internals.LiquidFunctions.thermalConductivity_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false);
  end thermalConductivity_Txi;

  redeclare replaceable function extends dynamicViscosity_Txi
  algorithm
    eta := TILMedia.Internals.LiquidFunctions.dynamicViscosity_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false);
  end dynamicViscosity_Txi;

  redeclare replaceable function extends density_hxi
  algorithm
    d := TILMedia.Internals.LiquidFunctions.density_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false);
  end density_hxi;

  redeclare replaceable function extends pressure_hxi
  algorithm
    p := TILMedia.Internals.LiquidFunctions.pressure_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false);
  end pressure_hxi;

  redeclare replaceable function extends temperature_hxi
  algorithm
    T := TILMedia.Internals.LiquidFunctions.temperature_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false);
  end temperature_hxi;

  redeclare replaceable function extends specificIsobaricHeatCapacity_hxi
  algorithm
    cp := TILMedia.Internals.LiquidFunctions.specificIsobaricHeatCapacity_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false);
  end specificIsobaricHeatCapacity_hxi;

  redeclare replaceable function extends
    isobaricThermalExpansionCoefficient_hxi
  algorithm
    beta := TILMedia.Internals.LiquidFunctions.isobaricThermalExpansionCoefficient_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false);
  end isobaricThermalExpansionCoefficient_hxi;

  redeclare replaceable function extends prandtlNumber_hxi
  algorithm
    Pr := TILMedia.Internals.LiquidFunctions.prandtlNumber_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false);
  end prandtlNumber_hxi;

  redeclare replaceable function extends thermalConductivity_hxi
  algorithm
    lambda := TILMedia.Internals.LiquidFunctions.thermalConductivity_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false);
  end thermalConductivity_hxi;

  redeclare replaceable function extends dynamicViscosity_hxi
  algorithm
    eta := TILMedia.Internals.LiquidFunctions.dynamicViscosity_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=false);
  end dynamicViscosity_hxi;
end LiquidFunctions;
