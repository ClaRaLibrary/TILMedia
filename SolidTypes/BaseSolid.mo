within TILMedia.SolidTypes;
partial model BaseSolid "Base model for solid definitions"
  constant SI.SpecificHeatCapacity cp_nominal
    "Specific heat capacity at standard reference point";
  constant SI.ThermalConductivity lambda_nominal
    "Thermal conductivity at standard reference point";

  constant SI.Density d "Density";
  input SI.Temperature T "Temperature";
  SI.SpecificHeatCapacity cp "Heat capacity";
  SI.ThermalConductivity lambda "Thermal conductivity";
end BaseSolid;
