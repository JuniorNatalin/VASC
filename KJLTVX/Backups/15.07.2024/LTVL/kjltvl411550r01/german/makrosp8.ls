/PROG  MAKROSP8
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "MAKROSP8_ProfiNe";
PROG_GRÖßE	= 380;
ERSTELL		= TAG 10-06-15  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-03-27  ZEIT 18:21:12;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 10;
SPEICHERGR.	= 712;
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
   1:  !MAKROSP8 (ProfiNet-Abmeld.) ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  !Abmeldung ProfiNet-Safe ;
   7:  !fuer Wartung/Neustart ;
   8:  A[4089]=(A[22849]) ;
   9:  A[22853]=(A[4089]) ;
  10:  A[22854]=(E[4089]) ;
/POS
/END
