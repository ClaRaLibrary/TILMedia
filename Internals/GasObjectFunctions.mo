within TILMedia.Internals;
package GasObjectFunctions
    extends TILMedia.Internals.ClassTypes.ModelPackage;

  function molarMass_nc
    input Integer nc "Number of components";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.MolarMass mm_i[nc] "Molar mass of component i";
  external "C" TILMedia_Gas_molarMass(gasPointer, mm_i) 
  annotation(__iti_dllNoExport = true,Include="void TILMedia_Gas_molarMass(void*, double*);",Library="TILMedia121ClaRa");
  annotation(Impure=false);
  end molarMass_nc;

  function pureComponentProperties_Tnc
    input SI.Temperature T "Temperature";
    input Integer nc "Number of components";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.PartialPressure ppS
      "Saturation partial pressure of condensing component";
    output SI.SpecificEnthalpy delta_hv
      "Specific enthalpy of vaporation of condensing component";
    output SI.SpecificEnthalpy delta_hd
      "Specific enthalpy of desublimation of condensing component";
    output SI.SpecificEnthalpy h_idealGas[nc]
      "Specific enthalpy of theoretical pure component ideal gas state";
    external "C" TILMedia_Gas_pureComponentProperties_T(T,gasPointer,ppS,delta_hv,delta_hd,h_idealGas) 
    annotation(__iti_dllNoExport = true,Include="void TILMedia_Gas_pureComponentProperties_T(double, void*, double*, double*, double*, double*);",Library="TILMedia121ClaRa");
    annotation(Impure=false);
  end pureComponentProperties_Tnc;

  function simpleCondensingProperties_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
    output SI.SpecificHeatCapacity cv "Specific heat capacity cv";
    output SI.LinearExpansionCoefficient beta
      "Isothermal expansion coefficient";
    output SI.Velocity w "Speed of sound";
    external "C" TILMedia_Gas_simpleCondensingProperties_phxi(p,h,xi,gasPointer,cp,cv,beta,w) 
    annotation(__iti_dllNoExport = true,Include="void TILMedia_Gas_simpleCondensingProperties_phxi(double p, double h, double*, void*, double*, double*, double*, double*);",Library="TILMedia121ClaRa");
    annotation(Impure=false);
  end simpleCondensingProperties_phxi;

  function simpleCondensingProperties_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
    output SI.SpecificHeatCapacity cv "Specific heat capacity cv";
    output SI.LinearExpansionCoefficient beta
      "Isothermal expansion coefficient";
    output SI.Velocity w "Speed of sound";
    external "C" TILMedia_Gas_simpleCondensingProperties_pTxi(p,T,xi,gasPointer,cp,cv,beta,w) 
    annotation(__iti_dllNoExport = true,Include="void TILMedia_Gas_simpleCondensingProperties_pTxi(double, double, double*, void*, double*, double*, double*, double*);",Library="TILMedia121ClaRa");
    annotation(Impure=false);
  end simpleCondensingProperties_pTxi;

  function additionalProperties_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.Density d "Density";
    output SI.Compressibility kappa "Compressibility";
    output SI.DerDensityByPressure drhodp_hxi
      "Derivative of density wrt pressure";
    output SI.DerDensityByEnthalpy drhodh_pxi
      "Derivative of density wrt specific enthalpy";
    output SI.Density drhodxi_ph[size(xi,1)]
      "Derivative of density wrt mass fraction";
    output SI.PartialPressure pp[size(xi,1)+1] "Partial pressure";
    output SI.MassFraction xi_gas
      "Mass fraction of gasoues condensing component";
    external "C" TILMedia_Gas_additionalProperties_pTxi(p,T,xi,gasPointer,d,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,pp,xi_gas) 
    annotation(__iti_dllNoExport = true,Include="void TILMedia_Gas_additionalProperties_pTxi(double, double, double*, void*, double*, double*, double*, double*, double*, double*, double*);",Library="TILMedia121ClaRa");
    annotation(Impure=false);
  end additionalProperties_pTxi;

  function transportProperties_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output TILMedia.Internals.TransportPropertyRecord transp
      "Transport property record";
    external "C" TILMedia_Gas_transportProperties_pTxi(p,T,xi,gasPointer,transp.Pr,transp.lambda,transp.eta,transp.sigma)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_Gas_transportProperties_pTxi(double, double, double*, void*, double*, double*, double*, double*);",Library="TILMedia121ClaRa");
    annotation(Impure=false);
  end transportProperties_pTxi;

  function temperature_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.Temperature T "Temperature";
    external "C" T = TILMedia_Gas_temperature_phxi(p,h,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_temperature_phxi(double, double, double*, void*);",Library="TILMedia121ClaRa", inverse(h=specificEnthalpy_pTxi(p,T,xi,gasPointer)));
  end temperature_phxi;

  function temperature_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.Temperature T "Temperature";
    external "C" T = TILMedia_Gas_temperature_psxi(p,s,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_temperature_psxi(double, double, double*, void*);",Library="TILMedia121ClaRa", inverse(s=specificEntropy_pTxi(p,T,xi,gasPointer)));
  end temperature_psxi;

  function specificEnthalpy_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
    external "C" h = TILMedia_Gas_specificEnthalpy_psxi(p,s,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_specificEnthalpy_psxi(double, double, double*, void*);",Library="TILMedia121ClaRa", inverse(s=specificEntropy_phxi(p,h,xi,gasPointer)));
  end specificEnthalpy_psxi;

  function specificEnthalpy_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
    external "C" h = TILMedia_Gas_specificEnthalpy_pTxi(p,T,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_specificEnthalpy_pTxi(double, double, double*, void*);",Library="TILMedia121ClaRa", inverse(T=temperature_phxi(p,h,xi,gasPointer)));
  end specificEnthalpy_pTxi;

  function specificEntropy_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.SpecificEntropy s "Specific entropy";
    external "C" s = TILMedia_Gas_specificEntropy_pTxi(p,T,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_specificEntropy_pTxi(double, double, double*, void*);",Library="TILMedia121ClaRa", inverse(T=temperature_psxi(p,s,xi,gasPointer)));
  end specificEntropy_pTxi;

  function specificEntropy_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.SpecificEntropy s "Specific entropy";
    external "C" s = TILMedia_Gas_specificEntropy_phxi(p,h,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_specificEntropy_phxi(double, double, double*, void*);",Library="TILMedia121ClaRa", inverse(h=specificEnthalpy_psxi(p,s,xi,gasPointer)));
  end specificEntropy_phxi;

  function xi_s_pTxidg
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.MassFraction xi_s "Saturation vapour mass fraction";
    external "C" xi_s = TILMedia_Gas_saturationMassFraction_pTxidg(p,T,xi_dryGas,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_saturationMassFraction_pTxidg(double, double, double*, void*);",Library="TILMedia121ClaRa");
  end xi_s_pTxidg;

  function humRatio_s_pTxidg
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output Real humRatio_s "Saturation humidity ratio";
    external "C" humRatio_s = TILMedia_Gas_saturationHumidityRatio_pTxidg(p,T,xi_dryGas,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_saturationHumidityRatio_pTxidg(double, double, double*, void*);",Library="TILMedia121ClaRa");
  end humRatio_s_pTxidg;

  function phi_pThumRatioxidg
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input Real humRatio "Humidity ratio";
    input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
    external "C" phi = TILMedia_MoistAir_phi_pThumRatioxidg(p,T,humRatio,xi_dryGas,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_MoistAir_phi_pThumRatioxidg(double, double, double, double*, void*);",Library="TILMedia121ClaRa", inverse(humRatio=humRatio_pTphixidg(p,T,phi,xi_dryGas,gasPointer)));
  end phi_pThumRatioxidg;

  function humRatio_pTphixidg
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
    input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output Real humRatio "Humidity ratio";
    external "C" humRatio = TILMedia_MoistAir_humRatio_pTphixidg(p,T,phi,xi_dryGas,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_MoistAir_humRatio_pTphixidg(double, double, double, double*, void*);",Library="TILMedia121ClaRa", inverse(phi=phi_pThumRatioxidg(p,T,humRatio,xi_dryGas,gasPointer)));
  end humRatio_pTphixidg;

  function xi_humRatioxidgnc
    input Real humRatioxi_dryGas[nc-1]
      "Humidity ratio and xi_dryGas in one vector";
    input Integer nc;
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.MassFraction xi[nc-1] "Mass fraction";
    external "C" TILMedia_Gas_xi_humRatioxidg(humRatioxi_dryGas,gasPointer,xi)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_Gas_xi_humRatioxidg(double*, void*, double*);",Library="TILMedia121ClaRa", inverse(humRatioxi_dryGas=humRatioxidg_xinc(xi,nc,gasPointer)));
  end xi_humRatioxidgnc;

  function humRatioxidg_xinc
    input SI.MassFraction xi[nc-1] "Mass fraction";
    input Integer nc;
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output Real humRatioxi_dryGas[nc-1]
      "Humidity ratio and xi_dryGas in one vector";
    external "C" TILMedia_Gas_humRatioxidg_xi(xi,gasPointer,humRatioxi_dryGas)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_Gas_humRatioxidg_xi(double*, void*, double*);",Library="TILMedia121ClaRa", inverse(xi=xi_humRatioxidgnc(humRatioxi_dryGas,nc,gasPointer)));
  end humRatioxidg_xinc;

  function wetBulbTemperatureLiquid_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.Temperature T_wetBulb "Wet bulb temperature";
    external "C" T_wetBulb = TILMedia_GasMixture_wetBulbTemperatureLiquid_pTxi(p,T,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasMixture_wetBulbTemperatureLiquid_pTxi(double, double, double*, void*);",Library="TILMedia121ClaRa");
  end wetBulbTemperatureLiquid_pTxi;

  function wetBulbTemperatureSolid_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.Temperature T_wetBulb "Wet bulb temperature";
    external "C" T_wetBulb = TILMedia_GasMixture_wetBulbTemperatureSolid_pTxi(p,T,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasMixture_wetBulbTemperatureSolid_pTxi(double, double, double*, void*);",Library="TILMedia121ClaRa");
  end wetBulbTemperatureSolid_pTxi;

  function wetBulbTemperatureLiquid_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.Temperature T_wetBulb "Wet bulb temperature";
    external "C" T_wetBulb = TILMedia_GasMixture_wetBulbTemperatureLiquid_phxi(p,h,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasMixture_wetBulbTemperatureLiquid_phxi(double, double, double*, void*);",Library="TILMedia121ClaRa");
  end wetBulbTemperatureLiquid_phxi;

  function wetBulbTemperatureSolid_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.Temperature T_wetBulb "Wet bulb temperature";
    external "C" T_wetBulb = TILMedia_GasMixture_wetBulbTemperatureSolid_phxi(p,h,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasMixture_wetBulbTemperatureSolid_phxi(double, double, double*, void*);",Library="TILMedia121ClaRa");
  end wetBulbTemperatureSolid_phxi;

  function wetBulbTemperatureLiquid_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.Temperature T_wetBulb "Wet bulb temperature";
    external "C" T_wetBulb = TILMedia_GasMixture_wetBulbTemperatureLiquid_psxi(p,s,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasMixture_wetBulbTemperatureLiquid_psxi(double, double, double*, void*);",Library="TILMedia121ClaRa");
  end wetBulbTemperatureLiquid_psxi;

  function wetBulbTemperatureSolid_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.Temperature T_wetBulb "Wet bulb temperature";
    external "C" T_wetBulb = TILMedia_GasMixture_wetBulbTemperatureSolid_psxi(p,s,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasMixture_wetBulbTemperatureSolid_psxi(double, double, double*, void*);",Library="TILMedia121ClaRa");
  end wetBulbTemperatureSolid_psxi;

  function temperature_pdxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Density d "Density";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.Temperature T "Temperature";
    external "C" T = TILMedia_GasMixture_temperature_pdxi(p,d,xi,gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_GasMixture_temperature_pdxi(double, double, double*, void*);",Library="TILMedia121ClaRa");
  end temperature_pdxi;

  function liquidDensity_T
    input SI.Temperature T "Temperature";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.Density d "density";
    external "C" d = TILMedia_Gas_liquidDensity_T(T, gasPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_Gas_liquidDensity_T(double, void*);",Library="TILMedia121ClaRa");
  end liquidDensity_T;
end GasObjectFunctions;
