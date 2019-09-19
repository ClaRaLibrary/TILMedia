within TILMedia;
package GasObjectFunctions
  "Package for calculation of gas vapor properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends TILMedia.BaseClasses.PartialGasObjectFunctions;

  class GasPointerExternalObject
    extends ExternalObject;
    function constructor "get memory"
      input String mediumName;
      input Integer flags;
      input Real[:] xi;
      input Integer nc;
      input Integer condensingIndex;
      input String instanceName;
      output GasPointerExternalObject gasPointer;
    protected
      Integer nc_propertyCalculation=1;
    external "C" gasPointer = TILMedia_Gas_createExternalObject(
            mediumName,
            flags,
            xi,
            nc,
            condensingIndex,
            instanceName) annotation (
        __iti_dllNoExport=true,
        Include="
/* uncomment for source code version
#ifndef TILMEDIA_REAL_TIME
#define TILMEDIA_REAL_TIME
#define TILMEDIA_STATIC_LIBRARY
#include \"TILMediaTotal.c\"
#endif
*/
#ifndef TILMEDIAGASCONSTRUCTOR
#define TILMEDIAGASCONSTRUCTOR
#if defined(WSM_VERSION) || defined(DYMOLA_STATIC) || (defined(ITI_CRT_INCLUDE) && !defined(ITI_COMP_SIM))
void* TILMedia_Gas_createExternalObject_errorInterface(const char* gasMixtureName, int flags, double* xi, int _nc, int condensingIndex, const char* instanceName, void* formatMessage, void* formatError, void* dymolaErrorLev);
#if defined(DYMOLA_STATIC)
#ifndef _WIN32
#define __stdcall
#endif
double __stdcall TILMedia_DymosimErrorLevWrapper_Gas(const char* message, int level) {
    return DymosimErrorLev(message, level);
}
#endif
void* TILMedia_Gas_createExternalObject(const char* gasMixtureName, int flags, double* xi, int _nc, int condensingIndex, const char* instanceName) {
#if defined(DYMOLA_STATIC)
    return TILMedia_Gas_createExternalObject_errorInterface(gasMixtureName, flags, xi, _nc, condensingIndex, instanceName, (void*)ModelicaFormatMessage, (void*)ModelicaFormatError, (void*)TILMedia_DymosimErrorLevWrapper_Gas);
#else
    return TILMedia_Gas_createExternalObject_errorInterface(gasMixtureName, flags, xi, _nc, condensingIndex, instanceName, (void*)ModelicaFormatMessage, (void*)ModelicaFormatError, 0);
#endif
}
#endif
#endif
",      Library="TILMedia141ClaRa");
    end constructor;

    function destructor "free memory"
      input GasPointerExternalObject gasPointer;
    external "C" TILMedia_Gas_destroyExternalObject(gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_Gas_destroyExternalObject(void*);",
        Library="TILMedia141ClaRa");
    end destructor;
  end GasPointerExternalObject;

  redeclare replaceable function extends density_phxi(redeclare replaceable input
            GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" d = TILMedia_GasObjectFunctions_density_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_density_phxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end density_phxi;

  redeclare replaceable function extends specificEntropy_phxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" s = TILMedia_GasObjectFunctions_specificEntropy_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEntropy_phxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end specificEntropy_phxi;

  redeclare replaceable function extends temperature_phxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" T = TILMedia_GasObjectFunctions_temperature_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_temperature_phxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end temperature_phxi;

  redeclare replaceable function extends specificIsobaricHeatCapacity_phxi(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" cp =
      TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_phxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end specificIsobaricHeatCapacity_phxi;

  redeclare replaceable function extends specificIsochoricHeatCapacity_phxi(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" cv =
      TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_phxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end specificIsochoricHeatCapacity_phxi;

  redeclare replaceable function extends
    isobaricThermalExpansionCoefficient_phxi(redeclare replaceable input
      GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" beta =
      TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_phxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end isobaricThermalExpansionCoefficient_phxi;

  redeclare replaceable function extends isothermalCompressibility_phxi(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" kappa =
      TILMedia_GasObjectFunctions_isothermalCompressibility_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_isothermalCompressibility_phxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end isothermalCompressibility_phxi;

  redeclare replaceable function extends speedOfSound_phxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" w = TILMedia_GasObjectFunctions_speedOfSound_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_speedOfSound_phxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end speedOfSound_phxi;

  redeclare replaceable function extends
    densityDerivativeWRTspecificEnthalpy_phxi


  external "C" drhodh_pxi =
      TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_phxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end densityDerivativeWRTspecificEnthalpy_phxi;

  redeclare replaceable function extends densityDerivativeWRTpressure_phxi(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" drhodp_hxi =
      TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_phxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end densityDerivativeWRTpressure_phxi;

  redeclare replaceable function extends densityDerivativeWRTmassFraction_phxin(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" drhodxi_ph =
      TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_phxin(
        p,
        h,
        xi,
        compNo,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_phxin(double, double, double*,int, void*);",
      Library="TILMedia141ClaRa");

  end densityDerivativeWRTmassFraction_phxin;

  redeclare replaceable function extends partialPressure_phxin(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" p_i = TILMedia_GasObjectFunctions_partialPressure_phxin(
        p,
        h,
        xi,
        compNo,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_partialPressure_phxin(double, double, double*,int, void*);",
      Library="TILMedia141ClaRa");

  end partialPressure_phxin;

  redeclare replaceable function extends gaseousMassFraction_phxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" xi_gas = TILMedia_GasObjectFunctions_gaseousMassFraction_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_gaseousMassFraction_phxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end gaseousMassFraction_phxi;

  redeclare replaceable function extends relativeHumidity_phxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" phi = TILMedia_GasObjectFunctions_relativeHumidity_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_relativeHumidity_phxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end relativeHumidity_phxi;

  redeclare replaceable function extends saturationMassFraction_phxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" xi_s = TILMedia_GasObjectFunctions_saturationMassFraction_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationMassFraction_phxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end saturationMassFraction_phxi;

  redeclare replaceable function extends saturationHumidityRatio_phxi(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" humRatio_s =
      TILMedia_GasObjectFunctions_saturationHumidityRatio_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationHumidityRatio_phxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end saturationHumidityRatio_phxi;

  redeclare replaceable function extends specificEnthalpy1px_phxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" h1px = TILMedia_GasObjectFunctions_specificEnthalpy1px_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpy1px_phxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end specificEnthalpy1px_phxi;

  redeclare replaceable function extends prandtlNumber_phxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" Pr = TILMedia_GasObjectFunctions_prandtlNumber_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_prandtlNumber_phxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end prandtlNumber_phxi;

  redeclare replaceable function extends thermalConductivity_phxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" lambda = TILMedia_GasObjectFunctions_thermalConductivity_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_thermalConductivity_phxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end thermalConductivity_phxi;

  redeclare replaceable function extends dynamicViscosity_phxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" eta = TILMedia_GasObjectFunctions_dynamicViscosity_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_dynamicViscosity_phxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end dynamicViscosity_phxi;

  redeclare replaceable function extends density_psxi(redeclare replaceable input
            GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" d = TILMedia_GasObjectFunctions_density_psxi(
        p,
        s,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_density_psxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end density_psxi;

  redeclare replaceable function extends specificEnthalpy_psxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" h = TILMedia_GasObjectFunctions_specificEnthalpy_psxi(
        p,
        s,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpy_psxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end specificEnthalpy_psxi;

  redeclare replaceable function extends temperature_psxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" T = TILMedia_GasObjectFunctions_temperature_psxi(
        p,
        s,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_temperature_psxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end temperature_psxi;

  redeclare replaceable function extends specificIsobaricHeatCapacity_psxi(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" cp =
      TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_psxi(
        p,
        s,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_psxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end specificIsobaricHeatCapacity_psxi;

  redeclare replaceable function extends specificIsochoricHeatCapacity_psxi(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" cv =
      TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_psxi(
        p,
        s,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_psxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end specificIsochoricHeatCapacity_psxi;

  redeclare replaceable function extends
    isobaricThermalExpansionCoefficient_psxi(redeclare replaceable input
      GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" beta =
      TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_psxi(
        p,
        s,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_psxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end isobaricThermalExpansionCoefficient_psxi;

  redeclare replaceable function extends isothermalCompressibility_psxi(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" kappa =
      TILMedia_GasObjectFunctions_isothermalCompressibility_psxi(
        p,
        s,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_isothermalCompressibility_psxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end isothermalCompressibility_psxi;

  redeclare replaceable function extends speedOfSound_psxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" w = TILMedia_GasObjectFunctions_speedOfSound_psxi(
        p,
        s,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_speedOfSound_psxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end speedOfSound_psxi;

  redeclare replaceable function extends
    densityDerivativeWRTspecificEnthalpy_psxi


  external "C" drhodh_pxi =
      TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_psxi(
        p,
        s,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_psxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end densityDerivativeWRTspecificEnthalpy_psxi;

  redeclare replaceable function extends densityDerivativeWRTpressure_psxi(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" drhodp_hxi =
      TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_psxi(
        p,
        s,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_psxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end densityDerivativeWRTpressure_psxi;

  redeclare replaceable function extends densityDerivativeWRTmassFraction_psxin(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" drhodxi_ph =
      TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_psxin(
        p,
        s,
        xi,
        compNo,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_psxin(double, double, double*,int, void*);",
      Library="TILMedia141ClaRa");

  end densityDerivativeWRTmassFraction_psxin;

  redeclare replaceable function extends partialPressure_psxin(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" p_i = TILMedia_GasObjectFunctions_partialPressure_psxin(
        p,
        s,
        xi,
        compNo,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_partialPressure_psxin(double, double, double*,int, void*);",
      Library="TILMedia141ClaRa");

  end partialPressure_psxin;

  redeclare replaceable function extends gaseousMassFraction_psxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" xi_gas = TILMedia_GasObjectFunctions_gaseousMassFraction_psxi(
        p,
        s,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_gaseousMassFraction_psxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end gaseousMassFraction_psxi;

  redeclare replaceable function extends relativeHumidity_psxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" phi = TILMedia_GasObjectFunctions_relativeHumidity_psxi(
        p,
        s,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_relativeHumidity_psxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end relativeHumidity_psxi;

  redeclare replaceable function extends saturationMassFraction_psxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" xi_s = TILMedia_GasObjectFunctions_saturationMassFraction_psxi(
        p,
        s,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationMassFraction_psxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end saturationMassFraction_psxi;

  redeclare replaceable function extends saturationHumidityRatio_psxi(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" humRatio_s =
      TILMedia_GasObjectFunctions_saturationHumidityRatio_psxi(
        p,
        s,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationHumidityRatio_psxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end saturationHumidityRatio_psxi;

  redeclare replaceable function extends specificEnthalpy1px_psxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" h1px = TILMedia_GasObjectFunctions_specificEnthalpy1px_psxi(
        p,
        s,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpy1px_psxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end specificEnthalpy1px_psxi;

  redeclare replaceable function extends prandtlNumber_psxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" Pr = TILMedia_GasObjectFunctions_prandtlNumber_psxi(
        p,
        s,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_prandtlNumber_psxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end prandtlNumber_psxi;

  redeclare replaceable function extends thermalConductivity_psxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" lambda = TILMedia_GasObjectFunctions_thermalConductivity_psxi(
        p,
        s,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_thermalConductivity_psxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end thermalConductivity_psxi;

  redeclare replaceable function extends dynamicViscosity_psxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" eta = TILMedia_GasObjectFunctions_dynamicViscosity_psxi(
        p,
        s,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_dynamicViscosity_psxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end dynamicViscosity_psxi;

  redeclare replaceable function extends density_pTxi(redeclare replaceable input
            GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" d = TILMedia_GasObjectFunctions_density_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_density_pTxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end density_pTxi;

  redeclare replaceable function extends specificEnthalpy_pTxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" h = TILMedia_GasObjectFunctions_specificEnthalpy_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpy_pTxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end specificEnthalpy_pTxi;

  redeclare replaceable function extends specificEntropy_pTxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" s = TILMedia_GasObjectFunctions_specificEntropy_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEntropy_pTxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end specificEntropy_pTxi;

  redeclare replaceable function extends specificIsobaricHeatCapacity_pTxi(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" cp =
      TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_pTxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end specificIsobaricHeatCapacity_pTxi;

  redeclare replaceable function extends specificIsochoricHeatCapacity_pTxi(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" cv =
      TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_pTxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end specificIsochoricHeatCapacity_pTxi;

  redeclare replaceable function extends
    isobaricThermalExpansionCoefficient_pTxi(redeclare replaceable input
      GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" beta =
      TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_pTxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end isobaricThermalExpansionCoefficient_pTxi;

  redeclare replaceable function extends isothermalCompressibility_pTxi(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" kappa =
      TILMedia_GasObjectFunctions_isothermalCompressibility_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_isothermalCompressibility_pTxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end isothermalCompressibility_pTxi;

  redeclare replaceable function extends speedOfSound_pTxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" w = TILMedia_GasObjectFunctions_speedOfSound_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_speedOfSound_pTxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end speedOfSound_pTxi;

  redeclare replaceable function extends
    densityDerivativeWRTspecificEnthalpy_pTxi(redeclare replaceable input
      GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" drhodh_pxi =
      TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_pTxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end densityDerivativeWRTspecificEnthalpy_pTxi;

  redeclare replaceable function extends densityDerivativeWRTpressure_pTxi(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" drhodp_hxi =
      TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_pTxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end densityDerivativeWRTpressure_pTxi;

  redeclare replaceable function extends densityDerivativeWRTmassFraction_pTxin(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" drhodxi_ph =
      TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_pTxin(
        p,
        T,
        xi,
        compNo,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_pTxin(double, double, double*,int, void*);",
      Library="TILMedia141ClaRa");

  end densityDerivativeWRTmassFraction_pTxin;

  redeclare replaceable function extends partialPressure_pTxin(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" p_i = TILMedia_GasObjectFunctions_partialPressure_pTxin(
        p,
        T,
        xi,
        compNo,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_partialPressure_pTxin(double, double, double*,int, void*);",
      Library="TILMedia141ClaRa");

  end partialPressure_pTxin;

  redeclare replaceable function extends gaseousMassFraction_pTxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" xi_gas = TILMedia_GasObjectFunctions_gaseousMassFraction_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_gaseousMassFraction_pTxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end gaseousMassFraction_pTxi;

  redeclare replaceable function extends relativeHumidity_pTxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" phi = TILMedia_GasObjectFunctions_relativeHumidity_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_relativeHumidity_pTxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end relativeHumidity_pTxi;

  redeclare replaceable function extends saturationMassFraction_pTxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" xi_s = TILMedia_GasObjectFunctions_saturationMassFraction_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationMassFraction_pTxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end saturationMassFraction_pTxi;

  redeclare replaceable function extends saturationHumidityRatio_pTxi(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" humRatio_s =
      TILMedia_GasObjectFunctions_saturationHumidityRatio_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationHumidityRatio_pTxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end saturationHumidityRatio_pTxi;

  redeclare replaceable function extends specificEnthalpy1px_pTxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" h1px = TILMedia_GasObjectFunctions_specificEnthalpy1px_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpy1px_pTxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end specificEnthalpy1px_pTxi;

  redeclare replaceable function extends prandtlNumber_pTxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" Pr = TILMedia_GasObjectFunctions_prandtlNumber_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_prandtlNumber_pTxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end prandtlNumber_pTxi;

  redeclare replaceable function extends thermalConductivity_pTxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" lambda = TILMedia_GasObjectFunctions_thermalConductivity_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_thermalConductivity_pTxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end thermalConductivity_pTxi;

  redeclare replaceable function extends dynamicViscosity_pTxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" eta = TILMedia_GasObjectFunctions_dynamicViscosity_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_dynamicViscosity_pTxi(double, double, double*,void*);",
      Library="TILMedia141ClaRa");

  end dynamicViscosity_pTxi;

  redeclare replaceable function extends saturationPartialPressure_T(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" p_s = TILMedia_GasObjectFunctions_saturationPartialPressure_T(T,
      gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationPartialPressure_T(double,void*);",
      Library="TILMedia141ClaRa");

  end saturationPartialPressure_T;

  redeclare replaceable function extends specificEnthalpyOfVaporisation_T(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" delta_hv =
      TILMedia_GasObjectFunctions_specificEnthalpyOfVaporisation_T(T,
      gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpyOfVaporisation_T(double,void*);",
      Library="TILMedia141ClaRa");

  end specificEnthalpyOfVaporisation_T;

  redeclare replaceable function extends specificEnthalpyOfDesublimation_T(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" delta_hd =
      TILMedia_GasObjectFunctions_specificEnthalpyOfDesublimation_T(T,
      gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpyOfDesublimation_T(double,void*);",
      Library="TILMedia141ClaRa");

  end specificEnthalpyOfDesublimation_T;

  redeclare replaceable function extends specificEnthalpyOfPureGas_Tn(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" h_i = TILMedia_GasObjectFunctions_specificEnthalpyOfPureGas_Tn(
        T,
        compNo,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpyOfPureGas_Tn(double,int, void*);",
      Library="TILMedia141ClaRa");

  end specificEnthalpyOfPureGas_Tn;

  redeclare replaceable function extends
    specificIsobaricHeatCapacityOfPureGas_Tn(redeclare replaceable input
      GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" cp_i =
      TILMedia_GasObjectFunctions_specificIsobaricHeatCapacityOfPureGas_Tn(
        T,
        compNo,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsobaricHeatCapacityOfPureGas_Tn(double,int, void*);",
      Library="TILMedia141ClaRa");

  end specificIsobaricHeatCapacityOfPureGas_Tn;

  redeclare replaceable function extends averageMolarMass_xi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" M = TILMedia_GasObjectFunctions_averageMolarMass_xi(xi,
      gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_averageMolarMass_xi(double*,void*);",
      Library="TILMedia141ClaRa");

  end averageMolarMass_xi;

  redeclare replaceable function extends humidityRatio_xi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" humRatio = TILMedia_GasObjectFunctions_humidityRatio_xi(xi,
      gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_humidityRatio_xi(double*,void*);",
      Library="TILMedia141ClaRa");

  end humidityRatio_xi;

  redeclare replaceable function extends molarMass_n(redeclare replaceable input
            GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)

  external "C" M_i = TILMedia_GasObjectFunctions_molarMass_n(compNo, gasPointer)
      annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_molarMass_n(int, void*);",
      Library="TILMedia141ClaRa");
  end molarMass_n;

  redeclare replaceable function extends specificEnthalpyOfFormation_n(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" hF_i = TILMedia_GasObjectFunctions_specificEnthalpyOfFormation_n(
      compNo, gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpyOfFormation_n(int, void*);",
      Library="TILMedia141ClaRa");

  end specificEnthalpyOfFormation_n;

  redeclare replaceable function extends freezingPoint(redeclare replaceable input
          GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" T_freeze = TILMedia_GasObjectFunctions_freezingPoint(gasPointer)
      annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_freezingPoint(void*);",
      Library="TILMedia141ClaRa");
  end freezingPoint;

  redeclare replaceable function extends dewTemperature_phxi(redeclare replaceable input
                        GasPointerExternalObject gasPointer constrainedby
      TILMedia.Internals.BasePointer)


  external "C" T_dew = TILMedia_GasMixture_dewTemperature_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (Library="TILMedia141ClaRa");
  end dewTemperature_phxi;

  redeclare replaceable function extends saturationMassFraction_pTxidg(
      redeclare replaceable input GasPointerExternalObject gasPointer
      constrainedby TILMedia.Internals.BasePointer)


  external "C" xi_s = TILMedia_Gas_saturationMassFraction_pTxidg(
        p,
        T,
        xi_dryGas,
        gasPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_Gas_saturationMassFraction_pTxidg(double, double, double*, void*);",
      Library="TILMedia141ClaRa");

  end saturationMassFraction_pTxidg;
end GasObjectFunctions;
