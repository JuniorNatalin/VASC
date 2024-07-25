/PROG  UP910
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Mes.Deadtime E1";
PROG_SIZE	= 1404;
CREATE		= DATE 15-12-03  TIME 09:55:32;
MODIFIED	= DATE 15-12-03  TIME 09:55:32;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 3100;
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
   1:  !Measure.Deadtime EZ1 ;
   2:  !Last Change 30.08.2010 ;
   3:  !  Change Output Values for MQB ;
   4:  PR[10]=LPOS    ;
   5:  PR[11]=LPOS    ;
   6:  PR[GP2:10,1]=($PARAM_GROUP[2].$LOWERLIMS[1]+20) ;
   7:  PR[GP2:11,1]=($PARAM_GROUP[2].$UPPERLIMS[1]-10) ;
   8:J PR[10] 100% CNT0 DB    0.0mm,P-SPS    ;
      1:  DO[16]=ON ;
      2:  DO[15]=OFF ;
      3:  DO[11001]=OFF ;
      4:  DO[11005]=OFF ;
      5:  DO[11006]=OFF ;
       ------ ;
   9:  LOCK PREG ;
  10:   ;
  11:  LBL[1] ;
  12:J PR[10] 100% CNT0 DB    0.0mm,P-SPS    ;
      1:  DO[11001]=OFF ;
      2:  WAIT    .50(sec) ;
      3:   ;
      4:  DO[11001]=ON ;
       ------ ;
  13:J PR[11] 100% CNT0 DB    0.0mm,P-SPS    ;
       ------ ;
  14:J PR[10] 100% CNT0 DB    0.0mm,P-SPS    ;
       ------ ;
  15:  CALL FLTUNE1    ;
  16:  WAIT    .50(sec) ;
  17:  DO[16]=ON ;
  18:  DO[15]=ON ;
  19:   ;
/POS
/END