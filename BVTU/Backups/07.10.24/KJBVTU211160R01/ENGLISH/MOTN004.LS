/PROG  MOTN004
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "PR_STAT_EZ1/SP1";
PROG_SIZE	= 516;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-04-01  TIME 11:18:08;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 14;
MEMORY_SIZE	= 840;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  !Vorbesetzung Positions-Register ;
   2:  !Stationaere EZ1/SP1 ;
   3:  !KS24 ;
   4:  !Version: 01 ;
   5:  !Stand: 001 ;
   6:  !letzte  Aenderung  06.02.2015 LZ ;
   7:  UNLOCK PREG ;
   8:  PR[11]=LPOS    ;
   9:  !PR[11] Ruecksetzen ;
  10:  CALL PRNULL(11) ;
  11:  !Kappenabnuetzung fester E-Arm EZ ;
  12:  PR[GP1:11,1]=(GI[25]*(.1)) ;
  13:  !Kappenabnuetzung bewegl. E-Arm E ;
  14:  PR[GP2:11,1]=(GI[25]*(-.2)) ;
/POS
/END
