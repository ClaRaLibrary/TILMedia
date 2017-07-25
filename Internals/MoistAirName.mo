within TILMedia.Internals;
type MoistAirName "Moist air name"
  extends String;
  annotation(choices(
    choice="TILMedia.MoistAir",
    choice="VDI4670.MoistAir",
   choice="TILMediaXTR.MoistAir"),
    __Dymola_Protection(
      allowDuplicate = true,
      showDiagram=true,
      showText=true));
end MoistAirName;
