/PROG  MAKRO085
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "EZ1SP1_KF_STA_ST";
PROG_GR��E	= 2080;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GE�NDERT	= TAG 17-03-27  ZEIT 18:30:04;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 88;
SPEICHERGR.	= 2356;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GR��E	= 0,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= *,*,*,*,*;
KONTROLLCODE	= 00000000 00000000;
/MN
   1:  !EZ1/SP1 KF  Start  stationaere ;
   2:  !KS24 ;
   3:  !Version: 02 ;
   4:  !Stand: 000 ;
   5:  !letzte  Aenderung  15.02.2016 LZ ;
   6:  !F118  =  Sammelstoerung  EZ1/SP1 ;
   7:  A[129]=(AN) ;
   8:  A[116]=(AN) ;
   9:  !EZ1/SP1 FzgTyp ruecksetzen ;
  10:  A[777]=(AUS) ;
  11:  A[778]=(AUS) ;
  12:  A[779]=(AUS) ;
  13:  A[780]=(AUS) ;
  14:  A[781]=(AUS) ;
  15:  A[782]=(AUS) ;
  16:  A[783]=(AUS) ;
  17:  A[784]=(AUS) ;
  18:  !SK1 FzgTyp ruecksetzen ;
  19:  A[817]=(AUS) ;
  20:  A[818]=(AUS) ;
  21:  A[819]=(AUS) ;
  22:  A[820]=(AUS) ;
  23:  A[821]=(AUS) ;
  24:  A[822]=(AUS) ;
  25:  A[823]=(AUS) ;
  26:  A[824]=(AUS) ;
  27:  WARTE    .20(sec) ;
  28:  !E-Kompensation durch EZ/SP EIN ;
  29:  F[121]=(AN) ;
  30:  !Abfrage Energiesparmodus ist AUS ;
  31:  TIMER[10]=((-2)) ;
  32:  WARTE (!E[706] [+] (TIMER[10]>=0))    ;
  33:  F[118]=(TIMER[10]>=0) ;
  34:  WARTE (!E[706])    ;
  35:  F[118]=(AUS) ;
  36:  TIMER[10]=((-4)) ;
  37:  !Warte keine Sammelstoerung ;
  38:  WARTE (!E[784] [+] (TIMER[10]>=0))    ;
  39:  F[118]=(TIMER[10]>=0) ;
  40:  !Fehler Reset EZ/SP ;
  41:  F[303]=(F[118] [&] !E[769] [&] E[784]) ;
  42:  !EZ1/SP1 i.O. ;
  43:  WARTE (!E[784] [+] (E[769] [&] E[784]))    ;
  44:  F[303]=(AUS) ;
  45:  F[118]=(AUS) ;
  46:  F[288]=(AUS) ;
  47:  A[715]=(AN) ;
  48:  !EZ1/SP1 oeffnen ;
  49:  A[717]=(!E[717]) ;
  50:  WARTE (E[717] [+] (TIMER[10]>=0))    ;
  51:  F[118]=(TIMER[10]>=0) ;
  52:  WARTE (E[717])    ;
  53:  F[118]=(AUS) ;
  54:  !Programmanwahl EZ1/SP1 und SK1 ;
  55:  gA[1]=(31) ;
  56:  gA[3]=(31) ;
  57:  TIMER[10]=((-1)) ;
  58:  !Warte nicht FK ;
  59:  WARTE (!F[93] [+] (TIMER[10]>=0))    ;
  60:  F[292]=(TIMER[10]>=0) ;
  61:  WARTE (!F[93])    ;
  62:  F[292]=(AUS) ;
  63:  A[718]=(AUS) ;
  64:  TIMER[10]=((-.2)) ;
  65:  !Warte Kappensetzen durchgefuehrt ;
  66:  WARTE (F[286] [+] !E[788] [+] (TIMER[10]>=0))    ;
  67:  F[118]=(TIMER[10]>=0) ;
  68:  WARTE (F[286] [+] !E[788])    ;
  69:  F[118]=(AUS) ;
  70:  WARTE (E[23])    ;
  71:  !Anwahl N_Fraesen / S-Fraesen ;
  72:  A[758]=(F[78] [&] !F[79]) ;
  73:  A[759]=(!F[78] [&] F[79]) ;
  74:  !Abfrage KS1/KF1 nicht in Hand ;
  75:  TIMER[10]=((-2)) ;
  76:  WARTE ((!E[839] [&] !E[847] [&] F[745]) [+] (TIMER[10]>=0))    ;
  77:  F[322]=(TIMER[10]>=0) ;
  78:  WARTE (!E[839] [&] !E[847] [&] F[745])    ;
  79:  F[322]=(AUS) ;
  80:  !Freigabe RSK ;
  81:  F[92]=(AN) ;
  82:  TIMER[10]=((-1)) ;
  83:  !Warte bis RSK gestartet ;
  84:  WARTE (!F[321] [+] (TIMER[10]>=0))    ;
  85:  F[292]=(TIMER[10]>=0) ;
  86:  WARTE (!F[321])    ;
  87:  A[23]=(AN) ;
  88:  F[292]=(AUS) ;
/POS
/END
