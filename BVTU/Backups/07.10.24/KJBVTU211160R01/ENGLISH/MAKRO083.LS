/PROG  MAKRO083
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "MESSENDE_ROB_SZ";
PROG_SIZE	= 1844;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-04-01  TIME 11:17:22;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 74;
MEMORY_SIZE	= 2184;
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
   1:  !EZ1/SP1  Messen  Ende  Roboter ;
   2:  !KS24 ;
   3:  !Version: 02 ;
   4:  !Stand: 002 ;
   5:  !letzte  Aenderung  11.03.2015 DB ;
   6:  !F118  =  Sammelstoerung  EZ1/SP1 ;
   7:  !EZ1/SP1 FzgTyp ruecksetzen ;
   8:  DO[777]=(OFF) ;
   9:  DO[778]=(OFF) ;
  10:  DO[779]=(OFF) ;
  11:  DO[780]=(OFF) ;
  12:  DO[781]=(OFF) ;
  13:  DO[782]=(OFF) ;
  14:  DO[783]=(OFF) ;
  15:  DO[784]=(OFF) ;
  16:  !SK1 FzgTyp ruecksetzen ;
  17:  DO[817]=(OFF) ;
  18:  DO[818]=(OFF) ;
  19:  DO[819]=(OFF) ;
  20:  DO[820]=(OFF) ;
  21:  DO[821]=(OFF) ;
  22:  DO[822]=(OFF) ;
  23:  DO[823]=(OFF) ;
  24:  DO[824]=(OFF) ;
  25:  WAIT    .20(sec) ;
  26:  !Abfrage Energiesparmodus ist AUS ;
  27:  TIMER[10]=((-2)) ;
  28:  WAIT (!DI[706] OR (TIMER[10]>=0))    ;
  29:  F[118]=(TIMER[10]>=0) ;
  30:  WAIT (!DI[706])    ;
  31:  F[118]=(OFF) ;
  32:  TIMER[10]=((-6)) ;
  33:  !Warte Messen beendet ;
  34:  WAIT (DI[757] OR (TIMER[10]>=0))    ;
  35:  F[118]=(TIMER[10]>=0) ;
  36:  WAIT (DI[757] OR DI[26])    ;
  37:  F[118]=(OFF) ;
  38:  F[85]=(DI[776] OR DI[26]) ;
  39:  DO[757]=(OFF) ;
  40:  !EZ in Schleppfehlertoleranz ;
  41:  F[742]=((GI[31]>=(GO[31]-140)) AND (GI[31]<=(GO[31]+140))) ;
  42:  DO[717]=(!F[742]) ;
  43:  WAIT (!F[742] AND !DI[717] OR F[742] OR (TIMER[10]>=0))    ;
  44:  F[118]=(TIMER[10]>=0) ;
  45:  WAIT (!F[742] AND !DI[717] OR F[742])    ;
  46:  F[118]=(OFF) ;
  47:  WAIT (!F[742] AND DI[717] OR F[742] OR (TIMER[10]>=0))    ;
  48:  F[118]=(TIMER[10]>=0) ;
  49:  WAIT (!F[742] AND DI[717] OR F[742])    ;
  50:  F[118]=(OFF) ;
  51:  DO[717]=(OFF) ;
  52:  !Fehler Kappenverschleiss ;
  53:  F[86]=((DI[736] AND !F[692]) OR (DI[735] AND DI[734] AND DI[732]) OR DI[777]) ;
  54:  F[298]=(F[85] AND !F[86]) ;
  55:  DO[717]=(!DI[717]) ;
  56:  TIMER[10]=((-2)) ;
  57:  !EZ1/SP1 i.O. ;
  58:  WAIT ((DI[717] AND !DI[784]) OR (DI[717] AND F[298]) OR (DI[717] AND F[86]) OR (TIMER[10]>=0))    ;
  59:  F[118]=(TIMER[10]>=0) ;
  60:  WAIT ((DI[717] AND !DI[784]) OR (DI[717] AND F[298]) OR (DI[717] AND F[86]))    ;
  61:  F[118]=(OFF) ;
  62:  DO[717]=(OFF) ;
  63:  DO[758]=(OFF) ;
  64:  DO[759]=(OFF) ;
  65:  DO[715]=(OFF) ;
  66:  TIMER[10]=((-2)) ;
  67:  WAIT (!DI[715] OR (TIMER[10]>=0))    ;
  68:  F[118]=(TIMER[10]>=0) ;
  69:  WAIT (!DI[715])    ;
  70:  F[118]=(OFF) ;
  71:  !PR Robotergefuehrte EZ/SP ;
  72:  CALL MOTN003    ;
  73:  DO[116]=(OFF) ;
  74:  DO[130]=(OFF) ;
/POS
/END
