within TILMedia.Internals;
package GasFunctions
  extends TILMedia.Internals.ClassTypes.ModelPackage;

function density_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Density d "Density";
external "C" d = TILMedia_GasFunctions_density_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_density_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end density_phxi;

function specificEntropy_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEntropy s "Specific entropy";
external "C" s = TILMedia_GasFunctions_specificEntropy_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_specificEntropy_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end specificEntropy_phxi;

function temperature_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Temperature T "Temperature";
external "C" T = TILMedia_GasFunctions_temperature_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_temperature_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end temperature_phxi;

function specificIsobaricHeatCapacity_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
external "C" cp = TILMedia_GasFunctions_specificIsobaricHeatCapacity_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_specificIsobaricHeatCapacity_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end specificIsobaricHeatCapacity_phxi;

function specificIsochoricHeatCapacity_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
external "C" cv = TILMedia_GasFunctions_specificIsochoricHeatCapacity_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_specificIsochoricHeatCapacity_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end specificIsochoricHeatCapacity_phxi;

function isobaricThermalExpansionCoefficient_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
external "C" beta = TILMedia_GasFunctions_isobaricThermalExpansionCoefficient_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_isobaricThermalExpansionCoefficient_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end isobaricThermalExpansionCoefficient_phxi;

function isothermalCompressibility_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Compressibility kappa "Isothermal compressibility";
external "C" kappa = TILMedia_GasFunctions_isothermalCompressibility_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_isothermalCompressibility_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end isothermalCompressibility_phxi;

function speedOfSound_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Velocity w "Speed of sound";
external "C" w = TILMedia_GasFunctions_speedOfSound_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_speedOfSound_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end speedOfSound_phxi;

function densityDerivativeWRTspecificEnthalpy_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
external "C" drhodh_pxi = TILMedia_GasFunctions_densityDerivativeWRTspecificEnthalpy_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_densityDerivativeWRTspecificEnthalpy_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end densityDerivativeWRTspecificEnthalpy_phxi;

function densityDerivativeWRTpressure_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
external "C" drhodp_hxi = TILMedia_GasFunctions_densityDerivativeWRTpressure_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_densityDerivativeWRTpressure_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end densityDerivativeWRTpressure_phxi;

function densityDerivativeWRTmassFraction_phxin
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
external "C" drhodxi_ph = TILMedia_GasFunctions_densityDerivativeWRTmassFraction_phxin(p, h, xi, compNo, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_densityDerivativeWRTmassFraction_phxin(double,double,double*,int, const char*, int, int);",Library="TILMedia140ClaRa");

end densityDerivativeWRTmassFraction_phxin;

function partialPressure_phxin
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.PartialPressure p_i "Partial pressure";
external "C" p_i = TILMedia_GasFunctions_partialPressure_phxin(p, h, xi, compNo, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_partialPressure_phxin(double,double,double*,int, const char*, int, int);",Library="TILMedia140ClaRa");

end partialPressure_phxin;

function gaseousMassFraction_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
external "C" xi_gas = TILMedia_GasFunctions_gaseousMassFraction_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_gaseousMassFraction_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end gaseousMassFraction_phxi;

function relativeHumidity_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
external "C" phi = TILMedia_GasFunctions_relativeHumidity_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_relativeHumidity_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end relativeHumidity_phxi;

function saturationMassFraction_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.MassFraction xi_s "Saturation mass fraction of condensing component";
external "C" xi_s = TILMedia_GasFunctions_saturationMassFraction_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_saturationMassFraction_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end saturationMassFraction_phxi;

function saturationHumidityRatio_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output Real humRatio_s "Saturation content of condensing component aka saturation humidity ratio";
external "C" humRatio_s = TILMedia_GasFunctions_saturationHumidityRatio_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_saturationHumidityRatio_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end saturationHumidityRatio_phxi;

function specificEnthalpy1px_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEnthalpy h1px "Specific enthalpy h related to the mass of components that cannot condense";
external "C" h1px = TILMedia_GasFunctions_specificEnthalpy1px_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_specificEnthalpy1px_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end specificEnthalpy1px_phxi;

function prandtlNumber_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.PrandtlNumber Pr "Prandtl number";
external "C" Pr = TILMedia_GasFunctions_prandtlNumber_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_prandtlNumber_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end prandtlNumber_phxi;

function thermalConductivity_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.ThermalConductivity lambda "Thermal conductivity";
external "C" lambda = TILMedia_GasFunctions_thermalConductivity_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_thermalConductivity_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end thermalConductivity_phxi;

function dynamicViscosity_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.DynamicViscosity eta "Dynamic viscosity";
external "C" eta = TILMedia_GasFunctions_dynamicViscosity_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_dynamicViscosity_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end dynamicViscosity_phxi;

function wetBulbTemperature_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Temperature T_wetBulb "Wet bulb temperature";
external "C" T_wetBulb = TILMedia_GasFunctions_wetBulbTemperatureLiquid_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_wetBulbTemperatureLiquid_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end wetBulbTemperature_phxi;

function iceBulbTemperature_phxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Temperature T_wetBulb "Wet bulb temperature";
external "C" T_wetBulb = TILMedia_GasFunctions_wetBulbTemperatureSolid_phxi(p, h, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_wetBulbTemperatureSolid_phxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end iceBulbTemperature_phxi;

function density_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Density d "Density";
external "C" d = TILMedia_GasFunctions_density_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_density_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end density_psxi;

function specificEnthalpy_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEnthalpy h "Specific enthalpy";
external "C" h = TILMedia_GasFunctions_specificEnthalpy_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_specificEnthalpy_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end specificEnthalpy_psxi;

function temperature_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Temperature T "Temperature";
external "C" T = TILMedia_GasFunctions_temperature_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_temperature_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end temperature_psxi;

function specificIsobaricHeatCapacity_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
external "C" cp = TILMedia_GasFunctions_specificIsobaricHeatCapacity_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_specificIsobaricHeatCapacity_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end specificIsobaricHeatCapacity_psxi;

function specificIsochoricHeatCapacity_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
external "C" cv = TILMedia_GasFunctions_specificIsochoricHeatCapacity_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_specificIsochoricHeatCapacity_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end specificIsochoricHeatCapacity_psxi;

function isobaricThermalExpansionCoefficient_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
external "C" beta = TILMedia_GasFunctions_isobaricThermalExpansionCoefficient_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_isobaricThermalExpansionCoefficient_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end isobaricThermalExpansionCoefficient_psxi;

function isothermalCompressibility_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Compressibility kappa "Isothermal compressibility";
external "C" kappa = TILMedia_GasFunctions_isothermalCompressibility_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_isothermalCompressibility_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end isothermalCompressibility_psxi;

function speedOfSound_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Velocity w "Speed of sound";
external "C" w = TILMedia_GasFunctions_speedOfSound_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_speedOfSound_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end speedOfSound_psxi;

function densityDerivativeWRTspecificEnthalpy_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
external "C" drhodh_pxi = TILMedia_GasFunctions_densityDerivativeWRTspecificEnthalpy_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_densityDerivativeWRTspecificEnthalpy_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end densityDerivativeWRTspecificEnthalpy_psxi;

function densityDerivativeWRTpressure_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
external "C" drhodp_hxi = TILMedia_GasFunctions_densityDerivativeWRTpressure_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_densityDerivativeWRTpressure_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end densityDerivativeWRTpressure_psxi;

function densityDerivativeWRTmassFraction_psxin
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
external "C" drhodxi_ph = TILMedia_GasFunctions_densityDerivativeWRTmassFraction_psxin(p, s, xi, compNo, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_densityDerivativeWRTmassFraction_psxin(double,double,double*,int, const char*, int, int);",Library="TILMedia140ClaRa");

end densityDerivativeWRTmassFraction_psxin;

function partialPressure_psxin
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.PartialPressure p_i "Partial pressure";
external "C" p_i = TILMedia_GasFunctions_partialPressure_psxin(p, s, xi, compNo, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_partialPressure_psxin(double,double,double*,int, const char*, int, int);",Library="TILMedia140ClaRa");

end partialPressure_psxin;

function gaseousMassFraction_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
external "C" xi_gas = TILMedia_GasFunctions_gaseousMassFraction_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_gaseousMassFraction_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end gaseousMassFraction_psxi;

function relativeHumidity_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
external "C" phi = TILMedia_GasFunctions_relativeHumidity_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_relativeHumidity_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end relativeHumidity_psxi;

function saturationMassFraction_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.MassFraction xi_s "Saturation mass fraction of condensing component";
external "C" xi_s = TILMedia_GasFunctions_saturationMassFraction_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_saturationMassFraction_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end saturationMassFraction_psxi;

function saturationHumidityRatio_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output Real humRatio_s "Saturation content of condensing component aka saturation humidity ratio";
external "C" humRatio_s = TILMedia_GasFunctions_saturationHumidityRatio_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_saturationHumidityRatio_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end saturationHumidityRatio_psxi;

function specificEnthalpy1px_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEnthalpy h1px "Specific enthalpy h related to the mass of components that cannot condense";
external "C" h1px = TILMedia_GasFunctions_specificEnthalpy1px_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_specificEnthalpy1px_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end specificEnthalpy1px_psxi;

function prandtlNumber_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.PrandtlNumber Pr "Prandtl number";
external "C" Pr = TILMedia_GasFunctions_prandtlNumber_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_prandtlNumber_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end prandtlNumber_psxi;

function thermalConductivity_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.ThermalConductivity lambda "Thermal conductivity";
external "C" lambda = TILMedia_GasFunctions_thermalConductivity_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_thermalConductivity_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end thermalConductivity_psxi;

function dynamicViscosity_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.DynamicViscosity eta "Dynamic viscosity";
external "C" eta = TILMedia_GasFunctions_dynamicViscosity_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_dynamicViscosity_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end dynamicViscosity_psxi;

function wetBulbTemperature_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Temperature T_wetBulb "Wet bulb temperature";
external "C" T_wetBulb = TILMedia_GasFunctions_wetBulbTemperatureLiquid_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_wetBulbTemperatureLiquid_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end wetBulbTemperature_psxi;

function iceBulbTemperature_psxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.SpecificEntropy s "Specific entropy";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Temperature T_wetBulb "Wet bulb temperature";
external "C" T_wetBulb = TILMedia_GasFunctions_wetBulbTemperatureSolid_psxi(p, s, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_wetBulbTemperatureSolid_psxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end iceBulbTemperature_psxi;

function density_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Density d "Density";
external "C" d = TILMedia_GasFunctions_density_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_density_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end density_pTxi;

function specificEnthalpy_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEnthalpy h "Specific enthalpy";
external "C" h = TILMedia_GasFunctions_specificEnthalpy_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_specificEnthalpy_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end specificEnthalpy_pTxi;

function specificEntropy_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEntropy s "Specific entropy";
external "C" s = TILMedia_GasFunctions_specificEntropy_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_specificEntropy_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end specificEntropy_pTxi;

function specificIsobaricHeatCapacity_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
external "C" cp = TILMedia_GasFunctions_specificIsobaricHeatCapacity_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_specificIsobaricHeatCapacity_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end specificIsobaricHeatCapacity_pTxi;

function specificIsochoricHeatCapacity_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
external "C" cv = TILMedia_GasFunctions_specificIsochoricHeatCapacity_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_specificIsochoricHeatCapacity_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end specificIsochoricHeatCapacity_pTxi;

function isobaricThermalExpansionCoefficient_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
external "C" beta = TILMedia_GasFunctions_isobaricThermalExpansionCoefficient_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_isobaricThermalExpansionCoefficient_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end isobaricThermalExpansionCoefficient_pTxi;

function isothermalCompressibility_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Compressibility kappa "Isothermal compressibility";
external "C" kappa = TILMedia_GasFunctions_isothermalCompressibility_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_isothermalCompressibility_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end isothermalCompressibility_pTxi;

function speedOfSound_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Velocity w "Speed of sound";
external "C" w = TILMedia_GasFunctions_speedOfSound_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_speedOfSound_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end speedOfSound_pTxi;

function densityDerivativeWRTspecificEnthalpy_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
external "C" drhodh_pxi = TILMedia_GasFunctions_densityDerivativeWRTspecificEnthalpy_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_densityDerivativeWRTspecificEnthalpy_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end densityDerivativeWRTspecificEnthalpy_pTxi;

function densityDerivativeWRTpressure_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
external "C" drhodp_hxi = TILMedia_GasFunctions_densityDerivativeWRTpressure_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_densityDerivativeWRTpressure_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end densityDerivativeWRTpressure_pTxi;

function densityDerivativeWRTmassFraction_pTxin
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
external "C" drhodxi_ph = TILMedia_GasFunctions_densityDerivativeWRTmassFraction_pTxin(p, T, xi, compNo, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_densityDerivativeWRTmassFraction_pTxin(double,double,double*,int, const char*, int, int);",Library="TILMedia140ClaRa");

end densityDerivativeWRTmassFraction_pTxin;

function partialPressure_pTxin
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input Integer compNo "Component ID";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.PartialPressure p_i "Partial pressure";
external "C" p_i = TILMedia_GasFunctions_partialPressure_pTxin(p, T, xi, compNo, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_partialPressure_pTxin(double,double,double*,int, const char*, int, int);",Library="TILMedia140ClaRa");

end partialPressure_pTxin;

function gaseousMassFraction_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
external "C" xi_gas = TILMedia_GasFunctions_gaseousMassFraction_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_gaseousMassFraction_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end gaseousMassFraction_pTxi;

function relativeHumidity_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
external "C" phi = TILMedia_GasFunctions_relativeHumidity_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_relativeHumidity_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end relativeHumidity_pTxi;

function saturationMassFraction_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.MassFraction xi_s "Saturation mass fraction of condensing component";
external "C" xi_s = TILMedia_GasFunctions_saturationMassFraction_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_saturationMassFraction_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end saturationMassFraction_pTxi;

function saturationHumidityRatio_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output Real humRatio_s "Saturation content of condensing component aka saturation humidity ratio";
external "C" humRatio_s = TILMedia_GasFunctions_saturationHumidityRatio_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_saturationHumidityRatio_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end saturationHumidityRatio_pTxi;

function specificEnthalpy1px_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEnthalpy h1px "Specific enthalpy h related to the mass of components that cannot condense";
external "C" h1px = TILMedia_GasFunctions_specificEnthalpy1px_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_specificEnthalpy1px_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end specificEnthalpy1px_pTxi;

function prandtlNumber_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.PrandtlNumber Pr "Prandtl number";
external "C" Pr = TILMedia_GasFunctions_prandtlNumber_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_prandtlNumber_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end prandtlNumber_pTxi;

function thermalConductivity_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.ThermalConductivity lambda "Thermal conductivity";
external "C" lambda = TILMedia_GasFunctions_thermalConductivity_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_thermalConductivity_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end thermalConductivity_pTxi;

function dynamicViscosity_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.DynamicViscosity eta "Dynamic viscosity";
external "C" eta = TILMedia_GasFunctions_dynamicViscosity_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_dynamicViscosity_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end dynamicViscosity_pTxi;

function wetBulbTemperature_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Temperature T_wetBulb "Wet bulb temperature";
external "C" T_wetBulb = TILMedia_GasFunctions_wetBulbTemperatureLiquid_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_wetBulbTemperatureLiquid_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end wetBulbTemperature_pTxi;

function iceBulbTemperature_pTxi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.AbsolutePressure p "Pressure";
  input SI.Temperature T "Temperature";
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Temperature T_wetBulb "Wet bulb temperature";
external "C" T_wetBulb = TILMedia_GasFunctions_wetBulbTemperatureSolid_pTxi(p, T, xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_wetBulbTemperatureSolid_pTxi(double,double,double*,const char*, int, int);",Library="TILMedia140ClaRa");

end iceBulbTemperature_pTxi;

function saturationPartialPressure_T
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.Temperature T "Temperature";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.PartialPressure p_s "Saturation partial pressure of condensing component";
external "C" p_s = TILMedia_GasFunctions_saturationPartialPressure_T(T, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_saturationPartialPressure_T(double,const char*, int, int);",Library="TILMedia140ClaRa");

end saturationPartialPressure_T;

function specificEnthalpyOfVaporisation_T
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.Temperature T "Temperature";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEnthalpy delta_hv "Specific enthalpy of vaporisation of condensing component";
external "C" delta_hv = TILMedia_GasFunctions_specificEnthalpyOfVaporisation_T(T, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_specificEnthalpyOfVaporisation_T(double,const char*, int, int);",Library="TILMedia140ClaRa");

end specificEnthalpyOfVaporisation_T;

function specificEnthalpyOfDesublimation_T
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.Temperature T "Temperature";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEnthalpy delta_hd "Specific enthalpy of desublimation of condensing component";
external "C" delta_hd = TILMedia_GasFunctions_specificEnthalpyOfDesublimation_T(T, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_specificEnthalpyOfDesublimation_T(double,const char*, int, int);",Library="TILMedia140ClaRa");

end specificEnthalpyOfDesublimation_T;

function specificEnthalpyOfPureGas_Tn
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.Temperature T "Temperature";
  input Integer compNo "Component ID";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEnthalpy h_i "Specific enthalpy of theoretical pure component";
external "C" h_i = TILMedia_GasFunctions_specificEnthalpyOfPureGas_Tn(T, compNo, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_specificEnthalpyOfPureGas_Tn(double,int, const char*, int, int);",Library="TILMedia140ClaRa");

end specificEnthalpyOfPureGas_Tn;

function specificIsobaricHeatCapacityOfPureGas_Tn
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.Temperature T "Temperature";
  input Integer compNo "Component ID";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificHeatCapacity cp_i "Specific isobaric heat capacity of theoretical pure component";
external "C" cp_i = TILMedia_GasFunctions_specificIsobaricHeatCapacityOfPureGas_Tn(T, compNo, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_specificIsobaricHeatCapacityOfPureGas_Tn(double,int, const char*, int, int);",Library="TILMedia140ClaRa");

end specificIsobaricHeatCapacityOfPureGas_Tn;

function averageMolarMass_xi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.MolarMass M "Average molar mass";
external "C" M = TILMedia_GasFunctions_averageMolarMass_xi(xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_averageMolarMass_xi(double*,const char*, int, int);",Library="TILMedia140ClaRa");

end averageMolarMass_xi;

function humidityRatio_xi
  extends TILMedia.BaseClasses.PartialGasFunction;
  input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output Real humRatio "Content of condensing component aka humidity ratio";
external "C" humRatio = TILMedia_GasFunctions_humidityRatio_xi(xi, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_humidityRatio_xi(double*,const char*, int, int);",Library="TILMedia140ClaRa");

end humidityRatio_xi;

function molarMass_n
  extends TILMedia.BaseClasses.PartialGasFunction;
  input Integer compNo "Component ID";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.MolarMass M_i "Molar mass of component i";
external "C" M_i = TILMedia_GasFunctions_molarMass_n(compNo, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_molarMass_n(int, const char*, int, int);",Library="TILMedia140ClaRa");

end molarMass_n;

function specificEnthalpyOfFormation_n
  extends TILMedia.BaseClasses.PartialGasFunction;
  input Integer compNo "Component ID";
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.SpecificEnthalpy hF_i "Specific enthalpy of formation";
external "C" hF_i = TILMedia_GasFunctions_specificEnthalpyOfFormation_n(compNo, gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_specificEnthalpyOfFormation_n(int, const char*, int, int);",Library="TILMedia140ClaRa");

end specificEnthalpyOfFormation_n;

function freezingPoint
  extends TILMedia.BaseClasses.PartialGasFunction;
  input TILMedia.Internals.GasName gasName "Gas name";
  input Integer nc "Number of components";
  input Integer condensingIndex "Index of condensing component";
  output SI.Temperature T_freeze "Freezing point of condensing component";
external "C" T_freeze = TILMedia_GasFunctions_freezingPoint(gasName, nc, condensingIndex)
  annotation(__iti_dllNoExport = true,Include="double TILMedia_GasFunctions_freezingPoint(const char*, int, int);",Library="TILMedia140ClaRa");

end freezingPoint;
end GasFunctions;
