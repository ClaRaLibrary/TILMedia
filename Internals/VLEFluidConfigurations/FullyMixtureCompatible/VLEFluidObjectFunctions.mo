within TILMedia.Internals.VLEFluidConfigurations.FullyMixtureCompatible;
package VLEFluidObjectFunctions
  "Package for calculation of VLEFLuid properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends .TILMedia.VLEFluidObjectFunctions;

  redeclare replaceable function extends pressure_dTxi
  external "C" p = TILMedia_VLEFluidObjectFunctions_pressure_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_pressure_dTxi(double, double, double*, void*);",Library="TILMedia160ClaRa");
    annotation(inverse(d=TILMedia.VLEFluidObjectFunctions.density_pTxi(p, T, xi, vleFluidPointer)));
  end pressure_dTxi;

  redeclare replaceable function extends specificEnthalpy_dTxi
  external "C" h = TILMedia_VLEFluidObjectFunctions_specificEnthalpy_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificEnthalpy_dTxi(double, double, double*, void*);",Library="TILMedia160ClaRa");
  end specificEnthalpy_dTxi;

  redeclare replaceable function extends specificEntropy_dTxi
  external "C" s = TILMedia_VLEFluidObjectFunctions_specificEntropy_dTxi(d, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificEntropy_dTxi(double, double, double*, void*);",Library="TILMedia160ClaRa");
  end specificEntropy_dTxi;

  redeclare replaceable function extends temperature_phxi
  external "C" T = TILMedia_VLEFluidObjectFunctions_temperature_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_temperature_phxi(double, double, double*, void*);",Library="TILMedia160ClaRa");
  annotation(inverse(h=TILMedia.VLEFluidObjectFunctions.specificEnthalpy_pTxi(p, T, xi, vleFluidPointer)),Impure=false);
  end temperature_phxi;

  redeclare replaceable function extends specificEntropy_phxi
  external "C" s = TILMedia_VLEFluidObjectFunctions_specificEntropy_phxi(p, h, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificEntropy_phxi(double, double, double*, void*);",Library="TILMedia160ClaRa");
  end specificEntropy_phxi;

  redeclare replaceable function extends density_pTxi
  external "C" d = TILMedia_VLEFluidObjectFunctions_density_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_density_pTxi(double, double, double*, void*);",Library="TILMedia160ClaRa");
  end density_pTxi;

  redeclare replaceable function extends specificEnthalpy_pTxi
  external "C" h = TILMedia_VLEFluidObjectFunctions_specificEnthalpy_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificEnthalpy_pTxi(double, double, double*, void*);",Library="TILMedia160ClaRa");
  annotation(inverse(T=TILMedia.VLEFluidObjectFunctions.temperature_phxi(p, h, xi, vleFluidPointer)),Impure=false);
  end specificEnthalpy_pTxi;

  redeclare replaceable function extends specificEntropy_pTxi
  external "C" s = TILMedia_VLEFluidObjectFunctions_specificEntropy_pTxi(p, T, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificEntropy_pTxi(double, double, double*, void*);",Library="TILMedia160ClaRa");
  annotation(inverse(T=TILMedia.VLEFluidObjectFunctions.temperature_psxi(p, s, xi, vleFluidPointer)),Impure=false);
  end specificEntropy_pTxi;

  redeclare replaceable function extends density_psxi
  external "C" d = TILMedia_VLEFluidObjectFunctions_density_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_density_psxi(double, double, double*, void*);",Library="TILMedia160ClaRa");
  end density_psxi;

  redeclare replaceable function extends temperature_psxi
  external "C" T = TILMedia_VLEFluidObjectFunctions_temperature_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_temperature_psxi(double, double, double*, void*);",Library="TILMedia160ClaRa");
  annotation(inverse(s=TILMedia.VLEFluidObjectFunctions.specificEntropy_pTxi(p, T, xi, vleFluidPointer)),Impure=false);
  end temperature_psxi;

  redeclare replaceable function extends specificEnthalpy_psxi
  external "C" h = TILMedia_VLEFluidObjectFunctions_specificEnthalpy_psxi(p, s, xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluidObjectFunctions_specificEnthalpy_psxi(double, double, double*, void*);",Library="TILMedia160ClaRa");
  annotation(inverse(s=TILMedia.VLEFluidObjectFunctions.specificEntropy_phxi(p, h, xi, vleFluidPointer)),Impure=false);
  end specificEnthalpy_psxi;

end VLEFluidObjectFunctions;
