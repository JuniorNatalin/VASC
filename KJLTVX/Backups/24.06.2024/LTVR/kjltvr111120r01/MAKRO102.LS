/PROG  MAKRO102
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "KS2_RUHEST";
PROG_SIZE	= 1000;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-31  TIME 10:52:34;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 36;
MEMORY_SIZE	= 1356;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  !KS2  in Ruhestellung schwenken ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 002 ;
   5:  !letzte  Aenderung  18.08.2016 LZ ;
   6:  WAIT (DI[23])    ;
   7:  DO[23]=(ON) ;
   8:  !KF2 Versetzeinheit vor ;
   9:  DO[995]=(F[564]) ;
  10:  TIMER[10]=((-4)) ;
  11:  !Warte bis KF2 Versetzeinheit vor ;
  12:  WAIT ((DO[995] AND F[564]) OR (!DI[995] AND !F[564]) OR (TIMER[10]>=0))    ;
  13:  F[328]=(TIMER[10]>=0) ;
  14:  WAIT ((DO[995] AND F[564]) OR (!DI[995] AND !F[564]))    ;
  15:  F[328]=(OFF) ;
  16:  !KS2 schwenken ;
  17:  DO[3970]=(ON) ;
  18:  DO[1002]=(ON) ;
  19:  !Warte bis KS2 in Ruhestellung ;
  20:  TIMER[10]=((-6)) ;
  21:  WAIT ((!DI[1004] AND DI[1002] AND DI[1005] AND !DI[1003]) OR (TIMER[10]>=0))    ;
  22:  F[323]=(TIMER[10]>=0) ;
  23:  WAIT (!DI[1004] AND DI[1002] AND DI[1005] AND !DI[1003])    ;
  24:  F[323]=(OFF) ;
  25:  DO[3970]=(OFF) ;
  26:  DO[1002]=(OFF) ;
  27:  !KF2 Versetzeinheit rueck ;
  28:  DO[995]=(OFF) ;
  29:  TIMER[10]=((-4)) ;
  30:  !Warte bis KF2 ;
  31:  !Versetzeinheit rueck ;
  32:  WAIT (!DI[995] OR (TIMER[10]>=0))    ;
  33:  F[328]=(TIMER[10]>=0) ;
  34:  WAIT (!DI[995])    ;
  35:  F[328]=(OFF) ;
  36:  DO[23]=(OFF) ;
/POS
/END
