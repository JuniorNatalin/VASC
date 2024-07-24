/PROG  MOTN003
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "PR_ROB_EZ1/SP1";
PROG_GRÖßE	= 588;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-03-27  ZEIT 17:04:12;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 17;
SPEICHERGR.	= 900;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 0,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= 1,1,*,*,*;
KONTROLLCODE	= 00000000 00000000;
/MN
   1:  !Vorbesetzung Positions-Register ;
   2:  !Robotergefuehrte EZ1/SP1 ;
   3:  !KS24 ;
   4:  !Version: 01 ;
   5:  !Stand: 001 ;
   6:  !letzte  Aenderung  06.02.2015 LZ ;
   7:  FREIG. PREG ;
   8:  PR[11]=LPOS    ;
   9:  PR[12]=LPOS    ;
  10:  !PR[11] Ruecksetzen ;
  11:  AUFRUF PRNULL(11) ;
  12:  !PR[12] Ruecksetzen ;
  13:  AUFRUF PRNULL(12) ;
  14:  !Kappenabnuetzung fester E-Arm EZ ;
  15:  PR[GP1:11,1]=(gE[25:SP1 Desg.Act.]*(.1)) ;
  16:  !Kappenabnuetzung bewegl. E-Arm E ;
  17:  PR[GP2:12,1]=(gE[25:SP1 Desg.Act.]*(-.2)) ;
/POS
/END
