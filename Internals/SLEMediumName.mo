within TILMedia.Internals;
type SLEMediumName "SLEMaterial name"
extends String;

annotation(choices(
  choice="SLEMedium.SimpleAdBlue",
  choice="SLEMedium.AdBlue",
  choice="SLEMedium.SimpleWater"),
  Protection(access=Access.packageDuplicate));
end SLEMediumName;
