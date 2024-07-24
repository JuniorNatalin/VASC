/PROG  MAKRO050
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "Merkerbildung";
PROG_GRÖßE	= 2130;
ERSTELL		= TAG 00-03-13  ZEIT 16:56:34;
GEÄNDERT	= TAG 24-05-14  ZEIT 17:16:54;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 84;
SPEICHERGR.	= 2446;
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
   1:  !Merker-Init ;
   2:  !Roboter mit Greifer. ;
   3:  !Sta. EZ ohne KW. ;
   4:  ! ;
   5:  !Abfrage Bauteilkontrollen ;
   6:  M[1]=((E[606] [&] E[607]) [+] E[15]) ;
   7:  M[2]=(!E[606] [&] !E[607]) ;
   8:  ! ;
   9:  !Abfrage Spanngruppen ;
  10:  M[31]=(E[579] [&] !E[580] [&] E[581] [&] !E[582] [&] E[583] [&] !E[584] [&] E[585] [&] !E[586] [&] E[587] [&] !E[588]) ;
  11:  M[32]=(!E[579] [&] E[580] [&] !E[581] [&] E[582] [&] !E[583] [&] E[584] [&] !E[585] [&] E[586] [&] !E[587] [&] E[588]) ;
  12:  M[33]=(!E[589] [&] !E[590] [&] !E[591] [&] E[592]) ;
  13:  M[34]=(!E[589] [&] !E[590] [&] E[591] [&] !E[592]) ;
  14:  M[35]=(AUS) ;
  15:  M[36]=(AUS) ;
  16:  M[37]=(AUS) ;
  17:  M[38]=(AUS) ;
  18:  M[39]=(AUS) ;
  19:  M[40]=(AUS) ;
  20:  M[41]=(AUS) ;
  21:  M[42]=(AUS) ;
  22:  M[43]=(AUS) ;
  23:  M[44]=(AUS) ;
  24:  M[45]=(AUS) ;
  25:  M[46]=(AUS) ;
  26:  M[47]=(AUS) ;
  27:  M[48]=(AUS) ;
  28:  M[49]=(AUS) ;
  29:  M[50]=(AUS) ;
  30:  M[51]=(AUS) ;
  31:  M[52]=(AUS) ;
  32:  M[53]=(AUS) ;
  33:  M[54]=(AUS) ;
  34:  M[55]=(AUS) ;
  35:  M[56]=(AUS) ;
  36:  M[57]=(AUS) ;
  37:  M[58]=(AUS) ;
  38:  M[59]=(AUS) ;
  39:  M[60]=(AUS) ;
  40:  M[61]=(AUS) ;
  41:  M[62]=(AUS) ;
  42:  M[63]=(AUS) ;
  43:  M[64]=(AUS) ;
  44:  M[65]=(AUS) ;
  45:  M[66]=(AUS) ;
  46:  M[67]=(AUS) ;
  47:  M[68]=(AUS) ;
  48:  ! ;
  49:  !Maschinelle Sicherheiten ;
  50:  !mit Niederdruck ueberwachung ;
  51:  M[30]=(E[14] [&] E[24] [&] E[516]) ;
  52:  ! ;
  53:  !Widerstandspunktschweissen ;
  54:  !Sicherheiten EZ1/SP1 ;
  55:  M[95]=(E[705] [&] !E[706] [&] E[713] [&] E[714] [&] ((!E[715] [&] E[719]) [+] A[715]) [&] !E[773] [&] !E[779] [&] A[716]) ;
  56:  !Grundstellung KS1 ;
  57:  M[96]=(E[842] [&] !E[844] [&] !E[843] [&] E[845] [&] !A[715] [&] (F[321] [+] (A[875] [&] F[148]) [+] (A[1035] [&] F[184]))) ;
  58:  !Flankenausw.der Fraeserumd.KF1 ;
  59:  M[97]=((E[718] [&] A[718] [+] F[312]) [&] E[834] [&] A[834] [&] !F[72] [&] !F[73] [&] (F[90] [+] F[92])) ;
  60:  ! ;
  61:  !EZ1/SP1/SZ1 Umdrehungen Startfr ;
  62:  i[2]=4    ;
  63:  !Umdrehungen Startfraesen Teil 2 ;
  64:  i[3]=4    ;
  65:  !Umdrehungen Nomalfraesen ;
  66:  i[4]=3    ;
  67:  !min. Oeffnung stat. EZ/SP ;
  68:  !beim Fraesen ;
  69:  i[60]=600    ;
  70:  ! ;
  71:  !;Ausgleichswert EZ1/SP1 ;
  72:  i[197]=128    ;
  73:  !Kappenverschl. Verhaeltnis ;
  74:  !feste EK in % (Stat-EZ1) ;
  75:  i[411]=65    ;
  76:   ;
  77:  !Kappenkompenstion bei ;
  78:  !stationaerer EZ1/SP1 ;
  79:  AUFRUF MOTN004    ;
  80:  ! ;
  81:  !Aufruf Makro57 ;
  82:  AUFRUF MAKRO057    ;
  83:  !Docking ;
  84:  AUFRUF MAKRO058    ;
/POS
/END
