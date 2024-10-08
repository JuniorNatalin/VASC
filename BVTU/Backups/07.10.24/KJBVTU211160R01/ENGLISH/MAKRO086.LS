/PROG  MAKRO086
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EZ1_RESET_REF";
PROG_SIZE	= 762;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-04-01  TIME 11:17:24;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 1014;
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
   1:  !EZ1  Reset  und  Referenzieren ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  DO[129]=(ON) ;
   7:  DO[715]=(ON) ;
   8:  !Abfrage Energiesparmodus ist AUS ;
   9:  TIMER[10]=((-2)) ;
  10:  WAIT (!DI[706] OR (TIMER[10]>=0))    ;
  11:  F[118]=(TIMER[10]>=0) ;
  12:  WAIT (!DI[706])    ;
  13:  F[118]=(OFF) ;
  14:  F[303]=(ON) ;
  15:  TIMER[10]=((-.5)) ;
  16:  WAIT (DI[705] OR (TIMER[10]>=0))    ;
  17:  F[303]=(OFF) ;
  18:  TIMER[10]=((-.5)) ;
  19:  WAIT (!DO[705] AND (TIMER[10]>=0))    ;
  20:  DO[714]=(ON) ;
  21:  WAIT (!DI[714])    ;
  22:  WAIT (DI[705] AND DI[714])    ;
  23:  DO[714]=(OFF) ;
  24:  DO[715]=(OFF) ;
  25:  TIMER[10]=((-2)) ;
  26:  WAIT (!DI[715] OR (TIMER[10]>=0))    ;
  27:  F[118]=(TIMER[10]>=0) ;
  28:  WAIT (!DI[715])    ;
  29:  F[118]=(OFF) ;
  30:  DO[129]=(OFF) ;
/POS
/END
