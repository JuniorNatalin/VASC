/PROG  MAKRO086
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EZ1_RESET_REF";
PROG_SIZE	= 762;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-27  TIME 17:07:06;
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
    :  !EZ1  Reset  und  Referenzieren ;
    :  !KS24 ;
    :  !Version: 01 ;
    :  !Stand: 001 ;
    :  !letzte  Aenderung  06.02.2015 LZ ;
    :  DO[129]=(ON) ;
    :  DO[715]=(ON) ;
    :  !Abfrage Energiesparmodus ist AUS ;
    :  TIMER[10]=((-2)) ;
    :  WAIT (!DI[706] OR (TIMER[10]>=0))    ;
    :  F[118]=(TIMER[10]>=0) ;
    :  WAIT (!DI[706])    ;
    :  F[118]=(OFF) ;
    :  F[303]=(ON) ;
    :  TIMER[10]=((-.5)) ;
    :  WAIT (DI[705] OR (TIMER[10]>=0))    ;
    :  F[303]=(OFF) ;
    :  TIMER[10]=((-.5)) ;
    :  WAIT (!DO[705] AND (TIMER[10]>=0))    ;
    :  DO[714]=(ON) ;
    :  WAIT (!DI[714])    ;
    :  WAIT (DI[705] AND DI[714])    ;
    :  DO[714]=(OFF) ;
    :  DO[715]=(OFF) ;
    :  TIMER[10]=((-2)) ;
    :  WAIT (!DI[715] OR (TIMER[10]>=0))    ;
    :  F[118]=(TIMER[10]>=0) ;
    :  WAIT (!DI[715])    ;
    :  F[118]=(OFF) ;
    :  DO[129]=(OFF) ;
/POS
/END
