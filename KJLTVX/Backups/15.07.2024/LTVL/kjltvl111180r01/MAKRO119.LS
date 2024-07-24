/PROG  MAKRO119
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "SP2_Diagnosefunk";
PROG_SIZE	= 1176;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-07-04  TIME 12:25:12;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 42;
MEMORY_SIZE	= 1508;
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
   1:  !SP2_Diagnosefunktion ;
   2:  !KS24 ;
   3:  !Version: 02 ;
   4:  !Stand: 000 ;
   5:  !letzte  Aenderung 19.01.2017 LZ ;
   6:  !F156 = Sammelstoerung SP2 an BMS ;
   7:  !Abfrage Energiesparmodus ist AUS ;
   8:  DO[161]=(ON) ;
   9:  F[271]=(OFF) ;
  10:  TIMER[10]=((-2)) ;
  11:  WAIT (!DI[866] OR (TIMER[10]>=0))    ;
  12:  F[156]=(TIMER[10]>=0) ;
  13:  WAIT (!DI[866])    ;
  14:  F[156]=(OFF) ;
  15:  !Auswertung EZ2/SP2 i.O. ;
  16:  TIMER[10]=((-2)) ;
  17:  F[271]=(DI[944] AND (DI[937] OR DI[938])) ;
  18:  WAIT (DI[865] AND DI[873] AND DI[874] AND (!DI[944] OR (DI[929] AND DI[944]) OR (DI[924] AND DI[944]) OR F[271]) OR (TIMER[10]>=0))    ;
  19:  F[156]=(TIMER[10]>=0) ;
  20:  WAIT (DI[865] AND DI[873] AND DI[874] AND (!DI[944] OR (DI[929] AND DI[944]) OR (DI[924] AND DI[944]) OR F[271]))    ;
  21:  F[156]=(OFF) ;
  22:  !Warte auf keine ;
  23:  !Zutrittsanforderung ;
  24:  WAIT (DI[23] AND !DO[4038])    ;
  25:  DO[23]=(ON) ;
  26:  !START  DIAGNOSE  SP2 ;
  27:  TIMER[10]=((-6)) ;
  28:  DO[875]=(ON) ;
  29:  DO[925]=(ON) ;
  30:  WAIT (DI[875] AND DI[925] AND !DI[924] AND (!DI[944] OR F[271]) OR (TIMER[10]>=0))    ;
  31:  F[156]=(TIMER[10]>=0) ;
  32:  DO[23]=(OFF) ;
  33:  WAIT (DI[875] AND DI[925] AND !DI[924] AND (!DI[944] OR F[271]))    ;
  34:  F[156]=(OFF) ;
  35:  F[271]=(OFF) ;
  36:  DO[875]=(OFF) ;
  37:  WAIT (!DI[875] OR (TIMER[10]>=0))    ;
  38:  F[156]=(TIMER[10]>=0) ;
  39:  WAIT (!DI[875])    ;
  40:  F[156]=(OFF) ;
  41:  DO[925]=(OFF) ;
  42:  DO[161]=(OFF) ;
/POS
/END
