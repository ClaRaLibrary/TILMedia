within TILMedia.Internals;
package VLEFluidFunctions
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  function specificEnthalpy_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h "Specific enthalpy";
  external "C" h=  TILMedia_VLEFluidFunctions_specificEnthalpy_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificEnthalpy_dTxi;

  function pressure_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p "Pressure";
  external "C" p=  TILMedia_VLEFluidFunctions_pressure_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end pressure_dTxi;

  function specificEntropy_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s "Specific entropy";
  external "C" s=  TILMedia_VLEFluidFunctions_specificEntropy_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificEntropy_dTxi;

  function moleFraction_dTxin
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MoleFraction x "Mole fraction";
  external "C" x=  TILMedia_VLEFluidFunctions_moleFraction_dTxin(d, T, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end moleFraction_dTxin;

  function steamMassFraction_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction q "Steam mass fraction (quality)";
  external "C" q=  TILMedia_VLEFluidFunctions_steamMassFraction_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end steamMassFraction_dTxi;

  function specificIsobaricHeatCapacity_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external "C" cp=  TILMedia_VLEFluidFunctions_specificIsobaricHeatCapacity_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsobaricHeatCapacity_dTxi;

  function specificIsochoricHeatCapacity_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  external "C" cv=  TILMedia_VLEFluidFunctions_specificIsochoricHeatCapacity_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsochoricHeatCapacity_dTxi;

  function isobaricThermalExpansionCoefficient_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
  external "C" beta=  TILMedia_VLEFluidFunctions_isobaricThermalExpansionCoefficient_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isobaricThermalExpansionCoefficient_dTxi;

  function isothermalCompressibility_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa "Isothermal compressibility";
  external "C" kappa=  TILMedia_VLEFluidFunctions_isothermalCompressibility_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isothermalCompressibility_dTxi;

  function speedOfSound_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Velocity w "Speed of sound";
  external "C" w=  TILMedia_VLEFluidFunctions_speedOfSound_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end speedOfSound_dTxi;

  function densityDerivativeWRTspecificEnthalpy_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DerDensityByEnthalpy drhodh_pxi
      "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  external "C" drhodh_pxi=  TILMedia_VLEFluidFunctions_densityDerivativeWRTspecificEnthalpy_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTspecificEnthalpy_dTxi;

  function densityDerivativeWRTpressure_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DerDensityByPressure drhodp_hxi
      "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  external "C" drhodp_hxi=  TILMedia_VLEFluidFunctions_densityDerivativeWRTpressure_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTpressure_dTxi;

  function densityDerivativeWRTmassFraction_dTxin
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density drhodxi_ph
      "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  external "C" drhodxi_ph=  TILMedia_VLEFluidFunctions_densityDerivativeWRTmassFraction_dTxin(d, T, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTmassFraction_dTxin;

  function prandtlNumber_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.PrandtlNumber Pr "Prandtl number";
  external "C" Pr=  TILMedia_VLEFluidFunctions_prandtlNumber_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end prandtlNumber_dTxi;

  function thermalConductivity_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external "C" lambda=  TILMedia_VLEFluidFunctions_thermalConductivity_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end thermalConductivity_dTxi;

  function dynamicViscosity_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external "C" eta=  TILMedia_VLEFluidFunctions_dynamicViscosity_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dynamicViscosity_dTxi;

  function surfaceTension_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SurfaceTension sigma "Surface tension";
  external "C" sigma=  TILMedia_VLEFluidFunctions_surfaceTension_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end surfaceTension_dTxi;

  function liquidDensity_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_l "Density of liquid phase";
  external "C" d_l=  TILMedia_VLEFluidFunctions_liquidDensity_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidDensity_dTxi;

  function vapourDensity_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_v "Density of vapour phase";
  external "C" d_v=  TILMedia_VLEFluidFunctions_vapourDensity_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourDensity_dTxi;

  function liquidSpecificEnthalpy_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  external "C" h_l=  TILMedia_VLEFluidFunctions_liquidSpecificEnthalpy_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEnthalpy_dTxi;

  function vapourSpecificEnthalpy_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  external "C" h_v=  TILMedia_VLEFluidFunctions_vapourSpecificEnthalpy_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEnthalpy_dTxi;

  function liquidPressure_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p_l "Pressure of liquid phase";
  external "C" p_l=  TILMedia_VLEFluidFunctions_liquidPressure_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidPressure_dTxi;

  function vapourPressure_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p_v "Pressure of vapour phase";
  external "C" p_v=  TILMedia_VLEFluidFunctions_vapourPressure_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourPressure_dTxi;

  function liquidSpecificEntropy_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  external "C" s_l=  TILMedia_VLEFluidFunctions_liquidSpecificEntropy_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEntropy_dTxi;

  function vapourSpecificEntropy_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  external "C" s_v=  TILMedia_VLEFluidFunctions_vapourSpecificEntropy_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEntropy_dTxi;

  function liquidTemperature_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_l "Temperature of liquid phase";
  external "C" T_l=  TILMedia_VLEFluidFunctions_liquidTemperature_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidTemperature_dTxi;

  function vapourTemperature_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_v "Temperature of vapour phase";
  external "C" T_v=  TILMedia_VLEFluidFunctions_vapourTemperature_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourTemperature_dTxi;

  function liquidMassFraction_dTxin
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  external "C" xi_l=  TILMedia_VLEFluidFunctions_liquidMassFraction_dTxin(d, T, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidMassFraction_dTxin;

  function vapourMassFraction_dTxin
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  external "C" xi_v=  TILMedia_VLEFluidFunctions_vapourMassFraction_dTxin(d, T, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourMassFraction_dTxin;

  function liquidSpecificHeatCapacity_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_l
      "Specific heat capacity cp of liquid phase";
  external "C" cp_l=  TILMedia_VLEFluidFunctions_liquidSpecificHeatCapacity_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificHeatCapacity_dTxi;

  function vapourSpecificHeatCapacity_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_v
      "Specific heat capacity cp of vapour phase";
  external "C" cp_v=  TILMedia_VLEFluidFunctions_vapourSpecificHeatCapacity_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificHeatCapacity_dTxi;

  function liquidIsobaricThermalExpansionCoefficient_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_l
      "Isobaric expansion coefficient of liquid phase";
  external "C" beta_l=  TILMedia_VLEFluidFunctions_liquidIsobaricThermalExpansionCoefficient_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsobaricThermalExpansionCoefficient_dTxi;

  function vapourIsobaricThermalExpansionCoefficient_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_v
      "Isobaric expansion coefficient of vapour phase";
  external "C" beta_v=  TILMedia_VLEFluidFunctions_vapourIsobaricThermalExpansionCoefficient_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsobaricThermalExpansionCoefficient_dTxi;

  function liquidIsothermalCompressibility_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_l
      "Isothermal compressibility of liquid phase";
  external "C" kappa_l=  TILMedia_VLEFluidFunctions_liquidIsothermalCompressibility_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsothermalCompressibility_dTxi;

  function vapourIsothermalCompressibility_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_v
      "Isothermal compressibility of vapour phase";
  external "C" kappa_v=  TILMedia_VLEFluidFunctions_vapourIsothermalCompressibility_dTxi(d, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsothermalCompressibility_dTxi;

  function density_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d "Density";
  external "C" d=  TILMedia_VLEFluidFunctions_density_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end density_phxi;

  function specificEntropy_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s "Specific entropy";
  external "C" s=  TILMedia_VLEFluidFunctions_specificEntropy_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificEntropy_phxi;

  function temperature_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T "Temperature";
  external "C" T=  TILMedia_VLEFluidFunctions_temperature_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end temperature_phxi;

  function moleFraction_phxin
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MoleFraction x "Mole fraction";
  external "C" x=  TILMedia_VLEFluidFunctions_moleFraction_phxin(p, h, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end moleFraction_phxin;

  function steamMassFraction_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction q "Steam mass fraction (quality)";
  external "C" q=  TILMedia_VLEFluidFunctions_steamMassFraction_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end steamMassFraction_phxi;

  function specificIsobaricHeatCapacity_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external "C" cp=  TILMedia_VLEFluidFunctions_specificIsobaricHeatCapacity_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsobaricHeatCapacity_phxi;

  function specificIsochoricHeatCapacity_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  external "C" cv=  TILMedia_VLEFluidFunctions_specificIsochoricHeatCapacity_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsochoricHeatCapacity_phxi;

  function isobaricThermalExpansionCoefficient_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
  external "C" beta=  TILMedia_VLEFluidFunctions_isobaricThermalExpansionCoefficient_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isobaricThermalExpansionCoefficient_phxi;

  function isothermalCompressibility_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa "Isothermal compressibility";
  external "C" kappa=  TILMedia_VLEFluidFunctions_isothermalCompressibility_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isothermalCompressibility_phxi;

  function speedOfSound_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Velocity w "Speed of sound";
  external "C" w=  TILMedia_VLEFluidFunctions_speedOfSound_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end speedOfSound_phxi;

  function densityDerivativeWRTspecificEnthalpy_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DerDensityByEnthalpy drhodh_pxi
      "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  external "C" drhodh_pxi=  TILMedia_VLEFluidFunctions_densityDerivativeWRTspecificEnthalpy_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTspecificEnthalpy_phxi;

  function densityDerivativeWRTpressure_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DerDensityByPressure drhodp_hxi
      "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  external "C" drhodp_hxi=  TILMedia_VLEFluidFunctions_densityDerivativeWRTpressure_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTpressure_phxi;

  function densityDerivativeWRTmassFraction_phxin
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density drhodxi_ph
      "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  external "C" drhodxi_ph=  TILMedia_VLEFluidFunctions_densityDerivativeWRTmassFraction_phxin(p, h, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTmassFraction_phxin;

  function prandtlNumber_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.PrandtlNumber Pr "Prandtl number";
  external "C" Pr=  TILMedia_VLEFluidFunctions_prandtlNumber_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end prandtlNumber_phxi;

  function thermalConductivity_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external "C" lambda=  TILMedia_VLEFluidFunctions_thermalConductivity_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end thermalConductivity_phxi;

  function dynamicViscosity_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external "C" eta=  TILMedia_VLEFluidFunctions_dynamicViscosity_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dynamicViscosity_phxi;

  function surfaceTension_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SurfaceTension sigma "Surface tension";
  external "C" sigma=  TILMedia_VLEFluidFunctions_surfaceTension_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end surfaceTension_phxi;

  function liquidDensity_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_l "Density of liquid phase";
  external "C" d_l=  TILMedia_VLEFluidFunctions_liquidDensity_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidDensity_phxi;

  function vapourDensity_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_v "Density of vapour phase";
  external "C" d_v=  TILMedia_VLEFluidFunctions_vapourDensity_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourDensity_phxi;

  function liquidSpecificEnthalpy_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  external "C" h_l=  TILMedia_VLEFluidFunctions_liquidSpecificEnthalpy_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEnthalpy_phxi;

  function vapourSpecificEnthalpy_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  external "C" h_v=  TILMedia_VLEFluidFunctions_vapourSpecificEnthalpy_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEnthalpy_phxi;

  function liquidPressure_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p_l "Pressure of liquid phase";
  external "C" p_l=  TILMedia_VLEFluidFunctions_liquidPressure_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidPressure_phxi;

  function vapourPressure_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p_v "Pressure of vapour phase";
  external "C" p_v=  TILMedia_VLEFluidFunctions_vapourPressure_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourPressure_phxi;

  function liquidSpecificEntropy_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  external "C" s_l=  TILMedia_VLEFluidFunctions_liquidSpecificEntropy_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEntropy_phxi;

  function vapourSpecificEntropy_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  external "C" s_v=  TILMedia_VLEFluidFunctions_vapourSpecificEntropy_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEntropy_phxi;

  function liquidTemperature_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_l "Temperature of liquid phase";
  external "C" T_l=  TILMedia_VLEFluidFunctions_liquidTemperature_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidTemperature_phxi;

  function vapourTemperature_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_v "Temperature of vapour phase";
  external "C" T_v=  TILMedia_VLEFluidFunctions_vapourTemperature_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourTemperature_phxi;

  function liquidMassFraction_phxin
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  external "C" xi_l=  TILMedia_VLEFluidFunctions_liquidMassFraction_phxin(p, h, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidMassFraction_phxin;

  function vapourMassFraction_phxin
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  external "C" xi_v=  TILMedia_VLEFluidFunctions_vapourMassFraction_phxin(p, h, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourMassFraction_phxin;

  function liquidSpecificHeatCapacity_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_l
      "Specific heat capacity cp of liquid phase";
  external "C" cp_l=  TILMedia_VLEFluidFunctions_liquidSpecificHeatCapacity_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificHeatCapacity_phxi;

  function vapourSpecificHeatCapacity_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_v
      "Specific heat capacity cp of vapour phase";
  external "C" cp_v=  TILMedia_VLEFluidFunctions_vapourSpecificHeatCapacity_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificHeatCapacity_phxi;

  function liquidIsobaricThermalExpansionCoefficient_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_l
      "Isobaric expansion coefficient of liquid phase";
  external "C" beta_l=  TILMedia_VLEFluidFunctions_liquidIsobaricThermalExpansionCoefficient_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsobaricThermalExpansionCoefficient_phxi;

  function vapourIsobaricThermalExpansionCoefficient_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_v
      "Isobaric expansion coefficient of vapour phase";
  external "C" beta_v=  TILMedia_VLEFluidFunctions_vapourIsobaricThermalExpansionCoefficient_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsobaricThermalExpansionCoefficient_phxi;

  function liquidIsothermalCompressibility_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_l
      "Isothermal compressibility of liquid phase";
  external "C" kappa_l=  TILMedia_VLEFluidFunctions_liquidIsothermalCompressibility_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsothermalCompressibility_phxi;

  function vapourIsothermalCompressibility_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_v
      "Isothermal compressibility of vapour phase";
  external "C" kappa_v=  TILMedia_VLEFluidFunctions_vapourIsothermalCompressibility_phxi(p, h, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsothermalCompressibility_phxi;

  function density_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d "Density";
  external "C" d=  TILMedia_VLEFluidFunctions_density_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end density_psxi;

  function specificEnthalpy_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h "Specific enthalpy";
  external "C" h=  TILMedia_VLEFluidFunctions_specificEnthalpy_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificEnthalpy_psxi;

  function temperature_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T "Temperature";
  external "C" T=  TILMedia_VLEFluidFunctions_temperature_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end temperature_psxi;

  function moleFraction_psxin
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MoleFraction x "Mole fraction";
  external "C" x=  TILMedia_VLEFluidFunctions_moleFraction_psxin(p, s, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end moleFraction_psxin;

  function steamMassFraction_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction q "Steam mass fraction (quality)";
  external "C" q=  TILMedia_VLEFluidFunctions_steamMassFraction_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end steamMassFraction_psxi;

  function specificIsobaricHeatCapacity_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external "C" cp=  TILMedia_VLEFluidFunctions_specificIsobaricHeatCapacity_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsobaricHeatCapacity_psxi;

  function specificIsochoricHeatCapacity_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  external "C" cv=  TILMedia_VLEFluidFunctions_specificIsochoricHeatCapacity_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsochoricHeatCapacity_psxi;

  function isobaricThermalExpansionCoefficient_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
  external "C" beta=  TILMedia_VLEFluidFunctions_isobaricThermalExpansionCoefficient_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isobaricThermalExpansionCoefficient_psxi;

  function isothermalCompressibility_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa "Isothermal compressibility";
  external "C" kappa=  TILMedia_VLEFluidFunctions_isothermalCompressibility_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isothermalCompressibility_psxi;

  function speedOfSound_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Velocity w "Speed of sound";
  external "C" w=  TILMedia_VLEFluidFunctions_speedOfSound_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end speedOfSound_psxi;

  function densityDerivativeWRTspecificEnthalpy_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DerDensityByEnthalpy drhodh_pxi
      "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  external "C" drhodh_pxi=  TILMedia_VLEFluidFunctions_densityDerivativeWRTspecificEnthalpy_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTspecificEnthalpy_psxi;

  function densityDerivativeWRTpressure_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DerDensityByPressure drhodp_hxi
      "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  external "C" drhodp_hxi=  TILMedia_VLEFluidFunctions_densityDerivativeWRTpressure_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTpressure_psxi;

  function densityDerivativeWRTmassFraction_psxin
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density drhodxi_ph
      "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  external "C" drhodxi_ph=  TILMedia_VLEFluidFunctions_densityDerivativeWRTmassFraction_psxin(p, s, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTmassFraction_psxin;

  function prandtlNumber_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.PrandtlNumber Pr "Prandtl number";
  external "C" Pr=  TILMedia_VLEFluidFunctions_prandtlNumber_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end prandtlNumber_psxi;

  function thermalConductivity_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external "C" lambda=  TILMedia_VLEFluidFunctions_thermalConductivity_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end thermalConductivity_psxi;

  function dynamicViscosity_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external "C" eta=  TILMedia_VLEFluidFunctions_dynamicViscosity_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dynamicViscosity_psxi;

  function surfaceTension_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SurfaceTension sigma "Surface tension";
  external "C" sigma=  TILMedia_VLEFluidFunctions_surfaceTension_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end surfaceTension_psxi;

  function liquidDensity_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_l "Density of liquid phase";
  external "C" d_l=  TILMedia_VLEFluidFunctions_liquidDensity_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidDensity_psxi;

  function vapourDensity_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_v "Density of vapour phase";
  external "C" d_v=  TILMedia_VLEFluidFunctions_vapourDensity_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourDensity_psxi;

  function liquidSpecificEnthalpy_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  external "C" h_l=  TILMedia_VLEFluidFunctions_liquidSpecificEnthalpy_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEnthalpy_psxi;

  function vapourSpecificEnthalpy_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  external "C" h_v=  TILMedia_VLEFluidFunctions_vapourSpecificEnthalpy_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEnthalpy_psxi;

  function liquidPressure_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p_l "Pressure of liquid phase";
  external "C" p_l=  TILMedia_VLEFluidFunctions_liquidPressure_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidPressure_psxi;

  function vapourPressure_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p_v "Pressure of vapour phase";
  external "C" p_v=  TILMedia_VLEFluidFunctions_vapourPressure_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourPressure_psxi;

  function liquidSpecificEntropy_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  external "C" s_l=  TILMedia_VLEFluidFunctions_liquidSpecificEntropy_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEntropy_psxi;

  function vapourSpecificEntropy_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  external "C" s_v=  TILMedia_VLEFluidFunctions_vapourSpecificEntropy_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEntropy_psxi;

  function liquidTemperature_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_l "Temperature of liquid phase";
  external "C" T_l=  TILMedia_VLEFluidFunctions_liquidTemperature_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidTemperature_psxi;

  function vapourTemperature_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_v "Temperature of vapour phase";
  external "C" T_v=  TILMedia_VLEFluidFunctions_vapourTemperature_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourTemperature_psxi;

  function liquidMassFraction_psxin
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  external "C" xi_l=  TILMedia_VLEFluidFunctions_liquidMassFraction_psxin(p, s, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidMassFraction_psxin;

  function vapourMassFraction_psxin
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  external "C" xi_v=  TILMedia_VLEFluidFunctions_vapourMassFraction_psxin(p, s, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourMassFraction_psxin;

  function liquidSpecificHeatCapacity_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_l
      "Specific heat capacity cp of liquid phase";
  external "C" cp_l=  TILMedia_VLEFluidFunctions_liquidSpecificHeatCapacity_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificHeatCapacity_psxi;

  function vapourSpecificHeatCapacity_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_v
      "Specific heat capacity cp of vapour phase";
  external "C" cp_v=  TILMedia_VLEFluidFunctions_vapourSpecificHeatCapacity_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificHeatCapacity_psxi;

  function liquidIsobaricThermalExpansionCoefficient_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_l
      "Isobaric expansion coefficient of liquid phase";
  external "C" beta_l=  TILMedia_VLEFluidFunctions_liquidIsobaricThermalExpansionCoefficient_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsobaricThermalExpansionCoefficient_psxi;

  function vapourIsobaricThermalExpansionCoefficient_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_v
      "Isobaric expansion coefficient of vapour phase";
  external "C" beta_v=  TILMedia_VLEFluidFunctions_vapourIsobaricThermalExpansionCoefficient_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsobaricThermalExpansionCoefficient_psxi;

  function liquidIsothermalCompressibility_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_l
      "Isothermal compressibility of liquid phase";
  external "C" kappa_l=  TILMedia_VLEFluidFunctions_liquidIsothermalCompressibility_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsothermalCompressibility_psxi;

  function vapourIsothermalCompressibility_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_v
      "Isothermal compressibility of vapour phase";
  external "C" kappa_v=  TILMedia_VLEFluidFunctions_vapourIsothermalCompressibility_psxi(p, s, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsothermalCompressibility_psxi;

  function density_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d "Density";
  external "C" d=  TILMedia_VLEFluidFunctions_density_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end density_pTxi;

  function specificEnthalpy_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h "Specific enthalpy";
  external "C" h=  TILMedia_VLEFluidFunctions_specificEnthalpy_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificEnthalpy_pTxi;

  function specificEntropy_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s "Specific entropy";
  external "C" s=  TILMedia_VLEFluidFunctions_specificEntropy_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificEntropy_pTxi;

  function moleFraction_pTxin
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MoleFraction x "Mole fraction";
  external "C" x=  TILMedia_VLEFluidFunctions_moleFraction_pTxin(p, T, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end moleFraction_pTxin;

  function steamMassFraction_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction q "Steam mass fraction (quality)";
  external "C" q=  TILMedia_VLEFluidFunctions_steamMassFraction_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end steamMassFraction_pTxi;

  function specificIsobaricHeatCapacity_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external "C" cp=  TILMedia_VLEFluidFunctions_specificIsobaricHeatCapacity_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsobaricHeatCapacity_pTxi;

  function specificIsochoricHeatCapacity_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  external "C" cv=  TILMedia_VLEFluidFunctions_specificIsochoricHeatCapacity_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsochoricHeatCapacity_pTxi;

  function isobaricThermalExpansionCoefficient_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
  external "C" beta=  TILMedia_VLEFluidFunctions_isobaricThermalExpansionCoefficient_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isobaricThermalExpansionCoefficient_pTxi;

  function isothermalCompressibility_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa "Isothermal compressibility";
  external "C" kappa=  TILMedia_VLEFluidFunctions_isothermalCompressibility_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isothermalCompressibility_pTxi;

  function speedOfSound_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Velocity w "Speed of sound";
  external "C" w=  TILMedia_VLEFluidFunctions_speedOfSound_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end speedOfSound_pTxi;

  function densityDerivativeWRTspecificEnthalpy_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DerDensityByEnthalpy drhodh_pxi
      "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  external "C" drhodh_pxi=  TILMedia_VLEFluidFunctions_densityDerivativeWRTspecificEnthalpy_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTspecificEnthalpy_pTxi;

  function densityDerivativeWRTpressure_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DerDensityByPressure drhodp_hxi
      "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  external "C" drhodp_hxi=  TILMedia_VLEFluidFunctions_densityDerivativeWRTpressure_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTpressure_pTxi;

  function densityDerivativeWRTmassFraction_pTxin
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density drhodxi_ph
      "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  external "C" drhodxi_ph=  TILMedia_VLEFluidFunctions_densityDerivativeWRTmassFraction_pTxin(p, T, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTmassFraction_pTxin;

  function prandtlNumber_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.PrandtlNumber Pr "Prandtl number";
  external "C" Pr=  TILMedia_VLEFluidFunctions_prandtlNumber_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end prandtlNumber_pTxi;

  function thermalConductivity_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external "C" lambda=  TILMedia_VLEFluidFunctions_thermalConductivity_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end thermalConductivity_pTxi;

  function dynamicViscosity_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external "C" eta=  TILMedia_VLEFluidFunctions_dynamicViscosity_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dynamicViscosity_pTxi;

  function surfaceTension_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SurfaceTension sigma "Surface tension";
  external "C" sigma=  TILMedia_VLEFluidFunctions_surfaceTension_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end surfaceTension_pTxi;

  function liquidDensity_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_l "Density of liquid phase";
  external "C" d_l=  TILMedia_VLEFluidFunctions_liquidDensity_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidDensity_pTxi;

  function vapourDensity_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_v "Density of vapour phase";
  external "C" d_v=  TILMedia_VLEFluidFunctions_vapourDensity_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourDensity_pTxi;

  function liquidSpecificEnthalpy_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  external "C" h_l=  TILMedia_VLEFluidFunctions_liquidSpecificEnthalpy_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEnthalpy_pTxi;

  function vapourSpecificEnthalpy_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  external "C" h_v=  TILMedia_VLEFluidFunctions_vapourSpecificEnthalpy_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEnthalpy_pTxi;

  function liquidPressure_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p_l "Pressure of liquid phase";
  external "C" p_l=  TILMedia_VLEFluidFunctions_liquidPressure_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidPressure_pTxi;

  function vapourPressure_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p_v "Pressure of vapour phase";
  external "C" p_v=  TILMedia_VLEFluidFunctions_vapourPressure_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourPressure_pTxi;

  function liquidSpecificEntropy_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  external "C" s_l=  TILMedia_VLEFluidFunctions_liquidSpecificEntropy_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEntropy_pTxi;

  function vapourSpecificEntropy_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  external "C" s_v=  TILMedia_VLEFluidFunctions_vapourSpecificEntropy_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEntropy_pTxi;

  function liquidTemperature_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_l "Temperature of liquid phase";
  external "C" T_l=  TILMedia_VLEFluidFunctions_liquidTemperature_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidTemperature_pTxi;

  function vapourTemperature_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_v "Temperature of vapour phase";
  external "C" T_v=  TILMedia_VLEFluidFunctions_vapourTemperature_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourTemperature_pTxi;

  function liquidMassFraction_pTxin
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  external "C" xi_l=  TILMedia_VLEFluidFunctions_liquidMassFraction_pTxin(p, T, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidMassFraction_pTxin;

  function vapourMassFraction_pTxin
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  external "C" xi_v=  TILMedia_VLEFluidFunctions_vapourMassFraction_pTxin(p, T, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourMassFraction_pTxin;

  function liquidSpecificHeatCapacity_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_l
      "Specific heat capacity cp of liquid phase";
  external "C" cp_l=  TILMedia_VLEFluidFunctions_liquidSpecificHeatCapacity_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificHeatCapacity_pTxi;

  function vapourSpecificHeatCapacity_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_v
      "Specific heat capacity cp of vapour phase";
  external "C" cp_v=  TILMedia_VLEFluidFunctions_vapourSpecificHeatCapacity_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificHeatCapacity_pTxi;

  function liquidIsobaricThermalExpansionCoefficient_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_l
      "Isobaric expansion coefficient of liquid phase";
  external "C" beta_l=  TILMedia_VLEFluidFunctions_liquidIsobaricThermalExpansionCoefficient_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsobaricThermalExpansionCoefficient_pTxi;

  function vapourIsobaricThermalExpansionCoefficient_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_v
      "Isobaric expansion coefficient of vapour phase";
  external "C" beta_v=  TILMedia_VLEFluidFunctions_vapourIsobaricThermalExpansionCoefficient_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsobaricThermalExpansionCoefficient_pTxi;

  function liquidIsothermalCompressibility_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_l
      "Isothermal compressibility of liquid phase";
  external "C" kappa_l=  TILMedia_VLEFluidFunctions_liquidIsothermalCompressibility_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsothermalCompressibility_pTxi;

  function vapourIsothermalCompressibility_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_v
      "Isothermal compressibility of vapour phase";
  external "C" kappa_v=  TILMedia_VLEFluidFunctions_vapourIsothermalCompressibility_pTxi(p, T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsothermalCompressibility_pTxi;

  function dewDensity_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_dew "Density at dew point";
  external "C" d_dew=  TILMedia_VLEFluidFunctions_dewDensity_Txi(T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewDensity_Txi;

  function bubbleDensity_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_bubble "Density at bubble point";
  external "C" d_bubble=  TILMedia_VLEFluidFunctions_bubbleDensity_Txi(T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleDensity_Txi;

  function dewSpecificEnthalpy_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_dew "Specific enthalpy at dew point";
  external "C" h_dew=  TILMedia_VLEFluidFunctions_dewSpecificEnthalpy_Txi(T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpecificEnthalpy_Txi;

  function bubbleSpecificEnthalpy_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_bubble "Specific enthalpy at bubble point";
  external "C" h_bubble=  TILMedia_VLEFluidFunctions_bubbleSpecificEnthalpy_Txi(T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpecificEnthalpy_Txi;

  function dewPressure_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p_dew "Pressure at dew point";
  external "C" p_dew=  TILMedia_VLEFluidFunctions_dewPressure_Txi(T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewPressure_Txi;

  function bubblePressure_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p_bubble "Pressure at bubble point";
  external "C" p_bubble=  TILMedia_VLEFluidFunctions_bubblePressure_Txi(T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubblePressure_Txi;

  function dewSpecificEntropy_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_dew "Specific entropy at dew point";
  external "C" s_dew=  TILMedia_VLEFluidFunctions_dewSpecificEntropy_Txi(T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpecificEntropy_Txi;

  function bubbleSpecificEntropy_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_bubble "Specific entropy at bubble point";
  external "C" s_bubble=  TILMedia_VLEFluidFunctions_bubbleSpecificEntropy_Txi(T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpecificEntropy_Txi;

  function dewTemperature_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_dew "Temperature at dew point";
  external "C" T_dew=  TILMedia_VLEFluidFunctions_dewTemperature_Txi(T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewTemperature_Txi;

  function bubbleTemperature_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_bubble "Temperature at bubble point";
  external "C" T_bubble=  TILMedia_VLEFluidFunctions_bubbleTemperature_Txi(T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleTemperature_Txi;

  function dewLiquidMassFraction_Txin
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_ldew "Mass fration at dew point";
  external "C" xi_ldew=  TILMedia_VLEFluidFunctions_dewLiquidMassFraction_Txin(T, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewLiquidMassFraction_Txin;

  function bubbleVapourMassFraction_Txin
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_vbubble "Mass fration at bubble point";
  external "C" xi_vbubble=  TILMedia_VLEFluidFunctions_bubbleVapourMassFraction_Txin(T, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleVapourMassFraction_Txin;

  function dewSpecificIsobaricHeatCapacity_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_dew
      "Specific isobaric heat capacity cp at dew point";
  external "C" cp_dew=  TILMedia_VLEFluidFunctions_dewSpecificIsobaricHeatCapacity_Txi(T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpecificIsobaricHeatCapacity_Txi;

  function bubbleSpecificIsobaricHeatCapacity_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_bubble
      "Specific isobaric heat capacity cp at bubble point";
  external "C" cp_bubble=  TILMedia_VLEFluidFunctions_bubbleSpecificIsobaricHeatCapacity_Txi(T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpecificIsobaricHeatCapacity_Txi;

  function dewIsobaricThermalExpansionCoefficient_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_dew
      "Isobaric thermal expansion coefficient at dew point";
  external "C" beta_dew=  TILMedia_VLEFluidFunctions_dewIsobaricThermalExpansionCoefficient_Txi(T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewIsobaricThermalExpansionCoefficient_Txi;

  function bubbleIsobaricThermalExpansionCoefficient_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_bubble
      "Isobaric thermal expansion coefficient at bubble point";
  external "C" beta_bubble=  TILMedia_VLEFluidFunctions_bubbleIsobaricThermalExpansionCoefficient_Txi(T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleIsobaricThermalExpansionCoefficient_Txi;

  function dewIsothermalCompressibility_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_dew
      "Isothermal compressibility at dew point";
  external "C" kappa_dew=  TILMedia_VLEFluidFunctions_dewIsothermalCompressibility_Txi(T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewIsothermalCompressibility_Txi;

  function bubbleIsothermalCompressibility_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_bubble
      "Isothermal compressibility at bubble point";
  external "C" kappa_bubble=  TILMedia_VLEFluidFunctions_bubbleIsothermalCompressibility_Txi(T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleIsothermalCompressibility_Txi;

  function dewSpeedOfSound_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Velocity w_dew "Speed of sound at dew point";
  external "C" w_dew=  TILMedia_VLEFluidFunctions_dewSpeedOfSound_Txi(T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpeedOfSound_Txi;

  function bubbleSpeedOfSound_Txi
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Velocity w_bubble "Speed of sound at bubble point";
  external "C" w_bubble=  TILMedia_VLEFluidFunctions_bubbleSpeedOfSound_Txi(T, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpeedOfSound_Txi;

  function dewDensity_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_dew "Density at dew point";
  external "C" d_dew=  TILMedia_VLEFluidFunctions_dewDensity_pxi(p, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewDensity_pxi;

  function bubbleDensity_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density d_bubble "Density at bubble point";
  external "C" d_bubble=  TILMedia_VLEFluidFunctions_bubbleDensity_pxi(p, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleDensity_pxi;

  function dewSpecificEnthalpy_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_dew "Specific enthalpy at dew point";
  external "C" h_dew=  TILMedia_VLEFluidFunctions_dewSpecificEnthalpy_pxi(p, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpecificEnthalpy_pxi;

  function bubbleSpecificEnthalpy_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy h_bubble "Specific enthalpy at bubble point";
  external "C" h_bubble=  TILMedia_VLEFluidFunctions_bubbleSpecificEnthalpy_pxi(p, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpecificEnthalpy_pxi;

  function dewPressure_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p_dew "Pressure at dew point";
  external "C" p_dew=  TILMedia_VLEFluidFunctions_dewPressure_pxi(p, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewPressure_pxi;

  function bubblePressure_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure p_bubble "Pressure at bubble point";
  external "C" p_bubble=  TILMedia_VLEFluidFunctions_bubblePressure_pxi(p, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubblePressure_pxi;

  function dewSpecificEntropy_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_dew "Specific entropy at dew point";
  external "C" s_dew=  TILMedia_VLEFluidFunctions_dewSpecificEntropy_pxi(p, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpecificEntropy_pxi;

  function bubbleSpecificEntropy_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy s_bubble "Specific entropy at bubble point";
  external "C" s_bubble=  TILMedia_VLEFluidFunctions_bubbleSpecificEntropy_pxi(p, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpecificEntropy_pxi;

  function dewTemperature_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_dew "Temperature at dew point";
  external "C" T_dew=  TILMedia_VLEFluidFunctions_dewTemperature_pxi(p, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewTemperature_pxi;

  function bubbleTemperature_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature T_bubble "Temperature at bubble point";
  external "C" T_bubble=  TILMedia_VLEFluidFunctions_bubbleTemperature_pxi(p, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleTemperature_pxi;

  function dewLiquidMassFraction_pxin
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_ldew "Mass fration at dew point";
  external "C" xi_ldew=  TILMedia_VLEFluidFunctions_dewLiquidMassFraction_pxin(p, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewLiquidMassFraction_pxin;

  function bubbleVapourMassFraction_pxin
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MassFraction xi_vbubble "Mass fration at bubble point";
  external "C" xi_vbubble=  TILMedia_VLEFluidFunctions_bubbleVapourMassFraction_pxin(p, xi, compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleVapourMassFraction_pxin;

  function dewSpecificIsobaricHeatCapacity_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_dew
      "Specific isobaric heat capacity cp at dew point";
  external "C" cp_dew=  TILMedia_VLEFluidFunctions_dewSpecificIsobaricHeatCapacity_pxi(p, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpecificIsobaricHeatCapacity_pxi;

  function bubbleSpecificIsobaricHeatCapacity_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cp_bubble
      "Specific isobaric heat capacity cp at bubble point";
  external "C" cp_bubble=  TILMedia_VLEFluidFunctions_bubbleSpecificIsobaricHeatCapacity_pxi(p, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpecificIsobaricHeatCapacity_pxi;

  function dewIsobaricThermalExpansionCoefficient_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_dew
      "Isobaric thermal expansion coefficient at dew point";
  external "C" beta_dew=  TILMedia_VLEFluidFunctions_dewIsobaricThermalExpansionCoefficient_pxi(p, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewIsobaricThermalExpansionCoefficient_pxi;

  function bubbleIsobaricThermalExpansionCoefficient_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient beta_bubble
      "Isobaric thermal expansion coefficient at bubble point";
  external "C" beta_bubble=  TILMedia_VLEFluidFunctions_bubbleIsobaricThermalExpansionCoefficient_pxi(p, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleIsobaricThermalExpansionCoefficient_pxi;

  function dewIsothermalCompressibility_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_dew
      "Isothermal compressibility at dew point";
  external "C" kappa_dew=  TILMedia_VLEFluidFunctions_dewIsothermalCompressibility_pxi(p, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewIsothermalCompressibility_pxi;

  function bubbleIsothermalCompressibility_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappa_bubble
      "Isothermal compressibility at bubble point";
  external "C" kappa_bubble=  TILMedia_VLEFluidFunctions_bubbleIsothermalCompressibility_pxi(p, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleIsothermalCompressibility_pxi;

  function dewSpeedOfSound_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Velocity w_dew "Speed of sound at dew point";
  external "C" w_dew=  TILMedia_VLEFluidFunctions_dewSpeedOfSound_pxi(p, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpeedOfSound_pxi;

  function bubbleSpeedOfSound_pxi
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Velocity w_bubble "Speed of sound at bubble point";
  external "C" w_bubble=  TILMedia_VLEFluidFunctions_bubbleSpeedOfSound_pxi(p, xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpeedOfSound_pxi;

  function averageMolarMass_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MolarMass M "Average molar mass";
  external "C" M=  TILMedia_VLEFluidFunctions_averageMolarMass_xi(xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end averageMolarMass_xi;

  function criticalDensity_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Density dc "Critical density";
  external "C" dc=  TILMedia_VLEFluidFunctions_criticalDensity_xi(xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalDensity_xi;

  function criticalSpecificEnthalpy_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEnthalpy hc "Critical specific enthalpy";
  external "C" hc=  TILMedia_VLEFluidFunctions_criticalSpecificEnthalpy_xi(xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalSpecificEnthalpy_xi;

  function criticalPressure_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.AbsolutePressure pc "Critical pressure";
  external "C" pc=  TILMedia_VLEFluidFunctions_criticalPressure_xi(xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalPressure_xi;

  function criticalSpecificEntropy_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificEntropy sc "Critical specific entropy";
  external "C" sc=  TILMedia_VLEFluidFunctions_criticalSpecificEntropy_xi(xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalSpecificEntropy_xi;

  function criticalTemperature_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Temperature Tc "Critical temperature";
  external "C" Tc=  TILMedia_VLEFluidFunctions_criticalTemperature_xi(xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalTemperature_xi;

  function criticalSpecificIsobaricHeatCapacity_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SpecificHeatCapacity cpc
      "Critical specific isobaric heat capacity cp";
  external "C" cpc=  TILMedia_VLEFluidFunctions_criticalSpecificIsobaricHeatCapacity_xi(xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalSpecificIsobaricHeatCapacity_xi;

  function criticalIsobaricThermalExpansionCoefficient_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.LinearExpansionCoefficient betac
      "Critical isobaric thermal expansion coefficient";
  external "C" betac=  TILMedia_VLEFluidFunctions_criticalIsobaricThermalExpansionCoefficient_xi(xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalIsobaricThermalExpansionCoefficient_xi;

  function criticalIsothermalCompressibility_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.Compressibility kappac "Critical isothermal compressibility";
  external "C" kappac=  TILMedia_VLEFluidFunctions_criticalIsothermalCompressibility_xi(xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalIsothermalCompressibility_xi;

  function criticalThermalConductivity_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.ThermalConductivity lambdac "Critical thermal conductivity";
  external "C" lambdac=  TILMedia_VLEFluidFunctions_criticalThermalConductivity_xi(xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalThermalConductivity_xi;

  function criticalDynamicViscosity_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.DynamicViscosity etac "Critical dynamic viscosity";
  external "C" etac=  TILMedia_VLEFluidFunctions_criticalDynamicViscosity_xi(xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalDynamicViscosity_xi;

  function criticalSurfaceTension_xi
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.SurfaceTension sigmac "Critical surface tension";
  external "C" sigmac=  TILMedia_VLEFluidFunctions_criticalSurfaceTension_xi(xi, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalSurfaceTension_xi;

  function molarMass_n
    input Integer compNo "Component ID";
    input TILMedia.Internals.VLEFluidName vleFluidName "VLEFluid name";
    input Integer nc "Number of components";
    output SI.MolarMass M_i "Molar mass of component i";
  external "C" M_i=  TILMedia_VLEFluidFunctions_molarMass_n(compNo, vleFluidName, nc)
    annotation(Library="TILMedia100ClaRa");
    annotation (Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end molarMass_n;

end VLEFluidFunctions;
