/PROG  MAKROSP4
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "MAKROSP4_BMS";
PROG_GRÖßE	= 414;
ERSTELL		= TAG 10-06-15  ZEIT 12:00:00;
GEÄNDERT	= TAG 16-06-12  ZEIT 00:53:32;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 10;
SPEICHERGR.	= 878;
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
   1:  !MAKROSP4 Status an BMS ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  WENN (!F[63]),SPRUNG LABEL[1] ;
   7:  !******************************* ;
   8:  !Spannerstellung zur SPS melden ;
   9:  !******************************* ;
  10:  LABEL[1] ;
/POS
/END
