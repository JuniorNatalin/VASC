/PROG  MAKRO920
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "EX-AX2_Abmelden";
PROG_GR��E	= 380;
ERSTELL		= TAG 06-01-26  ZEIT 15:36:02;
GE�NDERT	= TAG 17-05-03  ZEIT 17:19:10;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 11;
SPEICHERGR.	= 708;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GR��E	= 0,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= *,*,*,*,*;
KONTROLLCODE	= 00000000 00000001;
/MN
   1:  !-------------------------------- ;
   2:  !EX-AX2_Abmelden ;
   3:  !-------------------------------- ;
   4:   ;
   5:  !Messen Schleppfehler aus ;
   6:  A[20601]=AUS ;
   7:   ;
   8:  !Aktive Zange an PMC ;
   9:  gA[10603]=0 ;
  10:   ;
  11:  MELDUNG[Internal:E2 DC] ;
/POS
/END
