/PROG  MAKRO006
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "TEIL-ARBEITSF.6";
PROG_GRÖßE	= 512;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-03-27  ZEIT 18:30:02;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 14;
SPEICHERGR.	= 828;
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
   1:  !Teil Arbeitsfertigmeldung 6 ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  WARTE (!F[525])    ;
   7:  !Arbeitsfertigm. setzen ;
   8:  gA[18]=6 ;
   9:  !Auf Rueckmeldung warten ;
  10:  WARTE (!E[33] [&] E[34] [&] E[35] [&] !E[36])    ;
  11:  !Arbeitsfertigm. auf 0 setzen ;
  12:  gA[18]=0 ;
  13:  !Auf Rueckmeldung warten ;
  14:  WARTE (!E[33] [&] !E[34] [&] !E[35] [&] !E[36])    ;
/POS
/END
