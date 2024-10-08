/PROG  MAKRO083
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "MESSENDE_ROB_SZ";
PROG_GRÖßE	= 1844;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-04-01  ZEIT 11:17:22;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 74;
SPEICHERGR.	= 2184;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 0,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= *,*,*,*,*;
KONTROLLCODE	= 00000000 00000000;
/MN
   1:  !EZ1/SP1  Messen  Ende  Roboter ;
   2:  !KS24 ;
   3:  !Version: 02 ;
   4:  !Stand: 002 ;
   5:  !letzte  Aenderung  11.03.2015 DB ;
   6:  !F118  =  Sammelstoerung  EZ1/SP1 ;
   7:  !EZ1/SP1 FzgTyp ruecksetzen ;
   8:  A[777]=(AUS) ;
   9:  A[778]=(AUS) ;
  10:  A[779]=(AUS) ;
  11:  A[780]=(AUS) ;
  12:  A[781]=(AUS) ;
  13:  A[782]=(AUS) ;
  14:  A[783]=(AUS) ;
  15:  A[784]=(AUS) ;
  16:  !SK1 FzgTyp ruecksetzen ;
  17:  A[817]=(AUS) ;
  18:  A[818]=(AUS) ;
  19:  A[819]=(AUS) ;
  20:  A[820]=(AUS) ;
  21:  A[821]=(AUS) ;
  22:  A[822]=(AUS) ;
  23:  A[823]=(AUS) ;
  24:  A[824]=(AUS) ;
  25:  WARTE    .20(sec) ;
  26:  !Abfrage Energiesparmodus ist AUS ;
  27:  TIMER[10]=((-2)) ;
  28:  WARTE (!E[706] [+] (TIMER[10]>=0))    ;
  29:  F[118]=(TIMER[10]>=0) ;
  30:  WARTE (!E[706])    ;
  31:  F[118]=(AUS) ;
  32:  TIMER[10]=((-6)) ;
  33:  !Warte Messen beendet ;
  34:  WARTE (E[757] [+] (TIMER[10]>=0))    ;
  35:  F[118]=(TIMER[10]>=0) ;
  36:  WARTE (E[757] [+] E[26])    ;
  37:  F[118]=(AUS) ;
  38:  F[85]=(E[776] [+] E[26]) ;
  39:  A[757]=(AUS) ;
  40:  !EZ in Schleppfehlertoleranz ;
  41:  F[742]=((gE[31]>=(gA[31]-140)) [&] (gE[31]<=(gA[31]+140))) ;
  42:  A[717]=(!F[742]) ;
  43:  WARTE (!F[742] [&] !E[717] [+] F[742] [+] (TIMER[10]>=0))    ;
  44:  F[118]=(TIMER[10]>=0) ;
  45:  WARTE (!F[742] [&] !E[717] [+] F[742])    ;
  46:  F[118]=(AUS) ;
  47:  WARTE (!F[742] [&] E[717] [+] F[742] [+] (TIMER[10]>=0))    ;
  48:  F[118]=(TIMER[10]>=0) ;
  49:  WARTE (!F[742] [&] E[717] [+] F[742])    ;
  50:  F[118]=(AUS) ;
  51:  A[717]=(AUS) ;
  52:  !Fehler Kappenverschleiss ;
  53:  F[86]=((E[736] [&] !F[692]) [+] (E[735] [&] E[734] [&] E[732]) [+] E[777]) ;
  54:  F[298]=(F[85] [&] !F[86]) ;
  55:  A[717]=(!E[717]) ;
  56:  TIMER[10]=((-2)) ;
  57:  !EZ1/SP1 i.O. ;
  58:  WARTE ((E[717] [&] !E[784]) [+] (E[717] [&] F[298]) [+] (E[717] [&] F[86]) [+] (TIMER[10]>=0))    ;
  59:  F[118]=(TIMER[10]>=0) ;
  60:  WARTE ((E[717] [&] !E[784]) [+] (E[717] [&] F[298]) [+] (E[717] [&] F[86]))    ;
  61:  F[118]=(AUS) ;
  62:  A[717]=(AUS) ;
  63:  A[758]=(AUS) ;
  64:  A[759]=(AUS) ;
  65:  A[715]=(AUS) ;
  66:  TIMER[10]=((-2)) ;
  67:  WARTE (!E[715] [+] (TIMER[10]>=0))    ;
  68:  F[118]=(TIMER[10]>=0) ;
  69:  WARTE (!E[715])    ;
  70:  F[118]=(AUS) ;
  71:  !PR Robotergefuehrte EZ/SP ;
  72:  AUFRUF MOTN003    ;
  73:  A[116]=(AUS) ;
  74:  A[130]=(AUS) ;
/POS
/END
