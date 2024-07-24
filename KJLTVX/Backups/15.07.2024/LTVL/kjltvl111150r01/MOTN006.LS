/PROG  MOTN006
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "PR_STAT_EZ3/SP3";
PROG_SIZE	= 516;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-27  TIME 17:07:52;
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
    :  !Vorbesetzung Positions-Register ;
    :  !Stationaere EZ3/SP3 ;
    :  !KS24 ;
    :  !Version: 01 ;
    :  !Stand: 001 ;
    :  !letzte  Aenderung  06.02.2015 LZ ;
    :  UNLOCK PREG ;
    :  PR[31]=LPOS    ;
    :  !PR[31] Ruecksetzen ;
    :  CALL PRNULL(31) ;
    :  !Kappenabnuetzung fester E-Arm EZ ;
    :  PR[GP1:31,1]=(GI[27]*(.1)) ;
    :  !Kappenabnuetzung bewegl. E-Arm E ;
    :  PR[GP4:31,1]=(GI[27]*(-.2)) ;
/POS
/END
