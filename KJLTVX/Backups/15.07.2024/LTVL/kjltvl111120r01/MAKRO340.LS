/PROG  MAKRO340
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "G_INIT";
PROG_GRÖßE	= 710;
ERSTELL		= TAG 10-09-16  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-03-27  ZEIT 17:03:28;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 32;
SPEICHERGR.	= 1082;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 0,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= *,*,*,*,*;
KONTROLLCODE	= 00000000 00000000;
/MN
   1:  !Greifer Initialisierung ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  !Vorwahl Spanngruppen AUS ;
   7:  F[1:Selecc.Gpo.  1]=(AUS) ;
   8:  F[2:Selecc.Gpo.  2]=(AUS) ;
   9:  F[3:Selecc.Gpo.  3]=(AUS) ;
  10:  F[4:Selecc.Gpo.  4]=(AUS) ;
  11:  F[5:Selecc.Gpo.  5]=(AUS) ;
  12:  F[6:Selecc.Gpo.  6]=(AUS) ;
  13:  F[7:Selecc.Gpo.  7]=(AUS) ;
  14:  F[8:Selecc.Gpo.  8]=(AUS) ;
  15:  F[9:Selecc.Gpo.  9]=(AUS) ;
  16:  F[10:Selecc.Gpo. 10]=(AUS) ;
  17:  F[11:Selecc.Gpo. 11]=(AUS) ;
  18:  F[12:Selecc.Gpo. 12]=(AUS) ;
  19:  F[13:Selecc.Gpo. 13]=(AUS) ;
  20:  F[14:Selecc.Gpo. 14]=(AUS) ;
  21:  F[15:Selecc.Gpo. 15]=(AUS) ;
  22:  F[16:Selecc.Gpo. 16]=(AUS) ;
  23:  F[17:Selecc.Vent. 1]=(AUS) ;
  24:  F[18:Selecc.Vent. 2]=(AUS) ;
  25:  F[19:Selecc.Vent. 3]=(AUS) ;
  26:  F[20:Selecc.Vent. 4]=(AUS) ;
  27:  F[21:Selecc.Vent. 5]=(AUS) ;
  28:  F[22:Selecc.Vent. 6]=(AUS) ;
  29:  F[23:Sel.Grp.Ven.OFF]=(AUS) ;
  30:  F[58:Ventosa 1 a 6]=(AUS) ;
  31:  F[60:Grupo Garra 9-16]=(AUS) ;
  32:  F[61:Grupo Garra 1-8]=(AUS) ;
/POS
/END
