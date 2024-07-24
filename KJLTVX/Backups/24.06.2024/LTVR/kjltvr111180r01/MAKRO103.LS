/PROG  MAKRO103
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "KS2_ARBEITSST";
PROG_SIZE	= 1322;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-31  TIME 10:47:32;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 53;
MEMORY_SIZE	= 1742;
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
   1:  !KS2  in Arbeitsstellung schwenke ;
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
  17:  DO[3973]=(ON) ;
  18:  DO[1002]=(ON) ;
  19:  !Warte bis ;
  20:  !KS2 in Arbeitsstellung ;
  21:  TIMER[10]=((-6)) ;
  22:  WAIT ((!DI[1002] AND DI[1003] AND DI[1004] AND !DI[1005]) OR (TIMER[10]>=0))    ;
  23:  F[324]=(TIMER[10]>=0) ;
  24:  WAIT ((!DI[1002] AND DI[1003] AND DI[1004] AND !DI[1005]))    ;
  25:  F[324]=(OFF) ;
  26:  DO[3973]=(OFF) ;
  27:  DO[1002]=(OFF) ;
  28:  IF (F[320]),JMP LBL[1] ;
  29:  JMP LBL[2] ;
  30:  LBL[1] ;
  31:  !KS2 schwenken ;
  32:  DO[3970]=(ON) ;
  33:  DO[1002]=(ON) ;
  34:  !Warte bis ;
  35:  !KS2 in Wartungsstellung ;
  36:  TIMER[10]=((-6)) ;
  37:  WAIT ((F[320] AND !DI[996]) OR (TIMER[10]>=0))    ;
  38:  F[324]=(TIMER[10]>=0) ;
  39:  WAIT (F[320] AND !DI[996])    ;
  40:  F[324]=(OFF) ;
  41:  DO[3970]=(OFF) ;
  42:  DO[1002]=(OFF) ;
  43:  LBL[2] ;
  44:  !KF2 Versetzeinheit rueck ;
  45:  DO[995]=(OFF) ;
  46:  TIMER[10]=((-4)) ;
  47:  !Warte bis KF2 ;
  48:  !Versetzeinheit rueck ;
  49:  WAIT (!DI[995] OR (TIMER[10]>=0))    ;
  50:  F[328]=(TIMER[10]>=0) ;
  51:  WAIT (!DI[995])    ;
  52:  F[328]=(OFF) ;
  53:  DO[23]=(OFF) ;
/POS
/END
