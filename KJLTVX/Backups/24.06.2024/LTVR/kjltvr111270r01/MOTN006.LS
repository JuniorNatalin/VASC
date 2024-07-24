/PROG  MOTN006
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "PR_STAT_EZ3/SP3";
PROG_SIZE	= 516;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-31  TIME 10:44:28;
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
DEFAULT_GROUP	= 1,1,1,1,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  !Vorbesetzung Positions-Register ;
   2:  !Stationaere EZ3/SP3 ;
   3:  !KS24 ;
   4:  !Version: 01 ;
   5:  !Stand: 001 ;
   6:  !letzte  Aenderung  06.02.2015 LZ ;
   7:  UNLOCK PREG ;
   8:  PR[31]=LPOS    ;
   9:  !PR[31] Ruecksetzen ;
  10:  CALL PRNULL(31) ;
  11:  !Kappenabnuetzung fester E-Arm EZ ;
  12:  PR[GP1:31,1]=(GI[27]*(.1)) ;
  13:  !Kappenabnuetzung bewegl. E-Arm E ;
  14:  PR[GP4:31,1]=(GI[27]*(-.2)) ;
/POS
/END
