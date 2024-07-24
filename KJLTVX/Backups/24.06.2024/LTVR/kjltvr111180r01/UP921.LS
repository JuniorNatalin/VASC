/PROG  UP921
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tst Deadtime E2 ";
PROG_SIZE	= 1298;
CREATE		= DATE 15-12-03  TIME 09:55:32;
MODIFIED	= DATE 15-12-03  TIME 09:55:32;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 15;
MEMORY_SIZE	= 3018;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,1,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  !Tst.Deadtime EZ2 ;
   2:  !Last Change 30.08.2010 ;
   3:  !  Change Output Values for MQB ;
   4:  PR[12]=LPOS    ;
   5:  PR[13]=LPOS    ;
   6:  PR[GP3:12,1]=($PARAM_GROUP[3].$LOWERLIMS[1]+20) ;
   7:  PR[GP3:13,1]=($PARAM_GROUP[3].$UPPERLIMS[1]-10) ;
   8:J PR[12] 100% CNT0 DB    0.0mm,P-SPS    ;
      1:  DO[16]=ON ;
      2:  DO[15]=OFF ;
      3:  DO[11001]=OFF ;
       ------ ;
   9:  LOCK PREG ;
  10:  LBL[1] ;
  11:J PR[12] 100% CNT0 DB    0.0mm,P-SPS    ;
       ------ ;
  12:J PR[13] 100% CNT0 DB    0.0mm,P-SPS    ;
       ------ ;
  13:  JMP LBL[1] ;
  14:   ;
  15:J PR[12] 100% CNT0 DB    0.0mm,P-SPS    ;
      1:  DO[16]=ON ;
      2:  DO[15]=ON ;
       ------ ;
/POS
/END
