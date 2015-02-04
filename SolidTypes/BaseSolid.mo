within TILMedia.SolidTypes;
partial model BaseSolid "Base model for solid definitions"
  constant SI.SpecificHeatCapacity cp_nominal "Specific heat capacity at standard reference point";
  constant SI.ThermalConductivity lambda_nominal "Thermal conductivity at standard reference point";
  constant Real nu_nominal "Poisson's ratio at standard reference point";
  constant ClaRa.Basics.Units.ElasticityModule E_nominal "Elasticity module of steel at standard reference point";
  constant ClaRa.Basics.Units.HeatExpansionRateLinear beta_nominal "Linear heat expansion coefficient at standard reference point";
  constant SI.ShearModulus G_nominal "Shear modulus at standard reference point";
  constant SI.Density d "Density";

  input SI.Temperature T "Temperature";
  SI.SpecificHeatCapacity cp "Heat capacity";
  SI.ThermalConductivity lambda "Thermal conductivity";
  Real nu "Poisson's ratio";
  ClaRa.Basics.Units.ElasticityModule E "Elasticity module of steel";
  ClaRa.Basics.Units.HeatExpansionRateLinear beta "Linear heat expansion coefficient";
  ClaRa.Basics.Units.ShearModulus G "Shear modulus";

end BaseSolid;
