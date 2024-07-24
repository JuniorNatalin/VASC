/PROG  UP911
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tst Deadtime E1 ";
PROG_SIZE	= 1306;
CREATE		= DATE 15-12-03  TIME 09:55:32;
MODIFIED	= DATE 15-12-03  TIME 09:55:32;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 3022;
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
    :  !Tst.Deadtime EZ1 ;
    :  !Last Change 30.08.2010 ;
    :  !  Change Output Values for MQB ;
    :  PR[10]=LPOS    ;
    :  PR[11]=LPOS    ;
    :  PR[GP2:10,1]=($PARAM_GROUP[2].$LOWERLIMS[1]+20) ;
    :  PR[GP2:11,1]=($PARAM_GROUP[2].$UPPERLIMS[1]-10) ;
    :J PR[10] 100% CNT0 DB    0.0mm,P-SPS    ;
      1:  DO[16]=ON ;
      2:  DO[15]=OFF ;
      3:  DO[11001]=OFF ;
       ------ ;
    :  LOCK PREG ;
    :  LBL[1] ;
    :J PR[10] 100% CNT0 DB    0.0mm,P-SPS    ;
       ------ ;
    :J PR[11] 100% CNT0 DB    0.0mm,P-SPS    ;
       ------ ;
    :  JMP LBL[1] ;
    :   ;
    :J PR[10] 100% CNT0 DB    0.0mm,P-SPS    ;
      1:  DO[16]=ON ;
      2:  DO[15]=ON ;
       ------ ;
    :   ;
/POS
/END
