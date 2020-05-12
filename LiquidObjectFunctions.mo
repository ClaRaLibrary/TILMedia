within TILMedia;
package LiquidObjectFunctions
  "Package for calculation of liquid properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends TILMedia.BaseClasses.PartialLiquidObjectFunctions;

  class LiquidPointerExternalObject
    extends ExternalObject;
    function constructor
      input String mediumName;
      input Integer flags;
      input Real[:] xi;
      input Integer nc;
      input String instanceName;
      output LiquidPointerExternalObject liquidPointer;
    protected
      Integer nc_propertyCalculation=size(xi, 1) + 1;
    external"C" liquidPointer = TILMedia_Liquid_createExternalObject(
            mediumName,
            flags,
            xi,
            nc,
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
#ifndef TILMEDIALIQUIDCONSTRUCTOR
#define TILMEDIALIQUIDCONSTRUCTOR
#if defined(WSM_VERSION) || defined(DYMOLA_STATIC) || (defined(ITI_CRT_INCLUDE) && !defined(ITI_COMP_SIM))
void* TILMedia_Liquid_createExternalObject_errorInterface(const char* fluidName, int flags, double* xi, int _nc, const char* instanceName, void* formatMessage, void* formatError, void* dymolaErrorLev);
#if defined(DYMOLA_STATIC)
#ifndef _WIN32
#define __stdcall
#endif
double __stdcall TILMedia_DymosimErrorLevWrapper_Liquid(const char* message, int level) {
    return DymosimErrorLev(message, level);
}
#endif
void* TILMedia_Liquid_createExternalObject(const char* fluidName, int flags, double* xi, int _nc, const char* instanceName) {
#if defined(DYMOLA_STATIC)
    return TILMedia_Liquid_createExternalObject_errorInterface(fluidName, flags, xi, _nc, instanceName, (void*)ModelicaFormatMessage, (void*)ModelicaFormatError, (void*)TILMedia_DymosimErrorLevWrapper_Liquid);
#else
    return TILMedia_Liquid_createExternalObject_errorInterface(fluidName, flags, xi, _nc, instanceName, (void*)ModelicaFormatMessage, (void*)ModelicaFormatError, 0);
#endif
}
#endif
#endif
",      Library="TILMedia150ClaRa");

    end constructor;

    function destructor "Release storage of table"
      input LiquidPointerExternalObject properties;
    external"C" TILMedia_Liquid_destroyExternalObject(properties) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_Liquid_destroyExternalObject(void*);",
        Library="TILMedia150ClaRa");
    end destructor;
  end LiquidPointerExternalObject;

  redeclare replaceable function extends specificEntropy_phxi(redeclare replaceable input
                        LiquidPointerExternalObject liquidPointer
      constrainedby TILMedia.Internals.BasePointer)
  external"C" s = TILMedia_LiquidObjectFunctions_specificEntropy_phxi(
        p,
        h,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_specificEntropy_phxi(double, double, double*,void*);",
      Library="TILMedia150ClaRa");

  end specificEntropy_phxi;

  redeclare replaceable function extends specificEntropy_pTxi(redeclare replaceable input
                        LiquidPointerExternalObject liquidPointer
      constrainedby TILMedia.Internals.BasePointer)
  external"C" s = TILMedia_LiquidObjectFunctions_specificEntropy_pTxi(
        p,
        T,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_specificEntropy_pTxi(double, double, double*,void*);",
      Library="TILMedia150ClaRa");

  end specificEntropy_pTxi;

  redeclare replaceable function extends density_Txi(redeclare replaceable input
            LiquidPointerExternalObject liquidPointer constrainedby
      TILMedia.Internals.BasePointer)
  external"C" d = TILMedia_LiquidObjectFunctions_density_Txi(
        T,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_density_Txi(double, double*,void*);",
      Library="TILMedia150ClaRa");

  end density_Txi;

  redeclare replaceable function extends specificEnthalpy_Txi(redeclare replaceable input
                        LiquidPointerExternalObject liquidPointer
      constrainedby TILMedia.Internals.BasePointer)
  external"C" h = TILMedia_LiquidObjectFunctions_specificEnthalpy_Txi(
        T,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_specificEnthalpy_Txi(double, double*,void*);",
      Library="TILMedia150ClaRa");

  end specificEnthalpy_Txi;

  redeclare replaceable function extends pressure_Txi(redeclare replaceable input
            LiquidPointerExternalObject liquidPointer constrainedby
      TILMedia.Internals.BasePointer)
  external"C" p = TILMedia_LiquidObjectFunctions_pressure_Txi(
        T,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_pressure_Txi(double, double*,void*);",
      Library="TILMedia150ClaRa");

  end pressure_Txi;

  redeclare replaceable function extends specificIsobaricHeatCapacity_Txi(
      redeclare replaceable input LiquidPointerExternalObject liquidPointer
      constrainedby TILMedia.Internals.BasePointer)
  external"C" cp =
      TILMedia_LiquidObjectFunctions_specificIsobaricHeatCapacity_Txi(
        T,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_specificIsobaricHeatCapacity_Txi(double, double*,void*);",
      Library="TILMedia150ClaRa");

  end specificIsobaricHeatCapacity_Txi;

  redeclare replaceable function extends
    isobaricThermalExpansionCoefficient_Txi(redeclare replaceable input
      LiquidPointerExternalObject liquidPointer constrainedby
      TILMedia.Internals.BasePointer)
  external"C" beta =
      TILMedia_LiquidObjectFunctions_isobaricThermalExpansionCoefficient_Txi(
        T,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_isobaricThermalExpansionCoefficient_Txi(double, double*,void*);",
      Library="TILMedia150ClaRa");

  end isobaricThermalExpansionCoefficient_Txi;

  redeclare replaceable function extends prandtlNumber_Txi(redeclare replaceable input
                        LiquidPointerExternalObject liquidPointer
      constrainedby TILMedia.Internals.BasePointer)
  external"C" Pr = TILMedia_LiquidObjectFunctions_prandtlNumber_Txi(
        T,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_prandtlNumber_Txi(double, double*,void*);",
      Library="TILMedia150ClaRa");

  end prandtlNumber_Txi;

  redeclare replaceable function extends thermalConductivity_Txi(redeclare replaceable input
                        LiquidPointerExternalObject liquidPointer
      constrainedby TILMedia.Internals.BasePointer)
  external"C" lambda = TILMedia_LiquidObjectFunctions_thermalConductivity_Txi(
        T,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_thermalConductivity_Txi(double, double*,void*);",
      Library="TILMedia150ClaRa");

  end thermalConductivity_Txi;

  redeclare replaceable function extends dynamicViscosity_Txi(redeclare replaceable input
                        LiquidPointerExternalObject liquidPointer
      constrainedby TILMedia.Internals.BasePointer)
  external"C" eta = TILMedia_LiquidObjectFunctions_dynamicViscosity_Txi(
        T,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_dynamicViscosity_Txi(double, double*,void*);",
      Library="TILMedia150ClaRa");

  end dynamicViscosity_Txi;

  redeclare replaceable function extends density_hxi(redeclare replaceable input
            LiquidPointerExternalObject liquidPointer constrainedby
      TILMedia.Internals.BasePointer)
  external"C" d = TILMedia_LiquidObjectFunctions_density_hxi(
        h,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_density_hxi(double, double*,void*);",
      Library="TILMedia150ClaRa");

  end density_hxi;

  redeclare replaceable function extends pressure_hxi(redeclare replaceable input
            LiquidPointerExternalObject liquidPointer constrainedby
      TILMedia.Internals.BasePointer)
  external"C" p = TILMedia_LiquidObjectFunctions_pressure_hxi(
        h,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_pressure_hxi(double, double*,void*);",
      Library="TILMedia150ClaRa");

  end pressure_hxi;

  redeclare replaceable function extends temperature_hxi(redeclare replaceable input
            LiquidPointerExternalObject liquidPointer constrainedby
      TILMedia.Internals.BasePointer)
  external"C" T = TILMedia_LiquidObjectFunctions_temperature_hxi(
        h,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_temperature_hxi(double, double*,void*);",
      Library="TILMedia150ClaRa");

  end temperature_hxi;

  redeclare replaceable function extends specificIsobaricHeatCapacity_hxi(
      redeclare replaceable input LiquidPointerExternalObject liquidPointer
      constrainedby TILMedia.Internals.BasePointer)
  external"C" cp =
      TILMedia_LiquidObjectFunctions_specificIsobaricHeatCapacity_hxi(
        h,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_specificIsobaricHeatCapacity_hxi(double, double*,void*);",
      Library="TILMedia150ClaRa");

  end specificIsobaricHeatCapacity_hxi;

  redeclare replaceable function extends
    isobaricThermalExpansionCoefficient_hxi(redeclare replaceable input
      LiquidPointerExternalObject liquidPointer constrainedby
      TILMedia.Internals.BasePointer)
  external"C" beta =
      TILMedia_LiquidObjectFunctions_isobaricThermalExpansionCoefficient_hxi(
        h,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_isobaricThermalExpansionCoefficient_hxi(double, double*,void*);",
      Library="TILMedia150ClaRa");

  end isobaricThermalExpansionCoefficient_hxi;

  redeclare replaceable function extends prandtlNumber_hxi(redeclare replaceable input
                        LiquidPointerExternalObject liquidPointer
      constrainedby TILMedia.Internals.BasePointer)
  external"C" Pr = TILMedia_LiquidObjectFunctions_prandtlNumber_hxi(
        h,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_prandtlNumber_hxi(double, double*,void*);",
      Library="TILMedia150ClaRa");

  end prandtlNumber_hxi;

  redeclare replaceable function extends thermalConductivity_hxi(redeclare replaceable input
                        LiquidPointerExternalObject liquidPointer
      constrainedby TILMedia.Internals.BasePointer)
  external"C" lambda = TILMedia_LiquidObjectFunctions_thermalConductivity_hxi(
        h,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_thermalConductivity_hxi(double, double*,void*);",
      Library="TILMedia150ClaRa");

  end thermalConductivity_hxi;

  redeclare replaceable function extends dynamicViscosity_hxi(redeclare replaceable input
                        LiquidPointerExternalObject liquidPointer
      constrainedby TILMedia.Internals.BasePointer)
  external"C" eta = TILMedia_LiquidObjectFunctions_dynamicViscosity_hxi(
        h,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_dynamicViscosity_hxi(double, double*,void*);",
      Library="TILMedia150ClaRa");

  end dynamicViscosity_hxi;
end LiquidObjectFunctions;
