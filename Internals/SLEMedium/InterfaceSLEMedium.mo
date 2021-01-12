within TILMedia.Internals.SLEMedium;
model InterfaceSLEMedium

  parameter .TILMedia.Internals.SLEMediumName mediumName=
                                                     "Water";
  input SI.SpecificEnthalpy h "Specific enthalpy";
  SI.Density d "Density";
  input SI.AbsolutePressure p "Pressure";
  SI.SpecificEntropy s "Specific entropy";
  SI.Temperature T "Temperature";
  SI.SpecificHeatCapacity cp "Specific heat capacity";
  SI.LinearExpansionCoefficient beta
    "Isothermal expansion coefficient";
  SI.MassFraction x "Liquid mass fraction";
  .TILMedia.Internals.SLESaturationPropertyRecord sat
                                         annotation (Placement(
        transformation(extent={{-80,20},{-60,40}}, rotation=0)));
  .TILMedia.Internals.TransportPropertyRecord transp "Transport property record"
    annotation (Placement(transformation(extent={{-80,60},{-60,80}},
          rotation=0)));

protected
  SI.Temperature TS "Saturated freezing temperature";
  SI.Temperature TL "Saturated melting temperature";
  SI.SpecificHeatCapacity cpS;
  SI.SpecificHeatCapacity cpL;
  SI.Density dS;
  SI.Density dL;
  SI.SpecificEnthalpy meltingEnthalpy;
  SI.LinearExpansionCoefficient betaL;
  SI.LinearExpansionCoefficient betaS;
  SI.PrandtlNumber PrL;
  SI.KinematicViscosity nuL;
  SI.ThermalConductivity lambdaL;
  SI.ThermalConductivity lambdaS;

  final parameter SI.SpecificEnthalpy h0 = 0;

  Integer region;

equation
  if mediumName == "TILMedia.SimpleWater" then
    TS = 273.15;
    TL = TS;
    cpL = 4.218e3; // at 273.15 K
    cpS = 2.1e3;  // at 271.15 K
    dL = 999.84; // at 273.15 K
    dS = 916.7583; // at 273.15 K
    sat.ds = dS;
    sat.dl = dL;
    meltingEnthalpy = 332.5e3;
    PrL = 13.51;
    nuL = 1.793e-6;
    lambdaL = 561e-3;
    lambdaS = 2.2;
    betaL = -0.080; // anomaly of water
    betaS = 0.1e-3;
  elseif mediumName == "TILMedia.SimpleAdBlue" then
    TS = 262.15;
    TL = TS;
    cpL = 3400;
    cpS = 1600;
    dL = 1090;
    dS = 1030;
    sat.ds = dS;
    sat.dl = dL;
    meltingEnthalpy = 270e3;

    nuL = 1.4e-3;
    lambdaL = 0.57;
    lambdaS = 0.75; /// ??
    betaL = 0; // ???
    betaS = 4.0e-4; // ???
    PrL = nuL*dL*cpL/lambdaL;
  elseif mediumName == "TILMedia.AdBlue" then // Datasheet BASF AdBlue 2008, March 30
    TS = 262.15;
    TL = TS;
    cpL = 1000*(8e-6 * (T - 273.15)^2 + 0.0027 * (T - 273.15) + 3.4345);
    cpS = 1600;
    dL = 1000*(-1.62819E-06*(T-273.15)^2 -0.000428345*(T-273.15) + 1.10001);
    dS = 1030;
    sat.ds = dS;
    sat.dl = 1000*(-1.62819E-06*(TL-273.15)^2 -0.000428345*(TL-273.15) + 1.10001);
    meltingEnthalpy = 270e3;
    nuL = 1.4e-3; // todo
    lambdaL = 0.57;
    lambdaS = 0.75; /// ??
    betaL = 0; // ???
    betaS = 4.0e-4; // ???
    PrL = nuL*dL*cpL/lambdaL;
  elseif mediumName=="TILMedia.NaOAc" then
    TS = 331.15; // 273.15 + 58
    TL = TS;
    cpL = 3100;
    cpS = 2050;
    dL = 1280;
    dS = 1450;
    sat.ds = dS;
    sat.dl = dL;
    meltingEnthalpy = 260e3;
    nuL = -1;
    lambdaL = 0.4;
    lambdaS = 0.64;
    betaL = -1;
    betaS = -1;
    PrL = -1;
  else
    TS = -1;
    TL = -1;
    cpL = -1;
    cpS = -1;
    dL = -1;
    dS = -1;
    sat.ds = -1;
    sat.dl = -1;
    meltingEnthalpy = -1;
    nuL = -1;
    lambdaL = -1;
    lambdaS = -1;
    betaL = -1;
    betaS = -1;
    PrL = -1;
  end if;

/*hier sind die Daten f&uuml;r das PCM-Material Rubitherm RT5 (Rubitherm RT2) :
 
Schmelzpunkte: 7degC (6degC)
Erstarrungspunkt: 5degC (2degC)
Schmelzenthalpie:  156 kJ/kg (214 kJ/kg)
Dichte fest bei -15degC: 0.86kg/l (0.86 kg/l)
Dichte fl&uuml;ssig bei 15degC/70degC: 0.77/0.73 kg/l (0.77/0.73kg/l)
Volumenausdehnung bei Phasenwechsel: 10% (10%)
Volumenausdehnung au&szlig;erhalb des Phasenwechsels: 0.001 1/K (0.001 1/K)
spez. W&auml;rmekapazit&auml;t fest: 1.8 kJ/(kg*K)  (1.8)
spez. W&auml;rmekapazit&auml;t fl&uuml;ssig: 2.4 kJ/(kg*K) (2.4)
W&auml;rmeleitf&auml;higkeit 0.2 W/(m*K) (0.2 W/(m*K))
kin. Viskosit&auml;t bei 40degC: 2.6 mm^2/s (3.1 mm^2/s)
 
     SI.Temperature Ts "Solid temperature";
  SI.Temperature Tl "Liquid temperature";
  SI.Density ds "Solid density";
  SI.Density dl "Liquid density";
  SI.SpecificEnthalpy hs "Solid specific enthalpy";
  SI.SpecificEnthalpy hl "Liquid specific enthalpy";
  SI.SpecificEntropy ss "Solid specific entropy";
  SI.SpecificEntropy sl "Liquid specific entropy";
 
*/
  transp.sigma = -1;

  sat.Ts = TS;
  sat.Tl = TL;

  sat.hs = h0;
  sat.hl = h0 + meltingEnthalpy;

  sat.ss = 0;
  sat.sl = 0;

  if h < h0 then    // solid
    x = 0;
    cp = cpS;
    d = dS;
    h = cpS*(T - TS);
    s = 1;
    beta = betaS;
    transp.Pr = -1;
    transp.eta = -1;
    transp.lambda = lambdaS;
    region=-1;
  elseif h >= h0+meltingEnthalpy then  // liquid
    x = 1;
    cp = cpL;
    d = dL;
    h = meltingEnthalpy + cpL*(T - TL); // todo calculation by solvin integral
     s = 1;
    beta = betaL;
    transp.Pr = PrL;
    transp.eta = nuL*dL;
    transp.lambda = lambdaL;
    region=1;
  else    //SLE Area
    x = (h - h0)/meltingEnthalpy;
    cp = x*cpL + (1 - x)*cpS;
    d = 1/(x/dL + (1 - x)/dS);
    T = TL;    //x*TL + (1 - x)*TS;
    s = 1;
    beta = x*betaL + (1 - x)*betaS;
    transp.Pr = PrL;
    transp.eta = -1;
    transp.lambda = x*lambdaL + (1 - x)*lambdaS;
    region=0;
  end if;

end InterfaceSLEMedium;
