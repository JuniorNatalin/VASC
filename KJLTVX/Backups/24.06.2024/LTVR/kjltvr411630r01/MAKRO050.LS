/PROG  MAKRO050
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Merkerbildung";
PROG_SIZE	= 2128;
CREATE		= DATE 00-03-13  TIME 16:56:34;
MODIFIED	= DATE 24-05-15  TIME 07:31:44;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 84;
MEMORY_SIZE	= 2444;
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
   1:  !Merker-Init ;
   2:  !Roboter mit Greifer. ;
   3:  !Sta. EZ ohne KW. ;
   4:  ! ;
   5:  !Abfrage Bauteilkontrollen ;
   6:  M[1]=((DI[606] AND DI[607]) OR DI[15]) ;
   7:  M[2]=(!DI[606] AND !DI[607]) ;
   8:  ! ;
   9:  !Abfrage Spanngruppen ;
  10:  M[31]=(DI[579] AND !DI[580] AND DI[581] AND !DI[582] AND DI[583] AND !DI[584] AND DI[585] AND !DI[586] AND DI[587] AND !DI[588]) ;
  11:  M[32]=(!DI[579] AND DI[580] AND !DI[581] AND DI[582] AND !DI[583] AND DI[584] AND !DI[585] AND DI[586] AND !DI[587] AND DI[588]) ;
  12:  M[33]=(!DI[589] AND DI[590] AND !DI[591] AND DI[592]) ;
  13:  M[34]=(DI[589] AND !DI[590] AND DI[591] AND !DI[592]) ;
  14:  M[35]=(OFF) ;
  15:  M[36]=(OFF) ;
  16:  M[37]=(OFF) ;
  17:  M[38]=(OFF) ;
  18:  M[39]=(OFF) ;
  19:  M[40]=(OFF) ;
  20:  M[41]=(OFF) ;
  21:  M[42]=(OFF) ;
  22:  M[43]=(OFF) ;
  23:  M[44]=(OFF) ;
  24:  M[45]=(OFF) ;
  25:  M[46]=(OFF) ;
  26:  M[47]=(OFF) ;
  27:  M[48]=(OFF) ;
  28:  M[49]=(OFF) ;
  29:  M[50]=(OFF) ;
  30:  M[51]=(OFF) ;
  31:  M[52]=(OFF) ;
  32:  M[53]=(OFF) ;
  33:  M[54]=(OFF) ;
  34:  M[55]=(OFF) ;
  35:  M[56]=(OFF) ;
  36:  M[57]=(OFF) ;
  37:  M[58]=(OFF) ;
  38:  M[59]=(OFF) ;
  39:  M[60]=(OFF) ;
  40:  M[61]=(OFF) ;
  41:  M[62]=(OFF) ;
  42:  M[63]=(OFF) ;
  43:  M[64]=(OFF) ;
  44:  M[65]=(OFF) ;
  45:  M[66]=(OFF) ;
  46:  M[67]=(OFF) ;
  47:  M[68]=(OFF) ;
  48:  ! ;
  49:  !Maschinelle Sicherheiten ;
  50:  !mit Niederdruck ueberwachung ;
  51:  M[30]=(DI[14] AND DI[24] AND DI[516]) ;
  52:  ! ;
  53:  !Widerstandspunktschweissen ;
  54:  !Sicherheiten EZ1/SP1 ;
  55:  M[95]=(DI[705] AND !DI[706] AND DI[713] AND DI[714] AND ((!DI[715] AND DI[719]) OR DO[715]) AND !DI[773] AND !DI[779] AND DO[716]) ;
  56:  !Grundstellung KS1 ;
  57:  M[96]=(DI[842] AND !DI[844] AND !DI[843] AND DI[845] AND !DO[715] AND (F[321] OR (DO[875] AND F[148]) OR (DO[1035] AND F[184]))) ;
  58:  !Flankenausw.der Fraeserumd.KF1 ;
  59:  M[97]=((DI[718] AND DO[718] OR F[312]) AND DI[834] AND DO[834] AND !F[72] AND !F[73] AND (F[90] OR F[92])) ;
  60:  ! ;
  61:  !EZ1/SP1/SZ1 Umdrehungen Startfr ;
  62:  R[2]=5    ;
  63:  !Umdrehungen Startfraesen Teil 2 ;
  64:  R[3]=5    ;
  65:  !Umdrehungen Nomalfraesen ;
  66:  R[4]=5    ;
  67:  !min. Oeffnung stat. EZ/SP ;
  68:  !beim Fraesen ;
  69:  R[60]=600    ;
  70:  ! ;
  71:  !;Ausgleichswert EZ1/SP1 ;
  72:  R[197]=123    ;
  73:  !Kappenverschl. Verhaeltnis ;
  74:  !feste EK in % (Stat-EZ1) ;
  75:  R[411]=65    ;
  76:   ;
  77:  !Kappenkompenstion bei ;
  78:  !stationaerer EZ1/SP1 ;
  79:  CALL MOTN004    ;
  80:  ! ;
  81:  !Aufruf Makro57 ;
  82:  CALL MAKRO057    ;
  83:  !Docking ;
  84:  CALL MAKRO058    ;
/POS
/END
