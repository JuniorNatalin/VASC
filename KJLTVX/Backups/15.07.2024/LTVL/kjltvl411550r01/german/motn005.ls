/PROG  MOTN005
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "PR_STAT_EZ2/SP2";
PROG_GRÖßE	= 516;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-03-27  ZEIT 18:21:12;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 14;
SPEICHERGR.	= 840;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 0,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= 1,1,1,*,*;
KONTROLLCODE	= 00000000 00000000;
/MN
   1:  !Vorbesetzung Positions-Register ;
   2:  !Stationaere EZ2/SP2 ;
   3:  !KS24 ;
   4:  !Version: 01 ;
   5:  !Stand: 001 ;
   6:  !letzte  Aenderung  06.02.2015 LZ ;
   7:  FREIG. PREG ;
   8:  PR[21]=LPOS    ;
   9:  !PR[21] Ruecksetzen ;
  10:  AUFRUF PRNULL(21) ;
  11:  !Kappenabnuetzung fester E-Arm EZ ;
  12:  PR[GP1:21,1]=(gE[26]*(.1)) ;
  13:  !Kappenabnuetzung bewegl. E-Arm E ;
  14:  PR[GP3:21,1]=(gE[26]*(-.2)) ;
/POS
/END
