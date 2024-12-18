/PROG  MAKROSP1
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "MAKROSP1_BASIC";
PROG_GR��E	= 4192;
ERSTELL		= TAG 10-06-15  ZEIT 12:00:00;
GE�NDERT	= TAG 17-03-27  ZEIT 18:21:12;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 119;
SPEICHERGR.	= 4604;
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
   1:  !MAKROSP1 BASIC ;
   2:  !KS24 ;
   3:  !Version: 011 ;
   4:  !Stand: 007 ;
   5:  !letzte  Aenderung  31.08.2016 LZ ;
   6:  !Hilfszeit 1 MakroSPS F[992] ;
   7:  !Hilfszeit 1 MakroSPS F[992] ;
   8:  !Hilfsflags fuer Medien ;
   9:  F[127]=((E[513] [&] !F[291]) [+] (E[514] [&] E[515] [&] !F[291]) [+] (E[514] [&] A[12] [&] F[291]) [+] (E[515] [&] A[12] [&] F[291])) ;
  10:  F[162]=((E[521] [&] !F[291]) [+] (E[522] [&] E[523] [&] !F[291]) [+] (E[522] [&] A[12] [&] F[291]) [+] (E[523] [&] A[12] [&] F[291])) ;
  11:  F[198]=((E[529] [&] !F[291]) [+] (E[530] [&] E[531] [&] !F[291]) [+] (E[530] [&] A[12] [&] F[291]) [+] (E[531] [&] A[12] [&] F[291])) ;
  12:  !Reset Motorsteuermodul KF1 ;
  13:  A[833]=((F[992] [&] E[840] [&] A[10]) [+] (E[840] [&] E[26])) ;
  14:  !Reset Motorsteuermodul KS1 ;
  15:  A[841]=((F[992] [&] E[848] [&] A[10]) [+] (E[848] [&] E[26])) ;
  16:  !Reset Motorsteuermodul ZS1 ;
  17:  A[849]=((F[992] [&] E[856] [&] A[10]) [+] (E[856] [&] E[26])) ;
  18:  !Reset Motorsteuermodul KF2 ;
  19:  A[993]=((F[992] [&] E[1000] [&] A[10]) [+] (E[1000] [&] E[26])) ;
  20:  !Reset Motorsteuermodul KS2 ;
  21:  A[1001]=((F[992] [&] E[1008] [&] A[10]) [+] (E[1008] [&] E[26])) ;
  22:  !Reset Motorsteuermodul ZS2 ;
  23:  A[1009]=((F[992] [&] E[1016] [&] A[10]) [+] (E[1016] [&] E[26])) ;
  24:  !Reset Motorsteuermodul KF3 ;
  25:  A[1153]=((F[992] [&] E[1160] [&] A[10]) [+] (E[1160] [&] E[26])) ;
  26:  !Reset Motorsteuermodul KS3 ;
  27:  A[1161]=((F[992] [&] E[1168] [&] A[10]) [+] (E[1168] [&] E[26])) ;
  28:  !Reset Motorsteuermodul ZS2 ;
  29:  A[1169]=((F[992] [&] E[1176] [&] A[10]) [+] (E[1176] [&] E[26])) ;
  30:  !EZ1/SP1 ;
  31:  A[705]=((E[26] [&] E[784]) [+] ((E[27] [+] F[303]) [&] E[784])) ;
  32:  !EZ2/SP2 ;
  33:  A[865]=((E[26] [&] E[944]) [+] ((E[27] [+] F[303]) [&] E[944])) ;
  34:  !EZ3/SP3 ;
  35:  A[1025]=((E[26] [&] E[1104]) [+] ((E[27] [+] F[303]) [&] E[1104])) ;
  36:  WENN (F[830]),SPRUNG LABEL[1] ;
  37:  !SK1 ;
  38:  A[788]=(E[26]) ;
  39:  A[789]=(E[27] [&] E[805]) ;
  40:  A[791]=(E[15]) ;
  41:  A[792]=(!E[145] [&] !F[284]) ;
  42:  F[80]=((E[804] [&] !E[806] [&] !E[775] [&] E[785]) [+] (E[785] [&] E[15]) [+] (F[80] [&] A[785])) ;
  43:  !SK2 ;
  44:  A[948]=(E[26]) ;
  45:  A[949]=(E[27] [&] E[965]) ;
  46:  A[951]=(E[15]) ;
  47:  A[952]=(!E[177] [&] !F[284]) ;
  48:  F[140]=((E[964] [&] !E[966] [&] !E[935] [&] E[945]) [+] (E[945] [&] E[15]) [+] (F[140] [&] A[945])) ;
  49:  !SK3 ;
  50:  A[1108]=(E[26]) ;
  51:  A[1109]=(E[27] [&] E[1125]) ;
  52:  A[1111]=(E[15]) ;
  53:  A[1112]=(!E[209] [&] !F[284]) ;
  54:  F[176]=((E[1124] [&] !E[1126] [&] !E[1095] [&] E[1105]) [+] (E[1105] [&] E[15]) [+] (F[176] [&] A[1105])) ;
  55:  LABEL[1] ;
  56:  WENN (!F[830]),SPRUNG LABEL[2] ;
  57:  !KE1 ;
  58:  A[705]=(E[26]) ;
  59:  A[730]=(!E[130] [&] !F[284]) ;
  60:  !FK von Kombi 1 abspeichern ;
  61:  F[833]=((E[787] [&] !E[789] [&] !E[775] [&] E[719]) [+] (E[719] [&] E[15]) [+] (F[833] [&] A[718])) ;
  62:  !KE2 ;
  63:  A[865]=(E[26]) ;
  64:  A[890]=(!E[162] [&] !F[284]) ;
  65:  !FK von Kombi 2 abspeichern ;
  66:  F[834]=((E[947] [&] !E[949] [&] !E[935] [&] E[879]) [+] (E[879] [&] E[15]) [+] (F[834] [&] A[878])) ;
  67:  !KE3 ;
  68:  A[1025]=(E[26]) ;
  69:  A[1050]=(!E[194] [&] !F[284]) ;
  70:  !FK von Kombi 3 abspeichern ;
  71:  F[835]=((E[1107] [&] !E[1109] [&] !E[1095] [&] E[1039]) [+] (E[1039] [&] E[15]) [+] (F[835] [&] A[1038])) ;
  72:  LABEL[2] ;
  73:  !BZ1 ;
  74:  !DO[1702]=((!DI[1697] OR !DI[1699 ;
  75:  !BZ2 ;
  76:  !DO[1750]=((!DI[1745] OR !DI[1747 ;
  77:  !MS1 ;
  78:  A[1857]=(AN) ;
  79:  A[1858]=(!E[1858] [&] (E[26] [+] E[27] [+] (F[992] [&] A[4060]))) ;
  80:  F[570]=(A[9] [&] A[4060] [&] E[1857] [&] E[1874] [&] (F[960] [+] (F[597] [&] !E[128]))) ;
  81:  A[1859]=((A[12] [&] E[12] [&] F[570] [&] F[571] [&] (E[1859] [+] !E[26])) [+] (E[211] [&] F[570] [&] F[571])) ;
  82:  !MS2 ;
  83:  A[1889]=(AN) ;
  84:  A[1890]=(!E[1890] [&] (E[26] [+] E[27] [+] (F[992] [&] A[4060]))) ;
  85:  F[579]=(A[9] [&] A[4060] [&] E[1889] [&] E[1906] [&] (F[960] [+] (F[597] [&] !E[128]))) ;
  86:  A[1891]=((A[12] [&] E[12] [&] F[579] [&] F[580] [&] (E[1891] [+] !E[26])) [+] (E[203] [&] F[579] [&] F[580])) ;
  87:  !KL1 ;
  88:  A[1527]=(A[10] [+] E[1568]) ;
  89:  A[1528]=(A[12]) ;
  90:  F[339]=((A[1529] [+] A[1535] [+] (E[9] [&] !E[15] [&] !F[336])) [&] (!E[1551] [&] A[10])) ;
  91:  A[1547]=(((F[339] [&] F[992]) [+] F[337] [+] E[168] [+] E[9]) [&] F[542]) ;
  92:  A[1550]=(((F[339] [&] F[992]) [+] F[337] [+] E[168] [+] E[9]) [&] F[542] [&] !E[15]) ;
  93:  !KL2 ;
  94:  A[1591]=(A[10] [+] E[1632]) ;
  95:  A[1592]=(A[12]) ;
  96:  F[360]=((A[1593] [+] A[1599] [+] (E[9] [&] !E[15] [&] !F[357])) [&] (!E[1615] [&] A[10])) ;
  97:  A[1611]=(((F[360] [&] F[992]) [+] F[358] [+] E[184] [+] E[9]) [&] F[543]) ;
  98:  A[1614]=(((F[360] [&] F[992]) [+] F[358] [+] E[184] [+] E[9]) [&] F[543] [&] !E[15]) ;
  99:  !KL3 ;
 100:  A[1655]=(A[10] [+] E[1696]) ;
 101:  A[1656]=(A[12]) ;
 102:  F[381]=((A[1657] [+] A[1663] [+] (E[9] [&] !E[15] [&] !F[378])) [&] (!E[1679] [&] A[10])) ;
 103:  A[1675]=(((F[381] [&] F[992]) [+] F[379] [+] E[200] [+] E[9]) [&] F[544]) ;
 104:  A[1678]=(((F[381] [&] F[992]) [+] F[379] [+] E[200] [+] E[9]) [&] F[544] [&] !E[15]) ;
 105:  !CZ1 Servo / CZ1 Pneum. ;
 106:  A[1345]=((E[26] [+] E[27] [+] F[489]) [&] ((E[1424] [&] F[538] [&] !F[539]) [+] (!F[538] [&] F[539] [&] E[1368]))) ;
 107:  !CZ2 Servo / CZ2 Pneum. ;
 108:  A[1425]=((E[26] [+] E[27] [+] F[489]) [&] ((E[1504] [&] F[540] [&] !F[541]) [+] (!F[540] [&] F[541] [&] E[1448]))) ;
 109:  !NZ1 Servo / NZ1 Hydr. ;
 110:  A[1185]=((E[26] [+] E[27] [+] F[489]) [&] ((E[1264] [&] F[534] [&] !F[535]) [+] (!F[534] [&] F[535] [&] E[1216]))) ;
 111:  !NZ2 Servo / NZ2 Hydr. ;
 112:  A[1265]=((E[26] [+] E[27] [+] F[489]) [&] ((E[1344] [&] F[536] [&] !F[537]) [+] (!F[536] [&] F[537] [&] E[1296]))) ;
 113:  !Ohne Prozess in Single Step ;
 114:  F[525]=(F[525] [&] A[11]) ;
 115:  !Roboter in Single Step ;
 116:  F[985]=(A[11]) ;
 117:  !Online Freigabe Roboter ;
 118:  A[127]=(M[128]) ;
 119:  A[128]=(M[129]) ;
/POS
/END
