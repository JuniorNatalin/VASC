/PROG  MOTN004
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "PR_STAT_EZ1/SP1";
PROG_GR��E	= 516;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GE�NDERT	= TAG 17-03-28  ZEIT 12:27:02;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 14;
SPEICHERGR.	= 840;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GR��E	= 0,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= 1,1,*,*,*;
KONTROLLCODE	= 00000000 00000000;
/MN
   1:  !Vorbesetzung Positions-Register ;
   2:  !Stationaere EZ1/SP1 ;
   3:  !KS24 ;
   4:  !Version: 01 ;
   5:  !Stand: 001 ;
   6:  !letzte  Aenderung  06.02.2015 LZ ;
   7:  FREIG. PREG ;
   8:  PR[11]=LPOS    ;
   9:  !PR[11] Ruecksetzen ;
  10:  AUFRUF PRNULL(11) ;
  11:  !Kappenabnuetzung fester E-Arm EZ ;
  12:  PR[GP1:11,1]=(gE[25]*((-.1))) ;
  13:  !Kappenabnuetzung bewegl. E-Arm E ;
  14:  PR[GP2:11,1]=(gE[25]*(-.2)) ;
/POS
/END
