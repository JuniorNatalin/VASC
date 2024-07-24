/PROG  MAKRO087
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EZ1_RESET_REF";
PROG_SIZE	= 1422;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-27  TIME 17:07:06;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 59;
MEMORY_SIZE	= 1686;
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
    :  !EZ1/SP1  Kappensetzen  2 ;
    :  !KS24 ;
    :  !Version: 01 ;
    :  !Stand: 001 ;
    :  !letzte  Aenderung  10.03.2015 CB ;
    :  !F118  =  Sammelstoerung  EZ1/SP1 ;
    :  DO[129]=(ON) ;
    :  TIMER[10]=((-2)) ;
    :  WAIT (!DI[784] OR (TIMER[10]>=0))    ;
    :  F[118]=(TIMER[10]>=0) ;
    :  F[303]=(F[118] AND !DI[769] AND DI[784]) ;
    :  !EZ1/SP1 i.O. ;
    :  WAIT (!DI[784] OR (DI[769] AND DI[784]) OR (DI[777] AND DI[784]))    ;
    :  F[303]=(OFF) ;
    :  F[118]=(OFF) ;
    :  DO[715]=(ON) ;
    :  !FRG Kompensation AH ;
    :  F[290]=(ON) ;
    :  !Anwahl Programm EZ1/SP1 und SK1 ;
    :  IF (F[64]),GO[1]=(61) ;
    :  IF (F[65]),GO[1]=(62) ;
    :  IF (F[66]),GO[1]=(63) ;
    :  IF (F[67]),GO[1]=(64) ;
    :  GO[1]=(0) ;
    :  IF (F[64]),GO[3]=(61) ;
    :  IF (F[65]),GO[3]=(62) ;
    :  IF (F[66]),GO[3]=(63) ;
    :  IF (F[67]),GO[3]=(64) ;
    :  WAIT    .20(sec) ;
    :  WAIT (DI[23])    ;
    :  DO[23]=(ON) ;
    :  DO[717]=(OFF) ;
    :  DO[718]=(ON) ;
    :  TIMER[10]=((-6)) ;
    :  !Warte EZ1/SP1 geschlossen ;
    :  WAIT ((!DI[717] AND DI[718]) OR (TIMER[10]>=0))    ;
    :  F[118]=(TIMER[10]>=0) ;
    :  DO[23]=(OFF) ;
    :  WAIT (!DI[717] AND DI[718])    ;
    :  F[118]=(OFF) ;
    :  DO[718]=(OFF) ;
    :  WAIT    .10(sec) ;
    :  DO[718]=(ON) ;
    :  TIMER[10]=((-2)) ;
    :  !Warte EZ1/SP1 offen ;
    :  WAIT ((DI[717] AND !DI[718] AND DI[719]) OR (TIMER[10]>=0))    ;
    :  F[118]=(TIMER[10]>=0) ;
    :  WAIT (DI[717] AND !DI[718] AND DI[719])    ;
    :  F[118]=(OFF) ;
    :  DO[717]=(OFF) ;
    :  TIMER[10]=((-2)) ;
    :  DO[715]=(OFF) ;
    :  WAIT (!DI[715] OR (TIMER[10]>=0))    ;
    :  F[118]=(TIMER[10]>=0) ;
    :  WAIT (!DI[715])    ;
    :  F[118]=(OFF) ;
    :  WAIT (DI[23])    ;
    :  DO[23]=(ON) ;
    :  DO[129]=(OFF) ;
/POS
/END
