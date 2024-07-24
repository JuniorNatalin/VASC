/PROG  MAKRO089
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "SP1_Diagnosefunk";
PROG_SIZE	= 1196;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-31  TIME 10:49:52;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 43;
MEMORY_SIZE	= 1524;
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
   1:  !SP1_Diagnosefunktion ;
   2:  !KS24 ;
   3:  !Version: 02 ;
   4:  !Stand: 000 ;
   5:  !letzte  Aenderung 19.01.2017 LZ ;
   6:  !F118 = Sammelstoerung SP1 an BMS ;
   7:  !Abfrage Energiesparmodus ist AUS ;
   8:  DO[129]=(ON) ;
   9:  F[271]=(OFF) ;
  10:  TIMER[10]=((-2)) ;
  11:  WAIT (!DI[706] OR (TIMER[10]>=0))    ;
  12:  F[118]=(TIMER[10]>=0) ;
  13:  WAIT (!DI[706])    ;
  14:  F[118]=(OFF) ;
  15:  !Auswertung EZ1/SP1 i.O. ;
  16:  TIMER[10]=((-2)) ;
  17:  F[271]=(DI[784] AND (DI[777] OR DI[778])) ;
  18:  WAIT (DI[705] AND DI[713] AND DI[714] AND (!DI[784] OR (DI[769] AND DI[784]) OR (DI[764] AND DI[784]) OR F[271]) OR (TIMER[10]>=0))    ;
  19:  F[118]=(TIMER[10]>=0) ;
  20:  WAIT (DI[705] AND DI[713] AND DI[714] AND (!DI[784] OR (DI[769] AND DI[784]) OR (DI[764] AND DI[784]) OR F[271]))    ;
  21:  F[118]=(OFF) ;
  22:  !Warte auf keine ;
  23:  !Zutrittsanforderung ;
  24:  WAIT (DI[23] AND !DO[4038])    ;
  25:  DO[23]=(ON) ;
  26:  !START  DIAGNOSE  SP1 ;
  27:  TIMER[10]=((-6)) ;
  28:  DO[715]=(ON) ;
  29:  DO[765]=(ON) ;
  30:  WAIT (DI[715] AND DI[765] AND !DI[764] AND (!DI[784] OR F[271]) OR (TIMER[10]>=0))    ;
  31:  F[118]=(TIMER[10]>=0) ;
  32:  DO[23]=(OFF) ;
  33:  WAIT (DI[715] AND DI[765] AND !DI[764] AND (!DI[784] OR F[271]))    ;
  34:  F[118]=(OFF) ;
  35:  F[271]=(OFF) ;
  36:  DO[715]=(OFF) ;
  37:  TIMER[10]=((-2)) ;
  38:  WAIT (!DI[715] OR (TIMER[10]>=0))    ;
  39:  F[118]=((TIMER[10]>=0)) ;
  40:  WAIT (!DI[715])    ;
  41:  F[118]=(OFF) ;
  42:  DO[765]=(OFF) ;
  43:  DO[129]=(OFF) ;
/POS
/END
