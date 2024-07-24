/PROG  MAKRO072
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "KS1_RUHEST";
PROG_SIZE	= 1000;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-31  TIME 10:39:40;
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
   1:  !KS1  in Ruhestellung schwenken ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 002 ;
   5:  !letzte  Aenderung  18.08.2016 LZ ;
   6:  WAIT (DI[23])    ;
   7:  DO[23]=(ON) ;
   8:  !KF1 Versetzeinheit vor ;
   9:  DO[835]=(F[564]) ;
  10:  TIMER[10]=((-4)) ;
  11:  !Warte bis KF1 Versetzeinheit vor ;
  12:  WAIT ((DI[835] AND F[564]) OR (!DI[835] AND !F[564]) OR (TIMER[10]>=0))    ;
  13:  F[328]=(TIMER[10]>=0) ;
  14:  WAIT ((DI[835] AND F[564]) OR (!DI[835] AND !F[564]))    ;
  15:  F[328]=(OFF) ;
  16:  !KS1 schwenken ;
  17:  DO[3969]=(ON) ;
  18:  DO[842]=(ON) ;
  19:  !Warte bis KS1 in Ruhestellung ;
  20:  TIMER[10]=((-6)) ;
  21:  WAIT ((!DI[844] AND DI[842] AND DI[845] AND !DI[843]) OR (TIMER[10]>=0))    ;
  22:  F[323]=(TIMER[10]>=0) ;
  23:  WAIT (!DI[844] AND DI[842] AND DI[845] AND !DI[843])    ;
  24:  F[323]=(OFF) ;
  25:  DO[3969]=(OFF) ;
  26:  DO[842]=(OFF) ;
  27:  !KF1 Versetzeinheit rueck ;
  28:  DO[835]=(OFF) ;
  29:  TIMER[10]=((-4)) ;
  30:  !Warte bis KF1 ;
  31:  !Versetzeinheit rueck ;
  32:  WAIT (!DI[835] OR (TIMER[10]>=0))    ;
  33:  F[328]=(TIMER[10]>=0) ;
  34:  WAIT (!DI[835])    ;
  35:  F[328]=(OFF) ;
  36:  DO[23]=(OFF) ;
/POS
/END
