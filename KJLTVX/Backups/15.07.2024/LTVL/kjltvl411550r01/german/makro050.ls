/PROG  MAKRO050
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "Merker-Init";
PROG_GR��E	= 3312;
ERSTELL		= TAG 00-03-13  ZEIT 16:56:34;
GE�NDERT	= TAG 23-07-09  ZEIT 16:26:48;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 119;
SPEICHERGR.	= 3608;
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
   1:  !Merker-Init ;
   2:  !letzte  Aenderung  08.05.2015 ;
   3:  !Grundlagen ;
   4:  ! ;
   5:  !Abfrage Bauteilkontrollen ;
   6:  M[1]=((E[599] [&] E[601] [&] E[603] [&] E[605] [&] E[607]) [+] E[15]) ;
   7:  M[2]=(!E[599] [&] !E[601] [&] !E[603] [&] !E[605] [&] !E[607]) ;
   8:  M[3]=((E[605] [&] E[607]) [+] E[15]) ;
   9:  M[4]=((E[603] [&] E[605] [&] E[607]) [+] E[15]) ;
  10:  M[5]=((E[599] [&] E[601] [&] E[605] [&] E[607]) [+] E[15]) ;
  11:  M[6]=((E[599] [&] E[601] [&] E[604] [&] E[605] [&] E[607]) [+] E[15]) ;
  12:  ! ;
  13:  !Abfrage Spanngruppen ;
  14:  M[31]=(E[579] [&] !E[580] [&] E[581] [&] !E[582]) ;
  15:  M[32]=(!E[579] [&] E[580] [&] !E[581] [&] E[582]) ;
  16:  M[33]=(!E[583] [&] E[584]) ;
  17:  M[34]=(E[583] [&] !E[584]) ;
  18:  M[35]=(E[585] [&] !E[586]) ;
  19:  M[36]=(!E[585] [&] E[586]) ;
  20:  M[37]=(E[587] [&] !E[588] [&] E[589] [&] !E[590]) ;
  21:  M[38]=(!E[587] [&] E[588] [&] !E[589] [&] E[590]) ;
  22:  M[39]=(!E[591] [&] E[592]) ;
  23:  M[40]=(E[591] [&] !E[592]) ;
  24:  M[41]=(!E[595] [&] E[596] [&] !E[597] [&] E[596]) ;
  25:  M[42]=(E[595] [&] !E[596] [&] E[597] [&] !E[598]) ;
  26:  M[43]=(!E[593] [&] E[594]) ;
  27:  M[44]=(E[593] [&] !E[594]) ;
  28:  M[45]=(AUS) ;
  29:  M[46]=(AUS) ;
  30:  M[47]=(AUS) ;
  31:  M[48]=(AUS) ;
  32:  M[49]=(AUS) ;
  33:  M[50]=(AUS) ;
  34:  M[51]=(AUS) ;
  35:  M[52]=(AUS) ;
  36:  M[53]=(AUS) ;
  37:  M[54]=(AUS) ;
  38:  M[55]=(AUS) ;
  39:  M[56]=(AUS) ;
  40:  M[57]=(AUS) ;
  41:  M[58]=(AUS) ;
  42:  M[59]=(AUS) ;
  43:  M[60]=(AUS) ;
  44:  M[61]=(AUS) ;
  45:  M[62]=(AUS) ;
  46:  M[63]=(AUS) ;
  47:  M[64]=(AUS) ;
  48:  M[65]=(AUS) ;
  49:  M[66]=(AUS) ;
  50:  M[67]=(AUS) ;
  51:  M[68]=(AUS) ;
  52:  ! ;
  53:  !Marcas de Usuario: ;
  54:  !Marca 1 Sum. Anticol. 3&5 ;
  55:  M[10]=(E[43] [&] E[45]) ;
  56:  !Marca 2 ST1520 Llena ;
  57:  M[11]=(!E[65] [&] E[66]) ;
  58:  !Marca 3 ST1520 Vacia ;
  59:  M[12]=(E[65] [&] !E[66]) ;
  60:  !Marca 4 Gpo. 2-4,6 Abierto ;
  61:  M[13]=(M[33] [&] M[35] [&] M[37] [&] M[41]) ;
  62:  !Marca 5 ST1540-1 Llena ;
  63:  M[14]=(!E[63] [&] E[64]) ;
  64:  !Marca 6 ST1540-1 Vacia ;
  65:  M[15]=(E[63] [&] !E[64]) ;
  66:  !Marca 7 ST1540-2 Llena ;
  67:  M[16]=(!E[61] [&] E[62]) ;
  68:  !Marca 8 ST1540-2 Vacia ;
  69:  M[17]=(E[61] [&] !E[62]) ;
  70:  !Marca 9 ST1600 c/Soporte ;
  71:  M[18]=(!E[59] [&] E[60]) ;
  72:  !Marca 10 ST1600 s/Soporte ;
  73:  M[19]=(E[59] [&] !E[60]) ;
  74:  !Marca 11 ST1600 c/Larguero ;
  75:  M[20]=(!E[57] [&] E[58]) ;
  76:  !Marca 12 ST1600 s/Larguero ;
  77:  M[21]=(E[57] [&] !E[58]) ;
  78:  !Marca 13 Sum. Anticol. 1&7 ;
  79:  M[22]=(E[41] [&] E[47]) ;
  80:  !Marca 14 Gpo. 1&4 Cerrado ;
  81:  M[23]=(M[32] [&] M[38]) ;
  82:  !Marca 15 Gpo. 1&4 Abierto ;
  83:  M[24]=(M[31] [&] M[37]) ;
  84:  !Marca 16 Gpo. 5&6 Cerrado ;
  85:  M[25]=(M[40] [&] M[42] [&] M[44]) ;
  86:  !Marca 17 Gpo. 5&6 Abierto ;
  87:  M[26]=(M[39] [&] M[41] [&] M[43]) ;
  88:  ! ;
  89:  !Maschinelle Sicherheiten ;
  90:  M[30]=(E[14] [&] E[24]) ;
  91:  ! ;
  92:  !Widerstandspunktschweissen ;
  93:  !Sicherheiten EZ1/SP1 ;
  94:  M[95]=(E[705] [&] !E[706] [&] E[713] [&] E[714] [&] ((!E[715] [&] E[719]) [+] A[715]) [&] !E[773] [&] !E[779] [&] A[716]) ;
  95:  ! ;
  96:  !Grundstellung KS1 ;
  97:  M[96]=(E[842] [&] !E[844] [&] !E[843] [&] E[845] [&] !A[715] [&] (F[321] [+] (A[875] [&] F[148]) [+] (A[1035] [&] F[184]))) ;
  98:  ! ;
  99:  !Flankenausw.der Fräserumd.KF1 ;
 100:  M[97]=((E[718] [&] A[718] [+] F[312]) [&] E[834] [&] A[834] [&] !F[72] [&] !F[73] [&] (F[90] [+] F[92])) ;
 101:  ! ;
 102:  !Initialisierung Fraes_Register ;
 103:  !EZ1/SP1/SZ1 Umdrehungen Startfr ;
 104:  i[2]=4    ;
 105:  !Umdrehungen Startfräsen Teil 2 ;
 106:  i[3]=4    ;
 107:  !Umdrehungen Nomalfräsen ;
 108:  i[4]=3    ;
 109:  !siehe Kapitel „Verwendete Zaeh ;
 110:  i[60]=700    ;
 111:  !;Ausgleichswert EZ1/SP1 ;
 112:  i[197]=108    ;
 113:  !siehe Kapitel „Verwendete Zaeh ;
 114:  i[407]=65    ;
 115:  !Kappenkompenstion bei stationär ;
 116:  //AUFRUF MOTN004    ;
 117:  ! ;
 118:  !Aufruf Makro57 "diverse Anwahlen ;
 119:  AUFRUF MAKRO057    ;
/POS
/END
