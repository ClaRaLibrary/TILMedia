within TILMedia.Internals;
package VLEFluidFunctions
  extends .TILMedia.Internals.ClassTypes.ModelPackage;

  function specificEnthalpy_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h "Specific enthalpy";
  external"C" h = TILMedia_VLEFluidFunctions_specificEnthalpy_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_specificEnthalpy_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end specificEnthalpy_dTxi;
  function pressure_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p "Pressure";
  external"C" p = TILMedia_VLEFluidFunctions_pressure_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_pressure_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end pressure_dTxi;
  function specificEntropy_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s "Specific entropy";
  external"C" s = TILMedia_VLEFluidFunctions_specificEntropy_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_specificEntropy_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end specificEntropy_dTxi;
  function moleFraction_dTxin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MoleFraction x "Mole fraction";
  external"C" x = TILMedia_VLEFluidFunctions_moleFraction_dTxin(
      d,
      T,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_moleFraction_dTxin(double, double, double*,int, const char*, int);",
      Library="TILMedia160ClaRa");
  end moleFraction_dTxin;
  function steamMassFraction_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  external"C" q = TILMedia_VLEFluidFunctions_steamMassFraction_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_steamMassFraction_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end steamMassFraction_dTxi;
  function specificIsobaricHeatCapacity_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external"C" cp = TILMedia_VLEFluidFunctions_specificIsobaricHeatCapacity_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_specificIsobaricHeatCapacity_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end specificIsobaricHeatCapacity_dTxi;
  function specificIsochoricHeatCapacity_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  external"C" cv = TILMedia_VLEFluidFunctions_specificIsochoricHeatCapacity_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_specificIsochoricHeatCapacity_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end specificIsochoricHeatCapacity_dTxi;
  function isobaricThermalExpansionCoefficient_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  external"C" beta = TILMedia_VLEFluidFunctions_isobaricThermalExpansionCoefficient_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_isobaricThermalExpansionCoefficient_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end isobaricThermalExpansionCoefficient_dTxi;
  function isothermalCompressibility_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa "Isothermal compressibility";
  external"C" kappa = TILMedia_VLEFluidFunctions_isothermalCompressibility_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_isothermalCompressibility_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end isothermalCompressibility_dTxi;
  function speedOfSound_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Velocity w "Speed of sound";
  external"C" w = TILMedia_VLEFluidFunctions_speedOfSound_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_speedOfSound_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end speedOfSound_dTxi;
  function densityDerivativeWRTspecificEnthalpy_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  external"C" drhodh_pxi = TILMedia_VLEFluidFunctions_densityDerivativeWRTspecificEnthalpy_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_densityDerivativeWRTspecificEnthalpy_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTspecificEnthalpy_dTxi;
  function densityDerivativeWRTpressure_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  external"C" drhodp_hxi = TILMedia_VLEFluidFunctions_densityDerivativeWRTpressure_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_densityDerivativeWRTpressure_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTpressure_dTxi;
  function densityDerivativeWRTmassFraction_dTxin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  external"C" drhodxi_ph = TILMedia_VLEFluidFunctions_densityDerivativeWRTmassFraction_dTxin(
      d,
      T,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_densityDerivativeWRTmassFraction_dTxin(double, double, double*,int, const char*, int);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTmassFraction_dTxin;
  function heatCapacityRatio_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  external"C" gamma = TILMedia_VLEFluidFunctions_heatCapacityRatio_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_heatCapacityRatio_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end heatCapacityRatio_dTxi;
  function prandtlNumber_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.PrandtlNumber Pr "Prandtl number";
  external"C" Pr = TILMedia_VLEFluidFunctions_prandtlNumber_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_prandtlNumber_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end prandtlNumber_dTxi;
  function thermalConductivity_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external"C" lambda = TILMedia_VLEFluidFunctions_thermalConductivity_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_thermalConductivity_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end thermalConductivity_dTxi;
  function dynamicViscosity_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external"C" eta = TILMedia_VLEFluidFunctions_dynamicViscosity_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dynamicViscosity_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end dynamicViscosity_dTxi;
  function surfaceTension_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SurfaceTension sigma "Surface tension";
  external"C" sigma = TILMedia_VLEFluidFunctions_surfaceTension_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_surfaceTension_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end surfaceTension_dTxi;
  function liquidDensity_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_l "Density of liquid phase";
  external"C" d_l = TILMedia_VLEFluidFunctions_liquidDensity_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidDensity_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidDensity_dTxi;
  function vapourDensity_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_v "Density of vapour phase";
  external"C" d_v = TILMedia_VLEFluidFunctions_vapourDensity_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourDensity_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourDensity_dTxi;
  function liquidSpecificEnthalpy_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  external"C" h_l = TILMedia_VLEFluidFunctions_liquidSpecificEnthalpy_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidSpecificEnthalpy_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidSpecificEnthalpy_dTxi;
  function vapourSpecificEnthalpy_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  external"C" h_v = TILMedia_VLEFluidFunctions_vapourSpecificEnthalpy_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourSpecificEnthalpy_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourSpecificEnthalpy_dTxi;
  function liquidPressure_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p_l "Pressure of liquid phase";
  external"C" p_l = TILMedia_VLEFluidFunctions_liquidPressure_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidPressure_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidPressure_dTxi;
  function vapourPressure_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p_v "Pressure of vapour phase";
  external"C" p_v = TILMedia_VLEFluidFunctions_vapourPressure_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourPressure_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourPressure_dTxi;
  function liquidSpecificEntropy_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  external"C" s_l = TILMedia_VLEFluidFunctions_liquidSpecificEntropy_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidSpecificEntropy_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidSpecificEntropy_dTxi;
  function vapourSpecificEntropy_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  external"C" s_v = TILMedia_VLEFluidFunctions_vapourSpecificEntropy_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourSpecificEntropy_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourSpecificEntropy_dTxi;
  function liquidMassFraction_dTxin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  external"C" xi_l = TILMedia_VLEFluidFunctions_liquidMassFraction_dTxin(
      d,
      T,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidMassFraction_dTxin(double, double, double*,int, const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidMassFraction_dTxin;
  function vapourMassFraction_dTxin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  external"C" xi_v = TILMedia_VLEFluidFunctions_vapourMassFraction_dTxin(
      d,
      T,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourMassFraction_dTxin(double, double, double*,int, const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourMassFraction_dTxin;
  function liquidSpecificHeatCapacity_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  external"C" cp_l = TILMedia_VLEFluidFunctions_liquidSpecificHeatCapacity_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidSpecificHeatCapacity_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidSpecificHeatCapacity_dTxi;
  function vapourSpecificHeatCapacity_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  external"C" cp_v = TILMedia_VLEFluidFunctions_vapourSpecificHeatCapacity_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourSpecificHeatCapacity_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourSpecificHeatCapacity_dTxi;
  function liquidIsobaricThermalExpansionCoefficient_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  external"C" beta_l = TILMedia_VLEFluidFunctions_liquidIsobaricThermalExpansionCoefficient_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidIsobaricThermalExpansionCoefficient_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidIsobaricThermalExpansionCoefficient_dTxi;
  function vapourIsobaricThermalExpansionCoefficient_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  external"C" beta_v = TILMedia_VLEFluidFunctions_vapourIsobaricThermalExpansionCoefficient_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourIsobaricThermalExpansionCoefficient_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourIsobaricThermalExpansionCoefficient_dTxi;
  function liquidIsothermalCompressibility_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  external"C" kappa_l = TILMedia_VLEFluidFunctions_liquidIsothermalCompressibility_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidIsothermalCompressibility_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidIsothermalCompressibility_dTxi;
  function vapourIsothermalCompressibility_dTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  external"C" kappa_v = TILMedia_VLEFluidFunctions_vapourIsothermalCompressibility_dTxi(
      d,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourIsothermalCompressibility_dTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourIsothermalCompressibility_dTxi;

  function density_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d "Density";
  external"C" d = TILMedia_VLEFluidFunctions_density_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_density_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end density_phxi;
  function specificEntropy_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s "Specific entropy";
  external"C" s = TILMedia_VLEFluidFunctions_specificEntropy_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_specificEntropy_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end specificEntropy_phxi;
  function temperature_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T "Temperature";
  external"C" T = TILMedia_VLEFluidFunctions_temperature_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_temperature_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end temperature_phxi;
  function moleFraction_phxin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MoleFraction x "Mole fraction";
  external"C" x = TILMedia_VLEFluidFunctions_moleFraction_phxin(
      p,
      h,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_moleFraction_phxin(double, double, double*,int, const char*, int);",
      Library="TILMedia160ClaRa");
  end moleFraction_phxin;
  function steamMassFraction_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  external"C" q = TILMedia_VLEFluidFunctions_steamMassFraction_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_steamMassFraction_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end steamMassFraction_phxi;
  function specificIsobaricHeatCapacity_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external"C" cp = TILMedia_VLEFluidFunctions_specificIsobaricHeatCapacity_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_specificIsobaricHeatCapacity_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end specificIsobaricHeatCapacity_phxi;
  function specificIsochoricHeatCapacity_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  external"C" cv = TILMedia_VLEFluidFunctions_specificIsochoricHeatCapacity_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_specificIsochoricHeatCapacity_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end specificIsochoricHeatCapacity_phxi;
  function isobaricThermalExpansionCoefficient_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  external"C" beta = TILMedia_VLEFluidFunctions_isobaricThermalExpansionCoefficient_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_isobaricThermalExpansionCoefficient_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end isobaricThermalExpansionCoefficient_phxi;
  function isothermalCompressibility_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa "Isothermal compressibility";
  external"C" kappa = TILMedia_VLEFluidFunctions_isothermalCompressibility_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_isothermalCompressibility_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end isothermalCompressibility_phxi;
  function speedOfSound_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Velocity w "Speed of sound";
  external"C" w = TILMedia_VLEFluidFunctions_speedOfSound_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_speedOfSound_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end speedOfSound_phxi;
  function densityDerivativeWRTspecificEnthalpy_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  external"C" drhodh_pxi = TILMedia_VLEFluidFunctions_densityDerivativeWRTspecificEnthalpy_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_densityDerivativeWRTspecificEnthalpy_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTspecificEnthalpy_phxi;
  function densityDerivativeWRTpressure_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  external"C" drhodp_hxi = TILMedia_VLEFluidFunctions_densityDerivativeWRTpressure_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_densityDerivativeWRTpressure_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTpressure_phxi;
  function densityDerivativeWRTmassFraction_phxin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  external"C" drhodxi_ph = TILMedia_VLEFluidFunctions_densityDerivativeWRTmassFraction_phxin(
      p,
      h,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_densityDerivativeWRTmassFraction_phxin(double, double, double*,int, const char*, int);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTmassFraction_phxin;
  function heatCapacityRatio_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  external"C" gamma = TILMedia_VLEFluidFunctions_heatCapacityRatio_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_heatCapacityRatio_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end heatCapacityRatio_phxi;
  function prandtlNumber_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.PrandtlNumber Pr "Prandtl number";
  external"C" Pr = TILMedia_VLEFluidFunctions_prandtlNumber_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_prandtlNumber_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end prandtlNumber_phxi;
  function thermalConductivity_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external"C" lambda = TILMedia_VLEFluidFunctions_thermalConductivity_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_thermalConductivity_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end thermalConductivity_phxi;
  function dynamicViscosity_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external"C" eta = TILMedia_VLEFluidFunctions_dynamicViscosity_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dynamicViscosity_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end dynamicViscosity_phxi;
  function surfaceTension_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SurfaceTension sigma "Surface tension";
  external"C" sigma = TILMedia_VLEFluidFunctions_surfaceTension_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_surfaceTension_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end surfaceTension_phxi;
  function liquidDensity_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_l "Density of liquid phase";
  external"C" d_l = TILMedia_VLEFluidFunctions_liquidDensity_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidDensity_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidDensity_phxi;
  function vapourDensity_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_v "Density of vapour phase";
  external"C" d_v = TILMedia_VLEFluidFunctions_vapourDensity_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourDensity_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourDensity_phxi;
  function liquidSpecificEnthalpy_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  external"C" h_l = TILMedia_VLEFluidFunctions_liquidSpecificEnthalpy_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidSpecificEnthalpy_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidSpecificEnthalpy_phxi;
  function vapourSpecificEnthalpy_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  external"C" h_v = TILMedia_VLEFluidFunctions_vapourSpecificEnthalpy_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourSpecificEnthalpy_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourSpecificEnthalpy_phxi;
  function liquidSpecificEntropy_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  external"C" s_l = TILMedia_VLEFluidFunctions_liquidSpecificEntropy_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidSpecificEntropy_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidSpecificEntropy_phxi;
  function vapourSpecificEntropy_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  external"C" s_v = TILMedia_VLEFluidFunctions_vapourSpecificEntropy_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourSpecificEntropy_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourSpecificEntropy_phxi;
  function liquidTemperature_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_l "Temperature of liquid phase";
  external"C" T_l = TILMedia_VLEFluidFunctions_liquidTemperature_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidTemperature_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidTemperature_phxi;
  function vapourTemperature_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_v "Temperature of vapour phase";
  external"C" T_v = TILMedia_VLEFluidFunctions_vapourTemperature_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourTemperature_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourTemperature_phxi;
  function liquidMassFraction_phxin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  external"C" xi_l = TILMedia_VLEFluidFunctions_liquidMassFraction_phxin(
      p,
      h,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidMassFraction_phxin(double, double, double*,int, const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidMassFraction_phxin;
  function vapourMassFraction_phxin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  external"C" xi_v = TILMedia_VLEFluidFunctions_vapourMassFraction_phxin(
      p,
      h,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourMassFraction_phxin(double, double, double*,int, const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourMassFraction_phxin;
  function liquidSpecificHeatCapacity_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  external"C" cp_l = TILMedia_VLEFluidFunctions_liquidSpecificHeatCapacity_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidSpecificHeatCapacity_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidSpecificHeatCapacity_phxi;
  function vapourSpecificHeatCapacity_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  external"C" cp_v = TILMedia_VLEFluidFunctions_vapourSpecificHeatCapacity_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourSpecificHeatCapacity_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourSpecificHeatCapacity_phxi;
  function liquidIsobaricThermalExpansionCoefficient_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  external"C" beta_l = TILMedia_VLEFluidFunctions_liquidIsobaricThermalExpansionCoefficient_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidIsobaricThermalExpansionCoefficient_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidIsobaricThermalExpansionCoefficient_phxi;
  function vapourIsobaricThermalExpansionCoefficient_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  external"C" beta_v = TILMedia_VLEFluidFunctions_vapourIsobaricThermalExpansionCoefficient_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourIsobaricThermalExpansionCoefficient_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourIsobaricThermalExpansionCoefficient_phxi;
  function liquidIsothermalCompressibility_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  external"C" kappa_l = TILMedia_VLEFluidFunctions_liquidIsothermalCompressibility_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidIsothermalCompressibility_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidIsothermalCompressibility_phxi;
  function vapourIsothermalCompressibility_phxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  external"C" kappa_v = TILMedia_VLEFluidFunctions_vapourIsothermalCompressibility_phxi(
      p,
      h,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourIsothermalCompressibility_phxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourIsothermalCompressibility_phxi;

  function density_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d "Density";
  external"C" d = TILMedia_VLEFluidFunctions_density_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_density_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end density_psxi;
  function specificEnthalpy_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h "Specific enthalpy";
  external"C" h = TILMedia_VLEFluidFunctions_specificEnthalpy_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_specificEnthalpy_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end specificEnthalpy_psxi;
  function temperature_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T "Temperature";
  external"C" T = TILMedia_VLEFluidFunctions_temperature_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_temperature_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end temperature_psxi;
  function moleFraction_psxin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MoleFraction x "Mole fraction";
  external"C" x = TILMedia_VLEFluidFunctions_moleFraction_psxin(
      p,
      s,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_moleFraction_psxin(double, double, double*,int, const char*, int);",
      Library="TILMedia160ClaRa");
  end moleFraction_psxin;
  function steamMassFraction_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  external"C" q = TILMedia_VLEFluidFunctions_steamMassFraction_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_steamMassFraction_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end steamMassFraction_psxi;
  function specificIsobaricHeatCapacity_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external"C" cp = TILMedia_VLEFluidFunctions_specificIsobaricHeatCapacity_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_specificIsobaricHeatCapacity_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end specificIsobaricHeatCapacity_psxi;
  function specificIsochoricHeatCapacity_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  external"C" cv = TILMedia_VLEFluidFunctions_specificIsochoricHeatCapacity_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_specificIsochoricHeatCapacity_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end specificIsochoricHeatCapacity_psxi;
  function isobaricThermalExpansionCoefficient_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  external"C" beta = TILMedia_VLEFluidFunctions_isobaricThermalExpansionCoefficient_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_isobaricThermalExpansionCoefficient_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end isobaricThermalExpansionCoefficient_psxi;
  function isothermalCompressibility_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa "Isothermal compressibility";
  external"C" kappa = TILMedia_VLEFluidFunctions_isothermalCompressibility_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_isothermalCompressibility_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end isothermalCompressibility_psxi;
  function speedOfSound_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Velocity w "Speed of sound";
  external"C" w = TILMedia_VLEFluidFunctions_speedOfSound_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_speedOfSound_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end speedOfSound_psxi;
  function densityDerivativeWRTspecificEnthalpy_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  external"C" drhodh_pxi = TILMedia_VLEFluidFunctions_densityDerivativeWRTspecificEnthalpy_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_densityDerivativeWRTspecificEnthalpy_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTspecificEnthalpy_psxi;
  function densityDerivativeWRTpressure_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  external"C" drhodp_hxi = TILMedia_VLEFluidFunctions_densityDerivativeWRTpressure_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_densityDerivativeWRTpressure_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTpressure_psxi;
  function densityDerivativeWRTmassFraction_psxin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  external"C" drhodxi_ph = TILMedia_VLEFluidFunctions_densityDerivativeWRTmassFraction_psxin(
      p,
      s,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_densityDerivativeWRTmassFraction_psxin(double, double, double*,int, const char*, int);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTmassFraction_psxin;
  function heatCapacityRatio_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  external"C" gamma = TILMedia_VLEFluidFunctions_heatCapacityRatio_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_heatCapacityRatio_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end heatCapacityRatio_psxi;
  function prandtlNumber_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.PrandtlNumber Pr "Prandtl number";
  external"C" Pr = TILMedia_VLEFluidFunctions_prandtlNumber_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_prandtlNumber_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end prandtlNumber_psxi;
  function thermalConductivity_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external"C" lambda = TILMedia_VLEFluidFunctions_thermalConductivity_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_thermalConductivity_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end thermalConductivity_psxi;
  function dynamicViscosity_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external"C" eta = TILMedia_VLEFluidFunctions_dynamicViscosity_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dynamicViscosity_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end dynamicViscosity_psxi;
  function surfaceTension_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SurfaceTension sigma "Surface tension";
  external"C" sigma = TILMedia_VLEFluidFunctions_surfaceTension_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_surfaceTension_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end surfaceTension_psxi;
  function liquidDensity_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_l "Density of liquid phase";
  external"C" d_l = TILMedia_VLEFluidFunctions_liquidDensity_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidDensity_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidDensity_psxi;
  function vapourDensity_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_v "Density of vapour phase";
  external"C" d_v = TILMedia_VLEFluidFunctions_vapourDensity_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourDensity_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourDensity_psxi;
  function liquidSpecificEnthalpy_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  external"C" h_l = TILMedia_VLEFluidFunctions_liquidSpecificEnthalpy_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidSpecificEnthalpy_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidSpecificEnthalpy_psxi;
  function vapourSpecificEnthalpy_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  external"C" h_v = TILMedia_VLEFluidFunctions_vapourSpecificEnthalpy_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourSpecificEnthalpy_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourSpecificEnthalpy_psxi;
  function liquidSpecificEntropy_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  external"C" s_l = TILMedia_VLEFluidFunctions_liquidSpecificEntropy_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidSpecificEntropy_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidSpecificEntropy_psxi;
  function vapourSpecificEntropy_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  external"C" s_v = TILMedia_VLEFluidFunctions_vapourSpecificEntropy_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourSpecificEntropy_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourSpecificEntropy_psxi;
  function liquidTemperature_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_l "Temperature of liquid phase";
  external"C" T_l = TILMedia_VLEFluidFunctions_liquidTemperature_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidTemperature_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidTemperature_psxi;
  function vapourTemperature_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_v "Temperature of vapour phase";
  external"C" T_v = TILMedia_VLEFluidFunctions_vapourTemperature_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourTemperature_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourTemperature_psxi;
  function liquidMassFraction_psxin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  external"C" xi_l = TILMedia_VLEFluidFunctions_liquidMassFraction_psxin(
      p,
      s,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidMassFraction_psxin(double, double, double*,int, const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidMassFraction_psxin;
  function vapourMassFraction_psxin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  external"C" xi_v = TILMedia_VLEFluidFunctions_vapourMassFraction_psxin(
      p,
      s,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourMassFraction_psxin(double, double, double*,int, const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourMassFraction_psxin;
  function liquidSpecificHeatCapacity_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  external"C" cp_l = TILMedia_VLEFluidFunctions_liquidSpecificHeatCapacity_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidSpecificHeatCapacity_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidSpecificHeatCapacity_psxi;
  function vapourSpecificHeatCapacity_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  external"C" cp_v = TILMedia_VLEFluidFunctions_vapourSpecificHeatCapacity_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourSpecificHeatCapacity_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourSpecificHeatCapacity_psxi;
  function liquidIsobaricThermalExpansionCoefficient_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  external"C" beta_l = TILMedia_VLEFluidFunctions_liquidIsobaricThermalExpansionCoefficient_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidIsobaricThermalExpansionCoefficient_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidIsobaricThermalExpansionCoefficient_psxi;
  function vapourIsobaricThermalExpansionCoefficient_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  external"C" beta_v = TILMedia_VLEFluidFunctions_vapourIsobaricThermalExpansionCoefficient_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourIsobaricThermalExpansionCoefficient_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourIsobaricThermalExpansionCoefficient_psxi;
  function liquidIsothermalCompressibility_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  external"C" kappa_l = TILMedia_VLEFluidFunctions_liquidIsothermalCompressibility_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidIsothermalCompressibility_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidIsothermalCompressibility_psxi;
  function vapourIsothermalCompressibility_psxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  external"C" kappa_v = TILMedia_VLEFluidFunctions_vapourIsothermalCompressibility_psxi(
      p,
      s,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourIsothermalCompressibility_psxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourIsothermalCompressibility_psxi;

  function density_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d "Density";
  external"C" d = TILMedia_VLEFluidFunctions_density_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_density_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end density_pTxi;
  function specificEnthalpy_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h "Specific enthalpy";
  external"C" h = TILMedia_VLEFluidFunctions_specificEnthalpy_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_specificEnthalpy_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end specificEnthalpy_pTxi;
  function specificEntropy_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s "Specific entropy";
  external"C" s = TILMedia_VLEFluidFunctions_specificEntropy_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_specificEntropy_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end specificEntropy_pTxi;
  function moleFraction_pTxin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MoleFraction x "Mole fraction";
  external"C" x = TILMedia_VLEFluidFunctions_moleFraction_pTxin(
      p,
      T,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_moleFraction_pTxin(double, double, double*,int, const char*, int);",
      Library="TILMedia160ClaRa");
  end moleFraction_pTxin;
  function steamMassFraction_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  external"C" q = TILMedia_VLEFluidFunctions_steamMassFraction_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_steamMassFraction_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end steamMassFraction_pTxi;
  function specificIsobaricHeatCapacity_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external"C" cp = TILMedia_VLEFluidFunctions_specificIsobaricHeatCapacity_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_specificIsobaricHeatCapacity_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end specificIsobaricHeatCapacity_pTxi;
  function specificIsochoricHeatCapacity_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  external"C" cv = TILMedia_VLEFluidFunctions_specificIsochoricHeatCapacity_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_specificIsochoricHeatCapacity_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end specificIsochoricHeatCapacity_pTxi;
  function isobaricThermalExpansionCoefficient_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  external"C" beta = TILMedia_VLEFluidFunctions_isobaricThermalExpansionCoefficient_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_isobaricThermalExpansionCoefficient_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end isobaricThermalExpansionCoefficient_pTxi;
  function isothermalCompressibility_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa "Isothermal compressibility";
  external"C" kappa = TILMedia_VLEFluidFunctions_isothermalCompressibility_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_isothermalCompressibility_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end isothermalCompressibility_pTxi;
  function speedOfSound_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Velocity w "Speed of sound";
  external"C" w = TILMedia_VLEFluidFunctions_speedOfSound_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_speedOfSound_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end speedOfSound_pTxi;
  function densityDerivativeWRTspecificEnthalpy_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  external"C" drhodh_pxi = TILMedia_VLEFluidFunctions_densityDerivativeWRTspecificEnthalpy_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_densityDerivativeWRTspecificEnthalpy_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTspecificEnthalpy_pTxi;
  function densityDerivativeWRTpressure_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  external"C" drhodp_hxi = TILMedia_VLEFluidFunctions_densityDerivativeWRTpressure_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_densityDerivativeWRTpressure_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTpressure_pTxi;
  function densityDerivativeWRTmassFraction_pTxin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  external"C" drhodxi_ph = TILMedia_VLEFluidFunctions_densityDerivativeWRTmassFraction_pTxin(
      p,
      T,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_densityDerivativeWRTmassFraction_pTxin(double, double, double*,int, const char*, int);",
      Library="TILMedia160ClaRa");
  end densityDerivativeWRTmassFraction_pTxin;
  function heatCapacityRatio_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  external"C" gamma = TILMedia_VLEFluidFunctions_heatCapacityRatio_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_heatCapacityRatio_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end heatCapacityRatio_pTxi;
  function prandtlNumber_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.PrandtlNumber Pr "Prandtl number";
  external"C" Pr = TILMedia_VLEFluidFunctions_prandtlNumber_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_prandtlNumber_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end prandtlNumber_pTxi;
  function thermalConductivity_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external"C" lambda = TILMedia_VLEFluidFunctions_thermalConductivity_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_thermalConductivity_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end thermalConductivity_pTxi;
  function dynamicViscosity_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external"C" eta = TILMedia_VLEFluidFunctions_dynamicViscosity_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dynamicViscosity_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end dynamicViscosity_pTxi;
  function surfaceTension_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SurfaceTension sigma "Surface tension";
  external"C" sigma = TILMedia_VLEFluidFunctions_surfaceTension_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_surfaceTension_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end surfaceTension_pTxi;
  function liquidDensity_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_l "Density of liquid phase";
  external"C" d_l = TILMedia_VLEFluidFunctions_liquidDensity_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidDensity_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidDensity_pTxi;
  function vapourDensity_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_v "Density of vapour phase";
  external"C" d_v = TILMedia_VLEFluidFunctions_vapourDensity_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourDensity_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourDensity_pTxi;
  function liquidSpecificEnthalpy_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  external"C" h_l = TILMedia_VLEFluidFunctions_liquidSpecificEnthalpy_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidSpecificEnthalpy_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidSpecificEnthalpy_pTxi;
  function vapourSpecificEnthalpy_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  external"C" h_v = TILMedia_VLEFluidFunctions_vapourSpecificEnthalpy_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourSpecificEnthalpy_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourSpecificEnthalpy_pTxi;
  function liquidSpecificEntropy_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  external"C" s_l = TILMedia_VLEFluidFunctions_liquidSpecificEntropy_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidSpecificEntropy_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidSpecificEntropy_pTxi;
  function vapourSpecificEntropy_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  external"C" s_v = TILMedia_VLEFluidFunctions_vapourSpecificEntropy_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourSpecificEntropy_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourSpecificEntropy_pTxi;
  function liquidTemperature_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_l "Temperature of liquid phase";
  external"C" T_l = TILMedia_VLEFluidFunctions_liquidTemperature_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidTemperature_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidTemperature_pTxi;
  function vapourTemperature_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_v "Temperature of vapour phase";
  external"C" T_v = TILMedia_VLEFluidFunctions_vapourTemperature_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourTemperature_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourTemperature_pTxi;
  function liquidMassFraction_pTxin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  external"C" xi_l = TILMedia_VLEFluidFunctions_liquidMassFraction_pTxin(
      p,
      T,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidMassFraction_pTxin(double, double, double*,int, const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidMassFraction_pTxin;
  function vapourMassFraction_pTxin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  external"C" xi_v = TILMedia_VLEFluidFunctions_vapourMassFraction_pTxin(
      p,
      T,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourMassFraction_pTxin(double, double, double*,int, const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourMassFraction_pTxin;
  function liquidSpecificHeatCapacity_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  external"C" cp_l = TILMedia_VLEFluidFunctions_liquidSpecificHeatCapacity_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidSpecificHeatCapacity_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidSpecificHeatCapacity_pTxi;
  function vapourSpecificHeatCapacity_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  external"C" cp_v = TILMedia_VLEFluidFunctions_vapourSpecificHeatCapacity_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourSpecificHeatCapacity_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourSpecificHeatCapacity_pTxi;
  function liquidIsobaricThermalExpansionCoefficient_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  external"C" beta_l = TILMedia_VLEFluidFunctions_liquidIsobaricThermalExpansionCoefficient_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidIsobaricThermalExpansionCoefficient_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidIsobaricThermalExpansionCoefficient_pTxi;
  function vapourIsobaricThermalExpansionCoefficient_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  external"C" beta_v = TILMedia_VLEFluidFunctions_vapourIsobaricThermalExpansionCoefficient_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourIsobaricThermalExpansionCoefficient_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourIsobaricThermalExpansionCoefficient_pTxi;
  function liquidIsothermalCompressibility_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  external"C" kappa_l = TILMedia_VLEFluidFunctions_liquidIsothermalCompressibility_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_liquidIsothermalCompressibility_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end liquidIsothermalCompressibility_pTxi;
  function vapourIsothermalCompressibility_pTxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  external"C" kappa_v = TILMedia_VLEFluidFunctions_vapourIsothermalCompressibility_pTxi(
      p,
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_vapourIsothermalCompressibility_pTxi(double, double, double*,const char*, int);",
      Library="TILMedia160ClaRa");
  end vapourIsothermalCompressibility_pTxi;


  function dewDensity_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_dew "Density at dew point";
  external"C" d_dew = TILMedia_VLEFluidFunctions_dewDensity_Txi(
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dewDensity_Txi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end dewDensity_Txi;
  function bubbleDensity_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_bubble "Density at bubble point";
  external"C" d_bubble = TILMedia_VLEFluidFunctions_bubbleDensity_Txi(
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_bubbleDensity_Txi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end bubbleDensity_Txi;
  function dewSpecificEnthalpy_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_dew "Specific enthalpy at dew point";
  external"C" h_dew = TILMedia_VLEFluidFunctions_dewSpecificEnthalpy_Txi(
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dewSpecificEnthalpy_Txi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end dewSpecificEnthalpy_Txi;
  function bubbleSpecificEnthalpy_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_bubble "Specific enthalpy at bubble point";
  external"C" h_bubble = TILMedia_VLEFluidFunctions_bubbleSpecificEnthalpy_Txi(
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_bubbleSpecificEnthalpy_Txi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end bubbleSpecificEnthalpy_Txi;
  function dewPressure_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p_dew "Pressure at dew point";
  external"C" p_dew = TILMedia_VLEFluidFunctions_dewPressure_Txi(
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dewPressure_Txi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end dewPressure_Txi;
  function bubblePressure_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p_bubble "Pressure at bubble point";
  external"C" p_bubble = TILMedia_VLEFluidFunctions_bubblePressure_Txi(
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_bubblePressure_Txi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end bubblePressure_Txi;
  function dewSpecificEntropy_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_dew "Specific entropy at dew point";
  external"C" s_dew = TILMedia_VLEFluidFunctions_dewSpecificEntropy_Txi(
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dewSpecificEntropy_Txi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end dewSpecificEntropy_Txi;
  function bubbleSpecificEntropy_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_bubble "Specific entropy at bubble point";
  external"C" s_bubble = TILMedia_VLEFluidFunctions_bubbleSpecificEntropy_Txi(
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_bubbleSpecificEntropy_Txi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end bubbleSpecificEntropy_Txi;
  function dewLiquidMassFraction_Txin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_ldew "Mass fration at dew point";
  external"C" xi_ldew = TILMedia_VLEFluidFunctions_dewLiquidMassFraction_Txin(
      T,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dewLiquidMassFraction_Txin(double, double*, int, const char*, int);",
      Library="TILMedia160ClaRa");
  end dewLiquidMassFraction_Txin;
  function bubbleVapourMassFraction_Txin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_vbubble "Mass fration at bubble point";
  external"C" xi_vbubble = TILMedia_VLEFluidFunctions_bubbleVapourMassFraction_Txin(
      T,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_bubbleVapourMassFraction_Txin(double, double*, int, const char*, int);",
      Library="TILMedia160ClaRa");
  end bubbleVapourMassFraction_Txin;
  function dewSpecificIsobaricHeatCapacity_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_dew "Specific isobaric heat capacity cp at dew point";
  external"C" cp_dew = TILMedia_VLEFluidFunctions_dewSpecificIsobaricHeatCapacity_Txi(
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dewSpecificIsobaricHeatCapacity_Txi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end dewSpecificIsobaricHeatCapacity_Txi;
  function bubbleSpecificIsobaricHeatCapacity_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_bubble "Specific isobaric heat capacity cp at bubble point";
  external"C" cp_bubble = TILMedia_VLEFluidFunctions_bubbleSpecificIsobaricHeatCapacity_Txi(
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_bubbleSpecificIsobaricHeatCapacity_Txi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end bubbleSpecificIsobaricHeatCapacity_Txi;
  function dewIsobaricThermalExpansionCoefficient_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_dew "Isobaric thermal expansion coefficient at dew point";
  external"C" beta_dew = TILMedia_VLEFluidFunctions_dewIsobaricThermalExpansionCoefficient_Txi(
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dewIsobaricThermalExpansionCoefficient_Txi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end dewIsobaricThermalExpansionCoefficient_Txi;
  function bubbleIsobaricThermalExpansionCoefficient_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_bubble "Isobaric thermal expansion coefficient at bubble point";
  external"C" beta_bubble = TILMedia_VLEFluidFunctions_bubbleIsobaricThermalExpansionCoefficient_Txi(
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_bubbleIsobaricThermalExpansionCoefficient_Txi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end bubbleIsobaricThermalExpansionCoefficient_Txi;
  function dewIsothermalCompressibility_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_dew "Isothermal compressibility at dew point";
  external"C" kappa_dew = TILMedia_VLEFluidFunctions_dewIsothermalCompressibility_Txi(
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dewIsothermalCompressibility_Txi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end dewIsothermalCompressibility_Txi;
  function bubbleIsothermalCompressibility_Txi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_bubble "Isothermal compressibility at bubble point";
  external"C" kappa_bubble = TILMedia_VLEFluidFunctions_bubbleIsothermalCompressibility_Txi(
      T,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_bubbleIsothermalCompressibility_Txi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end bubbleIsothermalCompressibility_Txi;

  function dewDensity_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_dew "Density at dew point";
  external"C" d_dew = TILMedia_VLEFluidFunctions_dewDensity_pxi(
      p,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dewDensity_pxi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end dewDensity_pxi;
  function bubbleDensity_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_bubble "Density at bubble point";
  external"C" d_bubble = TILMedia_VLEFluidFunctions_bubbleDensity_pxi(
      p,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_bubbleDensity_pxi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end bubbleDensity_pxi;
  function dewSpecificEnthalpy_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_dew "Specific enthalpy at dew point";
  external"C" h_dew = TILMedia_VLEFluidFunctions_dewSpecificEnthalpy_pxi(
      p,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dewSpecificEnthalpy_pxi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end dewSpecificEnthalpy_pxi;
  function bubbleSpecificEnthalpy_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_bubble "Specific enthalpy at bubble point";
  external"C" h_bubble = TILMedia_VLEFluidFunctions_bubbleSpecificEnthalpy_pxi(
      p,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_bubbleSpecificEnthalpy_pxi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end bubbleSpecificEnthalpy_pxi;
  function dewSpecificEntropy_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_dew "Specific entropy at dew point";
  external"C" s_dew = TILMedia_VLEFluidFunctions_dewSpecificEntropy_pxi(
      p,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dewSpecificEntropy_pxi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end dewSpecificEntropy_pxi;
  function bubbleSpecificEntropy_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_bubble "Specific entropy at bubble point";
  external"C" s_bubble = TILMedia_VLEFluidFunctions_bubbleSpecificEntropy_pxi(
      p,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_bubbleSpecificEntropy_pxi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end bubbleSpecificEntropy_pxi;
  function dewTemperature_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_dew "Temperature at dew point";
  external"C" T_dew = TILMedia_VLEFluidFunctions_dewTemperature_pxi(
      p,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dewTemperature_pxi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end dewTemperature_pxi;
  function bubbleTemperature_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_bubble "Temperature at bubble point";
  external"C" T_bubble = TILMedia_VLEFluidFunctions_bubbleTemperature_pxi(
      p,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_bubbleTemperature_pxi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end bubbleTemperature_pxi;
  function dewLiquidMassFraction_pxin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_ldew "Mass fration at dew point";
  external"C" xi_ldew = TILMedia_VLEFluidFunctions_dewLiquidMassFraction_pxin(
      p,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dewLiquidMassFraction_pxin(double, double*, int, const char*, int);",
      Library="TILMedia160ClaRa");
  end dewLiquidMassFraction_pxin;
  function bubbleVapourMassFraction_pxin
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_vbubble "Mass fration at bubble point";
  external"C" xi_vbubble = TILMedia_VLEFluidFunctions_bubbleVapourMassFraction_pxin(
      p,
      xi,
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_bubbleVapourMassFraction_pxin(double, double*, int, const char*, int);",
      Library="TILMedia160ClaRa");
  end bubbleVapourMassFraction_pxin;
  function dewSpecificIsobaricHeatCapacity_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_dew "Specific isobaric heat capacity cp at dew point";
  external"C" cp_dew = TILMedia_VLEFluidFunctions_dewSpecificIsobaricHeatCapacity_pxi(
      p,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dewSpecificIsobaricHeatCapacity_pxi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end dewSpecificIsobaricHeatCapacity_pxi;
  function bubbleSpecificIsobaricHeatCapacity_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_bubble "Specific isobaric heat capacity cp at bubble point";
  external"C" cp_bubble = TILMedia_VLEFluidFunctions_bubbleSpecificIsobaricHeatCapacity_pxi(
      p,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_bubbleSpecificIsobaricHeatCapacity_pxi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end bubbleSpecificIsobaricHeatCapacity_pxi;
  function dewIsobaricThermalExpansionCoefficient_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_dew "Isobaric thermal expansion coefficient at dew point";
  external"C" beta_dew = TILMedia_VLEFluidFunctions_dewIsobaricThermalExpansionCoefficient_pxi(
      p,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dewIsobaricThermalExpansionCoefficient_pxi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end dewIsobaricThermalExpansionCoefficient_pxi;
  function bubbleIsobaricThermalExpansionCoefficient_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_bubble "Isobaric thermal expansion coefficient at bubble point";
  external"C" beta_bubble = TILMedia_VLEFluidFunctions_bubbleIsobaricThermalExpansionCoefficient_pxi(
      p,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_bubbleIsobaricThermalExpansionCoefficient_pxi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end bubbleIsobaricThermalExpansionCoefficient_pxi;
  function dewIsothermalCompressibility_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_dew "Isothermal compressibility at dew point";
  external"C" kappa_dew = TILMedia_VLEFluidFunctions_dewIsothermalCompressibility_pxi(
      p,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_dewIsothermalCompressibility_pxi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end dewIsothermalCompressibility_pxi;
  function bubbleIsothermalCompressibility_pxi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_bubble "Isothermal compressibility at bubble point";
  external"C" kappa_bubble = TILMedia_VLEFluidFunctions_bubbleIsothermalCompressibility_pxi(
      p,
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_bubbleIsothermalCompressibility_pxi(double, double*, const char*, int);",
      Library="TILMedia160ClaRa");
  end bubbleIsothermalCompressibility_pxi;



  function averageMolarMass_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MolarMass M "Average molar mass";
  external"C" M = TILMedia_VLEFluidFunctions_averageMolarMass_xi(
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_averageMolarMass_xi(double*,  const char*, int);",
      Library="TILMedia160ClaRa");
  end averageMolarMass_xi;
  function criticalDensity_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density dc "Critical density";
  external"C" dc = TILMedia_VLEFluidFunctions_criticalDensity_xi(
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_criticalDensity_xi(double*,  const char*, int);",
      Library="TILMedia160ClaRa");
  end criticalDensity_xi;
  function criticalSpecificEnthalpy_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy hc "Critical specific enthalpy";
  external"C" hc = TILMedia_VLEFluidFunctions_criticalSpecificEnthalpy_xi(
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_criticalSpecificEnthalpy_xi(double*,  const char*, int);",
      Library="TILMedia160ClaRa");
  end criticalSpecificEnthalpy_xi;
  function criticalPressure_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure pc "Critical pressure";
  external"C" pc = TILMedia_VLEFluidFunctions_criticalPressure_xi(
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_criticalPressure_xi(double*,  const char*, int);",
      Library="TILMedia160ClaRa");
  end criticalPressure_xi;
  function criticalSpecificEntropy_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy sc "Critical specific entropy";
  external"C" sc = TILMedia_VLEFluidFunctions_criticalSpecificEntropy_xi(
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_criticalSpecificEntropy_xi(double*,  const char*, int);",
      Library="TILMedia160ClaRa");
  end criticalSpecificEntropy_xi;
  function criticalTemperature_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature Tc "Critical temperature";
  external"C" Tc = TILMedia_VLEFluidFunctions_criticalTemperature_xi(
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_criticalTemperature_xi(double*,  const char*, int);",
      Library="TILMedia160ClaRa");
  end criticalTemperature_xi;
  function criticalSpecificIsobaricHeatCapacity_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cpc "Critical specific isobaric heat capacity cp";
  external"C" cpc = TILMedia_VLEFluidFunctions_criticalSpecificIsobaricHeatCapacity_xi(
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_criticalSpecificIsobaricHeatCapacity_xi(double*,  const char*, int);",
      Library="TILMedia160ClaRa");
  end criticalSpecificIsobaricHeatCapacity_xi;
  function criticalIsobaricThermalExpansionCoefficient_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient betac "Critical isobaric thermal expansion coefficient";
  external"C" betac = TILMedia_VLEFluidFunctions_criticalIsobaricThermalExpansionCoefficient_xi(
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_criticalIsobaricThermalExpansionCoefficient_xi(double*,  const char*, int);",
      Library="TILMedia160ClaRa");
  end criticalIsobaricThermalExpansionCoefficient_xi;
  function criticalIsothermalCompressibility_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappac "Critical isothermal compressibility";
  external"C" kappac = TILMedia_VLEFluidFunctions_criticalIsothermalCompressibility_xi(
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_criticalIsothermalCompressibility_xi(double*,  const char*, int);",
      Library="TILMedia160ClaRa");
  end criticalIsothermalCompressibility_xi;
  function criticalThermalConductivity_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.ThermalConductivity lambdac "Critical thermal conductivity";
  external"C" lambdac = TILMedia_VLEFluidFunctions_criticalThermalConductivity_xi(
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_criticalThermalConductivity_xi(double*,  const char*, int);",
      Library="TILMedia160ClaRa");
  end criticalThermalConductivity_xi;
  function criticalDynamicViscosity_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DynamicViscosity etac "Critical dynamic viscosity";
  external"C" etac = TILMedia_VLEFluidFunctions_criticalDynamicViscosity_xi(
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_criticalDynamicViscosity_xi(double*,  const char*, int);",
      Library="TILMedia160ClaRa");
  end criticalDynamicViscosity_xi;
  function criticalSurfaceTension_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SurfaceTension sigmac "Critical surface tension";
  external"C" sigmac = TILMedia_VLEFluidFunctions_criticalSurfaceTension_xi(
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_criticalSurfaceTension_xi(double*,  const char*, int);",
      Library="TILMedia160ClaRa");
  end criticalSurfaceTension_xi;
  function cricondenbarTemperature_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_ccb "";
  external"C" T_ccb = TILMedia_VLEFluidFunctions_cricondenbarTemperature_xi(
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_cricondenbarTemperature_xi(double*,  const char*, int);",
      Library="TILMedia160ClaRa");
  end cricondenbarTemperature_xi;
  function cricondenthermTemperature_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_cct "";
  external"C" T_cct = TILMedia_VLEFluidFunctions_cricondenthermTemperature_xi(
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_cricondenthermTemperature_xi(double*,  const char*, int);",
      Library="TILMedia160ClaRa");
  end cricondenthermTemperature_xi;
  function cricondenbarPressure_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p_ccb "";
  external"C" p_ccb = TILMedia_VLEFluidFunctions_cricondenbarPressure_xi(
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_cricondenbarPressure_xi(double*,  const char*, int);",
      Library="TILMedia160ClaRa");
  end cricondenbarPressure_xi;
  function cricondenthermPressure_xi
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p_cct "";
  external"C" p_cct = TILMedia_VLEFluidFunctions_cricondenthermPressure_xi(
      xi,
      vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_cricondenthermPressure_xi(double*,  const char*, int);",
      Library="TILMedia160ClaRa");
  end cricondenthermPressure_xi;

  function molarMass_n
    extends .TILMedia.BaseClasses.PartialVLEFluidFunction;
    input Integer compNo "Component ID";
    input .TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MolarMass M_i "Molar mass of component i";
  external"C" M_i = TILMedia_VLEFluidFunctions_molarMass_n(
      compNo, vleFluidName,
      nc) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_VLEFluidFunctions_molarMass_n(  int, const char*, int);",
      Library="TILMedia160ClaRa");
  end molarMass_n;

end VLEFluidFunctions;
