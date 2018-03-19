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
  constant SI.Temperature TStableLimit = Modelica.Constants.inf
    "Above this temperature all cristals in the solution are dissolved. Metastable states are possible after exceeding this temperature.";
  constant SI.Temperature TSupercoolingLimit(min=-Modelica.Constants.inf) = -Modelica.Constants.inf
    "There is no metastable state below this temperature. Crystallization starts when this temperature is reached.";
end BaseSLEMedium;
