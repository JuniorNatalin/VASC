/PROG  MAKRO350
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "SPANNG.7_AUF/ZU";
PROG_GRÖßE	= 360;
ERSTELL		= TAG 10-09-17  ZEIT 16:56:34;
GEÄNDERT	= TAG 23-03-18  ZEIT 12:22:08;
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
   1:  !Spanngruppe 7 ZU/AUF ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  !Spanngruppe ZU ;
   7:  A[591]=(!F[23]) ;
   8:  !Spanngruppe AUF ;
   9:  A[592]=(F[23]) ;
  10:  F[30]=(AN) ;
/POS
/END
