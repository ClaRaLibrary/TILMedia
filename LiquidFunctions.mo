within TILMedia;
package LiquidFunctions
  "Package for calculation of liquid properties with a functional call"
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  function specificEntropy_phxi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s "Specific entropy";
  algorithm
    s := TILMedia.Internals.LiquidFunctions.specificEntropy_phxi(p,h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end specificEntropy_phxi;

  function specificEntropy_pTxi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.SpecificEntropy s "Specific entropy";
  algorithm
    s := TILMedia.Internals.LiquidFunctions.specificEntropy_pTxi(p,T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end specificEntropy_pTxi;

  function density_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.Density d "Density";
  algorithm
    d := TILMedia.Internals.LiquidFunctions.density_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end density_Txi;

  function specificEnthalpy_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.SpecificEnthalpy h "Specific enthalpy";
  algorithm
    h := TILMedia.Internals.LiquidFunctions.specificEnthalpy_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end specificEnthalpy_Txi;

  function pressure_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p "Pressure";
  algorithm
    p := TILMedia.Internals.LiquidFunctions.pressure_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end pressure_Txi;

  function specificIsobaricHeatCapacity_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  algorithm
    cp := TILMedia.Internals.LiquidFunctions.specificIsobaricHeatCapacity_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end specificIsobaricHeatCapacity_Txi;

  function isobaricThermalExpansionCoefficient_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
  algorithm
    beta := TILMedia.Internals.LiquidFunctions.isobaricThermalExpansionCoefficient_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end isobaricThermalExpansionCoefficient_Txi;

  function densityDerivativeWRTspecificEnthalpy_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.DerDensityByEnthalpy drhodh_pxi
      "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  algorithm
    drhodh_pxi := TILMedia.Internals.LiquidFunctions.densityDerivativeWRTspecificEnthalpy_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end densityDerivativeWRTspecificEnthalpy_Txi;

  function prandtlNumber_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.PrandtlNumber Pr "Prandtl number";
  algorithm
    Pr := TILMedia.Internals.LiquidFunctions.prandtlNumber_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end prandtlNumber_Txi;

  function thermalConductivity_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  algorithm
    lambda := TILMedia.Internals.LiquidFunctions.thermalConductivity_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end thermalConductivity_Txi;

  function dynamicViscosity_Txi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  algorithm
    eta := TILMedia.Internals.LiquidFunctions.dynamicViscosity_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end dynamicViscosity_Txi;

  function density_hxi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.Density d "Density";
  algorithm
    d := TILMedia.Internals.LiquidFunctions.density_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end density_hxi;

  function pressure_hxi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.AbsolutePressure p "Pressure";
  algorithm
    p := TILMedia.Internals.LiquidFunctions.pressure_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end pressure_hxi;

  function temperature_hxi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.Temperature T "Temperature";
  algorithm
    T := TILMedia.Internals.LiquidFunctions.temperature_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end temperature_hxi;

  function specificIsobaricHeatCapacity_hxi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  algorithm
    cp := TILMedia.Internals.LiquidFunctions.specificIsobaricHeatCapacity_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end specificIsobaricHeatCapacity_hxi;

  function isobaricThermalExpansionCoefficient_hxi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.LinearExpansionCoefficient beta
      "Isobaric thermal expansion coefficient";
  algorithm
    beta := TILMedia.Internals.LiquidFunctions.isobaricThermalExpansionCoefficient_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end isobaricThermalExpansionCoefficient_hxi;

  function densityDerivativeWRTspecificEnthalpy_hxi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.DerDensityByEnthalpy drhodh_pxi
      "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  algorithm
    drhodh_pxi := TILMedia.Internals.LiquidFunctions.densityDerivativeWRTspecificEnthalpy_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end densityDerivativeWRTspecificEnthalpy_hxi;

  function prandtlNumber_hxi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.PrandtlNumber Pr "Prandtl number";
  algorithm
    Pr := TILMedia.Internals.LiquidFunctions.prandtlNumber_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end prandtlNumber_hxi;

  function thermalConductivity_hxi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  algorithm
    lambda := TILMedia.Internals.LiquidFunctions.thermalConductivity_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end thermalConductivity_hxi;

  function dynamicViscosity_hxi
  // Don't use these functions during simulation, Medium classes are always faster! Only use for start and initial values.
    input TILMedia.LiquidTypes.BaseLiquid liquidType "Liquid type" annotation(choicesAllMatching=true);
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi=zeros(liquidType.nc-1)
      "Mass fractions of the first nc-1 components";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  algorithm
    eta := TILMedia.Internals.LiquidFunctions.dynamicViscosity_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());

    annotation(Inline=true, Icon(graphics={Bitmap(extent={{-100,100},{100,-100}}, fileName="modelica://TILMedia/Images/Liquid_Function.png")}));
  end dynamicViscosity_hxi;
end LiquidFunctions;
