/PROG  MAKRO395
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Praegen ohne Pne";
PROG_SIZE	= 1496;
CREATE		= DATE 12-01-06  TIME 16:56:16;
MODIFIED	= DATE 17-04-03  TIME 08:31:38;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 58;
MEMORY_SIZE	= 1896;
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
   1:  ! Praegen  ohne  Pneumatischen  Z ;
   2:  !KS24 ;
   3:  !Version: 02 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  04.06.2015 MB ;
   6:  ! Steuerluft EIN ;
   7:  DO[217]=(ON) ;
   8:  IF (!DI[15]),JMP LBL[1] ;
   9:  TIMER[12]=(R[140]) ;
  10:  LBL[1] ;
  11:  WAIT ((TIMER[12]>=0) OR !DI[15])    ;
  12:  IF (DI[15]),JMP LBL[2] ;
  13:  DO[2153]=(ON) ;
  14:  TIMER[10]=((-5)) ;
  15:  ! Warte auf Vorwahl Ventilinsel ;
  16:  WAIT (F[523] AND !F[524] OR !F[523] AND F[524] OR (TIMER[10]>=0))    ;
  17:  DO[224]=((TIMER[10]>=0)) ;
  18:  WAIT (F[523] AND !F[524] OR !F[523] AND F[524])    ;
  19:  DO[224]=(OFF) ;
  20:  ! Warte bis Steuerluft EIN ;
  21:  WAIT (F[523] AND !F[524] AND DI[2153] OR !F[523] AND F[524] AND !DI[2154] OR (TIMER[10]>=0))    ;
  22:  DO[224]=((TIMER[10]>=0)) ;
  23:  WAIT (F[523] AND !F[524] AND DI[2153] OR !F[523] AND F[524] AND !DI[2154])    ;
  24:  DO[224]=(OFF) ;
  25:  TIMER[10]=((-5)) ;
  26:  DO[2157]=(ON) ;
  27:  DO[2158]=(OFF) ;
  28:  WAIT (DI[2157] AND !DI[2158] OR (TIMER[10]>=0))    ;
  29:  DO[224]=((TIMER[10]>=0)) ;
  30:  WAIT (DI[2157] AND !DI[2158])    ;
  31:  DO[224]=(OFF) ;
  32:  TIMER[10]=((-5)) ;
  33:  DO[2155]=(OFF) ;
  34:  DO[2156]=(ON) ;
  35:  WAIT (!DI[2155] AND DI[2156] OR (TIMER[10]>=0))    ;
  36:  DO[224]=((TIMER[10]>=0)) ;
  37:  WAIT (!DI[2155] AND DI[2156])    ;
  38:  DO[224]=(OFF) ;
  39:  WAIT   1.00(sec) ;
  40:  TIMER[10]=((-5)) ;
  41:  DO[2155]=(ON) ;
  42:  DO[2156]=(OFF) ;
  43:  WAIT (DI[2155] AND !DI[2156] OR (TIMER[10]>=0))    ;
  44:  DO[224]=((TIMER[10]>=0)) ;
  45:  WAIT (DI[2155] AND !DI[2156])    ;
  46:  DO[224]=(OFF) ;
  47:  TIMER[10]=((-5)) ;
  48:  DO[2155]=(OFF) ;
  49:  ! Steuerluft AUS ;
  50:  DO[2153]=(OFF) ;
  51:  TIMER[10]=((-5)) ;
  52:  ! Warte bis Steuerluft AUS ;
  53:  WAIT (F[523] AND !F[524] AND !DI[2153] OR !F[523] AND F[524] AND DI[2154] OR (TIMER[10]>=0))    ;
  54:  DO[224]=((TIMER[10]>=0)) ;
  55:  WAIT (F[523] AND !F[524] AND !DI[2153] OR !F[523] AND F[524] AND DI[2154])    ;
  56:  DO[224]=(OFF) ;
  57:  LBL[2] ;
  58:  DO[217]=(OFF) ;
/POS
/END
