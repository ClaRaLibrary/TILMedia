within TILMedia.SLEMediumTypes;
partial model BaseSLEMedium "Base model for solid definitions"
  input SI.Temperature T "Temperature";
  parameter SI.Temperature T_s "Melting temperature";
  parameter SI.Temperature T_l "Freezing temperature";
  SI.Density d_s "Density of solid phase";
  SI.Density d_l "Density of liquid phase";
  parameter SI.SpecificHeatCapacity cp_s "Specific heat capacity cp of solid phase";
  parameter SI.SpecificHeatCapacity cp_l "Specific heat capacity cp of liquid phase";
  SI.ThermalConductivity lambda_l "Thermal conductivity of liquid phase";
  SI.ThermalConductivity lambda_s "Thermal conductivity of solid phase";
  SI.SpecificEnthalpy h_fusion;
  parameter SI.Temperature TStableLimit = Modelica.Constants.inf
    "Minimum temperature to disolve all cristals in solution";
end BaseSLEMedium;
