within TILMedia;
package GasObjectFunctions
  "Package for calculation of gas vapor properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends .TILMedia.BaseClasses.PartialGasObjectFunctions;

  redeclare replaceable function
    extends density_phxi
  external"C" d = TILMedia_GasObjectFunctions_density_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_density_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end density_phxi;
  redeclare replaceable function
    extends specificEntropy_phxi
  external"C" s = TILMedia_GasObjectFunctions_specificEntropy_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEntropy_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end specificEntropy_phxi;
  redeclare replaceable function
    extends temperature_phxi
  external"C" T = TILMedia_GasObjectFunctions_temperature_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_temperature_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end temperature_phxi;
  redeclare replaceable function
    extends specificIsobaricHeatCapacity_phxi
  external"C" cp = TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end specificIsobaricHeatCapacity_phxi;
  redeclare replaceable function
    extends specificIsochoricHeatCapacity_phxi
  external"C" cv = TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end specificIsochoricHeatCapacity_phxi;
  redeclare replaceable function
    extends isobaricThermalExpansionCoefficient_phxi
  external"C" beta = TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end isobaricThermalExpansionCoefficient_phxi;
  redeclare replaceable function
    extends isothermalCompressibility_phxi
  external"C" kappa = TILMedia_GasObjectFunctions_isothermalCompressibility_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_isothermalCompressibility_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end isothermalCompressibility_phxi;
  redeclare replaceable function
    extends speedOfSound_phxi
  external"C" w = TILMedia_GasObjectFunctions_speedOfSound_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_speedOfSound_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end speedOfSound_phxi;
  redeclare replaceable function
    extends densityDerivativeWRTspecificEnthalpy_phxi
  external"C" drhodh_pxi = TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTspecificEnthalpy_phxi;
  redeclare replaceable function
    extends densityDerivativeWRTpressure_phxi
  external"C" drhodp_hxi = TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTpressure_phxi;
  redeclare replaceable function
    extends densityDerivativeWRTmassFraction_phxin
  external"C" drhodxi_ph = TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_phxin(
        p,
        h,
        xi,
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_phxin(double,double,double*,int, void*);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTmassFraction_phxin;
  redeclare replaceable function
    extends partialPressure_phxin
  external"C" p_i = TILMedia_GasObjectFunctions_partialPressure_phxin(
        p,
        h,
        xi,
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_partialPressure_phxin(double,double,double*,int, void*);",
      Library="TILMedia160ClaRa");
  end partialPressure_phxin;
  redeclare replaceable function
    extends gaseousMassFraction_phxi
  external"C" xi_gas = TILMedia_GasObjectFunctions_gaseousMassFraction_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_gaseousMassFraction_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end gaseousMassFraction_phxi;
  redeclare replaceable function
    extends relativeHumidity_phxi
  external"C" phi = TILMedia_GasObjectFunctions_relativeHumidity_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_relativeHumidity_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end relativeHumidity_phxi;
  redeclare replaceable function
    extends saturationMassFraction_phxi
  external"C" xi_s = TILMedia_GasObjectFunctions_saturationMassFraction_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationMassFraction_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end saturationMassFraction_phxi;
  redeclare replaceable function
    extends saturationHumidityRatio_phxi
  external"C" humRatio_s = TILMedia_GasObjectFunctions_saturationHumidityRatio_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationHumidityRatio_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end saturationHumidityRatio_phxi;
  redeclare replaceable function
    extends specificEnthalpy1px_phxi
  external"C" h1px = TILMedia_GasObjectFunctions_specificEnthalpy1px_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpy1px_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end specificEnthalpy1px_phxi;
  redeclare replaceable function
    extends prandtlNumber_phxi
  external"C" Pr = TILMedia_GasObjectFunctions_prandtlNumber_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_prandtlNumber_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end prandtlNumber_phxi;
  redeclare replaceable function
    extends thermalConductivity_phxi
  external"C" lambda = TILMedia_GasObjectFunctions_thermalConductivity_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_thermalConductivity_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end thermalConductivity_phxi;
  redeclare replaceable function
    extends dynamicViscosity_phxi
  external"C" eta = TILMedia_GasObjectFunctions_dynamicViscosity_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_dynamicViscosity_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end dynamicViscosity_phxi;
  redeclare replaceable function
    extends dewTemperature_phxi
  external"C" T_dew = TILMedia_GasObjectFunctions_dewTemperature_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_dewTemperature_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end dewTemperature_phxi;
  redeclare replaceable function
    extends wetBulbTemperature_phxi
  external"C" T_wetBulb = TILMedia_GasObjectFunctions_wetBulbTemperature_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_wetBulbTemperature_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end wetBulbTemperature_phxi;
  redeclare replaceable function
    extends iceBulbTemperature_phxi
  external"C" T_iceBulb = TILMedia_GasObjectFunctions_iceBulbTemperature_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_iceBulbTemperature_phxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end iceBulbTemperature_phxi;

  redeclare replaceable function
    extends density_psxi
  external"C" d = TILMedia_GasObjectFunctions_density_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_density_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end density_psxi;
  redeclare replaceable function
    extends specificEnthalpy_psxi
  external"C" h = TILMedia_GasObjectFunctions_specificEnthalpy_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpy_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end specificEnthalpy_psxi;
  redeclare replaceable function
    extends temperature_psxi
  external"C" T = TILMedia_GasObjectFunctions_temperature_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_temperature_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end temperature_psxi;
  redeclare replaceable function
    extends specificIsobaricHeatCapacity_psxi
  external"C" cp = TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end specificIsobaricHeatCapacity_psxi;
  redeclare replaceable function
    extends specificIsochoricHeatCapacity_psxi
  external"C" cv = TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end specificIsochoricHeatCapacity_psxi;
  redeclare replaceable function
    extends isobaricThermalExpansionCoefficient_psxi
  external"C" beta = TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end isobaricThermalExpansionCoefficient_psxi;
  redeclare replaceable function
    extends isothermalCompressibility_psxi
  external"C" kappa = TILMedia_GasObjectFunctions_isothermalCompressibility_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_isothermalCompressibility_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end isothermalCompressibility_psxi;
  redeclare replaceable function
    extends speedOfSound_psxi
  external"C" w = TILMedia_GasObjectFunctions_speedOfSound_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_speedOfSound_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end speedOfSound_psxi;
  redeclare replaceable function
    extends densityDerivativeWRTspecificEnthalpy_psxi
  external"C" drhodh_pxi = TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTspecificEnthalpy_psxi;
  redeclare replaceable function
    extends densityDerivativeWRTpressure_psxi
  external"C" drhodp_hxi = TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTpressure_psxi;
  redeclare replaceable function
    extends densityDerivativeWRTmassFraction_psxin
  external"C" drhodxi_ph = TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_psxin(
        p,
        s,
        xi,
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_psxin(double,double,double*,int, void*);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTmassFraction_psxin;
  redeclare replaceable function
    extends partialPressure_psxin
  external"C" p_i = TILMedia_GasObjectFunctions_partialPressure_psxin(
        p,
        s,
        xi,
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_partialPressure_psxin(double,double,double*,int, void*);",
      Library="TILMedia160ClaRa");
  end partialPressure_psxin;
  redeclare replaceable function
    extends gaseousMassFraction_psxi
  external"C" xi_gas = TILMedia_GasObjectFunctions_gaseousMassFraction_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_gaseousMassFraction_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end gaseousMassFraction_psxi;
  redeclare replaceable function
    extends relativeHumidity_psxi
  external"C" phi = TILMedia_GasObjectFunctions_relativeHumidity_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_relativeHumidity_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end relativeHumidity_psxi;
  redeclare replaceable function
    extends saturationMassFraction_psxi
  external"C" xi_s = TILMedia_GasObjectFunctions_saturationMassFraction_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationMassFraction_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end saturationMassFraction_psxi;
  redeclare replaceable function
    extends saturationHumidityRatio_psxi
  external"C" humRatio_s = TILMedia_GasObjectFunctions_saturationHumidityRatio_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationHumidityRatio_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end saturationHumidityRatio_psxi;
  redeclare replaceable function
    extends specificEnthalpy1px_psxi
  external"C" h1px = TILMedia_GasObjectFunctions_specificEnthalpy1px_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpy1px_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end specificEnthalpy1px_psxi;
  redeclare replaceable function
    extends prandtlNumber_psxi
  external"C" Pr = TILMedia_GasObjectFunctions_prandtlNumber_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_prandtlNumber_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end prandtlNumber_psxi;
  redeclare replaceable function
    extends thermalConductivity_psxi
  external"C" lambda = TILMedia_GasObjectFunctions_thermalConductivity_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_thermalConductivity_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end thermalConductivity_psxi;
  redeclare replaceable function
    extends dynamicViscosity_psxi
  external"C" eta = TILMedia_GasObjectFunctions_dynamicViscosity_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_dynamicViscosity_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end dynamicViscosity_psxi;
  redeclare replaceable function
    extends dewTemperature_psxi
  external"C" T_dew = TILMedia_GasObjectFunctions_dewTemperature_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_dewTemperature_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end dewTemperature_psxi;
  redeclare replaceable function
    extends wetBulbTemperature_psxi
  external"C" T_wetBulb = TILMedia_GasObjectFunctions_wetBulbTemperature_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_wetBulbTemperature_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end wetBulbTemperature_psxi;
  redeclare replaceable function
    extends iceBulbTemperature_psxi
  external"C" T_iceBulb = TILMedia_GasObjectFunctions_iceBulbTemperature_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_iceBulbTemperature_psxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end iceBulbTemperature_psxi;

  redeclare replaceable function
    extends density_pTxi
  external"C" d = TILMedia_GasObjectFunctions_density_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_density_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end density_pTxi;
  redeclare replaceable function
    extends specificEnthalpy_pTxi
  external"C" h = TILMedia_GasObjectFunctions_specificEnthalpy_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpy_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end specificEnthalpy_pTxi;
  redeclare replaceable function
    extends specificEntropy_pTxi
  external"C" s = TILMedia_GasObjectFunctions_specificEntropy_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEntropy_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end specificEntropy_pTxi;
  redeclare replaceable function
    extends specificIsobaricHeatCapacity_pTxi
  external"C" cp = TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end specificIsobaricHeatCapacity_pTxi;
  redeclare replaceable function
    extends specificIsochoricHeatCapacity_pTxi
  external"C" cv = TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end specificIsochoricHeatCapacity_pTxi;
  redeclare replaceable function
    extends isobaricThermalExpansionCoefficient_pTxi
  external"C" beta = TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end isobaricThermalExpansionCoefficient_pTxi;
  redeclare replaceable function
    extends isothermalCompressibility_pTxi
  external"C" kappa = TILMedia_GasObjectFunctions_isothermalCompressibility_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_isothermalCompressibility_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end isothermalCompressibility_pTxi;
  redeclare replaceable function
    extends speedOfSound_pTxi
  external"C" w = TILMedia_GasObjectFunctions_speedOfSound_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_speedOfSound_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end speedOfSound_pTxi;
  redeclare replaceable function
    extends densityDerivativeWRTspecificEnthalpy_pTxi
  external"C" drhodh_pxi = TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTspecificEnthalpy_pTxi;
  redeclare replaceable function
    extends densityDerivativeWRTpressure_pTxi
  external"C" drhodp_hxi = TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTpressure_pTxi;
  redeclare replaceable function
    extends densityDerivativeWRTmassFraction_pTxin
  external"C" drhodxi_ph = TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_pTxin(
        p,
        T,
        xi,
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_pTxin(double,double,double*,int, void*);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTmassFraction_pTxin;
  redeclare replaceable function
    extends partialPressure_pTxin
  external"C" p_i = TILMedia_GasObjectFunctions_partialPressure_pTxin(
        p,
        T,
        xi,
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_partialPressure_pTxin(double,double,double*,int, void*);",
      Library="TILMedia160ClaRa");
  end partialPressure_pTxin;
  redeclare replaceable function
    extends gaseousMassFraction_pTxi
  external"C" xi_gas = TILMedia_GasObjectFunctions_gaseousMassFraction_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_gaseousMassFraction_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end gaseousMassFraction_pTxi;
  redeclare replaceable function
    extends relativeHumidity_pTxi
  external"C" phi = TILMedia_GasObjectFunctions_relativeHumidity_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_relativeHumidity_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end relativeHumidity_pTxi;
  redeclare replaceable function
    extends saturationMassFraction_pTxi
  external"C" xi_s = TILMedia_GasObjectFunctions_saturationMassFraction_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationMassFraction_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end saturationMassFraction_pTxi;
  redeclare replaceable function
    extends saturationHumidityRatio_pTxi
  external"C" humRatio_s = TILMedia_GasObjectFunctions_saturationHumidityRatio_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationHumidityRatio_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end saturationHumidityRatio_pTxi;
  redeclare replaceable function
    extends specificEnthalpy1px_pTxi
  external"C" h1px = TILMedia_GasObjectFunctions_specificEnthalpy1px_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpy1px_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end specificEnthalpy1px_pTxi;
  redeclare replaceable function
    extends prandtlNumber_pTxi
  external"C" Pr = TILMedia_GasObjectFunctions_prandtlNumber_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_prandtlNumber_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end prandtlNumber_pTxi;
  redeclare replaceable function
    extends thermalConductivity_pTxi
  external"C" lambda = TILMedia_GasObjectFunctions_thermalConductivity_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_thermalConductivity_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end thermalConductivity_pTxi;
  redeclare replaceable function
    extends dynamicViscosity_pTxi
  external"C" eta = TILMedia_GasObjectFunctions_dynamicViscosity_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_dynamicViscosity_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end dynamicViscosity_pTxi;
  redeclare replaceable function
    extends dewTemperature_pTxi
  external"C" T_dew = TILMedia_GasObjectFunctions_dewTemperature_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_dewTemperature_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end dewTemperature_pTxi;
  redeclare replaceable function
    extends wetBulbTemperature_pTxi
  external"C" T_wetBulb = TILMedia_GasObjectFunctions_wetBulbTemperature_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_wetBulbTemperature_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end wetBulbTemperature_pTxi;
  redeclare replaceable function
    extends iceBulbTemperature_pTxi
  external"C" T_iceBulb = TILMedia_GasObjectFunctions_iceBulbTemperature_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_iceBulbTemperature_pTxi(double,double,double*,void*);",
      Library="TILMedia160ClaRa");
  end iceBulbTemperature_pTxi;


  redeclare replaceable function
    extends saturationPartialPressure_T
  external"C" p_s = TILMedia_GasObjectFunctions_saturationPartialPressure_T(
        T,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationPartialPressure_T(double,void*);",
      Library="TILMedia160ClaRa");
  end saturationPartialPressure_T;
  redeclare replaceable function
    extends specificEnthalpyOfVaporisation_T
  external"C" delta_hv = TILMedia_GasObjectFunctions_specificEnthalpyOfVaporisation_T(
        T,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpyOfVaporisation_T(double,void*);",
      Library="TILMedia160ClaRa");
  end specificEnthalpyOfVaporisation_T;
  redeclare replaceable function
    extends specificEnthalpyOfDesublimation_T
  external"C" delta_hd = TILMedia_GasObjectFunctions_specificEnthalpyOfDesublimation_T(
        T,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpyOfDesublimation_T(double,void*);",
      Library="TILMedia160ClaRa");
  end specificEnthalpyOfDesublimation_T;
  redeclare replaceable function
    extends specificEnthalpyOfPureGas_Tn
  external"C" h_i = TILMedia_GasObjectFunctions_specificEnthalpyOfPureGas_Tn(
        T,
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpyOfPureGas_Tn(double,int, void*);",
      Library="TILMedia160ClaRa");
  end specificEnthalpyOfPureGas_Tn;
  redeclare replaceable function
    extends specificIsobaricHeatCapacityOfPureGas_Tn
  external"C" cp_i = TILMedia_GasObjectFunctions_specificIsobaricHeatCapacityOfPureGas_Tn(
        T,
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsobaricHeatCapacityOfPureGas_Tn(double,int, void*);",
      Library="TILMedia160ClaRa");
  end specificIsobaricHeatCapacityOfPureGas_Tn;


  redeclare replaceable function
    extends averageMolarMass_xi
  external"C" M = TILMedia_GasObjectFunctions_averageMolarMass_xi(
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_averageMolarMass_xi(double*,void*);",
      Library="TILMedia160ClaRa");
  end averageMolarMass_xi;
  redeclare replaceable function
    extends humidityRatio_xi
  external"C" humRatio = TILMedia_GasObjectFunctions_humidityRatio_xi(
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_humidityRatio_xi(double*,void*);",
      Library="TILMedia160ClaRa");
  end humidityRatio_xi;

  redeclare replaceable function
    extends molarMass_n
  external"C" M_i = TILMedia_GasObjectFunctions_molarMass_n(
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_molarMass_n(int, void*);",
      Library="TILMedia160ClaRa");
  end molarMass_n;
  redeclare replaceable function
    extends specificEnthalpyOfFormation_n
  external"C" hF_i = TILMedia_GasObjectFunctions_specificEnthalpyOfFormation_n(
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpyOfFormation_n(int, void*);",
      Library="TILMedia160ClaRa");
  end specificEnthalpyOfFormation_n;
  redeclare replaceable function
    extends freezingPoint
  external"C" T_freeze = TILMedia_GasObjectFunctions_freezingPoint(
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_freezingPoint(void*);",
      Library="TILMedia160ClaRa");
  end freezingPoint;



  redeclare replaceable function extends saturationMassFraction_pTxidg
  external"C" xi_s = TILMedia_Gas_saturationMassFraction_pTxidg(
        p,
        T,
        xi_dryGas,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_Gas_saturationMassFraction_pTxidg(double, double, double*, void*);",
      Library="TILMedia160ClaRa");
  end saturationMassFraction_pTxidg;

end GasObjectFunctions;
