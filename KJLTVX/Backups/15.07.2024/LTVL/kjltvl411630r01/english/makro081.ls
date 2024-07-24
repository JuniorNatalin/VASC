/PROG  MAKRO081
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EZ1SP1_KAPPENW.";
PROG_SIZE	= 2656;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-27  TIME 18:30:04;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 118;
MEMORY_SIZE	= 2940;
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
   1:  !EZ1/SP1  Kappenwechsel ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 003 ;
   5:  !letzte  Aenderung  08.11.2016 LZ ;
   6:  !F118  =  Sammelstoerung  EZ1/SP1 ;
   7:  !F119  =  Sammelstoerung  SK1  an ;
   8:  DO[129]=(ON) ;
   9:  !EZ1/SP1 FzgTyp ruecksetzen ;
  10:  DO[777]=(OFF) ;
  11:  DO[778]=(OFF) ;
  12:  DO[779]=(OFF) ;
  13:  DO[780]=(OFF) ;
  14:  DO[781]=(OFF) ;
  15:  DO[782]=(OFF) ;
  16:  DO[783]=(OFF) ;
  17:  DO[784]=(OFF) ;
  18:  !SK1 FzgTyp ruecksetzen ;
  19:  DO[817]=(OFF) ;
  20:  DO[818]=(OFF) ;
  21:  DO[819]=(OFF) ;
  22:  DO[820]=(OFF) ;
  23:  DO[821]=(OFF) ;
  24:  DO[822]=(OFF) ;
  25:  DO[823]=(OFF) ;
  26:  DO[824]=(OFF) ;
  27:  WAIT    .20(sec) ;
  28:  !Abfrage Energiesparmodus ist AUS ;
  29:  TIMER[10]=((-2)) ;
  30:  WAIT (!DI[706] OR (TIMER[10]>=0))    ;
  31:  F[118]=(TIMER[10]>=0) ;
  32:  WAIT (!DI[706])    ;
  33:  F[118]=(OFF) ;
  34:  TIMER[10]=((-2)) ;
  35:  WAIT (!DI[784] OR (TIMER[10]>=0))    ;
  36:  F[118]=(TIMER[10]>=0) ;
  37:  F[303]=(F[118] AND !DI[769] AND DI[784]) ;
  38:  !EZ1/SP1 i.O. ;
  39:  WAIT (!DI[784] OR (DI[769] AND DI[784]) OR (DI[777] AND DI[784]) OR (DI[778] AND DI[784]))    ;
  40:  F[303]=(OFF) ;
  41:  F[118]=(OFF) ;
  42:  DO[715]=(ON) ;
  43:  !Anwahl SZ ;
  44:  IF (F[64]),GO[3]=(1) ;
  45:  IF (F[65]),GO[3]=(2) ;
  46:  IF (F[66]),GO[3]=(3) ;
  47:  IF (F[67]),GO[3]=(4) ;
  48:  WAIT    .20(sec) ;
  49:  DO[787]=(ON) ;
  50:  WAIT    .20(sec) ;
  51:  TIMER[10]=((-2)) ;
  52:  WAIT (((DI[788] AND !F[129]) OR (!DI[788] AND F[129])) OR (TIMER[10]>=0))    ;
  53:  F[119]=(TIMER[10]>=0) ;
  54:  WAIT ((DI[788] AND !F[129]) OR (!DI[788] AND F[129]))    ;
  55:  F[119]=(OFF) ;
  56:  DO[787]=(OFF) ;
  57:  DO[755]=(ON) ;
  58:  DO[758]=(ON) ;
  59:  WAIT    .20(sec) ;
  60:  !Anwahl Programm EZ1/SP1 und SK1 ;
  61:  IF (F[64]),GO[1]=(21) ;
  62:  IF (F[65]),GO[1]=(22) ;
  63:  IF (F[66]),GO[1]=(23) ;
  64:  IF (F[67]),GO[1]=(24) ;
  65:  GO[2]=(0) ;
  66:  IF (F[64]),GO[3]=(21) ;
  67:  IF (F[65]),GO[3]=(22) ;
  68:  IF (F[66]),GO[3]=(23) ;
  69:  IF (F[67]),GO[3]=(24) ;
  70:  WAIT    .20(sec) ;
  71:  WAIT (DI[23])    ;
  72:  DO[23]=(ON) ;
  73:  DO[717]=(OFF) ;
  74:  DO[718]=(ON) ;
  75:  TIMER[10]=((-6)) ;
  76:  !Warte EZ1/SP1 geschlossen ;
  77:  WAIT (!DI[717] AND DI[718] OR (TIMER[10]>=0))    ;
  78:  F[118]=(TIMER[10]>=0) ;
  79:  DO[23]=(OFF) ;
  80:  WAIT (!DI[717] AND DI[718])    ;
  81:  F[118]=(OFF) ;
  82:  DO[718]=(OFF) ;
  83:  WAIT    .10(sec) ;
  84:  DO[717]=(ON) ;
  85:  TIMER[10]=((-2)) ;
  86:  !Warte EZ1/SP1 offen ;
  87:  WAIT ((DI[717] AND !DI[718] AND DI[719]) OR (TIMER[10]>=0))    ;
  88:  F[118]=(TIMER[10]>=0) ;
  89:  WAIT (DI[717] AND !DI[718] AND DI[719])    ;
  90:  F[118]=(OFF) ;
  91:  DO[717]=(OFF) ;
  92:  WAIT    .20(sec) ;
  93:  WAIT (DI[23])    ;
  94:  DO[23]=(ON) ;
  95:  DO[756]=(ON) ;
  96:  TIMER[10]=((-10)) ;
  97:  !Warte Kappenwechsel i.O. ;
  98:  WAIT ((DI[755] AND DI[757] AND !DI[784]) OR (TIMER[10]>=0))    ;
  99:  F[118]=(TIMER[10]>=0) ;
 100:  DO[23]=(OFF) ;
 101:  !Fehler beim Messen ;
 102:  WAIT ((DI[755] AND DI[757] AND !DI[784]) OR DI[26])    ;
 103:  F[85]=(DI[26]) ;
 104:  F[118]=(OFF) ;
 105:  DO[755]=(OFF) ;
 106:  DO[756]=(OFF) ;
 107:  DO[758]=(OFF) ;
 108:  !Kappengewechselt ;
 109:  F[77]=(!F[85]) ;
 110:  !Kappensetzen durchgefuehrt ;
 111:  F[286]=(F[77]) ;
 112:  TIMER[10]=((-2)) ;
 113:  DO[715]=(OFF) ;
 114:  WAIT (!DI[715] OR (TIMER[10]>=0))    ;
 115:  F[118]=(TIMER[10]>=0) ;
 116:  WAIT (!DI[715])    ;
 117:  F[118]=(OFF) ;
 118:  DO[129]=(OFF) ;
/POS
/END
