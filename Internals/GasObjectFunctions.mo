within TILMedia.Internals;
package GasObjectFunctions
    extends TILMedia.Internals.ClassTypes.ModelPackage;

  function molarMass_nc
    input Integer nc "Number of components";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.MolarMass mm_i[nc] "Molar mass of component i";
  external "C" TILMedia_Gas_molarMass(gasPointer, mm_i) annotation(Library="TILMedia100ClaRa");
  annotation(Impure=false);
  end molarMass_nc;

  function molarMass_xi
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.MolarMass mm "Molar mass";
    output SI.MolarMass mm_i[size(xi,1)+1] "Molar mass of component i";
  external "C" TILMedia_Gas_molarMass_xi(xi, gasPointer, mm, mm_i) annotation(Library="TILMedia100ClaRa");
  annotation(Impure=false);
  end molarMass_xi;

  function pressure_dTxi
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input Integer nc "Number of components";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.AbsolutePressure p "Pressure";
    external "C" p=  TILMedia_Gas_pressure_dTxi(d,T,xi,gasPointer) annotation(Library="TILMedia100ClaRa");
    annotation(Impure=false);
  end pressure_dTxi;

  function temperature_psxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.Temperature T "Temperature";
    external "C" T =
                   TILMedia_Gas_temperature_psxi(p,s,xi,gasPointer) annotation(Library="TILMedia100ClaRa");
     annotation(Impure=false);
  end temperature_psxi;

  function pureComponentProperties_pTnc
    input SI.AbsolutePressure p "Pressure";
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
    external "C" TILMedia_Gas_pureComponentProperties_pT(p,T,gasPointer,ppS,delta_hv,delta_hd,h_idealGas) annotation(Library="TILMedia100ClaRa");
    annotation(Impure=false);
  end pureComponentProperties_pTnc;

  function simpleCondendsingProperties_phxi
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.Temperature T "Temperature";
    output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
    output SI.SpecificHeatCapacity cv "Specific heat capacity cv";
    output SI.LinearExpansionCoefficient beta
      "Isothermal expansion coefficient";
    output SI.Velocity w "Speed of sound";
    output SI.MassFraction xis
      "Saturation mass fraction of condensing component";
    external "C" TILMedia_Gas_simpleCondendsingProperties_phxi(p,h,xi,gasPointer,T,cp,cv,beta,w,xis) annotation(Library="TILMedia100ClaRa");
    annotation(Impure=false);
  end simpleCondendsingProperties_phxi;

  function simpleCondendsingProperties_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
    output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
    output SI.SpecificHeatCapacity cv "Specific heat capacity cv";
    output SI.LinearExpansionCoefficient beta
      "Isothermal expansion coefficient";
    output SI.Velocity w "Speed of sound";
    output SI.MassFraction xis
      "Saturation mass fraction of condensing component";
    external "C" TILMedia_Gas_simpleCondendsingProperties_pTxi(p,T,xi,gasPointer,h,cp,cv,beta,w,xis) annotation(Library="TILMedia100ClaRa");
    annotation(Impure=false);
  end simpleCondendsingProperties_pTxi;

  function additionalProperties_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output SI.Density d "Density";
    output SI.SpecificEntropy s "Specific entropy";
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
    external "C" TILMedia_Gas_additionalProperties_pTxi(p,T,xi,gasPointer,d,s,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,pp,xi_gas) annotation(Library="TILMedia100ClaRa");
    annotation(Impure=false);
  end additionalProperties_pTxi;

  function transportProperties_pTxi
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.GasObjectFunctions.GasPointer gasPointer;
    output TILMedia.Internals.TransportPropertyRecord transp
      "Transport property record";
    external "C" TILMedia_Gas_transportProperties_pTxi(p,T,xi,gasPointer,transp.Pr,transp.lambda,transp.eta,transp.sigma) annotation(Library="TILMedia100ClaRa");
    annotation(Impure=false);
  end transportProperties_pTxi;
end GasObjectFunctions;
