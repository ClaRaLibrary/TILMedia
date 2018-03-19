within TILMedia.Testers;
model TestVLEFluidObjectFunctions

  // This tester demonstrates the usage of the VLEFluidFunctions and the VLEFluidObjectFunctions
  // The VLEFluidFunctions uses external c-functions and should only be used for the calculation of start and initial values
  // The VLEFluidObjectFunctions uses external c-classes and are optimized for the continuous calculation of the thermodynamic properties

  SI.Pressure p;
  SI.SpecificEnthalpy h(start = h_start, fixed=true);
  SI.Density d;
  SI.Velocity w;
  SI.Temperature T;
  SI.MassFraction xi[vleFluidType.nc-1];

  TILMedia.VLEFluidTypes.TILMedia_CO2  vleFluidType;

  // Start values for the the temperature
  parameter SI.Temperature T_start = 273.15+20;
  parameter SI.Pressure p_start = 4e6;

  // Start value for the enthalpy is calculated from the external C-function VLEFluidFuctions.specificEnthalpy_pTxi.
  parameter Real h_start = TILMedia.VLEFluidFunctions.specificEnthalpy_pTxi(vleFluidType,  p_start, T_start);

  // Instance of a VLEFluid object that requires the pressure p and the enthalpy h as inputs.
  // For h the start value h_start is used
  TILMedia.VLEFluidObjectFunctions.VLEFluidPointer vleFluidPointer=TILMedia.VLEFluidObjectFunctions.VLEFluidPointer(vleFluidType.concatVLEFluidName, 7, vleFluidType.mixingRatio_propertyCalculation[1:end-1]/sum(vleFluidType.mixingRatio_propertyCalculation), vleFluidType.nc_propertyCalculation, vleFluidType.nc, 0)
    "Pointer to external medium memory";

equation
  p = 4e6;
  der(h) = -h/(1+time);

  // Continuous calculation of the density d, the speed of sound w and the tempertaure T in dependence of the pressure p and the specific enthalpy h
  // Please note that the VLEFluidObjectFunctions refer to an external object with the pointer vleFluid.vleFluidPointer.
  // Due the caching of previous calculated results, these object functions are very efficient in the continuous calculation of the property data.
  d = TILMedia.VLEFluidObjectFunctions.density_phxi(p, h, xi, vleFluidPointer);
  T = TILMedia.VLEFluidObjectFunctions.temperature_phxi(p, h, xi, vleFluidPointer);
  w = TILMedia.VLEFluidObjectFunctions.speedOfSound_dTxi(d, T, xi, vleFluidPointer);
  annotation (experiment(StopTime=2),  __Dymola_experimentSetupOutput);
end TestVLEFluidObjectFunctions;
