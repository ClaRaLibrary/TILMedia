within TILMedia;
package VLEFluidObjectFunctions
  "Package for calculation of VLEFLuid properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  class VLEFluidPointer
     extends ExternalObject;
     function constructor "get memory"
      input String vleFluidName;
      input Integer flags;
      input Real[:] xi;
      input Integer nc_propertyCalculation;
      input Integer nc;
      input Integer redirectorDummy;
      output VLEFluidPointer vleFluidPointer;
      external "C" vleFluidPointer = TILMedia_VLEFluid_createExternalObject(vleFluidName, flags, xi, nc_propertyCalculation, nc) 
      annotation(__iti_dllNoExport = true,Include="void* TILMedia_VLEFluid_createExternalObject(const char*, int, double*, int, int);",Library="TILMedia121ClaRa");
     end constructor;

     function destructor "free memory"
      input VLEFluidPointer vleFluidPointer;
      external "C" TILMedia_VLEFluid_destroyExternalObject(vleFluidPointer) 
      annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_destroyExternalObject(void*);",Library="TILMedia121ClaRa");
     end destructor;
  end VLEFluidPointer;

  function specificEnthalpy_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
  external "C" h = TILMedia_VLEFluidObjectFunctions_specificEnthalpy_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificEnthalpy_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificEnthalpy_dTxi;

  function pressure_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.AbsolutePressure p "Pressure";
  external "C" p = TILMedia_VLEFluidObjectFunctions_pressure_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_pressure_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end pressure_dTxi;

  function specificEntropy_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEntropy s "Specific entropy";
  external "C" s = TILMedia_VLEFluidObjectFunctions_specificEntropy_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificEntropy_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificEntropy_dTxi;

  function moleFraction_dTxin
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MoleFraction x "Mole fraction";
  external "C" x = TILMedia_VLEFluidObjectFunctions_moleFraction_dTxin(d, T, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_moleFraction_dTxin(double, double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end moleFraction_dTxin;

  function steamMassFraction_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  external "C" q = TILMedia_VLEFluidObjectFunctions_steamMassFraction_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_steamMassFraction_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end steamMassFraction_dTxi;

  function specificIsobaricHeatCapacity_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external "C" cp = TILMedia_VLEFluidObjectFunctions_specificIsobaricHeatCapacity_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificIsobaricHeatCapacity_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsobaricHeatCapacity_dTxi;

  function specificIsochoricHeatCapacity_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  external "C" cv = TILMedia_VLEFluidObjectFunctions_specificIsochoricHeatCapacity_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificIsochoricHeatCapacity_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsochoricHeatCapacity_dTxi;

  function isobaricThermalExpansionCoefficient_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  external "C" beta = TILMedia_VLEFluidObjectFunctions_isobaricThermalExpansionCoefficient_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_isobaricThermalExpansionCoefficient_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isobaricThermalExpansionCoefficient_dTxi;

  function isothermalCompressibility_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Compressibility kappa "Isothermal compressibility";
  external "C" kappa = TILMedia_VLEFluidObjectFunctions_isothermalCompressibility_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_isothermalCompressibility_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isothermalCompressibility_dTxi;

  function speedOfSound_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Velocity w "Speed of sound";
  external "C" w = TILMedia_VLEFluidObjectFunctions_speedOfSound_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_speedOfSound_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end speedOfSound_dTxi;

  function densityDerivativeWRTspecificEnthalpy_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  external "C" drhodh_pxi = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTspecificEnthalpy_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTspecificEnthalpy_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTspecificEnthalpy_dTxi;

  function densityDerivativeWRTpressure_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  external "C" drhodp_hxi = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTpressure_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTpressure_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTpressure_dTxi;

  function densityDerivativeWRTmassFraction_dTxin
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  external "C" drhodxi_ph = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTmassFraction_dTxin(d, T, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTmassFraction_dTxin(double, double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTmassFraction_dTxin;

  function heatCapacityRatio_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  external "C" gamma = TILMedia_VLEFluidObjectFunctions_heatCapacityRatio_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_heatCapacityRatio_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end heatCapacityRatio_dTxi;

  function prandtlNumber_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
  external "C" Pr = TILMedia_VLEFluidObjectFunctions_prandtlNumber_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_prandtlNumber_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end prandtlNumber_dTxi;

  function thermalConductivity_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external "C" lambda = TILMedia_VLEFluidObjectFunctions_thermalConductivity_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_thermalConductivity_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end thermalConductivity_dTxi;

  function dynamicViscosity_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external "C" eta = TILMedia_VLEFluidObjectFunctions_dynamicViscosity_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dynamicViscosity_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dynamicViscosity_dTxi;

  function surfaceTension_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SurfaceTension sigma "Surface tension";
  external "C" sigma = TILMedia_VLEFluidObjectFunctions_surfaceTension_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_surfaceTension_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end surfaceTension_dTxi;

  function liquidDensity_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density d_l "Density of liquid phase";
  external "C" d_l = TILMedia_VLEFluidObjectFunctions_liquidDensity_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidDensity_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidDensity_dTxi;

  function vapourDensity_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density d_v "Density of vapour phase";
  external "C" d_v = TILMedia_VLEFluidObjectFunctions_vapourDensity_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourDensity_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourDensity_dTxi;

  function liquidSpecificEnthalpy_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  external "C" h_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificEnthalpy_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidSpecificEnthalpy_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEnthalpy_dTxi;

  function vapourSpecificEnthalpy_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  external "C" h_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificEnthalpy_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourSpecificEnthalpy_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEnthalpy_dTxi;

  function liquidPressure_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.AbsolutePressure p_l "Pressure of liquid phase";
  external "C" p_l = TILMedia_VLEFluidObjectFunctions_liquidPressure_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidPressure_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidPressure_dTxi;

  function vapourPressure_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.AbsolutePressure p_v "Pressure of vapour phase";
  external "C" p_v = TILMedia_VLEFluidObjectFunctions_vapourPressure_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourPressure_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourPressure_dTxi;

  function liquidSpecificEntropy_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  external "C" s_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificEntropy_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidSpecificEntropy_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEntropy_dTxi;

  function vapourSpecificEntropy_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  external "C" s_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificEntropy_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourSpecificEntropy_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEntropy_dTxi;

  function liquidTemperature_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Temperature T_l "Temperature of liquid phase";
  external "C" T_l = TILMedia_VLEFluidObjectFunctions_liquidTemperature_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidTemperature_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidTemperature_dTxi;

  function vapourTemperature_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Temperature T_v "Temperature of vapour phase";
  external "C" T_v = TILMedia_VLEFluidObjectFunctions_vapourTemperature_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourTemperature_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourTemperature_dTxi;

  function liquidMassFraction_dTxin
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  external "C" xi_l = TILMedia_VLEFluidObjectFunctions_liquidMassFraction_dTxin(d, T, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidMassFraction_dTxin(double, double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidMassFraction_dTxin;

  function vapourMassFraction_dTxin
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  external "C" xi_v = TILMedia_VLEFluidObjectFunctions_vapourMassFraction_dTxin(d, T, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourMassFraction_dTxin(double, double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourMassFraction_dTxin;

  function liquidSpecificHeatCapacity_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  external "C" cp_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificHeatCapacity_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidSpecificHeatCapacity_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificHeatCapacity_dTxi;

  function vapourSpecificHeatCapacity_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  external "C" cp_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificHeatCapacity_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourSpecificHeatCapacity_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificHeatCapacity_dTxi;

  function liquidIsobaricThermalExpansionCoefficient_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  external "C" beta_l = TILMedia_VLEFluidObjectFunctions_liquidIsobaricThermalExpansionCoefficient_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidIsobaricThermalExpansionCoefficient_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsobaricThermalExpansionCoefficient_dTxi;

  function vapourIsobaricThermalExpansionCoefficient_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  external "C" beta_v = TILMedia_VLEFluidObjectFunctions_vapourIsobaricThermalExpansionCoefficient_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourIsobaricThermalExpansionCoefficient_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsobaricThermalExpansionCoefficient_dTxi;

  function liquidIsothermalCompressibility_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  external "C" kappa_l = TILMedia_VLEFluidObjectFunctions_liquidIsothermalCompressibility_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidIsothermalCompressibility_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsothermalCompressibility_dTxi;

  function vapourIsothermalCompressibility_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  external "C" kappa_v = TILMedia_VLEFluidObjectFunctions_vapourIsothermalCompressibility_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourIsothermalCompressibility_dTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsothermalCompressibility_dTxi;


  function density_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density d "Density";
  external "C" d = TILMedia_VLEFluidObjectFunctions_density_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_density_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end density_phxi;

  function specificEntropy_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEntropy s "Specific entropy";
  external "C" s = TILMedia_VLEFluidObjectFunctions_specificEntropy_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificEntropy_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificEntropy_phxi;

  function temperature_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Temperature T "Temperature";
  external "C" T = TILMedia_VLEFluidObjectFunctions_temperature_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_temperature_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end temperature_phxi;

  function moleFraction_phxin
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MoleFraction x "Mole fraction";
  external "C" x = TILMedia_VLEFluidObjectFunctions_moleFraction_phxin(p, h, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_moleFraction_phxin(double, double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end moleFraction_phxin;

  function steamMassFraction_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  external "C" q = TILMedia_VLEFluidObjectFunctions_steamMassFraction_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_steamMassFraction_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end steamMassFraction_phxi;

  function specificIsobaricHeatCapacity_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external "C" cp = TILMedia_VLEFluidObjectFunctions_specificIsobaricHeatCapacity_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificIsobaricHeatCapacity_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsobaricHeatCapacity_phxi;

  function specificIsochoricHeatCapacity_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  external "C" cv = TILMedia_VLEFluidObjectFunctions_specificIsochoricHeatCapacity_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificIsochoricHeatCapacity_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsochoricHeatCapacity_phxi;

  function isobaricThermalExpansionCoefficient_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  external "C" beta = TILMedia_VLEFluidObjectFunctions_isobaricThermalExpansionCoefficient_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_isobaricThermalExpansionCoefficient_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isobaricThermalExpansionCoefficient_phxi;

  function isothermalCompressibility_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Compressibility kappa "Isothermal compressibility";
  external "C" kappa = TILMedia_VLEFluidObjectFunctions_isothermalCompressibility_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_isothermalCompressibility_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isothermalCompressibility_phxi;

  function speedOfSound_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Velocity w "Speed of sound";
  external "C" w = TILMedia_VLEFluidObjectFunctions_speedOfSound_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_speedOfSound_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end speedOfSound_phxi;

  function densityDerivativeWRTspecificEnthalpy_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  external "C" drhodh_pxi = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTspecificEnthalpy_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTspecificEnthalpy_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTspecificEnthalpy_phxi;

  function densityDerivativeWRTpressure_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  external "C" drhodp_hxi = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTpressure_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTpressure_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTpressure_phxi;

  function densityDerivativeWRTmassFraction_phxin
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  external "C" drhodxi_ph = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTmassFraction_phxin(p, h, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTmassFraction_phxin(double, double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTmassFraction_phxin;

  function heatCapacityRatio_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  external "C" gamma = TILMedia_VLEFluidObjectFunctions_heatCapacityRatio_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_heatCapacityRatio_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end heatCapacityRatio_phxi;

  function prandtlNumber_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
  external "C" Pr = TILMedia_VLEFluidObjectFunctions_prandtlNumber_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_prandtlNumber_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end prandtlNumber_phxi;

  function thermalConductivity_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external "C" lambda = TILMedia_VLEFluidObjectFunctions_thermalConductivity_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_thermalConductivity_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end thermalConductivity_phxi;

  function dynamicViscosity_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external "C" eta = TILMedia_VLEFluidObjectFunctions_dynamicViscosity_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dynamicViscosity_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dynamicViscosity_phxi;

  function surfaceTension_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SurfaceTension sigma "Surface tension";
  external "C" sigma = TILMedia_VLEFluidObjectFunctions_surfaceTension_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_surfaceTension_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end surfaceTension_phxi;

  function liquidDensity_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density d_l "Density of liquid phase";
  external "C" d_l = TILMedia_VLEFluidObjectFunctions_liquidDensity_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidDensity_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidDensity_phxi;

  function vapourDensity_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density d_v "Density of vapour phase";
  external "C" d_v = TILMedia_VLEFluidObjectFunctions_vapourDensity_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourDensity_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourDensity_phxi;

  function liquidSpecificEnthalpy_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  external "C" h_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificEnthalpy_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidSpecificEnthalpy_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEnthalpy_phxi;

  function vapourSpecificEnthalpy_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  external "C" h_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificEnthalpy_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourSpecificEnthalpy_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEnthalpy_phxi;

  function liquidPressure_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.AbsolutePressure p_l "Pressure of liquid phase";
  external "C" p_l = TILMedia_VLEFluidObjectFunctions_liquidPressure_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidPressure_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidPressure_phxi;

  function vapourPressure_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.AbsolutePressure p_v "Pressure of vapour phase";
  external "C" p_v = TILMedia_VLEFluidObjectFunctions_vapourPressure_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourPressure_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourPressure_phxi;

  function liquidSpecificEntropy_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  external "C" s_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificEntropy_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidSpecificEntropy_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEntropy_phxi;

  function vapourSpecificEntropy_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  external "C" s_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificEntropy_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourSpecificEntropy_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEntropy_phxi;

  function liquidTemperature_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Temperature T_l "Temperature of liquid phase";
  external "C" T_l = TILMedia_VLEFluidObjectFunctions_liquidTemperature_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidTemperature_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidTemperature_phxi;

  function vapourTemperature_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Temperature T_v "Temperature of vapour phase";
  external "C" T_v = TILMedia_VLEFluidObjectFunctions_vapourTemperature_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourTemperature_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourTemperature_phxi;

  function liquidMassFraction_phxin
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  external "C" xi_l = TILMedia_VLEFluidObjectFunctions_liquidMassFraction_phxin(p, h, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidMassFraction_phxin(double, double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidMassFraction_phxin;

  function vapourMassFraction_phxin
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  external "C" xi_v = TILMedia_VLEFluidObjectFunctions_vapourMassFraction_phxin(p, h, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourMassFraction_phxin(double, double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourMassFraction_phxin;

  function liquidSpecificHeatCapacity_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  external "C" cp_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificHeatCapacity_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidSpecificHeatCapacity_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificHeatCapacity_phxi;

  function vapourSpecificHeatCapacity_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  external "C" cp_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificHeatCapacity_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourSpecificHeatCapacity_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificHeatCapacity_phxi;

  function liquidIsobaricThermalExpansionCoefficient_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  external "C" beta_l = TILMedia_VLEFluidObjectFunctions_liquidIsobaricThermalExpansionCoefficient_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidIsobaricThermalExpansionCoefficient_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsobaricThermalExpansionCoefficient_phxi;

  function vapourIsobaricThermalExpansionCoefficient_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  external "C" beta_v = TILMedia_VLEFluidObjectFunctions_vapourIsobaricThermalExpansionCoefficient_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourIsobaricThermalExpansionCoefficient_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsobaricThermalExpansionCoefficient_phxi;

  function liquidIsothermalCompressibility_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  external "C" kappa_l = TILMedia_VLEFluidObjectFunctions_liquidIsothermalCompressibility_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidIsothermalCompressibility_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsothermalCompressibility_phxi;

  function vapourIsothermalCompressibility_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  external "C" kappa_v = TILMedia_VLEFluidObjectFunctions_vapourIsothermalCompressibility_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourIsothermalCompressibility_phxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsothermalCompressibility_phxi;


  function density_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density d "Density";
  external "C" d = TILMedia_VLEFluidObjectFunctions_density_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_density_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end density_psxi;

  function specificEnthalpy_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
  external "C" h = TILMedia_VLEFluidObjectFunctions_specificEnthalpy_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificEnthalpy_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificEnthalpy_psxi;

  function temperature_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Temperature T "Temperature";
  external "C" T = TILMedia_VLEFluidObjectFunctions_temperature_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_temperature_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end temperature_psxi;

  function moleFraction_psxin
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MoleFraction x "Mole fraction";
  external "C" x = TILMedia_VLEFluidObjectFunctions_moleFraction_psxin(p, s, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_moleFraction_psxin(double, double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end moleFraction_psxin;

  function steamMassFraction_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  external "C" q = TILMedia_VLEFluidObjectFunctions_steamMassFraction_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_steamMassFraction_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end steamMassFraction_psxi;

  function specificIsobaricHeatCapacity_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external "C" cp = TILMedia_VLEFluidObjectFunctions_specificIsobaricHeatCapacity_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificIsobaricHeatCapacity_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsobaricHeatCapacity_psxi;

  function specificIsochoricHeatCapacity_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  external "C" cv = TILMedia_VLEFluidObjectFunctions_specificIsochoricHeatCapacity_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificIsochoricHeatCapacity_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsochoricHeatCapacity_psxi;

  function isobaricThermalExpansionCoefficient_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  external "C" beta = TILMedia_VLEFluidObjectFunctions_isobaricThermalExpansionCoefficient_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_isobaricThermalExpansionCoefficient_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isobaricThermalExpansionCoefficient_psxi;

  function isothermalCompressibility_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Compressibility kappa "Isothermal compressibility";
  external "C" kappa = TILMedia_VLEFluidObjectFunctions_isothermalCompressibility_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_isothermalCompressibility_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isothermalCompressibility_psxi;

  function speedOfSound_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Velocity w "Speed of sound";
  external "C" w = TILMedia_VLEFluidObjectFunctions_speedOfSound_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_speedOfSound_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end speedOfSound_psxi;

  function densityDerivativeWRTspecificEnthalpy_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  external "C" drhodh_pxi = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTspecificEnthalpy_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTspecificEnthalpy_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTspecificEnthalpy_psxi;

  function densityDerivativeWRTpressure_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  external "C" drhodp_hxi = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTpressure_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTpressure_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTpressure_psxi;

  function densityDerivativeWRTmassFraction_psxin
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  external "C" drhodxi_ph = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTmassFraction_psxin(p, s, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTmassFraction_psxin(double, double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTmassFraction_psxin;

  function heatCapacityRatio_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  external "C" gamma = TILMedia_VLEFluidObjectFunctions_heatCapacityRatio_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_heatCapacityRatio_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end heatCapacityRatio_psxi;

  function prandtlNumber_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
  external "C" Pr = TILMedia_VLEFluidObjectFunctions_prandtlNumber_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_prandtlNumber_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end prandtlNumber_psxi;

  function thermalConductivity_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external "C" lambda = TILMedia_VLEFluidObjectFunctions_thermalConductivity_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_thermalConductivity_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end thermalConductivity_psxi;

  function dynamicViscosity_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external "C" eta = TILMedia_VLEFluidObjectFunctions_dynamicViscosity_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dynamicViscosity_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dynamicViscosity_psxi;

  function surfaceTension_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SurfaceTension sigma "Surface tension";
  external "C" sigma = TILMedia_VLEFluidObjectFunctions_surfaceTension_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_surfaceTension_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end surfaceTension_psxi;

  function liquidDensity_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density d_l "Density of liquid phase";
  external "C" d_l = TILMedia_VLEFluidObjectFunctions_liquidDensity_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidDensity_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidDensity_psxi;

  function vapourDensity_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density d_v "Density of vapour phase";
  external "C" d_v = TILMedia_VLEFluidObjectFunctions_vapourDensity_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourDensity_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourDensity_psxi;

  function liquidSpecificEnthalpy_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  external "C" h_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificEnthalpy_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidSpecificEnthalpy_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEnthalpy_psxi;

  function vapourSpecificEnthalpy_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  external "C" h_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificEnthalpy_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourSpecificEnthalpy_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEnthalpy_psxi;

  function liquidPressure_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.AbsolutePressure p_l "Pressure of liquid phase";
  external "C" p_l = TILMedia_VLEFluidObjectFunctions_liquidPressure_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidPressure_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidPressure_psxi;

  function vapourPressure_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.AbsolutePressure p_v "Pressure of vapour phase";
  external "C" p_v = TILMedia_VLEFluidObjectFunctions_vapourPressure_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourPressure_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourPressure_psxi;

  function liquidSpecificEntropy_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  external "C" s_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificEntropy_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidSpecificEntropy_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEntropy_psxi;

  function vapourSpecificEntropy_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  external "C" s_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificEntropy_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourSpecificEntropy_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEntropy_psxi;

  function liquidTemperature_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Temperature T_l "Temperature of liquid phase";
  external "C" T_l = TILMedia_VLEFluidObjectFunctions_liquidTemperature_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidTemperature_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidTemperature_psxi;

  function vapourTemperature_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Temperature T_v "Temperature of vapour phase";
  external "C" T_v = TILMedia_VLEFluidObjectFunctions_vapourTemperature_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourTemperature_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourTemperature_psxi;

  function liquidMassFraction_psxin
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  external "C" xi_l = TILMedia_VLEFluidObjectFunctions_liquidMassFraction_psxin(p, s, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidMassFraction_psxin(double, double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidMassFraction_psxin;

  function vapourMassFraction_psxin
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  external "C" xi_v = TILMedia_VLEFluidObjectFunctions_vapourMassFraction_psxin(p, s, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourMassFraction_psxin(double, double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourMassFraction_psxin;

  function liquidSpecificHeatCapacity_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  external "C" cp_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificHeatCapacity_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidSpecificHeatCapacity_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificHeatCapacity_psxi;

  function vapourSpecificHeatCapacity_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  external "C" cp_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificHeatCapacity_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourSpecificHeatCapacity_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificHeatCapacity_psxi;

  function liquidIsobaricThermalExpansionCoefficient_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  external "C" beta_l = TILMedia_VLEFluidObjectFunctions_liquidIsobaricThermalExpansionCoefficient_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidIsobaricThermalExpansionCoefficient_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsobaricThermalExpansionCoefficient_psxi;

  function vapourIsobaricThermalExpansionCoefficient_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  external "C" beta_v = TILMedia_VLEFluidObjectFunctions_vapourIsobaricThermalExpansionCoefficient_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourIsobaricThermalExpansionCoefficient_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsobaricThermalExpansionCoefficient_psxi;

  function liquidIsothermalCompressibility_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  external "C" kappa_l = TILMedia_VLEFluidObjectFunctions_liquidIsothermalCompressibility_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidIsothermalCompressibility_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsothermalCompressibility_psxi;

  function vapourIsothermalCompressibility_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  external "C" kappa_v = TILMedia_VLEFluidObjectFunctions_vapourIsothermalCompressibility_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourIsothermalCompressibility_psxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsothermalCompressibility_psxi;


  function density_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density d "Density";
  external "C" d = TILMedia_VLEFluidObjectFunctions_density_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_density_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end density_pTxi;

  function specificEnthalpy_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
  external "C" h = TILMedia_VLEFluidObjectFunctions_specificEnthalpy_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificEnthalpy_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificEnthalpy_pTxi;

  function specificEntropy_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEntropy s "Specific entropy";
  external "C" s = TILMedia_VLEFluidObjectFunctions_specificEntropy_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificEntropy_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificEntropy_pTxi;

  function moleFraction_pTxin
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MoleFraction x "Mole fraction";
  external "C" x = TILMedia_VLEFluidObjectFunctions_moleFraction_pTxin(p, T, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_moleFraction_pTxin(double, double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end moleFraction_pTxin;

  function steamMassFraction_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  external "C" q = TILMedia_VLEFluidObjectFunctions_steamMassFraction_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_steamMassFraction_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end steamMassFraction_pTxi;

  function specificIsobaricHeatCapacity_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external "C" cp = TILMedia_VLEFluidObjectFunctions_specificIsobaricHeatCapacity_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificIsobaricHeatCapacity_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsobaricHeatCapacity_pTxi;

  function specificIsochoricHeatCapacity_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  external "C" cv = TILMedia_VLEFluidObjectFunctions_specificIsochoricHeatCapacity_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificIsochoricHeatCapacity_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsochoricHeatCapacity_pTxi;

  function isobaricThermalExpansionCoefficient_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  external "C" beta = TILMedia_VLEFluidObjectFunctions_isobaricThermalExpansionCoefficient_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_isobaricThermalExpansionCoefficient_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isobaricThermalExpansionCoefficient_pTxi;

  function isothermalCompressibility_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Compressibility kappa "Isothermal compressibility";
  external "C" kappa = TILMedia_VLEFluidObjectFunctions_isothermalCompressibility_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_isothermalCompressibility_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isothermalCompressibility_pTxi;

  function speedOfSound_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Velocity w "Speed of sound";
  external "C" w = TILMedia_VLEFluidObjectFunctions_speedOfSound_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_speedOfSound_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end speedOfSound_pTxi;

  function densityDerivativeWRTspecificEnthalpy_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  external "C" drhodh_pxi = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTspecificEnthalpy_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTspecificEnthalpy_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTspecificEnthalpy_pTxi;

  function densityDerivativeWRTpressure_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  external "C" drhodp_hxi = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTpressure_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTpressure_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTpressure_pTxi;

  function densityDerivativeWRTmassFraction_pTxin
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  external "C" drhodxi_ph = TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTmassFraction_pTxin(p, T, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_densityDerivativeWRTmassFraction_pTxin(double, double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTmassFraction_pTxin;

  function heatCapacityRatio_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.IsentropicExponent gamma "Heat capacity ratio aka isentropic expansion factor";
  external "C" gamma = TILMedia_VLEFluidObjectFunctions_heatCapacityRatio_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_heatCapacityRatio_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end heatCapacityRatio_pTxi;

  function prandtlNumber_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
  external "C" Pr = TILMedia_VLEFluidObjectFunctions_prandtlNumber_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_prandtlNumber_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end prandtlNumber_pTxi;

  function thermalConductivity_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external "C" lambda = TILMedia_VLEFluidObjectFunctions_thermalConductivity_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_thermalConductivity_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end thermalConductivity_pTxi;

  function dynamicViscosity_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external "C" eta = TILMedia_VLEFluidObjectFunctions_dynamicViscosity_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dynamicViscosity_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dynamicViscosity_pTxi;

  function surfaceTension_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SurfaceTension sigma "Surface tension";
  external "C" sigma = TILMedia_VLEFluidObjectFunctions_surfaceTension_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_surfaceTension_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end surfaceTension_pTxi;

  function liquidDensity_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density d_l "Density of liquid phase";
  external "C" d_l = TILMedia_VLEFluidObjectFunctions_liquidDensity_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidDensity_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidDensity_pTxi;

  function vapourDensity_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density d_v "Density of vapour phase";
  external "C" d_v = TILMedia_VLEFluidObjectFunctions_vapourDensity_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourDensity_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourDensity_pTxi;

  function liquidSpecificEnthalpy_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  external "C" h_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificEnthalpy_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidSpecificEnthalpy_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEnthalpy_pTxi;

  function vapourSpecificEnthalpy_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  external "C" h_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificEnthalpy_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourSpecificEnthalpy_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEnthalpy_pTxi;

  function liquidPressure_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.AbsolutePressure p_l "Pressure of liquid phase";
  external "C" p_l = TILMedia_VLEFluidObjectFunctions_liquidPressure_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidPressure_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidPressure_pTxi;

  function vapourPressure_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.AbsolutePressure p_v "Pressure of vapour phase";
  external "C" p_v = TILMedia_VLEFluidObjectFunctions_vapourPressure_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourPressure_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourPressure_pTxi;

  function liquidSpecificEntropy_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  external "C" s_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificEntropy_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidSpecificEntropy_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEntropy_pTxi;

  function vapourSpecificEntropy_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  external "C" s_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificEntropy_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourSpecificEntropy_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEntropy_pTxi;

  function liquidTemperature_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Temperature T_l "Temperature of liquid phase";
  external "C" T_l = TILMedia_VLEFluidObjectFunctions_liquidTemperature_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidTemperature_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidTemperature_pTxi;

  function vapourTemperature_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Temperature T_v "Temperature of vapour phase";
  external "C" T_v = TILMedia_VLEFluidObjectFunctions_vapourTemperature_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourTemperature_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourTemperature_pTxi;

  function liquidMassFraction_pTxin
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  external "C" xi_l = TILMedia_VLEFluidObjectFunctions_liquidMassFraction_pTxin(p, T, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidMassFraction_pTxin(double, double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidMassFraction_pTxin;

  function vapourMassFraction_pTxin
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  external "C" xi_v = TILMedia_VLEFluidObjectFunctions_vapourMassFraction_pTxin(p, T, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourMassFraction_pTxin(double, double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourMassFraction_pTxin;

  function liquidSpecificHeatCapacity_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  external "C" cp_l = TILMedia_VLEFluidObjectFunctions_liquidSpecificHeatCapacity_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidSpecificHeatCapacity_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificHeatCapacity_pTxi;

  function vapourSpecificHeatCapacity_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  external "C" cp_v = TILMedia_VLEFluidObjectFunctions_vapourSpecificHeatCapacity_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourSpecificHeatCapacity_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificHeatCapacity_pTxi;

  function liquidIsobaricThermalExpansionCoefficient_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  external "C" beta_l = TILMedia_VLEFluidObjectFunctions_liquidIsobaricThermalExpansionCoefficient_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidIsobaricThermalExpansionCoefficient_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsobaricThermalExpansionCoefficient_pTxi;

  function vapourIsobaricThermalExpansionCoefficient_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  external "C" beta_v = TILMedia_VLEFluidObjectFunctions_vapourIsobaricThermalExpansionCoefficient_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourIsobaricThermalExpansionCoefficient_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsobaricThermalExpansionCoefficient_pTxi;

  function liquidIsothermalCompressibility_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  external "C" kappa_l = TILMedia_VLEFluidObjectFunctions_liquidIsothermalCompressibility_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_liquidIsothermalCompressibility_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsothermalCompressibility_pTxi;

  function vapourIsothermalCompressibility_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  external "C" kappa_v = TILMedia_VLEFluidObjectFunctions_vapourIsothermalCompressibility_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_vapourIsothermalCompressibility_pTxi(double, double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsothermalCompressibility_pTxi;



  function dewDensity_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density d_dew "Density at dew point";
  external "C" d_dew = TILMedia_VLEFluidObjectFunctions_dewDensity_Txi(T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewDensity_Txi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewDensity_Txi;

  function bubbleDensity_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density d_bubble "Density at bubble point";
  external "C" d_bubble = TILMedia_VLEFluidObjectFunctions_bubbleDensity_Txi(T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubbleDensity_Txi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleDensity_Txi;

  function dewSpecificEnthalpy_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEnthalpy h_dew "Specific enthalpy at dew point";
  external "C" h_dew = TILMedia_VLEFluidObjectFunctions_dewSpecificEnthalpy_Txi(T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewSpecificEnthalpy_Txi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpecificEnthalpy_Txi;

  function bubbleSpecificEnthalpy_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEnthalpy h_bubble "Specific enthalpy at bubble point";
  external "C" h_bubble = TILMedia_VLEFluidObjectFunctions_bubbleSpecificEnthalpy_Txi(T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubbleSpecificEnthalpy_Txi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpecificEnthalpy_Txi;

  function dewPressure_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.AbsolutePressure p_dew "Pressure at dew point";
  external "C" p_dew = TILMedia_VLEFluidObjectFunctions_dewPressure_Txi(T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewPressure_Txi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewPressure_Txi;

  function bubblePressure_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.AbsolutePressure p_bubble "Pressure at bubble point";
  external "C" p_bubble = TILMedia_VLEFluidObjectFunctions_bubblePressure_Txi(T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubblePressure_Txi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubblePressure_Txi;

  function dewSpecificEntropy_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEntropy s_dew "Specific entropy at dew point";
  external "C" s_dew = TILMedia_VLEFluidObjectFunctions_dewSpecificEntropy_Txi(T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewSpecificEntropy_Txi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpecificEntropy_Txi;

  function bubbleSpecificEntropy_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEntropy s_bubble "Specific entropy at bubble point";
  external "C" s_bubble = TILMedia_VLEFluidObjectFunctions_bubbleSpecificEntropy_Txi(T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubbleSpecificEntropy_Txi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpecificEntropy_Txi;

  function dewTemperature_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Temperature T_dew "Temperature at dew point";
  external "C" T_dew = TILMedia_VLEFluidObjectFunctions_dewTemperature_Txi(T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewTemperature_Txi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewTemperature_Txi;

  function bubbleTemperature_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Temperature T_bubble "Temperature at bubble point";
  external "C" T_bubble = TILMedia_VLEFluidObjectFunctions_bubbleTemperature_Txi(T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubbleTemperature_Txi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleTemperature_Txi;

  function dewLiquidMassFraction_Txin
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MassFraction xi_ldew "Mass fration at dew point";
  external "C" xi_ldew = TILMedia_VLEFluidObjectFunctions_dewLiquidMassFraction_Txin(T, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewLiquidMassFraction_Txin(double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewLiquidMassFraction_Txin;

  function bubbleVapourMassFraction_Txin
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MassFraction xi_vbubble "Mass fration at bubble point";
  external "C" xi_vbubble = TILMedia_VLEFluidObjectFunctions_bubbleVapourMassFraction_Txin(T, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubbleVapourMassFraction_Txin(double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleVapourMassFraction_Txin;

  function dewSpecificIsobaricHeatCapacity_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cp_dew "Specific isobaric heat capacity cp at dew point";
  external "C" cp_dew = TILMedia_VLEFluidObjectFunctions_dewSpecificIsobaricHeatCapacity_Txi(T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewSpecificIsobaricHeatCapacity_Txi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpecificIsobaricHeatCapacity_Txi;

  function bubbleSpecificIsobaricHeatCapacity_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cp_bubble "Specific isobaric heat capacity cp at bubble point";
  external "C" cp_bubble = TILMedia_VLEFluidObjectFunctions_bubbleSpecificIsobaricHeatCapacity_Txi(T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubbleSpecificIsobaricHeatCapacity_Txi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpecificIsobaricHeatCapacity_Txi;

  function dewIsobaricThermalExpansionCoefficient_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_dew "Isobaric thermal expansion coefficient at dew point";
  external "C" beta_dew = TILMedia_VLEFluidObjectFunctions_dewIsobaricThermalExpansionCoefficient_Txi(T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewIsobaricThermalExpansionCoefficient_Txi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewIsobaricThermalExpansionCoefficient_Txi;

  function bubbleIsobaricThermalExpansionCoefficient_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_bubble "Isobaric thermal expansion coefficient at bubble point";
  external "C" beta_bubble = TILMedia_VLEFluidObjectFunctions_bubbleIsobaricThermalExpansionCoefficient_Txi(T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubbleIsobaricThermalExpansionCoefficient_Txi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleIsobaricThermalExpansionCoefficient_Txi;

  function dewIsothermalCompressibility_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Compressibility kappa_dew "Isothermal compressibility at dew point";
  external "C" kappa_dew = TILMedia_VLEFluidObjectFunctions_dewIsothermalCompressibility_Txi(T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewIsothermalCompressibility_Txi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewIsothermalCompressibility_Txi;

  function bubbleIsothermalCompressibility_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Compressibility kappa_bubble "Isothermal compressibility at bubble point";
  external "C" kappa_bubble = TILMedia_VLEFluidObjectFunctions_bubbleIsothermalCompressibility_Txi(T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubbleIsothermalCompressibility_Txi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleIsothermalCompressibility_Txi;

  function dewSpeedOfSound_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Velocity w_dew "Speed of sound at dew point";
  external "C" w_dew = TILMedia_VLEFluidObjectFunctions_dewSpeedOfSound_Txi(T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewSpeedOfSound_Txi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpeedOfSound_Txi;

  function bubbleSpeedOfSound_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Velocity w_bubble "Speed of sound at bubble point";
  external "C" w_bubble = TILMedia_VLEFluidObjectFunctions_bubbleSpeedOfSound_Txi(T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubbleSpeedOfSound_Txi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpeedOfSound_Txi;


  function dewDensity_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density d_dew "Density at dew point";
  external "C" d_dew = TILMedia_VLEFluidObjectFunctions_dewDensity_pxi(p, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewDensity_pxi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewDensity_pxi;

  function bubbleDensity_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density d_bubble "Density at bubble point";
  external "C" d_bubble = TILMedia_VLEFluidObjectFunctions_bubbleDensity_pxi(p, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubbleDensity_pxi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleDensity_pxi;

  function dewSpecificEnthalpy_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEnthalpy h_dew "Specific enthalpy at dew point";
  external "C" h_dew = TILMedia_VLEFluidObjectFunctions_dewSpecificEnthalpy_pxi(p, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewSpecificEnthalpy_pxi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpecificEnthalpy_pxi;

  function bubbleSpecificEnthalpy_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEnthalpy h_bubble "Specific enthalpy at bubble point";
  external "C" h_bubble = TILMedia_VLEFluidObjectFunctions_bubbleSpecificEnthalpy_pxi(p, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubbleSpecificEnthalpy_pxi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpecificEnthalpy_pxi;

  function dewPressure_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.AbsolutePressure p_dew "Pressure at dew point";
  external "C" p_dew = TILMedia_VLEFluidObjectFunctions_dewPressure_pxi(p, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewPressure_pxi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewPressure_pxi;

  function bubblePressure_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.AbsolutePressure p_bubble "Pressure at bubble point";
  external "C" p_bubble = TILMedia_VLEFluidObjectFunctions_bubblePressure_pxi(p, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubblePressure_pxi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubblePressure_pxi;

  function dewSpecificEntropy_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEntropy s_dew "Specific entropy at dew point";
  external "C" s_dew = TILMedia_VLEFluidObjectFunctions_dewSpecificEntropy_pxi(p, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewSpecificEntropy_pxi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpecificEntropy_pxi;

  function bubbleSpecificEntropy_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEntropy s_bubble "Specific entropy at bubble point";
  external "C" s_bubble = TILMedia_VLEFluidObjectFunctions_bubbleSpecificEntropy_pxi(p, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubbleSpecificEntropy_pxi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpecificEntropy_pxi;

  function dewTemperature_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Temperature T_dew "Temperature at dew point";
  external "C" T_dew = TILMedia_VLEFluidObjectFunctions_dewTemperature_pxi(p, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewTemperature_pxi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewTemperature_pxi;

  function bubbleTemperature_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Temperature T_bubble "Temperature at bubble point";
  external "C" T_bubble = TILMedia_VLEFluidObjectFunctions_bubbleTemperature_pxi(p, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubbleTemperature_pxi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleTemperature_pxi;

  function dewLiquidMassFraction_pxin
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MassFraction xi_ldew "Mass fration at dew point";
  external "C" xi_ldew = TILMedia_VLEFluidObjectFunctions_dewLiquidMassFraction_pxin(p, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewLiquidMassFraction_pxin(double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewLiquidMassFraction_pxin;

  function bubbleVapourMassFraction_pxin
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MassFraction xi_vbubble "Mass fration at bubble point";
  external "C" xi_vbubble = TILMedia_VLEFluidObjectFunctions_bubbleVapourMassFraction_pxin(p, xi, compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubbleVapourMassFraction_pxin(double, double*,int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleVapourMassFraction_pxin;

  function dewSpecificIsobaricHeatCapacity_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cp_dew "Specific isobaric heat capacity cp at dew point";
  external "C" cp_dew = TILMedia_VLEFluidObjectFunctions_dewSpecificIsobaricHeatCapacity_pxi(p, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewSpecificIsobaricHeatCapacity_pxi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpecificIsobaricHeatCapacity_pxi;

  function bubbleSpecificIsobaricHeatCapacity_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cp_bubble "Specific isobaric heat capacity cp at bubble point";
  external "C" cp_bubble = TILMedia_VLEFluidObjectFunctions_bubbleSpecificIsobaricHeatCapacity_pxi(p, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubbleSpecificIsobaricHeatCapacity_pxi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpecificIsobaricHeatCapacity_pxi;

  function dewIsobaricThermalExpansionCoefficient_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_dew "Isobaric thermal expansion coefficient at dew point";
  external "C" beta_dew = TILMedia_VLEFluidObjectFunctions_dewIsobaricThermalExpansionCoefficient_pxi(p, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewIsobaricThermalExpansionCoefficient_pxi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewIsobaricThermalExpansionCoefficient_pxi;

  function bubbleIsobaricThermalExpansionCoefficient_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.LinearExpansionCoefficient beta_bubble "Isobaric thermal expansion coefficient at bubble point";
  external "C" beta_bubble = TILMedia_VLEFluidObjectFunctions_bubbleIsobaricThermalExpansionCoefficient_pxi(p, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubbleIsobaricThermalExpansionCoefficient_pxi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleIsobaricThermalExpansionCoefficient_pxi;

  function dewIsothermalCompressibility_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Compressibility kappa_dew "Isothermal compressibility at dew point";
  external "C" kappa_dew = TILMedia_VLEFluidObjectFunctions_dewIsothermalCompressibility_pxi(p, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewIsothermalCompressibility_pxi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewIsothermalCompressibility_pxi;

  function bubbleIsothermalCompressibility_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Compressibility kappa_bubble "Isothermal compressibility at bubble point";
  external "C" kappa_bubble = TILMedia_VLEFluidObjectFunctions_bubbleIsothermalCompressibility_pxi(p, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubbleIsothermalCompressibility_pxi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleIsothermalCompressibility_pxi;

  function dewSpeedOfSound_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Velocity w_dew "Speed of sound at dew point";
  external "C" w_dew = TILMedia_VLEFluidObjectFunctions_dewSpeedOfSound_pxi(p, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_dewSpeedOfSound_pxi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpeedOfSound_pxi;

  function bubbleSpeedOfSound_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Velocity w_bubble "Speed of sound at bubble point";
  external "C" w_bubble = TILMedia_VLEFluidObjectFunctions_bubbleSpeedOfSound_pxi(p, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_bubbleSpeedOfSound_pxi(double, double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpeedOfSound_pxi;




  function averageMolarMass_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MolarMass M "Average molar mass";
  external "C" M = TILMedia_VLEFluidObjectFunctions_averageMolarMass_xi(xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_averageMolarMass_xi(double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end averageMolarMass_xi;

  function criticalDensity_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Density dc "Critical density";
  external "C" dc = TILMedia_VLEFluidObjectFunctions_criticalDensity_xi(xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_criticalDensity_xi(double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalDensity_xi;

  function criticalSpecificEnthalpy_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEnthalpy hc "Critical specific enthalpy";
  external "C" hc = TILMedia_VLEFluidObjectFunctions_criticalSpecificEnthalpy_xi(xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_criticalSpecificEnthalpy_xi(double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalSpecificEnthalpy_xi;

  function criticalPressure_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.AbsolutePressure pc "Critical pressure";
  external "C" pc = TILMedia_VLEFluidObjectFunctions_criticalPressure_xi(xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_criticalPressure_xi(double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalPressure_xi;

  function criticalSpecificEntropy_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificEntropy sc "Critical specific entropy";
  external "C" sc = TILMedia_VLEFluidObjectFunctions_criticalSpecificEntropy_xi(xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_criticalSpecificEntropy_xi(double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalSpecificEntropy_xi;

  function criticalTemperature_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Temperature Tc "Critical temperature";
  external "C" Tc = TILMedia_VLEFluidObjectFunctions_criticalTemperature_xi(xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_criticalTemperature_xi(double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalTemperature_xi;

  function criticalSpecificIsobaricHeatCapacity_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SpecificHeatCapacity cpc "Critical specific isobaric heat capacity cp";
  external "C" cpc = TILMedia_VLEFluidObjectFunctions_criticalSpecificIsobaricHeatCapacity_xi(xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_criticalSpecificIsobaricHeatCapacity_xi(double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalSpecificIsobaricHeatCapacity_xi;

  function criticalIsobaricThermalExpansionCoefficient_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.LinearExpansionCoefficient betac "Critical isobaric thermal expansion coefficient";
  external "C" betac = TILMedia_VLEFluidObjectFunctions_criticalIsobaricThermalExpansionCoefficient_xi(xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_criticalIsobaricThermalExpansionCoefficient_xi(double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalIsobaricThermalExpansionCoefficient_xi;

  function criticalIsothermalCompressibility_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.Compressibility kappac "Critical isothermal compressibility";
  external "C" kappac = TILMedia_VLEFluidObjectFunctions_criticalIsothermalCompressibility_xi(xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_criticalIsothermalCompressibility_xi(double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalIsothermalCompressibility_xi;

  function criticalThermalConductivity_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.ThermalConductivity lambdac "Critical thermal conductivity";
  external "C" lambdac = TILMedia_VLEFluidObjectFunctions_criticalThermalConductivity_xi(xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_criticalThermalConductivity_xi(double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalThermalConductivity_xi;

  function criticalDynamicViscosity_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.DynamicViscosity etac "Critical dynamic viscosity";
  external "C" etac = TILMedia_VLEFluidObjectFunctions_criticalDynamicViscosity_xi(xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_criticalDynamicViscosity_xi(double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalDynamicViscosity_xi;

  function criticalSurfaceTension_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.SurfaceTension sigmac "Critical surface tension";
  external "C" sigmac = TILMedia_VLEFluidObjectFunctions_criticalSurfaceTension_xi(xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_criticalSurfaceTension_xi(double*,void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalSurfaceTension_xi;

  function molarMass_n
    input Integer compNo "Component ID";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
    output SI.MolarMass M_i "Molar mass of component i";
  external "C" M_i = TILMedia_VLEFluidObjectFunctions_molarMass_n(compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_molarMass_n(int, void*);",Library="TILMedia121ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end molarMass_n;

end VLEFluidObjectFunctions;
