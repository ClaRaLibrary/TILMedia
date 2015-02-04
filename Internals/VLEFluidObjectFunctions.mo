within TILMedia.Internals;
package VLEFluidObjectFunctions
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  function additionalProperties_dTxi
    input Modelica.SIunits.Density d "Density";
    input Modelica.SIunits.Temperature T "Temperature";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.MassFraction x "Steam mass fraction";
    output Modelica.SIunits.SpecificHeatCapacity cp "Specific heat capacity cp";
    output Modelica.SIunits.SpecificHeatCapacity cv "Specific heat capacity cv";
    output Modelica.SIunits.LinearExpansionCoefficient beta
      "Isobaric expansion coefficient";
    output Modelica.SIunits.Compressibility kappa "Isothermal compressibility";
    output TILMedia.Internals.Units.DensityDerPressure drhodp
      "Derivative of density wrt pressure";
    output TILMedia.Internals.Units.DensityDerSpecificEnthalpy drhodh
      "Derivative of density wrt specific enthalpy";
    output Real[size(xi,1)] drhodxi "Derivative of density wrt mass fraction";
    output Modelica.SIunits.Velocity a "Speed of sound";
    output Real gamma "Heat capacity ratio";
  external "C" TILMedia_VLEFluid_additionalProperties_dTxi(d,T,xi,vleFluidPointer,x,cp,cv,beta,kappa,drhodp,drhodh,drhodxi,a,gamma)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end additionalProperties_dTxi;

  function additionalProperties_phxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.SpecificEnthalpy h "Specific enthalpy";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.MassFraction x "Steam mass fraction";
    output Modelica.SIunits.SpecificHeatCapacity cp "Specific heat capacity cp";
    output Modelica.SIunits.SpecificHeatCapacity cv "Specific heat capacity cv";
    output Modelica.SIunits.LinearExpansionCoefficient beta
      "Isobaric expansion coefficient";
    output Modelica.SIunits.Compressibility kappa "Isothermal compressibility";
    output TILMedia.Internals.Units.DensityDerPressure drhodp
      "Derivative of density wrt pressure";
    output TILMedia.Internals.Units.DensityDerSpecificEnthalpy drhodh
      "Derivative of density wrt specific enthalpy";
    output Real[size(xi,1)] drhodxi "Derivative of density wrt mass fraction";
    output Modelica.SIunits.Velocity a "Speed of sound";
    output Real gamma "Heat capacity ratio";
  external "C" TILMedia_VLEFluid_additionalProperties_phxi(p,h,xi,vleFluidPointer,x,cp,cv,beta,kappa,drhodp,drhodh,drhodxi,a,gamma)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end additionalProperties_phxi;

  function additionalProperties_psxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.SpecificEntropy s "Specific entropy";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.MassFraction x "Steam mass fraction";
    output Modelica.SIunits.SpecificHeatCapacity cp "Specific heat capacity cp";
    output Modelica.SIunits.SpecificHeatCapacity cv "Specific heat capacity cv";
    output Modelica.SIunits.LinearExpansionCoefficient beta
      "Isobaric expansion coefficient";
    output Modelica.SIunits.Compressibility kappa "Isothermal compressibility";
    output TILMedia.Internals.Units.DensityDerPressure drhodp
      "Derivative of density wrt pressure";
    output TILMedia.Internals.Units.DensityDerSpecificEnthalpy drhodh
      "Derivative of density wrt specific enthalpy";
    output Real[size(xi,1)] drhodxi "Derivative of density wrt mass fraction";
    output Modelica.SIunits.Velocity a "Speed of sound";
    output Real gamma "Heat capacity ratio";
  external "C" TILMedia_VLEFluid_additionalProperties_psxi(p,s,xi,vleFluidPointer,x,cp,cv,beta,kappa,drhodp,drhodh,drhodxi,a,gamma)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end additionalProperties_psxi;

  function additionalProperties_pTxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.Temperature T "Temperature";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.MassFraction x "Steam mass fraction";
    output Modelica.SIunits.SpecificHeatCapacity cp "Specific heat capacity cp";
    output Modelica.SIunits.SpecificHeatCapacity cv "Specific heat capacity cv";
    output Modelica.SIunits.LinearExpansionCoefficient beta
      "Isobaric expansion coefficient";
    output Modelica.SIunits.Compressibility kappa "Isothermal compressibility";
    output TILMedia.Internals.Units.DensityDerPressure drhodp
      "Derivative of density wrt pressure";
    output TILMedia.Internals.Units.DensityDerSpecificEnthalpy drhodh
      "Derivative of density wrt specific enthalpy";
    output Real[size(xi,1)] drhodxi "Derivative of density wrt mass fraction";
    output Modelica.SIunits.Velocity a "Speed of sound";
    output Real gamma "Heat capacity ratio";
  external "C" TILMedia_VLEFluid_additionalProperties_pTxi(p,T,xi,vleFluidPointer,x,cp,cv,beta,kappa,drhodp,drhodh,drhodxi,a,gamma)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end additionalProperties_pTxi;

  function criticalDataRecord_xi
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Real d,h,p,s,T;
  external "C" TILMedia_VLEFluid_criticalDataRecord_xi(xi, vleFluidPointer,d,h,p,s,T) annotation(Library="TILMedia100ClaRa");
                                                                                                        annotation(Impure=false);
  end criticalDataRecord_xi;

  function molarMass_xi
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.MolarMass mm "Molar mass";
  external "C" mm=  TILMedia_VLEFluid_Cached_molarMass_xi(xi, vleFluidPointer) annotation(Library="TILMedia100ClaRa");
                                                                                                        annotation(Impure=false);
  end molarMass_xi;

  function properties_dTxi
    input Modelica.SIunits.Density d "Density";
    input Modelica.SIunits.Temperature T "Temperature";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.SpecificEnthalpy h "Specific enthalpy";
    output Modelica.SIunits.AbsolutePressure p "Pressure";
    output Modelica.SIunits.SpecificEntropy s "Specific entropy";
  external "C" TILMedia_VLEFluid_properties_dTxi(d,T,xi,vleFluidPointer,h,p,s)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end properties_dTxi;

  function properties_phxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.SpecificEnthalpy h "Specific enthalpy";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.Density d "Density";
    output Modelica.SIunits.SpecificEntropy s "Specific entropy";
    output Modelica.SIunits.Temperature T "Temperature";
  external "C" TILMedia_VLEFluid_properties_phxi(p,h,xi,vleFluidPointer,d,s,T)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end properties_phxi;

  function properties_psxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.SpecificEntropy s "Specific entropy";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.Density d "Density";
    output Modelica.SIunits.SpecificEnthalpy h "Specific enthalpy";
    output Modelica.SIunits.Temperature T "Temperature";
  external "C" TILMedia_VLEFluid_properties_psxi(p,s,xi,vleFluidPointer,d,h,T)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end properties_psxi;

  function properties_pTxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.Temperature T "Temperature";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.Density d "Density";
    output Modelica.SIunits.SpecificEnthalpy h "Specific enthalpy";
    output Modelica.SIunits.SpecificEntropy s "Specific entropy";
  external "C" TILMedia_VLEFluid_properties_pTxi(p,T,xi,vleFluidPointer,d,h,s)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end properties_pTxi;

  function transportPropertyRecord_dTxi
    input Modelica.SIunits.Density d "Density";
    input Modelica.SIunits.Temperature T "Temperature";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output TILMedia.Internals.TransportPropertyRecord transp
      "Transport property record";
  external "C" TILMedia_VLEFluid_transportProperties_dTxi(d,T,xi,vleFluidPointer,transp.Pr,transp.lambda,transp.eta,transp.sigma)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end transportPropertyRecord_dTxi;

  function transportPropertyRecord_phxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.SpecificEnthalpy h "Specific enthalpy";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output TILMedia.Internals.TransportPropertyRecord transp
      "Transport property record";
  external "C" TILMedia_VLEFluid_transportProperties_phxi(p,h,xi,vleFluidPointer,transp.Pr,transp.lambda,transp.eta,transp.sigma)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end transportPropertyRecord_phxi;

  function transportPropertyRecord_psxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.SpecificEntropy s "Specific entropy";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output TILMedia.Internals.TransportPropertyRecord transp
      "Transport property record";
  external "C" TILMedia_VLEFluid_transportProperties_psxi(p,s,xi,vleFluidPointer,transp.Pr,transp.lambda,transp.eta,transp.sigma)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end transportPropertyRecord_psxi;

  function transportPropertyRecord_pTxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.Temperature T "Temperature";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output TILMedia.Internals.TransportPropertyRecord transp
      "Transport property record";
  external "C" TILMedia_VLEFluid_transportProperties_pTxi(p,T,xi,vleFluidPointer,transp.Pr,transp.lambda,transp.eta,transp.sigma)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end transportPropertyRecord_pTxi;

  function VLETransportPropertyRecord_dTxi
    input Modelica.SIunits.Density d "Density";
    input Modelica.SIunits.Temperature T "Temperature";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.PrandtlNumber Pr_l "Prandtl number";
    output Modelica.SIunits.PrandtlNumber Pr_v "Prandtl number";
    output Modelica.SIunits.ThermalConductivity lambda_l "Thermal conductivity";
    output Modelica.SIunits.ThermalConductivity lambda_v "Thermal conductivity";
    output Modelica.SIunits.DynamicViscosity eta_l "Dynamic viscosity";
    output Modelica.SIunits.DynamicViscosity eta_v "Dynamic viscosity";
  external "C" TILMedia_VLEFluid_VLETransportProperties_dTxi(d, T, xi, vleFluidPointer, Pr_l, Pr_v, lambda_l, lambda_v, eta_l, eta_v)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end VLETransportPropertyRecord_dTxi;

  function VLETransportPropertyRecord_phxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.SpecificEnthalpy h "Specific enthalpy";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.PrandtlNumber Pr_l "Prandtl number";
    output Modelica.SIunits.PrandtlNumber Pr_v "Prandtl number";
    output Modelica.SIunits.ThermalConductivity lambda_l "Thermal conductivity";
    output Modelica.SIunits.ThermalConductivity lambda_v "Thermal conductivity";
    output Modelica.SIunits.DynamicViscosity eta_l "Dynamic viscosity";
    output Modelica.SIunits.DynamicViscosity eta_v "Dynamic viscosity";
  external "C" TILMedia_VLEFluid_VLETransportProperties_phxi(p, h, xi,vleFluidPointer, Pr_l, Pr_v, lambda_l, lambda_v, eta_l, eta_v)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end VLETransportPropertyRecord_phxi;

  function VLETransportPropertyRecord_psxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.SpecificEntropy s "Specific entropy";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.PrandtlNumber Pr_l "Prandtl number";
    output Modelica.SIunits.PrandtlNumber Pr_v "Prandtl number";
    output Modelica.SIunits.ThermalConductivity lambda_l "Thermal conductivity";
    output Modelica.SIunits.ThermalConductivity lambda_v "Thermal conductivity";
    output Modelica.SIunits.DynamicViscosity eta_l "Dynamic viscosity";
    output Modelica.SIunits.DynamicViscosity eta_v "Dynamic viscosity";
  external "C" TILMedia_VLEFluid_VLETransportProperties_psxi(p, s, xi, vleFluidPointer, Pr_l, Pr_v, lambda_l, lambda_v, eta_l, eta_v)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end VLETransportPropertyRecord_psxi;

  function VLETransportPropertyRecord_pTxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.Temperature T "Temperature";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.PrandtlNumber Pr_l "Prandtl number";
    output Modelica.SIunits.PrandtlNumber Pr_v "Prandtl number";
    output Modelica.SIunits.ThermalConductivity lambda_l "Thermal conductivity";
    output Modelica.SIunits.ThermalConductivity lambda_v "Thermal conductivity";
    output Modelica.SIunits.DynamicViscosity eta_l "Dynamic viscosity";
    output Modelica.SIunits.DynamicViscosity eta_v "Dynamic viscosity";
  external "C" TILMedia_VLEFluid_VLETransportProperties_pTxi(p, T, xi, vleFluidPointer, Pr_l, Pr_v, lambda_l, lambda_v, eta_l, eta_v)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end VLETransportPropertyRecord_pTxi;

  function fluidIsValid
    input String mediumName;
    output Boolean isValid;
  external "C" isValid=  TILMedia_VLEFluid_isValid(mediumName) annotation(Library="TILMedia100ClaRa");
                                                                                                 annotation(Impure=false);
  end fluidIsValid;

  function phase_dTxi
    input Modelica.SIunits.Density d "Density";
    input Modelica.SIunits.Temperature T "Temperature";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output TILMedia.Internals.PhaseRecord phaseRecord;
  external "C" TILMedia_VLEFluid_Cached_phase_dTxi(d,T,xi,vleFluidPointer, phaseRecord.phase)
  annotation(Library="TILMedia100ClaRa");
  end phase_dTxi;

  function phase_phxi2
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.SpecificEnthalpy h "Specific enthalpy";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Integer phase;
  external "C" TILMedia_VLEFluid_Cached_phase_phxi(p,h,xi,vleFluidPointer, phase)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end phase_phxi2;
  
  function phase_phxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.SpecificEnthalpy h "Specific enthalpy";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output TILMedia.Internals.PhaseRecord phaseRecord;
  algorithm
	phaseRecord.phase:=phase_phxi2(p,h,xi,vleFluidPointer);
  end phase_phxi;

  function VLEAdditionalProperties_dTxi
    input Modelica.SIunits.Density d "Density";
    input Modelica.SIunits.Temperature T "Temperature";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.SpecificHeatCapacity cp_l
      "Specific heat capacity cp";
    output Modelica.SIunits.LinearExpansionCoefficient beta_l
      "Isobaric expansion coefficient";
    output Modelica.SIunits.Compressibility kappa_l
      "Isothermal compressibility";
    output Modelica.SIunits.SpecificHeatCapacity cp_v
      "Specific heat capacity cp";
    output Modelica.SIunits.LinearExpansionCoefficient beta_v
      "Isobaric expansion coefficient";
    output Modelica.SIunits.Compressibility kappa_v
      "Isothermal compressibility";
  external "C" TILMedia_VLEFluid_VLEAdditionalProperties_dTxi(d,T,xi,vleFluidPointer,
    cp_l, beta_l, kappa_l,
    cp_v, beta_v, kappa_v)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end VLEAdditionalProperties_dTxi;

  function VLEAdditionalProperties_phxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.SpecificEnthalpy h "Specific enthalpy";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.SpecificHeatCapacity cp_l
      "Specific heat capacity cp";
    output Modelica.SIunits.LinearExpansionCoefficient beta_l
      "Isobaric expansion coefficient";
    output Modelica.SIunits.Compressibility kappa_l
      "Isothermal compressibility";
    output Modelica.SIunits.SpecificHeatCapacity cp_v
      "Specific heat capacity cp";
    output Modelica.SIunits.LinearExpansionCoefficient beta_v
      "Isobaric expansion coefficient";
    output Modelica.SIunits.Compressibility kappa_v
      "Isothermal compressibility";
  external "C" TILMedia_VLEFluid_VLEAdditionalProperties_phxi(p,h,xi,vleFluidPointer,
    cp_l, beta_l, kappa_l,
    cp_v, beta_v, kappa_v)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end VLEAdditionalProperties_phxi;

  function VLEAdditionalProperties_psxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.SpecificEntropy s "Specific entropy";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.SpecificHeatCapacity cp_l
      "Specific heat capacity cp";
    output Modelica.SIunits.LinearExpansionCoefficient beta_l
      "Isobaric expansion coefficient";
    output Modelica.SIunits.Compressibility kappa_l
      "Isothermal compressibility";
    output Modelica.SIunits.SpecificHeatCapacity cp_v
      "Specific heat capacity cp";
    output Modelica.SIunits.LinearExpansionCoefficient beta_v
      "Isobaric expansion coefficient";
    output Modelica.SIunits.Compressibility kappa_v
      "Isothermal compressibility";
  external "C" TILMedia_VLEFluid_VLEAdditionalProperties_psxi(p,s,xi,vleFluidPointer,
    cp_l, beta_l, kappa_l,
    cp_v, beta_v, kappa_v)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end VLEAdditionalProperties_psxi;

  function VLEAdditionalProperties_pTxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.Temperature T "Temperature";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.SpecificHeatCapacity cp_l
      "Specific heat capacity cp";
    output Modelica.SIunits.LinearExpansionCoefficient beta_l
      "Isobaric expansion coefficient";
    output Modelica.SIunits.Compressibility kappa_l
      "Isothermal compressibility";
    output Modelica.SIunits.SpecificHeatCapacity cp_v
      "Specific heat capacity cp";
    output Modelica.SIunits.LinearExpansionCoefficient beta_v
      "Isobaric expansion coefficient";
    output Modelica.SIunits.Compressibility kappa_v
      "Isothermal compressibility";
  external "C" TILMedia_VLEFluid_VLEAdditionalProperties_pTxi(p,T,xi,vleFluidPointer,
    cp_l, beta_l, kappa_l,
    cp_v, beta_v, kappa_v)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end VLEAdditionalProperties_pTxi;

  function VLEProperties_dTxi
    input Modelica.SIunits.Density d "Density";
    input Modelica.SIunits.Temperature T "Temperature";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.Density d_l "Density";
    output Modelica.SIunits.SpecificEnthalpy h_l "Specific enthalpy";
    output Modelica.SIunits.AbsolutePressure p_l "Pressure";
    output Modelica.SIunits.SpecificEntropy s_l "Specific entropy";
    output Modelica.SIunits.Temperature T_l "Temperature";
    output Modelica.SIunits.MassFraction[size(xi,1)] xi_l "Mass fractions";
    output Modelica.SIunits.Density d_v "Density";
    output Modelica.SIunits.SpecificEnthalpy h_v "Specific enthalpy";
    output Modelica.SIunits.AbsolutePressure p_v "Pressure";
    output Modelica.SIunits.SpecificEntropy s_v "Specific entropy";
    output Modelica.SIunits.Temperature T_v "Temperature";
    output Modelica.SIunits.MassFraction[size(xi,1)] xi_v "Mass fractions";
  external "C" TILMedia_VLEFluid_VLEProperties_dTxi(d,T,xi,vleFluidPointer,
    d_l, h_l, p_l, s_l, T_l, xi_l,
    d_v, h_v, p_v, s_v, T_v, xi_v)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end VLEProperties_dTxi;

  function VLEProperties_phxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.SpecificEnthalpy h "Specific enthalpy";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.Density d_l "Density";
    output Modelica.SIunits.SpecificEnthalpy h_l "Specific enthalpy";
    output Modelica.SIunits.AbsolutePressure p_l "Pressure";
    output Modelica.SIunits.SpecificEntropy s_l "Specific entropy";
    output Modelica.SIunits.Temperature T_l "Temperature";
    output Modelica.SIunits.MassFraction[size(xi,1)] xi_l "Mass fractions";
    output Modelica.SIunits.Density d_v "Density";
    output Modelica.SIunits.SpecificEnthalpy h_v "Specific enthalpy";
    output Modelica.SIunits.AbsolutePressure p_v "Pressure";
    output Modelica.SIunits.SpecificEntropy s_v "Specific entropy";
    output Modelica.SIunits.Temperature T_v "Temperature";
    output Modelica.SIunits.MassFraction[size(xi,1)] xi_v "Mass fractions";
  external "C" TILMedia_VLEFluid_VLEProperties_phxi(p,h,xi,vleFluidPointer,
    d_l, h_l, p_l, s_l, T_l, xi_l,
    d_v, h_v, p_v, s_v, T_v, xi_v)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end VLEProperties_phxi;

  function VLEProperties_psxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.SpecificEntropy s "Specific entropy";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.Density d_l "Density";
    output Modelica.SIunits.SpecificEnthalpy h_l "Specific enthalpy";
    output Modelica.SIunits.AbsolutePressure p_l "Pressure";
    output Modelica.SIunits.SpecificEntropy s_l "Specific entropy";
    output Modelica.SIunits.Temperature T_l "Temperature";
    output Modelica.SIunits.MassFraction[size(xi,1)] xi_l "Mass fractions";
    output Modelica.SIunits.Density d_v "Density";
    output Modelica.SIunits.SpecificEnthalpy h_v "Specific enthalpy";
    output Modelica.SIunits.AbsolutePressure p_v "Pressure";
    output Modelica.SIunits.SpecificEntropy s_v "Specific entropy";
    output Modelica.SIunits.Temperature T_v "Temperature";
    output Modelica.SIunits.MassFraction[size(xi,1)] xi_v "Mass fractions";
  external "C" TILMedia_VLEFluid_VLEProperties_psxi(p,s,xi,vleFluidPointer,
    d_l, h_l, p_l, s_l, T_l, xi_l,
    d_v, h_v, p_v, s_v, T_v, xi_v)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end VLEProperties_psxi;

  function VLEProperties_pTxi
    input Modelica.SIunits.AbsolutePressure p "Pressure";
    input Modelica.SIunits.Temperature T "Temperature";
    input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.Density d_l "Density";
    output Modelica.SIunits.SpecificEnthalpy h_l "Specific enthalpy";
    output Modelica.SIunits.AbsolutePressure p_l "Pressure";
    output Modelica.SIunits.SpecificEntropy s_l "Specific entropy";
    output Modelica.SIunits.Temperature T_l "Temperature";
    output Modelica.SIunits.MassFraction[size(xi,1)] xi_l "Mass fractions";
    output Modelica.SIunits.Density d_v "Density";
    output Modelica.SIunits.SpecificEnthalpy h_v "Specific enthalpy";
    output Modelica.SIunits.AbsolutePressure p_v "Pressure";
    output Modelica.SIunits.SpecificEntropy s_v "Specific entropy";
    output Modelica.SIunits.Temperature T_v "Temperature";
    output Modelica.SIunits.MassFraction[size(xi,1)] xi_v "Mass fractions";
  external "C" TILMedia_VLEFluid_VLEProperties_pTxi(p,T,xi,vleFluidPointer,
    d_l, h_l, p_l, s_l, T_l, xi_l,
    d_v, h_v, p_v, s_v, T_v, xi_v)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end VLEProperties_pTxi;

  function molarMass_nc
    input Integer nc "Number of components";
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output SI.MolarMass mm_i[nc] "Molar mass";
  external "C" TILMedia_VLEFluid_Cached_molarMass(vleFluidPointer, mm_i) annotation(Library="TILMedia100ClaRa");
                                                                                                        annotation(Impure=false);
  end molarMass_nc;

  function specificEnthalpy_pTxi
   input SI.AbsolutePressure p "Pressure";
   input SI.Temperature T "Temperature";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   output SI.SpecificEnthalpy h "Specific Enthalpy";
  external "C" h=  TILMedia_VLEFluid_Cached_specificEnthalpy_pTxi(p,T,xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
  annotation(derivative=der_specificEnthalpy_pTxi, inverse(T=temperature_phxi(p, h, xi, vleFluidPointer)),Impure=false);
  end specificEnthalpy_pTxi;

  function density_pTxi
   input SI.AbsolutePressure p "Pressure";
   input SI.Temperature T "Temperature";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   output SI.Density d "Density";
  external "C" d=  TILMedia_VLEFluid_Cached_density_pTxi(p,T,xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
  annotation(derivative=der_density_pTxi);
  end density_pTxi;

  function specificEntropy_pTxi
   input SI.AbsolutePressure p "Pressure";
   input SI.Temperature T "Temperature";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   output SI.SpecificEntropy s "Specific Entropy";
  external "C" s=  TILMedia_VLEFluid_Cached_specificEntropy_pTxi(p,T,xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
  annotation(derivative=der_specificEntropy_pTxi, inverse(T=temperature_psxi(p, s, xi, vleFluidPointer)),Impure=false);
  end specificEntropy_pTxi;

  function density_phxi
   input SI.AbsolutePressure p "Pressure";
   input SI.SpecificEnthalpy h "Specific Enthalpy";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   output SI.Density d "Density";
  external "C" d=  TILMedia_VLEFluid_Cached_density_phxi(p,h,xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
  annotation(derivative=der_density_phxi,Impure=false);
  end density_phxi;

  function specificEntropy_phxi
   input SI.AbsolutePressure p "Pressure";
   input SI.SpecificEnthalpy h "Specific Enthalpy";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   output SI.SpecificEntropy s "Specific Entropy";
  external "C" s=  TILMedia_VLEFluid_Cached_specificEntropy_phxi(p,h,xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
  annotation(derivative=der_specificEntropy_phxi, inverse(h=specificEnthalpy_psxi(p, s, xi, vleFluidPointer)),Impure=false);
  end specificEntropy_phxi;

  function temperature_phxi
   input SI.AbsolutePressure p "Pressure";
   input SI.SpecificEnthalpy h "Specific Enthalpy";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   output SI.Temperature T "Temperature";
  external "C" T=  TILMedia_VLEFluid_Cached_temperature_phxi(p,h,xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
  annotation(derivative=der_temperature_phxi, inverse(h=specificEnthalpy_pTxi(p, T, xi, vleFluidPointer)),Impure=false);
  end temperature_phxi;

  function specificEnthalpy_psxi
   input SI.AbsolutePressure p "Pressure";
   input SI.SpecificEntropy s "Specific Entropy";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   output SI.SpecificEnthalpy h "Specific Enthalpy";
  external "C" h=  TILMedia_VLEFluid_Cached_specificEnthalpy_psxi(p,s,xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
  annotation(derivative=der_specificEnthalpy_psxi, inverse(s=specificEntropy_phxi(p, h, xi, vleFluidPointer)),Impure=false);
  end specificEnthalpy_psxi;

  function density_psxi
   input SI.AbsolutePressure p "Pressure";
   input SI.SpecificEntropy s "Specific Entropy";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   output SI.Density d "Density";
  external "C" d=  TILMedia_VLEFluid_Cached_density_psxi(p,s,xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
  annotation(derivative=der_density_psxi,Impure=false);
  end density_psxi;

  function temperature_psxi
   input SI.AbsolutePressure p "Pressure";
   input SI.SpecificEntropy s "Specific Entropy";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   output SI.Temperature T "Temperature";
  external "C" T=  TILMedia_VLEFluid_Cached_temperature_psxi(p,s,xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
  annotation(derivative=der_temperature_psxi, inverse(s=specificEntropy_pTxi(p, T, xi, vleFluidPointer)),Impure=false);
  end temperature_psxi;

  function pressure_dTxi
   input SI.Density d "Density";
   input SI.Temperature T "Temperature";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   output SI.AbsolutePressure p "Pressure";
  external "C" p=  TILMedia_VLEFluid_Cached_pressure_dTxi(d,T,xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
  annotation(derivative=der_pressure_dTxi, inverse(d=density_pTxi(p, T, xi, vleFluidPointer)),Impure=false);
  end pressure_dTxi;

  function specificEnthalpy_dTxi
   input SI.Density d "Density";
   input SI.Temperature T "Temperature";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   output SI.SpecificEnthalpy h "Specific Enthalpy";
  external "C" h=  TILMedia_VLEFluid_Cached_specificEnthalpy_dTxi(d,T,xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
  annotation(derivative=der_specificEnthalpy_dTxi,Impure=false);
  end specificEnthalpy_dTxi;

  function specificEntropy_dTxi
   input SI.Density d "Density";
   input SI.Temperature T "Temperature";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   output SI.SpecificEntropy s "Specific Entropy";
  external "C" s=  TILMedia_VLEFluid_Cached_specificEntropy_dTxi(d,T,xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
  annotation(derivative=der_specificEntropy_dTxi,Impure=false);
  end specificEntropy_dTxi;

  function der_specificEnthalpy_pTxi
   input SI.AbsolutePressure p "Pressure";
   input SI.Temperature T "Temperature";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   input Real der_p "Derivative of Pressure";
   input Real der_T "Derivative of Temperature";
   input Real[:] der_xi
      "Derivative of Mass fractions of the first nc-1 components";
   output Real der_h "Derivative of Specific Enthalpy";
  external "C" der_h=  TILMedia_VLEFluid_Cached_der_specificEnthalpy_pTxi(p,T,xi,der_p,der_T,der_xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end der_specificEnthalpy_pTxi;

  function der_density_pTxi
   input SI.AbsolutePressure p "Pressure";
   input SI.Temperature T "Temperature";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   input Real der_p "Derivative of Pressure";
   input Real der_T "Derivative of Temperature";
   input Real[:] der_xi
      "Derivative of Mass fractions of the first nc-1 components";
   output Real der_d "Derivative of Density";
  external "C" der_d=  TILMedia_VLEFluid_Cached_der_density_pTxi(p,T,xi,der_p,der_T,der_xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end der_density_pTxi;

  function der_specificEntropy_pTxi
   input SI.AbsolutePressure p "Pressure";
   input SI.Temperature T "Temperature";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   input Real der_p "Derivative of Pressure";
   input Real der_T "Derivative of Temperature";
   input Real[:] der_xi
      "Derivative of Mass fractions of the first nc-1 components";
   output Real der_s "Derivative of Specific Entropy";
  external "C" der_s=  TILMedia_VLEFluid_Cached_der_specificEntropy_pTxi(p,T,xi,der_p,der_T,der_xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end der_specificEntropy_pTxi;

  function der_density_phxi
   input SI.AbsolutePressure p "Pressure";
   input SI.SpecificEnthalpy h "Specific Enthalpy";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   input Real der_p "Derivative of Pressure";
   input Real der_h "Derivative of Specific Enthalpy";
   input Real[:] der_xi
      "Derivative of Mass fractions of the first nc-1 components";
   output Real der_d "Derivative of Density";
  external "C" der_d=  TILMedia_VLEFluid_Cached_der_density_phxi(p,h,xi,der_p,der_h,der_xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end der_density_phxi;

  function der_specificEntropy_phxi
   input SI.AbsolutePressure p "Pressure";
   input SI.SpecificEnthalpy h "Specific Enthalpy";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   input Real der_p "Derivative of Pressure";
   input Real der_h "Derivative of Specific Enthalpy";
   input Real[:] der_xi
      "Derivative of Mass fractions of the first nc-1 components";
   output Real der_s "Derivative of Specific Entropy";
  external "C" der_s=  TILMedia_VLEFluid_Cached_der_specificEntropy_phxi(p,h,xi,der_p,der_h,der_xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end der_specificEntropy_phxi;

  function der_temperature_phxi
   input SI.AbsolutePressure p "Pressure";
   input SI.SpecificEnthalpy h "Specific Enthalpy";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   input Real der_p "Derivative of Pressure";
   input Real der_h "Derivative of Specific Enthalpy";
   input Real[:] der_xi
      "Derivative of Mass fractions of the first nc-1 components";
   output Real der_T "Derivative of Temperature";
  external "C" der_T=  TILMedia_VLEFluid_Cached_der_temperature_phxi(p,h,xi,der_p,der_h,der_xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end der_temperature_phxi;

  function der_specificEnthalpy_psxi
   input SI.AbsolutePressure p "Pressure";
   input SI.SpecificEntropy s "Specific Entropy";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   input Real der_p "Derivative of Pressure";
   input Real der_s "Derivative of Specific Entropy";
   input Real[:] der_xi
      "Derivative of Mass fractions of the first nc-1 components";
   output Real der_h "Derivative of Specific Enthalpy";
  external "C" der_h=  TILMedia_VLEFluid_Cached_der_specificEnthalpy_psxi(p,s,xi,der_p,der_s,der_xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end der_specificEnthalpy_psxi;

  function der_density_psxi
   input SI.AbsolutePressure p "Pressure";
   input SI.SpecificEntropy s "Specific Entropy";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   input Real der_p "Derivative of Pressure";
   input Real der_s "Derivative of Specific Entropy";
   input Real[:] der_xi
      "Derivative of Mass fractions of the first nc-1 components";
   output Real der_d "Derivative of Density";
  external "C" der_d=  TILMedia_VLEFluid_Cached_der_density_psxi(p,s,xi,der_p,der_s,der_xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end der_density_psxi;

  function der_temperature_psxi
   input SI.AbsolutePressure p "Pressure";
   input SI.SpecificEntropy s "Specific Entropy";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   input Real der_p "Derivative of Pressure";
   input Real der_s "Derivative of Specific Entropy";
   input Real[:] der_xi
      "Derivative of Mass fractions of the first nc-1 components";
   output Real der_T "Derivative of Temperature";
  external "C" der_T=  TILMedia_VLEFluid_Cached_der_temperature_psxi(p,s,xi,der_p,der_s,der_xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end der_temperature_psxi;

  function der_pressure_dTxi
   input SI.Density d "Density";
   input SI.Temperature T "Temperature";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   input Real der_d "Derivative of Density";
   input Real der_T "Derivative of Temperature";
   input Real[:] der_xi
      "Derivative of Mass fractions of the first nc-1 components";
   output Real der_p "Derivative of Pressure";
  external "C" der_p=  TILMedia_VLEFluid_Cached_der_pressure_dTxi(d,T,xi,der_d,der_T,der_xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end der_pressure_dTxi;

  function der_specificEnthalpy_dTxi
   input SI.Density d "Density";
   input SI.Temperature T "Temperature";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   input Real der_d "Derivative of Density";
   input Real der_T "Derivative of Temperature";
   input Real[:] der_xi
      "Derivative of Mass fractions of the first nc-1 components";
   output Real der_h "Derivative of Specific Enthalpy";
  external "C" der_h=  TILMedia_VLEFluid_Cached_der_specificEnthalpy_dTxi(d,T,xi,der_d,der_T,der_xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end der_specificEnthalpy_dTxi;

  function der_specificEntropy_dTxi
   input SI.Density d "Density";
   input SI.Temperature T "Temperature";
   input Modelica.SIunits.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
   input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer;
   input Real der_d "Derivative of Density";
   input Real der_T "Derivative of Temperature";
   input Real[:] der_xi
      "Derivative of Mass fractions of the first nc-1 components";
   output Real der_s "Derivative of Specific Entropy";
  external "C" der_s=  TILMedia_VLEFluid_Cached_der_specificEntropy_dTxi(d,T,xi,der_d,der_T,der_xi,vleFluidPointer)
  annotation(Library="TILMedia100ClaRa");
                                    annotation(Impure=false);
  end der_specificEntropy_dTxi;

  function triplePressure_n
    input Integer compNo;
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.AbsolutePressure p_triple "Triple pressure";
  external "C" p_triple=  TILMedia_VLEFluid_Cached_triplePressure_n(compNo, vleFluidPointer) annotation(Library="TILMedia100ClaRa");
                                                                                                        annotation(Impure=false);
  end triplePressure_n;

  function tripleTemperature_n
    input Integer compNo;
    input TILMedia.VLEFluidObjectFunctions.VLEFluidPointer
                       vleFluidPointer;
    output Modelica.SIunits.Temperature T_triple "Triple temperature";
  external "C" T_triple=  TILMedia_VLEFluid_Cached_tripleTemperature_n(compNo, vleFluidPointer) annotation(Library="TILMedia100ClaRa");
                                                                                                        annotation(Impure=false);
  end tripleTemperature_n;
end VLEFluidObjectFunctions;
