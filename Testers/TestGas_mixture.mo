within TILMedia.Testers;
model TestGas_mixture

  // This tester demonstrates the calculation of therodynamic properties of gas mixtures
  // using the gas objects Gas_ph, Gas_ps and Gas_pT.
  // Two examples are given, one for the predefined gasType VDIWA_MoistAir_nc3 which is composed of 3 components (see definition in TILMedia.GasTypes.VDIWA_MoistAir_nc3).
  // and annother for a custom mixture defined by the record MyGasMixture

  SI.Pressure p;
  SI.Temperature T;
  // In the gasType VDIWA_MoistAir_nc3 there are 3 components (nc=3) -> size of xi is nc-1 -> xi[2]
  SI.MassFraction  xi[gas_pT.gasType.nc-1];

  // Instance of the gas object Gas_pT that requires the pressure p, the temperature T and the mass fractions xi[i] as inputs.
  // The gasType is VDIWA_MoistAir_nc3
  TILMedia.Gas_pT
             gas_pT(p=p, T=T, xi=xi,
    redeclare GasTypes.FlueGasTILMedia gasType)
          annotation (extent=[-20,20; 0,40], Placement(transformation(extent={{-20,0},
            {0,20}})));
   // Instance of the gas object Gas_ph that requires the pressure p, the specific enthalpy and the mass fractions xi[i] as inputs.
   // The gasType is VDIWA_MoistAir_nc3
  TILMedia.Gas_ph
             gas_ph(p=p, h=gas_pT.h, xi=xi,
    redeclare GasTypes.FlueGasTILMedia gasType)
          annotation (extent=[-20,20; 0,40], Placement(transformation(extent={{0,0},{
            20,20}})));

  // Custom definition of an ideal gas mixture that consists of Argon, Nitrogen, Oxygen and Helium
  // Note, that the condensingIndex is set to 0, i.e. there is no condensation allowed.
  // In contrast, in e.g. TILMedia.GasTypes.TILMedia_MoistAir the condensingIndex is set to 1,
  // i.e. the first component (water) of TILMedia_MoistAir can condensate
  record MyGasMixture = TILMedia.GasTypes.BaseGas (
    final fixedMixingRatio=false,
    final nc_propertyCalculation=4,
    final gasNames={"VDIWA2006.Argon","VDIWA2006.Nitrogen","VDIWA2006.Oxygen","VDIWA2006.Helium"},
    final condensingIndex=0,
    final mixingRatio_propertyCalculation={0.001,0.7,0.3,0.001});

  // Instance of the gas object Gas_pT that requires the pressure p, the temperature T and the mass fractions xi[i] as inputs.
  // The gasType is MyGasMixture
  TILMedia.Gas_pT myGas( p=p, T=T,
    redeclare GasTypes.FlueGasTILMedia gasType)
          annotation (extent=[-20,20; 0,40], Placement(transformation(extent={{-18,-40},
            {2,-20}})));
equation
  p = 1e5;
  T=300+50*time;

  // Calculate the mass fractions xi[i] from the defaultMixingRatio of VDIWA_MoistAir_nc3 (see definition in TILMedia.GasTypes.VDIWA_MoistAir_nc3)
  xi=gas_pT.gasType.defaultMixingRatio[1:end-1]/sum(gas_pT.gasType.defaultMixingRatio);

end TestGas_mixture;
