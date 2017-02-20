within TILMedia.GasTypes;
record BaseGas "Base record for gas definitions"
  extends Internals.ClassTypes.Record;
  constant Boolean fixedMixingRatio
    "Treat medium as pseudo pure in Modelica if it is a mixture" annotation(HideResult = true);
  constant Integer nc_propertyCalculation(min=1)
    "Number of components for fluid property calculations" annotation(HideResult = true);
  final constant Integer nc=if fixedMixingRatio then 1 else nc_propertyCalculation
    "Number of components in Modelica models"
                                            annotation(Evaluate=true, HideResult = true);
  constant Internals.GasName[nc_propertyCalculation] gasNames
    "Array of gas names"                             annotation(choices);
  constant Real[nc_propertyCalculation] mixingRatio_propertyCalculation
    "Mixing ratio for fluid property calculation (={1} for pure components)" annotation(HideResult = true);
  constant Real[nc] defaultMixingRatio = if fixedMixingRatio then {1} else mixingRatio_propertyCalculation
    "Default composition for models in Modelica (={1} for pure components)" annotation(HideResult = true);
  constant Real xi_default[nc-1] = defaultMixingRatio[1:end-1]/sum(defaultMixingRatio)
    "Default mass fractions" annotation(HideResult = true);
  constant Integer condensingIndex
    "Index of condensing component (=0, if no condensation is desired)"
    annotation(HideResult = true);
  constant String concatGasName=TILMedia.Internals.concatNames(gasNames);
  constant Integer ID=0
    "ID is used to map the selected Gas to the sim.cumulatedGasMass array item" annotation(HideResult = true);
end BaseGas;
