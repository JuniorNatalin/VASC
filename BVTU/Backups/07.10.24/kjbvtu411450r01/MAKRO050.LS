/PROG  MAKRO050
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Merkerbildung";
PROG_SIZE	= 2142;
CREATE		= DATE 00-03-13  TIME 16:56:34;
MODIFIED	= DATE 18-09-19  TIME 17:14:54;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 85;
MEMORY_SIZE	= 2454;
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
   1:  !KS PUENTEADO ;
   2:  !Merker-Init ;
   3:  !Roboter mit Greifer. ;
   4:  !Sta. EZ ohne KW. ;
   5:  ! ;
   6:  !Abfrage Bauteilkontrollen ;
   7:  M[1]=((DI[605] AND DI[607]) OR DI[15]) ;
   8:  M[2]=(!DI[605] AND !DI[607]) ;
   9:  ! ;
  10:  !Abfrage Spanngruppen ;
  11:  M[31]=(DI[579] AND !DI[580] AND DI[581] AND !DI[582] AND DI[583] AND !DI[584] AND DI[585] AND !DI[586]) ;
  12:  M[32]=(!DI[579] AND DI[580] AND !DI[581] AND DI[582] AND !DI[583] AND DI[584] AND !DI[585] AND DI[586]) ;
  13:  M[33]=(DI[587] AND !DI[588]) ;
  14:  M[34]=(!DI[587] AND DI[588]) ;
  15:  M[35]=(!DI[589] AND DI[590]) ;
  16:  M[36]=(DI[589] AND !DI[590]) ;
  17:  M[37]=(OFF) ;
  18:  M[38]=(OFF) ;
  19:  M[39]=(OFF) ;
  20:  M[40]=(OFF) ;
  21:  M[41]=(OFF) ;
  22:  M[42]=(OFF) ;
  23:  M[43]=(OFF) ;
  24:  M[44]=(OFF) ;
  25:  M[45]=(OFF) ;
  26:  M[46]=(OFF) ;
  27:  M[47]=(OFF) ;
  28:  M[48]=(OFF) ;
  29:  M[49]=(OFF) ;
  30:  M[50]=(OFF) ;
  31:  M[51]=(OFF) ;
  32:  M[52]=(OFF) ;
  33:  M[53]=(OFF) ;
  34:  M[54]=(OFF) ;
  35:  M[55]=(OFF) ;
  36:  M[56]=(OFF) ;
  37:  M[57]=(OFF) ;
  38:  M[58]=(OFF) ;
  39:  M[59]=(OFF) ;
  40:  M[60]=(OFF) ;
  41:  M[61]=(OFF) ;
  42:  M[62]=(OFF) ;
  43:  M[63]=(OFF) ;
  44:  M[64]=(OFF) ;
  45:  M[65]=(OFF) ;
  46:  M[66]=(OFF) ;
  47:  M[67]=(OFF) ;
  48:  M[68]=(OFF) ;
  49:  ! ;
  50:  !Maschinelle Sicherheiten ;
  51:  !mit Niederdruck ueberwachung ;
  52:  M[30]=(DI[14] AND DI[24] AND DI[516]) ;
  53:  ! ;
  54:  !Widerstandspunktschweissen ;
  55:  !Sicherheiten EZ1/SP1 ;
  56:  M[95]=(DI[705] AND !DI[706] AND DI[713] AND DI[714] AND ((!DI[715] AND DI[719]) OR DO[715]) AND !DI[773] AND !DI[779] AND DO[716]) ;
  57:  !Grundstellung KS1 ;
  58:  M[96]=(DI[842] AND !DI[844] AND !DI[843] AND DI[845] AND !DO[715] AND (F[321] OR (DO[875] AND F[148]) OR (DO[1035] AND F[184]))) ;
  59:  !Flankenausw.der Fraeserumd.KF1 ;
  60:  M[97]=((DI[718] AND DO[718] OR F[312]) AND DI[834] AND DO[834] AND !F[72] AND !F[73] AND (F[90] OR F[92])) ;
  61:  ! ;
  62:  !EZ1/SP1/SZ1 Umdrehungen Startfr ;
  63:  R[2]=4    ;
  64:  !Umdrehungen Startfraesen Teil 2 ;
  65:  R[3]=4    ;
  66:  !Umdrehungen Nomalfraesen ;
  67:  R[4]=5    ;
  68:  !min. Oeffnung stat. EZ/SP ;
  69:  !beim Fraesen ;
  70:  R[60]=600    ;
  71:  ! ;
  72:  !;Ausgleichswert EZ1/SP1 ;
  73:  R[197]=114    ;
  74:  !Kappenverschl. Verhaeltnis ;
  75:  !feste EK in % (Stat-EZ1) ;
  76:  R[411]=65    ;
  77:   ;
  78:  !Kappenkompenstion bei ;
  79:  !stationaerer EZ1/SP1 ;
  80:  CALL MOTN004    ;
  81:  ! ;
  82:  !Aufruf Makro57 ;
  83:  CALL MAKRO057    ;
  84:  !Llamar Inicializar Docking ;
  85:  CALL MAKRO058    ;
/POS
/END
