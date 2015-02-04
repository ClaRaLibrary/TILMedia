within TILMedia.UsersGuide;
model SubstanceNames "Substance Names"
    extends Internals.ClassTypes.Information;
/*
[[[cog
import csv

preamble = '<table border=1>'
postamble = '</table><br><br>'

tableheadComment = """   <tr>
    <th>Substance name</th>
    <th>Comment</th>    
  </tr>"""
tablebodyComment = """   <tr>
    <td>%(Substance name)s &nbsp; </td>
    <td>%(Comment)s &nbsp; </td>
  </tr>"""

def print_tableComment(table):
	cog.outl(preamble)
	cog.outl(tableheadComment)
	with open(table, 'r') as media:
		for line in csv.DictReader(media, delimiter=";"):
			cog.outl(tablebodyComment % line)
	cog.outl(postamble)


tablehead3Column = """   <tr>
    <th>Substance name</th>
    <th>Substance name</th>
    <th>Substance name</th>    
  </tr>"""

tablebody3Column1 = """   <tr>
    <td>%(Substance name)s &nbsp; </td>"""
tablebody3Column2 = """
    <td>%(Substance name)s &nbsp; </td>"""
tablebody3Column3 = """
    <td>%(Substance name)s &nbsp; </td>
  </tr>"""

def print_table3Column(table):
	cog.outl(preamble)
	cog.outl(tablehead3Column)
	with open(table, 'r') as media:
		for index, line in enumerate(csv.DictReader(media, delimiter=";")):
			if (index%3 == 0):
				cog.outl(tablebody3Column1 % line)
			if (index%3 == 1):
				cog.outl(tablebody3Column2 % line)
			if (index%3 == 2):
				cog.outl(tablebody3Column3 % line)
	cog.outl(postamble)


tablehead2Column = """   <tr>
    <th>Substance name</th>
    <th>Substance name</th>    
  </tr>"""

def print_table2Column(table):
	cog.outl(preamble)
	cog.outl(tablehead2Column)
	with open(table, 'r') as media:
		for index, line in enumerate(csv.DictReader(media, delimiter=";")):
			if (index%2 == 0):
				cog.outl(tablebody3Column1 % line)
			if (index%2 == 1):
				cog.outl(tablebody3Column3 % line)
	cog.outl(postamble)


tablehead4Column = """   <tr>
    <th>Substance name</th>
    <th>Substance name</th>    
    <th>Substance name</th>
    <th>Substance name</th>    
  </tr>"""

def print_table4Column(table):
	cog.outl(preamble)
	cog.outl(tablehead4Column)
	with open(table, 'r') as media:
		for index, line in enumerate(csv.DictReader(media, delimiter=";")):
			if (index%4 == 0):
				cog.outl(tablebody3Column1 % line)
			if (index%4 == 1):
				cog.outl(tablebody3Column2 % line)
			if (index%4 == 2):
				cog.outl(tablebody3Column2 % line)
			if (index%4 == 3):
				cog.outl(tablebody3Column3 % line)
	cog.outl(postamble)
]]] */
// [[[end]]]

annotation(__Dymola_DocumentationClass=true,
     Documentation(info="<html>

<h4>Gas names TILMedia</h4>
<!-- [[[cog print_tableComment('TILMedia_GasNames.csv') ]]] -->
<table border=1>
   <tr>
    <th>Substance name</th>
    <th>Comment</th>    
  </tr>
   <tr>
    <td>TILMedia.MoistAir &nbsp; </td>
    <td>Moist air: water-dry-air-mixture (water at position one) &nbsp; </td>
  </tr>
   <tr>
    <td>VDI4670.MoistAir &nbsp; </td>
    <td>Moist air: water-dry-air-mixture (water at position one) &nbsp; </td>
  </tr>
   <tr>
    <td> &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>Dryair &nbsp; </td>
    <td>Tmax = 200°C &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.EXHAUSTGAS_LAMBDA_1 &nbsp; </td>
    <td>Intendet for gasoline/petrol exhaust gas with lambda value equal one &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.DIESELEXHAUSTGAS_x &nbsp; </td>
    <td>Substance name must end with _lambdavalue e.g. _1.2 &nbsp; </td>
  </tr>
   <tr>
    <td> &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>VDI4670.DRYAIR &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>VDI4670.NITROGEN &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>VDI4670.OXYGEN &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>VDI4670.ARGON &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>VDI4670.NEON &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>VDI4670.WATER &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>VDI4670.CARBON_DIOXIDE &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>VDI4670.CARBON_MONOXIDE &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>VDI4670.SULPHUR_DIOXIDE &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
</table><br><br>
<!-- [[[end]]] -->

<h4>Liquid names TILMedia</h4>
<!-- [[[cog print_tableComment('TILMedia_LiquidNames.csv') ]]] -->
<table border=1>
   <tr>
    <th>Substance name</th>
    <th>Comment</th>    
  </tr>
   <tr>
    <td>TILMedia.ADDINOLXW15 &nbsp; </td>
    <td>Temperature range based on data sheet by manufacturer: -20 to 300 °C &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.GLYSANTIN_xx &nbsp; </td>
    <td>xx corresponds to % mass fraction of glycol whereupon for xx = 30 to 60 is possible. E.g. _33 for 33 % mass fraction glycol. &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.OIL_ARAL0W30 &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.OIL_15W40 &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.PROPYLENGLYKOL_xx &nbsp; </td>
    <td>xx corresponds to % mass fraction of propylene glycol whereupon for xx = 30 to 50 is possible. E.g. _33 for 33 % mass fraction propylene glycol. &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.SHC_XMP320 &nbsp; </td>
    <td>Synthetic gear oil. Temperature range based on data sheet by manufacturer: 0 to 200 °C &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.THERMINOL59 &nbsp; </td>
    <td>Temperature range based on data sheet by manufacturer: -50 to 320 °C &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.THERMINOL66 &nbsp; </td>
    <td>Temperature range based on data sheet by manufacturer: 0 to 380 °C &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.THERMINOLD12 &nbsp; </td>
    <td>Temperature range based on data sheet by manufacturer: -85 to 260 °C &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.TYFOCOR30 &nbsp; </td>
    <td>Temperature range based on data sheet by manufacturer: -15 to 100 °C &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.TYFOCOR45 &nbsp; </td>
    <td>Temperature range based on data sheet by manufacturer: -30 to 100 °C &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.TYFOCORL33 &nbsp; </td>
    <td>Temperature range based on data sheet by manufacturer: -15 to 100 °C &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.WATER &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.ZITRECM10 &nbsp; </td>
    <td>Temperature range based on data sheet by manufacturer: -10 to 100 °C &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.ZITRECM20 &nbsp; </td>
    <td>Temperature range based on data sheet by manufacturer: -20 to 100 °C &nbsp; </td>
  </tr>
</table><br><br>
<!-- [[[end]]] -->

<h4>VLE fluid names TILMedia</h4>
<!-- [[[cog print_tableComment('TILMedia_VLENames.csv') ]]] -->
<table border=1>
   <tr>
    <th>Substance name</th>
    <th>Comment</th>    
  </tr>
   <tr>
    <td>TILMedia.CO2 &nbsp; </td>
    <td>The calculation isn't valid below the triplepoint: p=5.18 bar, T=216.59 K &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.GERGCO2 &nbsp; </td>
    <td>CO2 by Gerg &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.ARGON &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.OXYGEN &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.NITROGEN &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.PROPANE &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.ASTINASATOR134A &nbsp; </td>
    <td>R134a by Astina & Sato &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.R134A &nbsp; </td>
    <td>The calculation isn't valid below the triplepoint: p=389.6 Pa, T=169.85 K &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.R32 &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.R125 &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.R143A &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.R1234YF &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.WATER &nbsp; </td>
    <td>The calculation isn't valid below the triplepoint: p=612.5 Pa, T=273.16 K &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.R407CPPF &nbsp; </td>
    <td>The calculation isn't valid below the triplepoint: p=0.192 bar, T=200.0 K &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.R404APPF &nbsp; </td>
    <td>The calculation isn't valid below the triplepoint: p=0.227 bar, T=200.0 K &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.R410APPF &nbsp; </td>
    <td>The calculation isn't valid below the triplepoint: p=0.292 bar, T=200.0 K &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.R507APPF &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.R245FA &nbsp; </td>
    <td>The calculation isn't valid below the triplepoint: p=12.5 Pa, T=171.05 K &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.ETHANOL &nbsp; </td>
    <td>The calculation isn't valid below the triplepoint: p=~0.001 Pa, T=159.0 K &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.AMMONIA &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.O-XYLENE &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.M-XYLENE &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.P-XYLENE &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMedia.ETHYLBENZENE &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td> &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMediaRT.R407C &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMediaRT.CO2 &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMediaRT.R134A &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMediaRT.R1234YF &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMediaRT.R410A &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
   <tr>
    <td>TILMediaRT.WATER &nbsp; </td>
    <td> &nbsp; </td>
  </tr>
</table><br><br>
<!-- [[[end]]] -->

<h4>VLE fluid names REFPROP</h4>
<!-- [[[cog print_table3Column('TILMedia_VLENamesRefprop.csv') ]]] -->
<table border=1>
   <tr>
    <th>Substance name</th>
    <th>Substance name</th>
    <th>Substance name</th>    
  </tr>
   <tr>
    <td>Refprop.CO2 &nbsp; </td>

    <td>Refprop.R134A &nbsp; </td>

    <td>Refprop.1BUTENE.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.ACETONE.FLD &nbsp; </td>

    <td>Refprop.AIR.MIX &nbsp; </td>

    <td>Refprop.AIR.PPF &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.AMARILLO.MIX &nbsp; </td>

    <td>Refprop.AMMONIA.FLD &nbsp; </td>

    <td>Refprop.ARGON.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.BENZENE.FLD &nbsp; </td>

    <td>Refprop.BUTANE.FLD &nbsp; </td>

    <td>Refprop.C11.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.C12.FLD &nbsp; </td>

    <td>Refprop.C1CC6.FLD &nbsp; </td>

    <td>Refprop.C2BUTENE.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.C3CC6.FLD &nbsp; </td>

    <td>Refprop.C4F10.FLD &nbsp; </td>

    <td>Refprop.C5F12.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.CF3I.FLD &nbsp; </td>

    <td>Refprop.CO.FLD &nbsp; </td>

    <td>Refprop.CO2.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.COS.FLD &nbsp; </td>

    <td>Refprop.CYCLOHEX.FLD &nbsp; </td>

    <td>Refprop.CYCLOPEN.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.CYCLOPRO.FLD &nbsp; </td>

    <td>Refprop.D2.FLD &nbsp; </td>

    <td>Refprop.D2O.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.D4.FLD &nbsp; </td>

    <td>Refprop.D5.FLD &nbsp; </td>

    <td>Refprop.D6.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.DECANE.FLD &nbsp; </td>

    <td>Refprop.DEE.FLD &nbsp; </td>

    <td>Refprop.DMC.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.DME.FLD &nbsp; </td>

    <td>Refprop.EBENZENE.FLD &nbsp; </td>

    <td>Refprop.EKOFISK.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.ETHANE.FLD &nbsp; </td>

    <td>Refprop.ETHANOL.FLD &nbsp; </td>

    <td>Refprop.ETHYLENE.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.FLUORINE.FLD &nbsp; </td>

    <td>Refprop.GLFCOAST.MIX &nbsp; </td>

    <td>Refprop.H2S.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.HCL.FLD &nbsp; </td>

    <td>Refprop.HELIUM.FLD &nbsp; </td>

    <td>Refprop.HEPTANE.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.HEXANE.FLD &nbsp; </td>

    <td>Refprop.HIGHCO2.MIX &nbsp; </td>

    <td>Refprop.HIGHN2.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.HYDROGEN.FLD &nbsp; </td>

    <td>Refprop.IBUTENE.FLD &nbsp; </td>

    <td>Refprop.IHEXANE.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.IOCTANE.FLD &nbsp; </td>

    <td>Refprop.IPENTANE.FLD &nbsp; </td>

    <td>Refprop.ISOBUTAN.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.KRYPTON.FLD &nbsp; </td>

    <td>Refprop.MD2M.FLD &nbsp; </td>

    <td>Refprop.MD3M.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.MD4M.FLD &nbsp; </td>

    <td>Refprop.MDM.FLD &nbsp; </td>

    <td>Refprop.METHANE.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.METHANOL.FLD &nbsp; </td>

    <td>Refprop.MLINOLEA.FLD &nbsp; </td>

    <td>Refprop.MLINOLEN.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.MM.FLD &nbsp; </td>

    <td>Refprop.MOLEATE.FLD &nbsp; </td>

    <td>Refprop.MPALMITA.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.MSTEARAT.FLD &nbsp; </td>

    <td>Refprop.MXYLENE.FLD &nbsp; </td>

    <td>Refprop.N2O.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.NEON.FLD &nbsp; </td>

    <td>Refprop.NEOPENTN.FLD &nbsp; </td>

    <td>Refprop.NF3.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.NGSAMPLE.MIX &nbsp; </td>

    <td>Refprop.NITROGEN.FLD &nbsp; </td>

    <td>Refprop.NONANE.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.Novec 7000.FLD &nbsp; </td>

    <td>Refprop.NOVEC649.FLD &nbsp; </td>

    <td>Refprop.OCTANE.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.ORTHOHYD.FLD &nbsp; </td>

    <td>Refprop.OXYGEN.FLD &nbsp; </td>

    <td>Refprop.OXYLENE.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.PARAHYD.FLD &nbsp; </td>

    <td>Refprop.PENTANE.FLD &nbsp; </td>

    <td>Refprop.PROPANE.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.PROPYLEN.FLD &nbsp; </td>

    <td>Refprop.PROPYNE.FLD &nbsp; </td>

    <td>Refprop.PXYLENE.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R11.FLD &nbsp; </td>

    <td>Refprop.R113.FLD &nbsp; </td>

    <td>Refprop.R114.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R115.FLD &nbsp; </td>

    <td>Refprop.R116.FLD &nbsp; </td>

    <td>Refprop.R12.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R1216.FLD &nbsp; </td>

    <td>Refprop.R123.FLD &nbsp; </td>

    <td>Refprop.R1233ZD.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R1234YF.FLD &nbsp; </td>

    <td>Refprop.R1234ZE.FLD &nbsp; </td>

    <td>Refprop.R124.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R125.FLD &nbsp; </td>

    <td>Refprop.R13.FLD &nbsp; </td>

    <td>Refprop.R134A.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R14.FLD &nbsp; </td>

    <td>Refprop.R141B.FLD &nbsp; </td>

    <td>Refprop.R142B.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R143A.FLD &nbsp; </td>

    <td>Refprop.R152A.FLD &nbsp; </td>

    <td>Refprop.R161.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R21.FLD &nbsp; </td>

    <td>Refprop.R218.FLD &nbsp; </td>

    <td>Refprop.R22.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R227EA.FLD &nbsp; </td>

    <td>Refprop.R23.FLD &nbsp; </td>

    <td>Refprop.R236EA.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R236FA.FLD &nbsp; </td>

    <td>Refprop.R245CA.FLD &nbsp; </td>

    <td>Refprop.R245FA.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R32.FLD &nbsp; </td>

    <td>Refprop.R365MFC.FLD &nbsp; </td>

    <td>Refprop.R40.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R401A.MIX &nbsp; </td>

    <td>Refprop.R401B.MIX &nbsp; </td>

    <td>Refprop.R401C.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R402A.MIX &nbsp; </td>

    <td>Refprop.R402B.MIX &nbsp; </td>

    <td>Refprop.R403A.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R403B.MIX &nbsp; </td>

    <td>Refprop.R404A.MIX &nbsp; </td>

    <td>Refprop.R404A.PPF &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R405A.MIX &nbsp; </td>

    <td>Refprop.R406A.MIX &nbsp; </td>

    <td>Refprop.R407A.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R407B.MIX &nbsp; </td>

    <td>Refprop.R407C.MIX &nbsp; </td>

    <td>Refprop.R407C.PPF &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R407D.MIX &nbsp; </td>

    <td>Refprop.R407E.MIX &nbsp; </td>

    <td>Refprop.R407F.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R408A.MIX &nbsp; </td>

    <td>Refprop.R409A.MIX &nbsp; </td>

    <td>Refprop.R409B.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R41.FLD &nbsp; </td>

    <td>Refprop.R410A.MIX &nbsp; </td>

    <td>Refprop.R410A.PPF &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R410B.MIX &nbsp; </td>

    <td>Refprop.R411A.MIX &nbsp; </td>

    <td>Refprop.R411B.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R412A.MIX &nbsp; </td>

    <td>Refprop.R413A.MIX &nbsp; </td>

    <td>Refprop.R414A.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R414B.MIX &nbsp; </td>

    <td>Refprop.R415A.MIX &nbsp; </td>

    <td>Refprop.R415B.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R416A.MIX &nbsp; </td>

    <td>Refprop.R417A.MIX &nbsp; </td>

    <td>Refprop.R418A.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R419A.MIX &nbsp; </td>

    <td>Refprop.R420A.MIX &nbsp; </td>

    <td>Refprop.R421A.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R421B.MIX &nbsp; </td>

    <td>Refprop.R422A.MIX &nbsp; </td>

    <td>Refprop.R422B.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R422C.MIX &nbsp; </td>

    <td>Refprop.R422D.MIX &nbsp; </td>

    <td>Refprop.R423A.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R424A.MIX &nbsp; </td>

    <td>Refprop.R425A.MIX &nbsp; </td>

    <td>Refprop.R426A.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R427A.MIX &nbsp; </td>

    <td>Refprop.R428A.MIX &nbsp; </td>

    <td>Refprop.R429A.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R430A.MIX &nbsp; </td>

    <td>Refprop.R431A.MIX &nbsp; </td>

    <td>Refprop.R432A.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R433A.MIX &nbsp; </td>

    <td>Refprop.R434A.MIX &nbsp; </td>

    <td>Refprop.R435A.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R436A.MIX &nbsp; </td>

    <td>Refprop.R436B.MIX &nbsp; </td>

    <td>Refprop.R437A.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R438A.MIX &nbsp; </td>

    <td>Refprop.R441A.MIX &nbsp; </td>

    <td>Refprop.R442A.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R443A.MIX &nbsp; </td>

    <td>Refprop.R444A.MIX &nbsp; </td>

    <td>Refprop.R500.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R501.MIX &nbsp; </td>

    <td>Refprop.R502.MIX &nbsp; </td>

    <td>Refprop.R503.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R504.MIX &nbsp; </td>

    <td>Refprop.R507A.MIX &nbsp; </td>

    <td>Refprop.R507A.PPF &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R508A.MIX &nbsp; </td>

    <td>Refprop.R508B.MIX &nbsp; </td>

    <td>Refprop.R509A.MIX &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.R510A.MIX &nbsp; </td>

    <td>Refprop.R512A.MIX &nbsp; </td>

    <td>Refprop.RC318.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.RE143A.FLD &nbsp; </td>

    <td>Refprop.RE245CB2.FLD &nbsp; </td>

    <td>Refprop.RE245FA2.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.RE347MCC.FLD &nbsp; </td>

    <td>Refprop.SF6.FLD &nbsp; </td>

    <td>Refprop.SO2.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.T2BUTENE.FLD &nbsp; </td>

    <td>Refprop.TOLUENE.FLD &nbsp; </td>

    <td>Refprop.WATER.FLD &nbsp; </td>
  </tr>
   <tr>
    <td>Refprop.XENON.FLD &nbsp; </td>

    <td>  &nbsp; </td>

    <td>  &nbsp; </td>
  </tr>
</table><br><br>
<!-- [[[end]]] -->

<h4>VDIWA names (Gas, Liquid and VLE fluid)</h4>
<!-- [[[cog print_table2Column('TILMedia_VDIWANames.csv') ]]] -->
<table border=1>
   <tr>
    <th>Substance name</th>
    <th>Substance name</th>    
  </tr>
   <tr>
    <td>VDIWA.Xenon &nbsp; </td>

    <td>VDIWA.Krypton &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.Argon &nbsp; </td>

    <td>VDIWA.Neon &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.Helium &nbsp; </td>

    <td>VDIWA.DryAir &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.Hydrogen &nbsp; </td>

    <td>VDIWA.Nitrogen &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.Oxygen &nbsp; </td>

    <td>VDIWA.Sulfur &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.Fluorine &nbsp; </td>

    <td>VDIWA.Chlorine &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.Bromine &nbsp; </td>

    <td>VDIWA.Iodine &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.Hydrogen fluoride &nbsp; </td>

    <td>VDIWA.Hydrogen chloride &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.Hydrogen bromide &nbsp; </td>

    <td>VDIWA.Hydrogen Iodide &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.Hydrogen cyanide &nbsp; </td>

    <td>VDIWA.Water &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.Hydrogen sulfide &nbsp; </td>

    <td>VDIWA.Ammonia &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.Nitric oxide &nbsp; </td>

    <td>VDIWA.Nitrogen dioxide &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.Nitrous oxide &nbsp; </td>

    <td>VDIWA.Dinitrogen tetroxide &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.Cyanogen &nbsp; </td>

    <td>VDIWA.Fluorocyanide &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.Chlorocyanide &nbsp; </td>

    <td>VDIWA.Bromocyanide &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.iodinecyanide &nbsp; </td>

    <td>VDIWA.carbon monoxide &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.carbon dioxide &nbsp; </td>

    <td>VDIWA.carbon suboxide &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.carbonyl sulfide &nbsp; </td>

    <td>VDIWA.phosgene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.carbon disulfide &nbsp; </td>

    <td>VDIWA.sulfur dioxide &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.sulfur trioxide &nbsp; </td>

    <td>VDIWA.sulfury chloride &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.sulfur hexafluoride &nbsp; </td>

    <td>VDIWA.methanethiol &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.ethanethiol &nbsp; </td>

    <td>VDIWA.dimethyl sulfide &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.diethyl sulfide &nbsp; </td>

    <td>VDIWA.thiophene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.fluoromethane &nbsp; </td>

    <td>VDIWA.difluoromethane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.trifluoromethane &nbsp; </td>

    <td>VDIWA.tetrafluoromethane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.chloromethane &nbsp; </td>

    <td>VDIWA.dichloromethane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.trichloromethane &nbsp; </td>

    <td>VDIWA.tetrachlorocarbon &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.bromomethane &nbsp; </td>

    <td>VDIWA.dibromomethane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.tribromomethane &nbsp; </td>

    <td>VDIWA.tetrabromomethane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.chlorodifluoromethane &nbsp; </td>

    <td>VDIWA.dichlorodifluoromethane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.chlorotrifluoromethane &nbsp; </td>

    <td>VDIWA.dichlorodifluoromethane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.trichlorofluoromethane &nbsp; </td>

    <td>VDIWA.fluoroethane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.chloroethane &nbsp; </td>

    <td>VDIWA.bromoethane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.1,1-dichloroethane &nbsp; </td>

    <td>VDIWA.1,2-dichloroethane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.1,2-dibromoethane &nbsp; </td>

    <td>VDIWA.1,1,1-Trifluoroethane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.1,1,1-Trichloroethane &nbsp; </td>

    <td>VDIWA.1,1,2,2-Tetrachloroethane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.pentachloroethane &nbsp; </td>

    <td>VDIWA.hexachloroethane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.1,1,2,2-tetrachlorodifluoroethane &nbsp; </td>

    <td>VDIWA.1,1,2-trichloro-1,2,2-trifluoroethane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.1,2-dichloro-1,1,2,2-tetrafluoroethane &nbsp; </td>

    <td>VDIWA.1-chloropropane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.1-chlorobutane &nbsp; </td>

    <td>VDIWA.1-chloropentane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.chlorotrifluoroethylene &nbsp; </td>

    <td>VDIWA.Chloroethylene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.1,1-dichloroethene &nbsp; </td>

    <td>VDIWA.trichloroethylene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.tetrachloroethene &nbsp; </td>

    <td>VDIWA.fluorobenzene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.chlorobenzene &nbsp; </td>

    <td>VDIWA.bromobenzene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.iodobenzene &nbsp; </td>

    <td>VDIWA.m-chlorotoluene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.chloromethylbenzene &nbsp; </td>

    <td>VDIWA.methane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.ethane &nbsp; </td>

    <td>VDIWA.propane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.butane &nbsp; </td>

    <td>VDIWA.pentane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.hexane &nbsp; </td>

    <td>VDIWA.heptane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.octane &nbsp; </td>

    <td>VDIWA.nonane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.decane &nbsp; </td>

    <td>VDIWA.undecane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.dodecane &nbsp; </td>

    <td>VDIWA.tridecane  &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.tetradecane  &nbsp; </td>

    <td>VDIWA.pentadecane  &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.hexadecane &nbsp; </td>

    <td>VDIWA.heptadecane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.octadecane &nbsp; </td>

    <td>VDIWA.nonadecane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.icosane &nbsp; </td>

    <td>VDIWA.2-methylpropane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.2-methylbutane &nbsp; </td>

    <td>VDIWA.2,2-dimethylpropane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.2-methylpentane &nbsp; </td>

    <td>VDIWA.3-methylpentane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.2,2-dimethylbutane &nbsp; </td>

    <td>VDIWA.2,3-dimethylbutane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.ethene &nbsp; </td>

    <td>VDIWA.propene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.1-butene &nbsp; </td>

    <td>VDIWA.1-pentene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.1-hexene &nbsp; </td>

    <td>VDIWA.1-heptene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.1-Octene &nbsp; </td>

    <td>VDIWA.dimethylenemethane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.1,2-butadiene &nbsp; </td>

    <td>VDIWA.1,3-butadiene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.1,2-pentadiene &nbsp; </td>

    <td>VDIWA.1,3-pentadiene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.1,4-pentadiene &nbsp; </td>

    <td>VDIWA.2,3-pentadiene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.acetylene &nbsp; </td>

    <td>VDIWA.methylacetylene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.dimethylacetylene &nbsp; </td>

    <td>VDIWA.ethylacetylene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.cyclopropane &nbsp; </td>

    <td>VDIWA.cyclobutane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.cyclopentane &nbsp; </td>

    <td>VDIWA.methylcyclopentane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.ethylcyclepentane &nbsp; </td>

    <td>VDIWA.propylcyclopentane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.butylcyclopentane &nbsp; </td>

    <td>VDIWA.pentylcyclopentane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.hexylcyclopentane &nbsp; </td>

    <td>VDIWA.cyclohexane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.methylcyclohexane &nbsp; </td>

    <td>VDIWA.ethylcyclohexane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.propylcyclohexane &nbsp; </td>

    <td>VDIWA.butylcyclohexane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.pentylcyclohexane &nbsp; </td>

    <td>VDIWA.hexylcyclohexane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.cyclopentene &nbsp; </td>

    <td>VDIWA.cyclohexene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.benzene &nbsp; </td>

    <td>VDIWA.methylbenzene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.ethylbenzene &nbsp; </td>

    <td>VDIWA.propylbenzene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.butylbenzene &nbsp; </td>

    <td>VDIWA.pentylbenzene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.hexylbenzene &nbsp; </td>

    <td>VDIWA.o-xylene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.m-xylene &nbsp; </td>

    <td>VDIWA.p-xylene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.1,2,3-trimethylbenzene &nbsp; </td>

    <td>VDIWA.1,2,4-trimethylbenzene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.1,3,5-trimethylbenzene &nbsp; </td>

    <td>VDIWA.1,2,3,4-tetramethylbenzene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.1,2,3,5-tetramethylbenzene &nbsp; </td>

    <td>VDIWA.1,2,4,5-tetramethylbenzene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.pentamethylbenzene &nbsp; </td>

    <td>VDIWA.hexamethylbenzene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.styrene &nbsp; </td>

    <td>VDIWA.Isopropylbenzene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.biphenyl &nbsp; </td>

    <td>VDIWA.diphenylmethane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.triphenylmethane &nbsp; </td>

    <td>VDIWA.tetraphenylmethane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.naphthalene &nbsp; </td>

    <td>VDIWA.1-methylnaphthalene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.2-methylnaphthalene &nbsp; </td>

    <td>VDIWA.1-ethylnaphthalene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.2-ethylnaphthalene &nbsp; </td>

    <td>VDIWA.methanol &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.ethanol &nbsp; </td>

    <td>VDIWA.propanol &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.butanol &nbsp; </td>

    <td>VDIWA.pentanol &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.hexanol &nbsp; </td>

    <td>VDIWA.heptanol &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.octanol &nbsp; </td>

    <td>VDIWA.isopropyl alcohol &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.2-methylpropan-1-ol &nbsp; </td>

    <td>VDIWA.isopentyl alcohol &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.Ethylenglycol &nbsp; </td>

    <td>VDIWA.1,3-Propylenglycol &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.glycerin &nbsp; </td>

    <td>VDIWA.cyclohexanol &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.phenylmethanol &nbsp; </td>

    <td>VDIWA.o-cresol &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.m-cresol &nbsp; </td>

    <td>VDIWA.p-cresol &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.phenol &nbsp; </td>

    <td>VDIWA.methanoic acid &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.ethanoic acid &nbsp; </td>

    <td>VDIWA.propanoic acid &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.butanoic acid &nbsp; </td>

    <td>VDIWA.pentanoic acid &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.hexanoic acid &nbsp; </td>

    <td>VDIWA.acetic anhydride &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.propanoyl propanoate &nbsp; </td>

    <td>VDIWA.chloroacetic acid &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.dichloroacetic acid &nbsp; </td>

    <td>VDIWA.trichloroacetic acid &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.Carbomethene &nbsp; </td>

    <td>VDIWA.propanone &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.methyl ethyl ketone &nbsp; </td>

    <td>VDIWA.diethyl ketone &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.propyl ketone &nbsp; </td>

    <td>VDIWA.1-phenylethanone &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.benzophenone &nbsp; </td>

    <td>VDIWA.methoxymethane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.ethoxyethane &nbsp; </td>

    <td>VDIWA.propoxypropane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.methoxypropane &nbsp; </td>

    <td>VDIWA.ethoxypropane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.ethylene oxide &nbsp; </td>

    <td>VDIWA.furan &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.1,4-dioxane &nbsp; </td>

    <td>VDIWA.methanal &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.acetaldehyde &nbsp; </td>

    <td>VDIWA.2,4,6-trimethyl-1,3,5-trioxane &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.furan-2-carbaldehyde &nbsp; </td>

    <td>VDIWA.benzaldehyde &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.2-hydroxybenzaldehyde &nbsp; </td>

    <td>VDIWA.methyl-formate &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.ethyl-formate &nbsp; </td>

    <td>VDIWA.propyl-formate &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.methyl-acetate &nbsp; </td>

    <td>VDIWA.ethyl-acetate &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.propyl-acetate &nbsp; </td>

    <td>VDIWA.METHYL-PROPIONATE &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.ethyl-propionate &nbsp; </td>

    <td>VDIWA.n-propyl-propionate &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.methyl-butanoate &nbsp; </td>

    <td>VDIWA.ethyl-butanoate &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.methyl-benzoate &nbsp; </td>

    <td>VDIWA.ethyl-benzoate &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.methyl-salicylate &nbsp; </td>

    <td>VDIWA.methylamine &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.ethanamine &nbsp; </td>

    <td>VDIWA.propylamine &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.butan-1-amine &nbsp; </td>

    <td>VDIWA.dimethylamine &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.trimethylamine &nbsp; </td>

    <td>VDIWA.diethylamine &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.triethylamine &nbsp; </td>

    <td>VDIWA.piperidine &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.pyridine &nbsp; </td>

    <td>VDIWA.phenylamine &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.n-methyl-anilin &nbsp; </td>

    <td>VDIWA.N,N-dimethyl-anilin &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.N,N-diethyl-anilin &nbsp; </td>

    <td>VDIWA.phenylhydrazine &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.diphenylamine &nbsp; </td>

    <td>VDIWA.acetonitrile &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.propanenitrile &nbsp; </td>

    <td>VDIWA.butanenitrile &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.benzonitrile &nbsp; </td>

    <td>VDIWA.methanamide &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.nitromethane &nbsp; </td>

    <td>VDIWA.nitrobenzene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.o-nitrotoluene &nbsp; </td>

    <td>VDIWA.m-nitrotoluene &nbsp; </td>
  </tr>
   <tr>
    <td>VDIWA.p-nitrotoluene &nbsp; </td>

    <td>  &nbsp; </td>
  </tr>
</table><br><br>
<!-- [[[end]]] -->

<h4>Gas Names NASA</h4>
All 2024 substance names by NASA Glenn Coefficients can be received by request.
<br><br>
<!-- NASA substance names with brackets to not function in this version. They can nevertheless be added at any time if necessary.<br> -->
<!-- [[[cog #print_table4Column('TILMedia_GasNamesNASA.csv') ]]] -->
<!-- [[[end]]] -->

</html>"));

end SubstanceNames;
