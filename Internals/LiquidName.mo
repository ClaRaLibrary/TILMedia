within TILMedia.Internals;
type LiquidName "Liquid name"
  extends String;

  annotation(choices(
    choice="TILMedia.Water",
    choice="TILMedia.Glysantin_30",
    choice="TILMedia.Glysantin_40",
    choice="TILMedia.Glysantin_50",
    choice="TILMedia.Glysantin_60",
    choice="TILMedia.Oil_15W40",
    choice="TILMedia.Oil_Aral0W30",
    choice="TILMedia.Propylenglykol_30",
    choice="TILMedia.Propylenglykol_40",
    choice="TILMedia.Propylenglykol_50",
    choice="TILMedia.TherminolD12",
    choice="TILMedia.Therminol59",
    choice="TILMedia.Therminol66",
    choice="TILMedia.ZitrecM10",
    choice="TILMedia.ZitrecM20"));

end LiquidName;
