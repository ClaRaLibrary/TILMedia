within TILMedia;
package VLEFluidFunctions
  "Package for calculation of VLEFluid properties with a functional call"
  extends TILMedia.Internals.ClassTypes.ModelPackage;


  function specificEnthalpy_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h "Specific enthalpy";
  algorithm
    h := TILMedia.Internals.VLEFluidFunctions.specificEnthalpy_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificEnthalpy_dTxi;

  function pressure_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p "Pressure";
  algorithm
    p := TILMedia.Internals.VLEFluidFunctions.pressure_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end pressure_dTxi;

  function specificEntropy_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s "Specific entropy";
  algorithm
    s := TILMedia.Internals.VLEFluidFunctions.specificEntropy_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificEntropy_dTxi;

  function moleFraction_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MoleFraction x "Mole fraction";
  algorithm
    x := TILMedia.Internals.VLEFluidFunctions.moleFraction_dTxin(d,T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end moleFraction_dTxi;

  function steamMassFraction_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  algorithm
    q := TILMedia.Internals.VLEFluidFunctions.steamMassFraction_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end steamMassFraction_dTxi;

  function specificIsobaricHeatCapacity_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  algorithm
    cp := TILMedia.Internals.VLEFluidFunctions.specificIsobaricHeatCapacity_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsobaricHeatCapacity_dTxi;

  function specificIsochoricHeatCapacity_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  algorithm
    cv := TILMedia.Internals.VLEFluidFunctions.specificIsochoricHeatCapacity_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsochoricHeatCapacity_dTxi;

  function isobaricThermalExpansionCoefficient_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  algorithm
    beta := TILMedia.Internals.VLEFluidFunctions.isobaricThermalExpansionCoefficient_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isobaricThermalExpansionCoefficient_dTxi;

  function isothermalCompressibility_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa "Isothermal compressibility";
  algorithm
    kappa := TILMedia.Internals.VLEFluidFunctions.isothermalCompressibility_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isothermalCompressibility_dTxi;

  function speedOfSound_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Velocity w "Speed of sound";
  algorithm
    w := TILMedia.Internals.VLEFluidFunctions.speedOfSound_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end speedOfSound_dTxi;

  function densityDerivativeWRTspecificEnthalpy_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  algorithm
    drhodh_pxi := TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTspecificEnthalpy_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTspecificEnthalpy_dTxi;

  function densityDerivativeWRTpressure_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  algorithm
    drhodp_hxi := TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTpressure_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTpressure_dTxi;

  function densityDerivativeWRTmassFraction_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  algorithm
    drhodxi_ph := TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTmassFraction_dTxin(d,T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTmassFraction_dTxi;

  function prandtlNumber_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.PrandtlNumber Pr "Prandtl number";
  algorithm
    Pr := TILMedia.Internals.VLEFluidFunctions.prandtlNumber_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end prandtlNumber_dTxi;

  function thermalConductivity_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  algorithm
    lambda := TILMedia.Internals.VLEFluidFunctions.thermalConductivity_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end thermalConductivity_dTxi;

  function dynamicViscosity_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  algorithm
    eta := TILMedia.Internals.VLEFluidFunctions.dynamicViscosity_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dynamicViscosity_dTxi;

  function surfaceTension_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SurfaceTension sigma "Surface tension";
  algorithm
    sigma := TILMedia.Internals.VLEFluidFunctions.surfaceTension_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end surfaceTension_dTxi;

  function liquidDensity_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Density d_l "Density of liquid phase";
  algorithm
    d_l := TILMedia.Internals.VLEFluidFunctions.liquidDensity_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidDensity_dTxi;

  function vapourDensity_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Density d_v "Density of vapour phase";
  algorithm
    d_v := TILMedia.Internals.VLEFluidFunctions.vapourDensity_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourDensity_dTxi;

  function liquidSpecificEnthalpy_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  algorithm
    h_l := TILMedia.Internals.VLEFluidFunctions.liquidSpecificEnthalpy_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEnthalpy_dTxi;

  function vapourSpecificEnthalpy_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  algorithm
    h_v := TILMedia.Internals.VLEFluidFunctions.vapourSpecificEnthalpy_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEnthalpy_dTxi;

  function liquidPressure_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p_l "Pressure of liquid phase";
  algorithm
    p_l := TILMedia.Internals.VLEFluidFunctions.liquidPressure_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidPressure_dTxi;

  function vapourPressure_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p_v "Pressure of vapour phase";
  algorithm
    p_v := TILMedia.Internals.VLEFluidFunctions.vapourPressure_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourPressure_dTxi;

  function liquidSpecificEntropy_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  algorithm
    s_l := TILMedia.Internals.VLEFluidFunctions.liquidSpecificEntropy_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEntropy_dTxi;

  function vapourSpecificEntropy_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  algorithm
    s_v := TILMedia.Internals.VLEFluidFunctions.vapourSpecificEntropy_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEntropy_dTxi;

  function liquidTemperature_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Temperature T_l "Temperature of liquid phase";
  algorithm
    T_l := TILMedia.Internals.VLEFluidFunctions.liquidTemperature_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidTemperature_dTxi;

  function vapourTemperature_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Temperature T_v "Temperature of vapour phase";
  algorithm
    T_v := TILMedia.Internals.VLEFluidFunctions.vapourTemperature_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourTemperature_dTxi;

  function liquidMassFraction_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  algorithm
    xi_l := TILMedia.Internals.VLEFluidFunctions.liquidMassFraction_dTxin(d,T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidMassFraction_dTxi;

  function vapourMassFraction_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  algorithm
    xi_v := TILMedia.Internals.VLEFluidFunctions.vapourMassFraction_dTxin(d,T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourMassFraction_dTxi;

  function liquidSpecificHeatCapacity_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  algorithm
    cp_l := TILMedia.Internals.VLEFluidFunctions.liquidSpecificHeatCapacity_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificHeatCapacity_dTxi;

  function vapourSpecificHeatCapacity_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  algorithm
    cp_v := TILMedia.Internals.VLEFluidFunctions.vapourSpecificHeatCapacity_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificHeatCapacity_dTxi;

  function liquidIsobaricThermalExpansionCoefficient_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  algorithm
    beta_l := TILMedia.Internals.VLEFluidFunctions.liquidIsobaricThermalExpansionCoefficient_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsobaricThermalExpansionCoefficient_dTxi;

  function vapourIsobaricThermalExpansionCoefficient_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  algorithm
    beta_v := TILMedia.Internals.VLEFluidFunctions.vapourIsobaricThermalExpansionCoefficient_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsobaricThermalExpansionCoefficient_dTxi;

  function liquidIsothermalCompressibility_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  algorithm
    kappa_l := TILMedia.Internals.VLEFluidFunctions.liquidIsothermalCompressibility_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsothermalCompressibility_dTxi;

  function vapourIsothermalCompressibility_dTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  algorithm
    kappa_v := TILMedia.Internals.VLEFluidFunctions.vapourIsothermalCompressibility_dTxi(d,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsothermalCompressibility_dTxi;


  function density_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Density d "Density";
  algorithm
    d := TILMedia.Internals.VLEFluidFunctions.density_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end density_phxi;

  function specificEntropy_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s "Specific entropy";
  algorithm
    s := TILMedia.Internals.VLEFluidFunctions.specificEntropy_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificEntropy_phxi;

  function temperature_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Temperature T "Temperature";
  algorithm
    T := TILMedia.Internals.VLEFluidFunctions.temperature_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end temperature_phxi;

  function moleFraction_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MoleFraction x "Mole fraction";
  algorithm
    x := TILMedia.Internals.VLEFluidFunctions.moleFraction_phxin(p,h,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end moleFraction_phxi;

  function steamMassFraction_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  algorithm
    q := TILMedia.Internals.VLEFluidFunctions.steamMassFraction_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end steamMassFraction_phxi;

  function specificIsobaricHeatCapacity_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  algorithm
    cp := TILMedia.Internals.VLEFluidFunctions.specificIsobaricHeatCapacity_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsobaricHeatCapacity_phxi;

  function specificIsochoricHeatCapacity_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  algorithm
    cv := TILMedia.Internals.VLEFluidFunctions.specificIsochoricHeatCapacity_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsochoricHeatCapacity_phxi;

  function isobaricThermalExpansionCoefficient_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  algorithm
    beta := TILMedia.Internals.VLEFluidFunctions.isobaricThermalExpansionCoefficient_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isobaricThermalExpansionCoefficient_phxi;

  function isothermalCompressibility_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa "Isothermal compressibility";
  algorithm
    kappa := TILMedia.Internals.VLEFluidFunctions.isothermalCompressibility_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isothermalCompressibility_phxi;

  function speedOfSound_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Velocity w "Speed of sound";
  algorithm
    w := TILMedia.Internals.VLEFluidFunctions.speedOfSound_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end speedOfSound_phxi;

  function densityDerivativeWRTspecificEnthalpy_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  algorithm
    drhodh_pxi := TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTspecificEnthalpy_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTspecificEnthalpy_phxi;

  function densityDerivativeWRTpressure_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  algorithm
    drhodp_hxi := TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTpressure_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTpressure_phxi;

  function densityDerivativeWRTmassFraction_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  algorithm
    drhodxi_ph := TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTmassFraction_phxin(p,h,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTmassFraction_phxi;

  function prandtlNumber_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.PrandtlNumber Pr "Prandtl number";
  algorithm
    Pr := TILMedia.Internals.VLEFluidFunctions.prandtlNumber_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end prandtlNumber_phxi;

  function thermalConductivity_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  algorithm
    lambda := TILMedia.Internals.VLEFluidFunctions.thermalConductivity_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end thermalConductivity_phxi;

  function dynamicViscosity_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  algorithm
    eta := TILMedia.Internals.VLEFluidFunctions.dynamicViscosity_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dynamicViscosity_phxi;

  function surfaceTension_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SurfaceTension sigma "Surface tension";
  algorithm
    sigma := TILMedia.Internals.VLEFluidFunctions.surfaceTension_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end surfaceTension_phxi;

  function liquidDensity_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Density d_l "Density of liquid phase";
  algorithm
    d_l := TILMedia.Internals.VLEFluidFunctions.liquidDensity_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidDensity_phxi;

  function vapourDensity_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Density d_v "Density of vapour phase";
  algorithm
    d_v := TILMedia.Internals.VLEFluidFunctions.vapourDensity_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourDensity_phxi;

  function liquidSpecificEnthalpy_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  algorithm
    h_l := TILMedia.Internals.VLEFluidFunctions.liquidSpecificEnthalpy_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEnthalpy_phxi;

  function vapourSpecificEnthalpy_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  algorithm
    h_v := TILMedia.Internals.VLEFluidFunctions.vapourSpecificEnthalpy_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEnthalpy_phxi;

  function liquidPressure_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p_l "Pressure of liquid phase";
  algorithm
    p_l := TILMedia.Internals.VLEFluidFunctions.liquidPressure_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidPressure_phxi;

  function vapourPressure_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p_v "Pressure of vapour phase";
  algorithm
    p_v := TILMedia.Internals.VLEFluidFunctions.vapourPressure_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourPressure_phxi;

  function liquidSpecificEntropy_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  algorithm
    s_l := TILMedia.Internals.VLEFluidFunctions.liquidSpecificEntropy_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEntropy_phxi;

  function vapourSpecificEntropy_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  algorithm
    s_v := TILMedia.Internals.VLEFluidFunctions.vapourSpecificEntropy_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEntropy_phxi;

  function liquidTemperature_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Temperature T_l "Temperature of liquid phase";
  algorithm
    T_l := TILMedia.Internals.VLEFluidFunctions.liquidTemperature_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidTemperature_phxi;

  function vapourTemperature_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Temperature T_v "Temperature of vapour phase";
  algorithm
    T_v := TILMedia.Internals.VLEFluidFunctions.vapourTemperature_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourTemperature_phxi;

  function liquidMassFraction_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  algorithm
    xi_l := TILMedia.Internals.VLEFluidFunctions.liquidMassFraction_phxin(p,h,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidMassFraction_phxi;

  function vapourMassFraction_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  algorithm
    xi_v := TILMedia.Internals.VLEFluidFunctions.vapourMassFraction_phxin(p,h,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourMassFraction_phxi;

  function liquidSpecificHeatCapacity_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  algorithm
    cp_l := TILMedia.Internals.VLEFluidFunctions.liquidSpecificHeatCapacity_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificHeatCapacity_phxi;

  function vapourSpecificHeatCapacity_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  algorithm
    cp_v := TILMedia.Internals.VLEFluidFunctions.vapourSpecificHeatCapacity_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificHeatCapacity_phxi;

  function liquidIsobaricThermalExpansionCoefficient_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  algorithm
    beta_l := TILMedia.Internals.VLEFluidFunctions.liquidIsobaricThermalExpansionCoefficient_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsobaricThermalExpansionCoefficient_phxi;

  function vapourIsobaricThermalExpansionCoefficient_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  algorithm
    beta_v := TILMedia.Internals.VLEFluidFunctions.vapourIsobaricThermalExpansionCoefficient_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsobaricThermalExpansionCoefficient_phxi;

  function liquidIsothermalCompressibility_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  algorithm
    kappa_l := TILMedia.Internals.VLEFluidFunctions.liquidIsothermalCompressibility_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsothermalCompressibility_phxi;

  function vapourIsothermalCompressibility_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  algorithm
    kappa_v := TILMedia.Internals.VLEFluidFunctions.vapourIsothermalCompressibility_phxi(p,h,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsothermalCompressibility_phxi;


  function density_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Density d "Density";
  algorithm
    d := TILMedia.Internals.VLEFluidFunctions.density_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end density_psxi;

  function specificEnthalpy_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h "Specific enthalpy";
  algorithm
    h := TILMedia.Internals.VLEFluidFunctions.specificEnthalpy_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificEnthalpy_psxi;

  function temperature_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Temperature T "Temperature";
  algorithm
    T := TILMedia.Internals.VLEFluidFunctions.temperature_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end temperature_psxi;

  function moleFraction_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MoleFraction x "Mole fraction";
  algorithm
    x := TILMedia.Internals.VLEFluidFunctions.moleFraction_psxin(p,s,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end moleFraction_psxi;

  function steamMassFraction_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  algorithm
    q := TILMedia.Internals.VLEFluidFunctions.steamMassFraction_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end steamMassFraction_psxi;

  function specificIsobaricHeatCapacity_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  algorithm
    cp := TILMedia.Internals.VLEFluidFunctions.specificIsobaricHeatCapacity_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsobaricHeatCapacity_psxi;

  function specificIsochoricHeatCapacity_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  algorithm
    cv := TILMedia.Internals.VLEFluidFunctions.specificIsochoricHeatCapacity_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsochoricHeatCapacity_psxi;

  function isobaricThermalExpansionCoefficient_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  algorithm
    beta := TILMedia.Internals.VLEFluidFunctions.isobaricThermalExpansionCoefficient_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isobaricThermalExpansionCoefficient_psxi;

  function isothermalCompressibility_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa "Isothermal compressibility";
  algorithm
    kappa := TILMedia.Internals.VLEFluidFunctions.isothermalCompressibility_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isothermalCompressibility_psxi;

  function speedOfSound_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Velocity w "Speed of sound";
  algorithm
    w := TILMedia.Internals.VLEFluidFunctions.speedOfSound_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end speedOfSound_psxi;

  function densityDerivativeWRTspecificEnthalpy_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  algorithm
    drhodh_pxi := TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTspecificEnthalpy_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTspecificEnthalpy_psxi;

  function densityDerivativeWRTpressure_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  algorithm
    drhodp_hxi := TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTpressure_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTpressure_psxi;

  function densityDerivativeWRTmassFraction_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  algorithm
    drhodxi_ph := TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTmassFraction_psxin(p,s,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTmassFraction_psxi;

  function prandtlNumber_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.PrandtlNumber Pr "Prandtl number";
  algorithm
    Pr := TILMedia.Internals.VLEFluidFunctions.prandtlNumber_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end prandtlNumber_psxi;

  function thermalConductivity_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  algorithm
    lambda := TILMedia.Internals.VLEFluidFunctions.thermalConductivity_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end thermalConductivity_psxi;

  function dynamicViscosity_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  algorithm
    eta := TILMedia.Internals.VLEFluidFunctions.dynamicViscosity_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dynamicViscosity_psxi;

  function surfaceTension_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SurfaceTension sigma "Surface tension";
  algorithm
    sigma := TILMedia.Internals.VLEFluidFunctions.surfaceTension_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end surfaceTension_psxi;

  function liquidDensity_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Density d_l "Density of liquid phase";
  algorithm
    d_l := TILMedia.Internals.VLEFluidFunctions.liquidDensity_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidDensity_psxi;

  function vapourDensity_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Density d_v "Density of vapour phase";
  algorithm
    d_v := TILMedia.Internals.VLEFluidFunctions.vapourDensity_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourDensity_psxi;

  function liquidSpecificEnthalpy_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  algorithm
    h_l := TILMedia.Internals.VLEFluidFunctions.liquidSpecificEnthalpy_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEnthalpy_psxi;

  function vapourSpecificEnthalpy_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  algorithm
    h_v := TILMedia.Internals.VLEFluidFunctions.vapourSpecificEnthalpy_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEnthalpy_psxi;

  function liquidPressure_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p_l "Pressure of liquid phase";
  algorithm
    p_l := TILMedia.Internals.VLEFluidFunctions.liquidPressure_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidPressure_psxi;

  function vapourPressure_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p_v "Pressure of vapour phase";
  algorithm
    p_v := TILMedia.Internals.VLEFluidFunctions.vapourPressure_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourPressure_psxi;

  function liquidSpecificEntropy_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  algorithm
    s_l := TILMedia.Internals.VLEFluidFunctions.liquidSpecificEntropy_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEntropy_psxi;

  function vapourSpecificEntropy_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  algorithm
    s_v := TILMedia.Internals.VLEFluidFunctions.vapourSpecificEntropy_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEntropy_psxi;

  function liquidTemperature_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Temperature T_l "Temperature of liquid phase";
  algorithm
    T_l := TILMedia.Internals.VLEFluidFunctions.liquidTemperature_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidTemperature_psxi;

  function vapourTemperature_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Temperature T_v "Temperature of vapour phase";
  algorithm
    T_v := TILMedia.Internals.VLEFluidFunctions.vapourTemperature_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourTemperature_psxi;

  function liquidMassFraction_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  algorithm
    xi_l := TILMedia.Internals.VLEFluidFunctions.liquidMassFraction_psxin(p,s,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidMassFraction_psxi;

  function vapourMassFraction_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  algorithm
    xi_v := TILMedia.Internals.VLEFluidFunctions.vapourMassFraction_psxin(p,s,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourMassFraction_psxi;

  function liquidSpecificHeatCapacity_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  algorithm
    cp_l := TILMedia.Internals.VLEFluidFunctions.liquidSpecificHeatCapacity_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificHeatCapacity_psxi;

  function vapourSpecificHeatCapacity_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  algorithm
    cp_v := TILMedia.Internals.VLEFluidFunctions.vapourSpecificHeatCapacity_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificHeatCapacity_psxi;

  function liquidIsobaricThermalExpansionCoefficient_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  algorithm
    beta_l := TILMedia.Internals.VLEFluidFunctions.liquidIsobaricThermalExpansionCoefficient_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsobaricThermalExpansionCoefficient_psxi;

  function vapourIsobaricThermalExpansionCoefficient_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  algorithm
    beta_v := TILMedia.Internals.VLEFluidFunctions.vapourIsobaricThermalExpansionCoefficient_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsobaricThermalExpansionCoefficient_psxi;

  function liquidIsothermalCompressibility_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  algorithm
    kappa_l := TILMedia.Internals.VLEFluidFunctions.liquidIsothermalCompressibility_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsothermalCompressibility_psxi;

  function vapourIsothermalCompressibility_psxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  algorithm
    kappa_v := TILMedia.Internals.VLEFluidFunctions.vapourIsothermalCompressibility_psxi(p,s,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsothermalCompressibility_psxi;


  function density_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Density d "Density";
  algorithm
    d := TILMedia.Internals.VLEFluidFunctions.density_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end density_pTxi;

  function specificEnthalpy_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h "Specific enthalpy";
  algorithm
    h := TILMedia.Internals.VLEFluidFunctions.specificEnthalpy_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificEnthalpy_pTxi;

  function specificEntropy_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s "Specific entropy";
  algorithm
    s := TILMedia.Internals.VLEFluidFunctions.specificEntropy_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificEntropy_pTxi;

  function moleFraction_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MoleFraction x "Mole fraction";
  algorithm
    x := TILMedia.Internals.VLEFluidFunctions.moleFraction_pTxin(p,T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end moleFraction_pTxi;

  function steamMassFraction_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.MassFraction q "Vapor quality (steam mass fraction)";
  algorithm
    q := TILMedia.Internals.VLEFluidFunctions.steamMassFraction_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end steamMassFraction_pTxi;

  function specificIsobaricHeatCapacity_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  algorithm
    cp := TILMedia.Internals.VLEFluidFunctions.specificIsobaricHeatCapacity_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsobaricHeatCapacity_pTxi;

  function specificIsochoricHeatCapacity_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  algorithm
    cv := TILMedia.Internals.VLEFluidFunctions.specificIsochoricHeatCapacity_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end specificIsochoricHeatCapacity_pTxi;

  function isobaricThermalExpansionCoefficient_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  algorithm
    beta := TILMedia.Internals.VLEFluidFunctions.isobaricThermalExpansionCoefficient_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isobaricThermalExpansionCoefficient_pTxi;

  function isothermalCompressibility_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa "Isothermal compressibility";
  algorithm
    kappa := TILMedia.Internals.VLEFluidFunctions.isothermalCompressibility_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end isothermalCompressibility_pTxi;

  function speedOfSound_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Velocity w "Speed of sound";
  algorithm
    w := TILMedia.Internals.VLEFluidFunctions.speedOfSound_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end speedOfSound_pTxi;

  function densityDerivativeWRTspecificEnthalpy_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  algorithm
    drhodh_pxi := TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTspecificEnthalpy_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTspecificEnthalpy_pTxi;

  function densityDerivativeWRTpressure_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  algorithm
    drhodp_hxi := TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTpressure_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTpressure_pTxi;

  function densityDerivativeWRTmassFraction_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  algorithm
    drhodxi_ph := TILMedia.Internals.VLEFluidFunctions.densityDerivativeWRTmassFraction_pTxin(p,T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end densityDerivativeWRTmassFraction_pTxi;

  function prandtlNumber_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.PrandtlNumber Pr "Prandtl number";
  algorithm
    Pr := TILMedia.Internals.VLEFluidFunctions.prandtlNumber_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end prandtlNumber_pTxi;

  function thermalConductivity_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  algorithm
    lambda := TILMedia.Internals.VLEFluidFunctions.thermalConductivity_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end thermalConductivity_pTxi;

  function dynamicViscosity_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  algorithm
    eta := TILMedia.Internals.VLEFluidFunctions.dynamicViscosity_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dynamicViscosity_pTxi;

  function surfaceTension_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SurfaceTension sigma "Surface tension";
  algorithm
    sigma := TILMedia.Internals.VLEFluidFunctions.surfaceTension_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end surfaceTension_pTxi;

  function liquidDensity_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Density d_l "Density of liquid phase";
  algorithm
    d_l := TILMedia.Internals.VLEFluidFunctions.liquidDensity_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidDensity_pTxi;

  function vapourDensity_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Density d_v "Density of vapour phase";
  algorithm
    d_v := TILMedia.Internals.VLEFluidFunctions.vapourDensity_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourDensity_pTxi;

  function liquidSpecificEnthalpy_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_l "Specific enthalpy of liquid phase";
  algorithm
    h_l := TILMedia.Internals.VLEFluidFunctions.liquidSpecificEnthalpy_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEnthalpy_pTxi;

  function vapourSpecificEnthalpy_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_v "Specific enthalpy of vapour phase";
  algorithm
    h_v := TILMedia.Internals.VLEFluidFunctions.vapourSpecificEnthalpy_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEnthalpy_pTxi;

  function liquidPressure_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p_l "Pressure of liquid phase";
  algorithm
    p_l := TILMedia.Internals.VLEFluidFunctions.liquidPressure_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidPressure_pTxi;

  function vapourPressure_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p_v "Pressure of vapour phase";
  algorithm
    p_v := TILMedia.Internals.VLEFluidFunctions.vapourPressure_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourPressure_pTxi;

  function liquidSpecificEntropy_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_l "Specific entropy of liquid phase";
  algorithm
    s_l := TILMedia.Internals.VLEFluidFunctions.liquidSpecificEntropy_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificEntropy_pTxi;

  function vapourSpecificEntropy_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_v "Specific entropy of vapour phase";
  algorithm
    s_v := TILMedia.Internals.VLEFluidFunctions.vapourSpecificEntropy_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificEntropy_pTxi;

  function liquidTemperature_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Temperature T_l "Temperature of liquid phase";
  algorithm
    T_l := TILMedia.Internals.VLEFluidFunctions.liquidTemperature_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidTemperature_pTxi;

  function vapourTemperature_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Temperature T_v "Temperature of vapour phase";
  algorithm
    T_v := TILMedia.Internals.VLEFluidFunctions.vapourTemperature_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourTemperature_pTxi;

  function liquidMassFraction_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_l "Mass fraction of liquid phase";
  algorithm
    xi_l := TILMedia.Internals.VLEFluidFunctions.liquidMassFraction_pTxin(p,T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidMassFraction_pTxi;

  function vapourMassFraction_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_v "Mass fraction of vapour phase";
  algorithm
    xi_v := TILMedia.Internals.VLEFluidFunctions.vapourMassFraction_pTxin(p,T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourMassFraction_pTxi;

  function liquidSpecificHeatCapacity_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  algorithm
    cp_l := TILMedia.Internals.VLEFluidFunctions.liquidSpecificHeatCapacity_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidSpecificHeatCapacity_pTxi;

  function vapourSpecificHeatCapacity_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_v "Specific heat capacity cp of vapour phase";
  algorithm
    cp_v := TILMedia.Internals.VLEFluidFunctions.vapourSpecificHeatCapacity_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourSpecificHeatCapacity_pTxi;

  function liquidIsobaricThermalExpansionCoefficient_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_l "Isobaric expansion coefficient of liquid phase";
  algorithm
    beta_l := TILMedia.Internals.VLEFluidFunctions.liquidIsobaricThermalExpansionCoefficient_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsobaricThermalExpansionCoefficient_pTxi;

  function vapourIsobaricThermalExpansionCoefficient_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_v "Isobaric expansion coefficient of vapour phase";
  algorithm
    beta_v := TILMedia.Internals.VLEFluidFunctions.vapourIsobaricThermalExpansionCoefficient_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsobaricThermalExpansionCoefficient_pTxi;

  function liquidIsothermalCompressibility_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_l "Isothermal compressibility of liquid phase";
  algorithm
    kappa_l := TILMedia.Internals.VLEFluidFunctions.liquidIsothermalCompressibility_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end liquidIsothermalCompressibility_pTxi;

  function vapourIsothermalCompressibility_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_v "Isothermal compressibility of vapour phase";
  algorithm
    kappa_v := TILMedia.Internals.VLEFluidFunctions.vapourIsothermalCompressibility_pTxi(p,T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end vapourIsothermalCompressibility_pTxi;



  function dewDensity_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Density d_dew "Density at dew point";
  algorithm
    d_dew := TILMedia.Internals.VLEFluidFunctions.dewDensity_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewDensity_Txi;

  function bubbleDensity_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Density d_bubble "Density at bubble point";
  algorithm
    d_bubble := TILMedia.Internals.VLEFluidFunctions.bubbleDensity_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleDensity_Txi;

  function dewSpecificEnthalpy_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_dew "Specific enthalpy at dew point";
  algorithm
    h_dew := TILMedia.Internals.VLEFluidFunctions.dewSpecificEnthalpy_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpecificEnthalpy_Txi;

  function bubbleSpecificEnthalpy_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_bubble "Specific enthalpy at bubble point";
  algorithm
    h_bubble := TILMedia.Internals.VLEFluidFunctions.bubbleSpecificEnthalpy_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpecificEnthalpy_Txi;

  function dewPressure_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p_dew "Pressure at dew point";
  algorithm
    p_dew := TILMedia.Internals.VLEFluidFunctions.dewPressure_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewPressure_Txi;

  function bubblePressure_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p_bubble "Pressure at bubble point";
  algorithm
    p_bubble := TILMedia.Internals.VLEFluidFunctions.bubblePressure_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubblePressure_Txi;

  function dewSpecificEntropy_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_dew "Specific entropy at dew point";
  algorithm
    s_dew := TILMedia.Internals.VLEFluidFunctions.dewSpecificEntropy_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpecificEntropy_Txi;

  function bubbleSpecificEntropy_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_bubble "Specific entropy at bubble point";
  algorithm
    s_bubble := TILMedia.Internals.VLEFluidFunctions.bubbleSpecificEntropy_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpecificEntropy_Txi;

  function dewTemperature_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Temperature T_dew "Temperature at dew point";
  algorithm
    T_dew := TILMedia.Internals.VLEFluidFunctions.dewTemperature_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewTemperature_Txi;

  function bubbleTemperature_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Temperature T_bubble "Temperature at bubble point";
  algorithm
    T_bubble := TILMedia.Internals.VLEFluidFunctions.bubbleTemperature_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleTemperature_Txi;

  function dewLiquidMassFraction_Txin
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_ldew "Mass fration at dew point";
  algorithm
    xi_ldew := TILMedia.Internals.VLEFluidFunctions.dewLiquidMassFraction_Txin(T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewLiquidMassFraction_Txin;

  function bubbleVapourMassFraction_Txin
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_vbubble "Mass fration at bubble point";
  algorithm
    xi_vbubble := TILMedia.Internals.VLEFluidFunctions.bubbleVapourMassFraction_Txin(T,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleVapourMassFraction_Txin;

  function dewSpecificIsobaricHeatCapacity_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_dew "Specific isobaric heat capacity cp at dew point";
  algorithm
    cp_dew := TILMedia.Internals.VLEFluidFunctions.dewSpecificIsobaricHeatCapacity_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpecificIsobaricHeatCapacity_Txi;

  function bubbleSpecificIsobaricHeatCapacity_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_bubble "Specific isobaric heat capacity cp at bubble point";
  algorithm
    cp_bubble := TILMedia.Internals.VLEFluidFunctions.bubbleSpecificIsobaricHeatCapacity_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpecificIsobaricHeatCapacity_Txi;

  function dewIsobaricThermalExpansionCoefficient_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_dew "Isobaric thermal expansion coefficient at dew point";
  algorithm
    beta_dew := TILMedia.Internals.VLEFluidFunctions.dewIsobaricThermalExpansionCoefficient_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewIsobaricThermalExpansionCoefficient_Txi;

  function bubbleIsobaricThermalExpansionCoefficient_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_bubble "Isobaric thermal expansion coefficient at bubble point";
  algorithm
    beta_bubble := TILMedia.Internals.VLEFluidFunctions.bubbleIsobaricThermalExpansionCoefficient_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleIsobaricThermalExpansionCoefficient_Txi;

  function dewIsothermalCompressibility_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_dew "Isothermal compressibility at dew point";
  algorithm
    kappa_dew := TILMedia.Internals.VLEFluidFunctions.dewIsothermalCompressibility_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewIsothermalCompressibility_Txi;

  function bubbleIsothermalCompressibility_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_bubble "Isothermal compressibility at bubble point";
  algorithm
    kappa_bubble := TILMedia.Internals.VLEFluidFunctions.bubbleIsothermalCompressibility_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleIsothermalCompressibility_Txi;

  function dewSpeedOfSound_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Velocity w_dew "Speed of sound at dew point";
  algorithm
    w_dew := TILMedia.Internals.VLEFluidFunctions.dewSpeedOfSound_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpeedOfSound_Txi;

  function bubbleSpeedOfSound_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Velocity w_bubble "Speed of sound at bubble point";
  algorithm
    w_bubble := TILMedia.Internals.VLEFluidFunctions.bubbleSpeedOfSound_Txi(T,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpeedOfSound_Txi;


  function dewDensity_pxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Density d_dew "Density at dew point";
  algorithm
    d_dew := TILMedia.Internals.VLEFluidFunctions.dewDensity_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewDensity_pxi;

  function bubbleDensity_pxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Density d_bubble "Density at bubble point";
  algorithm
    d_bubble := TILMedia.Internals.VLEFluidFunctions.bubbleDensity_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleDensity_pxi;

  function dewSpecificEnthalpy_pxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_dew "Specific enthalpy at dew point";
  algorithm
    h_dew := TILMedia.Internals.VLEFluidFunctions.dewSpecificEnthalpy_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpecificEnthalpy_pxi;

  function bubbleSpecificEnthalpy_pxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h_bubble "Specific enthalpy at bubble point";
  algorithm
    h_bubble := TILMedia.Internals.VLEFluidFunctions.bubbleSpecificEnthalpy_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpecificEnthalpy_pxi;

  function dewPressure_pxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p_dew "Pressure at dew point";
  algorithm
    p_dew := TILMedia.Internals.VLEFluidFunctions.dewPressure_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewPressure_pxi;

  function bubblePressure_pxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p_bubble "Pressure at bubble point";
  algorithm
    p_bubble := TILMedia.Internals.VLEFluidFunctions.bubblePressure_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubblePressure_pxi;

  function dewSpecificEntropy_pxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_dew "Specific entropy at dew point";
  algorithm
    s_dew := TILMedia.Internals.VLEFluidFunctions.dewSpecificEntropy_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpecificEntropy_pxi;

  function bubbleSpecificEntropy_pxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s_bubble "Specific entropy at bubble point";
  algorithm
    s_bubble := TILMedia.Internals.VLEFluidFunctions.bubbleSpecificEntropy_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpecificEntropy_pxi;

  function dewTemperature_pxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Temperature T_dew "Temperature at dew point";
  algorithm
    T_dew := TILMedia.Internals.VLEFluidFunctions.dewTemperature_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewTemperature_pxi;

  function bubbleTemperature_pxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Temperature T_bubble "Temperature at bubble point";
  algorithm
    T_bubble := TILMedia.Internals.VLEFluidFunctions.bubbleTemperature_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleTemperature_pxi;

  function dewLiquidMassFraction_pxin
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_ldew "Mass fration at dew point";
  algorithm
    xi_ldew := TILMedia.Internals.VLEFluidFunctions.dewLiquidMassFraction_pxin(p,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewLiquidMassFraction_pxin;

  function bubbleVapourMassFraction_pxin
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    output SI.MassFraction xi_vbubble "Mass fration at bubble point";
  algorithm
    xi_vbubble := TILMedia.Internals.VLEFluidFunctions.bubbleVapourMassFraction_pxin(p,xi,compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleVapourMassFraction_pxin;

  function dewSpecificIsobaricHeatCapacity_pxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_dew "Specific isobaric heat capacity cp at dew point";
  algorithm
    cp_dew := TILMedia.Internals.VLEFluidFunctions.dewSpecificIsobaricHeatCapacity_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpecificIsobaricHeatCapacity_pxi;

  function bubbleSpecificIsobaricHeatCapacity_pxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp_bubble "Specific isobaric heat capacity cp at bubble point";
  algorithm
    cp_bubble := TILMedia.Internals.VLEFluidFunctions.bubbleSpecificIsobaricHeatCapacity_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpecificIsobaricHeatCapacity_pxi;

  function dewIsobaricThermalExpansionCoefficient_pxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_dew "Isobaric thermal expansion coefficient at dew point";
  algorithm
    beta_dew := TILMedia.Internals.VLEFluidFunctions.dewIsobaricThermalExpansionCoefficient_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewIsobaricThermalExpansionCoefficient_pxi;

  function bubbleIsobaricThermalExpansionCoefficient_pxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta_bubble "Isobaric thermal expansion coefficient at bubble point";
  algorithm
    beta_bubble := TILMedia.Internals.VLEFluidFunctions.bubbleIsobaricThermalExpansionCoefficient_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleIsobaricThermalExpansionCoefficient_pxi;

  function dewIsothermalCompressibility_pxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_dew "Isothermal compressibility at dew point";
  algorithm
    kappa_dew := TILMedia.Internals.VLEFluidFunctions.dewIsothermalCompressibility_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewIsothermalCompressibility_pxi;

  function bubbleIsothermalCompressibility_pxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappa_bubble "Isothermal compressibility at bubble point";
  algorithm
    kappa_bubble := TILMedia.Internals.VLEFluidFunctions.bubbleIsothermalCompressibility_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleIsothermalCompressibility_pxi;

  function dewSpeedOfSound_pxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Velocity w_dew "Speed of sound at dew point";
  algorithm
    w_dew := TILMedia.Internals.VLEFluidFunctions.dewSpeedOfSound_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end dewSpeedOfSound_pxi;

  function bubbleSpeedOfSound_pxi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Velocity w_bubble "Speed of sound at bubble point";
  algorithm
    w_bubble := TILMedia.Internals.VLEFluidFunctions.bubbleSpeedOfSound_pxi(p,xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end bubbleSpeedOfSound_pxi;




  function averageMolarMass_xi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.MolarMass M "Average molar mass";
  algorithm
    M := TILMedia.Internals.VLEFluidFunctions.averageMolarMass_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end averageMolarMass_xi;

  function criticalDensity_xi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Density dc "Critical density";
  algorithm
    dc := TILMedia.Internals.VLEFluidFunctions.criticalDensity_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalDensity_xi;

  function criticalSpecificEnthalpy_xi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy hc "Critical specific enthalpy";
  algorithm
    hc := TILMedia.Internals.VLEFluidFunctions.criticalSpecificEnthalpy_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalSpecificEnthalpy_xi;

  function criticalPressure_xi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure pc "Critical pressure";
  algorithm
    pc := TILMedia.Internals.VLEFluidFunctions.criticalPressure_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalPressure_xi;

  function criticalSpecificEntropy_xi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy sc "Critical specific entropy";
  algorithm
    sc := TILMedia.Internals.VLEFluidFunctions.criticalSpecificEntropy_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalSpecificEntropy_xi;

  function criticalTemperature_xi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Temperature Tc "Critical temperature";
  algorithm
    Tc := TILMedia.Internals.VLEFluidFunctions.criticalTemperature_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalTemperature_xi;

  function criticalSpecificIsobaricHeatCapacity_xi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cpc "Critical specific isobaric heat capacity cp";
  algorithm
    cpc := TILMedia.Internals.VLEFluidFunctions.criticalSpecificIsobaricHeatCapacity_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalSpecificIsobaricHeatCapacity_xi;

  function criticalIsobaricThermalExpansionCoefficient_xi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient betac "Critical isobaric thermal expansion coefficient";
  algorithm
    betac := TILMedia.Internals.VLEFluidFunctions.criticalIsobaricThermalExpansionCoefficient_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalIsobaricThermalExpansionCoefficient_xi;

  function criticalIsothermalCompressibility_xi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.Compressibility kappac "Critical isothermal compressibility";
  algorithm
    kappac := TILMedia.Internals.VLEFluidFunctions.criticalIsothermalCompressibility_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalIsothermalCompressibility_xi;

  function criticalThermalConductivity_xi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.ThermalConductivity lambdac "Critical thermal conductivity";
  algorithm
    lambdac := TILMedia.Internals.VLEFluidFunctions.criticalThermalConductivity_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalThermalConductivity_xi;

  function criticalDynamicViscosity_xi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.DynamicViscosity etac "Critical dynamic viscosity";
  algorithm
    etac := TILMedia.Internals.VLEFluidFunctions.criticalDynamicViscosity_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalDynamicViscosity_xi;

  function criticalSurfaceTension_xi
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input SI.MassFraction[:] xi=zeros(vleFluidType.nc-1) "Mass fractions of the first nc-1 components";
    output SI.SurfaceTension sigmac "Critical surface tension";
  algorithm
    sigmac := TILMedia.Internals.VLEFluidFunctions.criticalSurfaceTension_xi(xi,vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end criticalSurfaceTension_xi;

  function molarMass_n
  // Don't use these functions during simulation, Medium classes are always faster! Use only for start and initial values.
    input TILMedia.VLEFluidTypes.BaseVLEFluid vleFluidType "VLEFluid type" annotation(choicesAllMatching=true);
    input Integer compNo "Component ID";
    output SI.MolarMass M_i "Molar mass of component i";
  algorithm
    M_i := TILMedia.Internals.VLEFluidFunctions.molarMass_n(compNo, vleFluidType.concatVLEFluidName, vleFluidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,-100},{100,100}}, fileName="modelica://TILMedia/Images/VLE_Function.png")}));
  end molarMass_n;

end VLEFluidFunctions;
