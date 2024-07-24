/PROG  MAKRO344
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "SPANNG.1_AUF/ZU";
PROG_GRÖßE	= 360;
ERSTELL		= TAG 10-09-17  ZEIT 16:56:34;
GEÄNDERT	= TAG 17-03-27  ZEIT 17:03:30;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 10;
SPEICHERGR.	= 692;
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
   1:  !Spanngruppe 1 ZU/AUF ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  !Spanngruppe ZU ;
   7:  A[579:Gpo.Suj. 11 V]=(!F[23:Sel.Grp.Ven.OFF]) ;
   8:  !Spanngruppe AUF ;
   9:  A[580:Gpo.Suj. 11 R]=(F[23:Sel.Grp.Ven.OFF]) ;
  10:  F[24:Makro 344 Activa]=(AN) ;
/POS
/END
