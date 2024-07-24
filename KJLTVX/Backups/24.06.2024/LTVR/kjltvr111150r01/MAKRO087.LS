/PROG  MAKRO087
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EZ1_RESET_REF";
PROG_SIZE	= 1422;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-31  TIME 10:49:52;
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
   1:  !EZ1/SP1  Kappensetzen  2 ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  10.03.2015 CB ;
   6:  !F118  =  Sammelstoerung  EZ1/SP1 ;
   7:  DO[129]=(ON) ;
   8:  TIMER[10]=((-2)) ;
   9:  WAIT (!DI[784] OR (TIMER[10]>=0))    ;
  10:  F[118]=(TIMER[10]>=0) ;
  11:  F[303]=(F[118] AND !DI[769] AND DI[784]) ;
  12:  !EZ1/SP1 i.O. ;
  13:  WAIT (!DI[784] OR (DI[769] AND DI[784]) OR (DI[777] AND DI[784]))    ;
  14:  F[303]=(OFF) ;
  15:  F[118]=(OFF) ;
  16:  DO[715]=(ON) ;
  17:  !FRG Kompensation AH ;
  18:  F[290]=(ON) ;
  19:  !Anwahl Programm EZ1/SP1 und SK1 ;
  20:  IF (F[64]),GO[1]=(61) ;
  21:  IF (F[65]),GO[1]=(62) ;
  22:  IF (F[66]),GO[1]=(63) ;
  23:  IF (F[67]),GO[1]=(64) ;
  24:  GO[1]=(0) ;
  25:  IF (F[64]),GO[3]=(61) ;
  26:  IF (F[65]),GO[3]=(62) ;
  27:  IF (F[66]),GO[3]=(63) ;
  28:  IF (F[67]),GO[3]=(64) ;
  29:  WAIT    .20(sec) ;
  30:  WAIT (DI[23])    ;
  31:  DO[23]=(ON) ;
  32:  DO[717]=(OFF) ;
  33:  DO[718]=(ON) ;
  34:  TIMER[10]=((-6)) ;
  35:  !Warte EZ1/SP1 geschlossen ;
  36:  WAIT ((!DI[717] AND DI[718]) OR (TIMER[10]>=0))    ;
  37:  F[118]=(TIMER[10]>=0) ;
  38:  DO[23]=(OFF) ;
  39:  WAIT (!DI[717] AND DI[718])    ;
  40:  F[118]=(OFF) ;
  41:  DO[718]=(OFF) ;
  42:  WAIT    .10(sec) ;
  43:  DO[718]=(ON) ;
  44:  TIMER[10]=((-2)) ;
  45:  !Warte EZ1/SP1 offen ;
  46:  WAIT ((DI[717] AND !DI[718] AND DI[719]) OR (TIMER[10]>=0))    ;
  47:  F[118]=(TIMER[10]>=0) ;
  48:  WAIT (DI[717] AND !DI[718] AND DI[719])    ;
  49:  F[118]=(OFF) ;
  50:  DO[717]=(OFF) ;
  51:  TIMER[10]=((-2)) ;
  52:  DO[715]=(OFF) ;
  53:  WAIT (!DI[715] OR (TIMER[10]>=0))    ;
  54:  F[118]=(TIMER[10]>=0) ;
  55:  WAIT (!DI[715])    ;
  56:  F[118]=(OFF) ;
  57:  WAIT (DI[23])    ;
  58:  DO[23]=(ON) ;
  59:  DO[129]=(OFF) ;
/POS
/END
