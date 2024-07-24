/PROG  MAKRO085
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EZ1SP1_KF_STA_ST";
PROG_SIZE	= 2080;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-27  TIME 18:30:04;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 88;
MEMORY_SIZE	= 2356;
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
   1:  !EZ1/SP1 KF  Start  stationaere ;
   2:  !KS24 ;
   3:  !Version: 02 ;
   4:  !Stand: 000 ;
   5:  !letzte  Aenderung  15.02.2016 LZ ;
   6:  !F118  =  Sammelstoerung  EZ1/SP1 ;
   7:  DO[129]=(ON) ;
   8:  DO[116]=(ON) ;
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
  28:  !E-Kompensation durch EZ/SP EIN ;
  29:  F[121]=(ON) ;
  30:  !Abfrage Energiesparmodus ist AUS ;
  31:  TIMER[10]=((-2)) ;
  32:  WAIT (!DI[706] OR (TIMER[10]>=0))    ;
  33:  F[118]=(TIMER[10]>=0) ;
  34:  WAIT (!DI[706])    ;
  35:  F[118]=(OFF) ;
  36:  TIMER[10]=((-4)) ;
  37:  !Warte keine Sammelstoerung ;
  38:  WAIT (!DI[784] OR (TIMER[10]>=0))    ;
  39:  F[118]=(TIMER[10]>=0) ;
  40:  !Fehler Reset EZ/SP ;
  41:  F[303]=(F[118] AND !DI[769] AND DI[784]) ;
  42:  !EZ1/SP1 i.O. ;
  43:  WAIT (!DI[784] OR (DI[769] AND DI[784]))    ;
  44:  F[303]=(OFF) ;
  45:  F[118]=(OFF) ;
  46:  F[288]=(OFF) ;
  47:  DO[715]=(ON) ;
  48:  !EZ1/SP1 oeffnen ;
  49:  DO[717]=(!DI[717]) ;
  50:  WAIT (DI[717] OR (TIMER[10]>=0))    ;
  51:  F[118]=(TIMER[10]>=0) ;
  52:  WAIT (DI[717])    ;
  53:  F[118]=(OFF) ;
  54:  !Programmanwahl EZ1/SP1 und SK1 ;
  55:  GO[1]=(31) ;
  56:  GO[3]=(31) ;
  57:  TIMER[10]=((-1)) ;
  58:  !Warte nicht FK ;
  59:  WAIT (!F[93] OR (TIMER[10]>=0))    ;
  60:  F[292]=(TIMER[10]>=0) ;
  61:  WAIT (!F[93])    ;
  62:  F[292]=(OFF) ;
  63:  DO[718]=(OFF) ;
  64:  TIMER[10]=((-.2)) ;
  65:  !Warte Kappensetzen durchgefuehrt ;
  66:  WAIT (F[286] OR !DI[788] OR (TIMER[10]>=0))    ;
  67:  F[118]=(TIMER[10]>=0) ;
  68:  WAIT (F[286] OR !DI[788])    ;
  69:  F[118]=(OFF) ;
  70:  WAIT (DI[23])    ;
  71:  !Anwahl N_Fraesen / S-Fraesen ;
  72:  DO[758]=(F[78] AND !F[79]) ;
  73:  DO[759]=(!F[78] AND F[79]) ;
  74:  !Abfrage KS1/KF1 nicht in Hand ;
  75:  TIMER[10]=((-2)) ;
  76:  WAIT ((!DI[839] AND !DI[847] AND F[745]) OR (TIMER[10]>=0))    ;
  77:  F[322]=(TIMER[10]>=0) ;
  78:  WAIT (!DI[839] AND !DI[847] AND F[745])    ;
  79:  F[322]=(OFF) ;
  80:  !Freigabe RSK ;
  81:  F[92]=(ON) ;
  82:  TIMER[10]=((-1)) ;
  83:  !Warte bis RSK gestartet ;
  84:  WAIT (!F[321] OR (TIMER[10]>=0))    ;
  85:  F[292]=(TIMER[10]>=0) ;
  86:  WAIT (!F[321])    ;
  87:  DO[23]=(ON) ;
  88:  F[292]=(OFF) ;
/POS
/END
