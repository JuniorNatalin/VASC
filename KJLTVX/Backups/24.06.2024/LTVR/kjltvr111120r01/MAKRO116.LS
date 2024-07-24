/PROG  MAKRO116
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EZ2_RESET_REF";
PROG_SIZE	= 758;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-31  TIME 10:52:38;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 1010;
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
   1:  !EZ2  Reset  und  Referenzieren ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  DO[161]=(ON) ;
   7:  DO[875]=(ON) ;
   8:  !Abfrage Energiesparmodus ist AUS ;
   9:  TIMER[10]=((-2)) ;
  10:  WAIT (!DI[866] OR (TIMER[10]>=0))    ;
  11:  F[156]=(TIMER[10]>=0) ;
  12:  WAIT (!DI[866])    ;
  13:  F[156]=(OFF) ;
  14:  F[303]=(ON) ;
  15:  TIMER[10]=((-3)) ;
  16:  WAIT (DI[865] OR (TIMER[10]>=0))    ;
  17:  F[303]=(OFF) ;
  18:  TIMER[10]=((-2)) ;
  19:  WAIT (!DO[865] AND (TIMER[10]>=0))    ;
  20:  DO[874]=(ON) ;
  21:  WAIT (!DI[874])    ;
  22:  WAIT (DI[865] AND DI[874])    ;
  23:  DO[874]=(OFF) ;
  24:  DO[875]=(OFF) ;
  25:  TIMER[10]=((-2)) ;
  26:  WAIT (!DI[875] OR (TIMER[10]>=0))    ;
  27:  F[156]=(TIMER[10]>=0) ;
  28:  WAIT (!DI[875])    ;
  29:  F[156]=(OFF) ;
  30:  DO[161]=(OFF) ;
/POS
/END
