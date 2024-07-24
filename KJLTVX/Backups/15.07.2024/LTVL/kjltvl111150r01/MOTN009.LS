/PROG  MOTN009
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "WEG STAT EZSP";
PROG_SIZE	= 502;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-27  TIME 17:07:52;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 15;
MEMORY_SIZE	= 854;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
    :  !Weg zurueck STAT EZSP ;
    :  !KS24 ;
    :  !Version: 01 ;
    :  !Stand: 001 ;
    :  !letzte  Aenderung  06.02.2015 LZ ;
    :  R[819]=($SSR.$SINGLESTEP) ;
    :  $SSR.$SINGLESTEP=0 ;
    :  UNLOCK PREG ;
    :  PR[51]=LPOS    ;
    :  !PR[52] Ruecksetzen ;
    :  CALL PRNULL(52) ;
    :  PR[52,1]=R[100]    ;
    :  LOCK PREG ;
    :J PR[51] 100% CNT100 ACC100 Offset,PR[52]    ;
    :  $SSR.$SINGLESTEP=R[819] ;
/POS
/END
