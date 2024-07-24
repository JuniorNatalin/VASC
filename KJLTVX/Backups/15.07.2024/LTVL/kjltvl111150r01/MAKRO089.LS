/PROG  MAKRO089
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "SP1_Diagnosefunk";
PROG_SIZE	= 1196;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-27  TIME 17:07:06;
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
    :  !SP1_Diagnosefunktion ;
    :  !KS24 ;
    :  !Version: 02 ;
    :  !Stand: 000 ;
    :  !letzte  Aenderung 19.01.2017 LZ ;
    :  !F118 = Sammelstoerung SP1 an BMS ;
    :  !Abfrage Energiesparmodus ist AUS ;
    :  DO[129]=(ON) ;
    :  F[271]=(OFF) ;
    :  TIMER[10]=((-2)) ;
    :  WAIT (!DI[706] OR (TIMER[10]>=0))    ;
    :  F[118]=(TIMER[10]>=0) ;
    :  WAIT (!DI[706])    ;
    :  F[118]=(OFF) ;
    :  !Auswertung EZ1/SP1 i.O. ;
    :  TIMER[10]=((-2)) ;
    :  F[271]=(DI[784] AND (DI[777] OR DI[778])) ;
    :  WAIT (DI[705] AND DI[713] AND DI[714] AND (!DI[784] OR (DI[769] AND DI[784]) OR (DI[764] AND DI[784]) OR F[271]) OR (TIMER[10]>=0))    ;
    :  F[118]=(TIMER[10]>=0) ;
    :  WAIT (DI[705] AND DI[713] AND DI[714] AND (!DI[784] OR (DI[769] AND DI[784]) OR (DI[764] AND DI[784]) OR F[271]))    ;
    :  F[118]=(OFF) ;
    :  !Warte auf keine ;
    :  !Zutrittsanforderung ;
    :  WAIT (DI[23] AND !DO[4038])    ;
    :  DO[23]=(ON) ;
    :  !START  DIAGNOSE  SP1 ;
    :  TIMER[10]=((-6)) ;
    :  DO[715]=(ON) ;
    :  DO[765]=(ON) ;
    :  WAIT (DI[715] AND DI[765] AND !DI[764] AND (!DI[784] OR F[271]) OR (TIMER[10]>=0))    ;
    :  F[118]=(TIMER[10]>=0) ;
    :  DO[23]=(OFF) ;
    :  WAIT (DI[715] AND DI[765] AND !DI[764] AND (!DI[784] OR F[271]))    ;
    :  F[118]=(OFF) ;
    :  F[271]=(OFF) ;
    :  DO[715]=(OFF) ;
    :  TIMER[10]=((-2)) ;
    :  WAIT (!DI[715] OR (TIMER[10]>=0))    ;
    :  F[118]=((TIMER[10]>=0)) ;
    :  WAIT (!DI[715])    ;
    :  F[118]=(OFF) ;
    :  DO[765]=(OFF) ;
    :  DO[129]=(OFF) ;
/POS
/END
