within TILMedia.Internals;
type MoistAirName "Moist air name"
  extends String;
  annotation(choices(
    choice="TILMedia.MoistAir",
    choice="VDI4670.MoistAir"));
end MoistAirName;
