/PROG  MAKRO073
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "KS1_ARBEITSST";
PROG_SIZE	= 1320;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-27  TIME 17:14:58;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 53;
MEMORY_SIZE	= 1740;
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
   1:  !KS1  in Arbeitsstellung schwenke ;
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
  17:  DO[3972]=(ON) ;
  18:  DO[842]=(ON) ;
  19:  !Warte bis ;
  20:  !KS1 in Arbeitsstellung ;
  21:  TIMER[10]=((-6)) ;
  22:  WAIT ((!DI[842] AND DI[843] AND DI[844] AND !DI[845]) OR (TIMER[10]>=0))    ;
  23:  F[324]=(TIMER[10]>=0) ;
  24:  WAIT (!DI[842] AND DI[843] AND DI[844] AND !DI[845])    ;
  25:  F[324]=(OFF) ;
  26:  DO[3972]=(OFF) ;
  27:  DO[842]=(OFF) ;
  28:  IF (F[320]),JMP LBL[1] ;
  29:  JMP LBL[2] ;
  30:  LBL[1] ;
  31:  !KS1 schwenken ;
  32:  DO[3969]=(ON) ;
  33:  DO[842]=(ON) ;
  34:  !Warte bis ;
  35:  !KS1 in Wartungsstellung ;
  36:  TIMER[10]=((-6)) ;
  37:  WAIT ((F[320] AND !DI[836]) OR (TIMER[10]>=0))    ;
  38:  F[324]=(TIMER[10]>=0) ;
  39:  WAIT (F[320] AND !DI[836])    ;
  40:  F[324]=(OFF) ;
  41:  DO[3969]=(OFF) ;
  42:  DO[842]=(OFF) ;
  43:  LBL[2] ;
  44:  !KF1 Versetzeinheit rueck ;
  45:  DO[835]=(OFF) ;
  46:  TIMER[10]=((-4)) ;
  47:  !Warte bis KF1 ;
  48:  !Versetzeinheit rueck ;
  49:  WAIT (!DI[835] OR (TIMER[10]>=0))    ;
  50:  F[328]=(TIMER[10]>=0) ;
  51:  WAIT (!DI[835])    ;
  52:  F[328]=(OFF) ;
  53:  DO[23]=(OFF) ;
/POS
/END
