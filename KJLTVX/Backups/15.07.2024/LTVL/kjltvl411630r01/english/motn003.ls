/PROG  MOTN003
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "PR_ROB_EZ1/SP1";
PROG_SIZE	= 588;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-27  TIME 18:30:46;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 17;
MEMORY_SIZE	= 900;
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
   2:  !Robotergefuehrte EZ1/SP1 ;
   3:  !KS24 ;
   4:  !Version: 01 ;
   5:  !Stand: 001 ;
   6:  !letzte  Aenderung  06.02.2015 LZ ;
   7:  UNLOCK PREG ;
   8:  PR[11]=LPOS    ;
   9:  PR[12]=LPOS    ;
  10:  !PR[11] Ruecksetzen ;
  11:  CALL PRNULL(11) ;
  12:  !PR[12] Ruecksetzen ;
  13:  CALL PRNULL(12) ;
  14:  !Kappenabnuetzung fester E-Arm EZ ;
  15:  PR[GP1:11,1]=(GI[25]*(.1)) ;
  16:  !Kappenabnuetzung bewegl. E-Arm E ;
  17:  PR[GP2:12,1]=(GI[25]*(-.2)) ;
/POS
/END
