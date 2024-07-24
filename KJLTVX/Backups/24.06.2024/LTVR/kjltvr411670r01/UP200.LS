/PROG  UP200
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 587;
CREATE		= DATE 22-12-04  TIME 08:35:22;
MODIFIED	= DATE 22-12-04  TIME 08:49:02;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 867;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,1,1,*;
CONTROL_CODE	= 00000000 00000000;
/APPL

CORNER_SPEED_HEADER;
  ENABLE_CORNER_SPEED   : FALSE;
/MN
   1:  TC_ONLINE (ON) ;
   2:  DO[23]=(OFF) ;
   3:  DO[215]=(F[572]) ;
   4:  WAIT (!F[572] OR DI[215] OR DI[216])    ;
   5:  DO[215]=(OFF) ;
   6:  F[573]=(DI[216]) ;
   7:  F[572]=(F[572] AND !DI[216]) ;
   8:  !Revision limpieza MigMag ;
   9:  IF (DO[12]),R[21]=(R[21]+1) ;
  10:  F[605]=(OFF) ;
  11:  F[603]=(F[572] OR F[573] OR (R[21]>=5)) ;
  12:  F[603]=(F[603] OR F[572] OR F[573]) ;
  13:  IF (F[603]),R[21]=(0) ;
  14:  WAIT (DI[2163] AND !DI[2164])    ;
  15:  //WAIT (DI[23])    ;
  16:  //DO[23]=(ON) ;
  17:  //TIMER[5]=STOP ;
  18:  //TC_ONLINE (M[30]) ;
  19:  //    ;
  20:   ;
  21:   ;
  22:   ;
  23:   ;
/POS
/END
