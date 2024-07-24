/PROG  MAKRO343
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "G_ZU/SAUGER_EIN";
PROG_GR��E	= 5760;
ERSTELL		= TAG 10-09-17  ZEIT 16:56:16;
GE�NDERT	= TAG 17-03-27  ZEIT 18:30:08;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 235;
SPEICHERGR.	= 6396;
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
   1:  !Greifer ZU / Saugkreis EIN ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 002 ;
   5:  !letzte  Aenderung  18.08.2016 LZ ;
   6:  A[121]=(AN) ;
   7:  F[58]=(F[17] [+] F[18] [+] F[19] [+] F[20] [+] F[21] [+] F[22]) ;
   8:  F[60]=(F[9] [+] F[10] [+] F[11] [+] F[12] [+] F[13] [+] F[14] [+] F[15] [+] F[16]) ;
   9:  F[61]=(F[1] [+] F[2] [+] F[3] [+] F[4] [+] F[5] [+] F[6] [+] F[7] [+] F[8]) ;
  10:  WARTE (F[58] [+] F[60] [+] F[61])    ;
  11:  !Steuerluft EIN ;
  12:  A[577]=(AN) ;
  13:  !Steuerluft 2. Ventilinsel  EIN ;
  14:  A[703]=(F[56]) ;
  15:  !Steuerluft 3.  Ventilinsel  EIN ;
  16:  A[701]=(F[55]) ;
  17:  TIMER[10]=((-.5)) ;
  18:  !Warte auf Vorwahl Ventilinsel ;
  19:  WARTE ((F[523] [&] !F[524]) [+] (!F[523] [&] F[524]) [+] (TIMER[10]>=0))    ;
  20:  A[125]=((TIMER[10]>=0)) ;
  21:  WARTE ((F[523] [&] !F[524]) [+] (!F[523] [&] F[524]))    ;
  22:  A[125]=(AUS) ;
  23:  TIMER[10]=((-.5)) ;
  24:  !Warte bis Steuerluft EIN ;
  25:  WARTE ((F[523] [&] E[577]) [+] (F[524] [&] !E[578]) [+] (TIMER[10]>=0))    ;
  26:  A[125]=((TIMER[10]>=0)) ;
  27:  WARTE ((F[523] [&] E[577]) [+] (F[524] [&] !E[578]))    ;
  28:  A[125]=(AUS) ;
  29:  !Warte bis Steuerluft ;
  30:  !2. Ventilinsel EIN ;
  31:  WARTE ((F[523] [&] (E[703] [+] !F[56])) [+] (F[524] [&] (!E[704] [+] !F[56])) [+] (TIMER[10]>=0))    ;
  32:  A[125]=((TIMER[10]>=0)) ;
  33:  WARTE ((F[523] [&] (E[703] [+] !F[56])) [+] (F[524] [&] (!E[704] [+] !F[56])))    ;
  34:  A[125]=(AUS) ;
  35:  TIMER[10]=((-.5)) ;
  36:  !3. Warte bis Steuerluft ;
  37:  !Ventilinsel EIN ;
  38:  WARTE ((F[523] [&] (E[701] [+] !F[55])) [+] (F[524] [&] (!E[702] [+] !F[55])) [+] (TIMER[10]>=0))    ;
  39:  A[125]=((TIMER[10]>=0)) ;
  40:  WARTE ((F[523] [&] (E[701] [+] !F[55])) [+] (F[524] [&] (!E[702] [+] !F[55])))    ;
  41:  A[125]=(AUS) ;
  42:  F[24]=(AUS) ;
  43:  F[25]=(AUS) ;
  44:  F[26]=(AUS) ;
  45:  F[27]=(AUS) ;
  46:  F[28]=(AUS) ;
  47:  F[29]=(AUS) ;
  48:  F[30]=(AUS) ;
  49:  F[31]=(AUS) ;
  50:  F[32]=(AUS) ;
  51:  F[33]=(AUS) ;
  52:  F[34]=(AUS) ;
  53:  F[35]=(AUS) ;
  54:  F[36]=(AUS) ;
  55:  F[37]=(AUS) ;
  56:  F[38]=(AUS) ;
  57:  F[39]=(AUS) ;
  58:  F[40]=(AUS) ;
  59:  F[41]=(AUS) ;
  60:  F[42]=(AUS) ;
  61:  F[43]=(AUS) ;
  62:  F[44]=(AUS) ;
  63:  F[45]=(AUS) ;
  64:  TIMER[10]=((-6)) ;
  65:  !Anwahl Greifer ;
  66:  F[23]=(AUS) ;
  67:  !Spanngruppe 1 ;
  68:  WENN (F[1]),AUFRUF MAKRO344 ;
  69:  WARTE (F[24] [+] !F[1])    ;
  70:  !Spanngruppe 2 ;
  71:  WENN (F[2]),AUFRUF MAKRO345 ;
  72:  WARTE (F[25] [+] !F[2])    ;
  73:  !Spanngruppe 3 ;
  74:  WENN (F[3]),AUFRUF MAKRO346 ;
  75:  WARTE (F[26] [+] !F[3])    ;
  76:  !Spanngruppe 4 ;
  77:  WENN (F[4]),AUFRUF MAKRO347 ;
  78:  WARTE (F[27] [+] !F[4])    ;
  79:  !Spanngruppe 5 ;
  80:  WENN (F[5]),AUFRUF MAKRO348 ;
  81:  WARTE (F[28] [+] !F[5])    ;
  82:  !Spanngruppe 6 ;
  83:  WENN (F[6]),AUFRUF MAKRO349 ;
  84:  WARTE (F[29] [+] !F[6])    ;
  85:  !Spanngruppe 7 ;
  86:  WENN (F[7]),AUFRUF MAKRO350 ;
  87:  WARTE (F[30] [+] !F[7])    ;
  88:  !Spanngruppe 8 ;
  89:  WENN (F[8]),AUFRUF MAKRO351 ;
  90:  WARTE (F[31] [+] !F[8])    ;
  91:  !Spanngruppe 9 ;
  92:  WENN (F[9]),AUFRUF MAKRO352 ;
  93:  WARTE (F[32] [+] !F[9])    ;
  94:  !Spanngruppe 10 ;
  95:  WENN (F[10]),AUFRUF MAKRO353 ;
  96:  WARTE (F[33] [+] !F[10])    ;
  97:  !Spanngruppe 11 ;
  98:  WENN (F[11]),AUFRUF MAKRO354 ;
  99:  WARTE (F[34] [+] !F[11])    ;
 100:  !Spanngruppe 12 ;
 101:  WENN (F[12]),AUFRUF MAKRO355 ;
 102:  WARTE (F[35] [+] !F[12])    ;
 103:  !Spanngruppe 13 ;
 104:  WENN (F[13]),AUFRUF MAKRO356 ;
 105:  WARTE (F[36] [+] !F[13])    ;
 106:  !Spanngruppe 14 ;
 107:  WENN (F[14]),AUFRUF MAKRO357 ;
 108:  WARTE (F[37] [+] !F[14])    ;
 109:  !Spanngruppe 15 ;
 110:  WENN (F[15]),AUFRUF MAKRO358 ;
 111:  WARTE (F[38] [+] !F[15])    ;
 112:  !Spanngruppe 16 ;
 113:  WENN (F[16]),AUFRUF MAKRO359 ;
 114:  WARTE (F[39] [+] !F[16])    ;
 115:  !Saugkreis 1 ;
 116:  WENN (F[17]),AUFRUF MAKRO360 ;
 117:  WARTE (F[40] [+] !F[17])    ;
 118:  !Saugkreis 2 ;
 119:  WENN (F[18]),AUFRUF MAKRO361 ;
 120:  WARTE (F[41] [+] !F[18])    ;
 121:  WENN (F[19]),AUFRUF MAKRO362 ;
 122:  !Saugkreis 3 ;
 123:  WARTE (F[42] [+] !F[19])    ;
 124:  WENN (F[20]),AUFRUF MAKRO363 ;
 125:  !Saugkreis 4 ;
 126:  WARTE (F[43] [+] !F[20])    ;
 127:  WENN (F[21]),AUFRUF MAKRO364 ;
 128:  !Saugkreis 5 ;
 129:  WARTE (F[44] [+] !F[21])    ;
 130:  WENN (F[22]),AUFRUF MAKRO365 ;
 131:  !Saugkreis 6 ;
 132:  WARTE (F[45] [+] !F[22])    ;
 133:  !Wartezeit Luftpolster aufbauen ;
 134:  WENN (!F[59]),SPRUNG LABEL[1] ;
 135:  WARTE   1.00(sec) ;
 136:  LABEL[1] ;
 137:  WARTE ((!M[31] [&] M[32]) [+] !F[1] [+] (TIMER[10]>=0))    ;
 138:  WARTE ((!M[33] [&] M[34]) [+] !F[2] [+] (TIMER[10]>=0))    ;
 139:  WARTE ((!M[35] [&] M[36]) [+] !F[3] [+] (TIMER[10]>=0))    ;
 140:  WARTE ((!M[37] [&] M[38]) [+] !F[4] [+] (TIMER[10]>=0))    ;
 141:  WARTE ((!M[39] [&] M[40]) [+] !F[5] [+] (TIMER[10]>=0))    ;
 142:  WARTE ((!M[41] [&] M[42]) [+] !F[6] [+] (TIMER[10]>=0))    ;
 143:  WARTE ((!M[43] [&] M[44]) [+] !F[7] [+] (TIMER[10]>=0))    ;
 144:  WARTE ((!M[45] [&] M[46]) [+] !F[8] [+] (TIMER[10]>=0))    ;
 145:  WARTE ((!M[47] [&] M[48]) [+] !F[9] [+] (TIMER[10]>=0))    ;
 146:  WARTE ((!M[49] [&] M[50]) [+] !F[10] [+] (TIMER[10]>=0))    ;
 147:  WARTE ((!M[51] [&] M[52]) [+] !F[11] [+] (TIMER[10]>=0))    ;
 148:  WARTE ((!M[53] [&] M[54]) [+] !F[12] [+] (TIMER[10]>=0))    ;
 149:  WARTE ((!M[55] [&] M[56]) [+] !F[13] [+] (TIMER[10]>=0))    ;
 150:  WARTE ((!M[57] [&] M[58]) [+] !F[14] [+] (TIMER[10]>=0))    ;
 151:  WARTE ((!M[59] [&] M[60]) [+] !F[15] [+] (TIMER[10]>=0))    ;
 152:  WARTE ((!M[61] [&] M[62]) [+] !F[16] [+] (TIMER[10]>=0))    ;
 153:  WARTE (M[63] [+] !F[17] [+] (TIMER[10]>=0))    ;
 154:  WARTE (M[64] [+] !F[18] [+] (TIMER[10]>=0))    ;
 155:  WARTE (M[65] [+] !F[19] [+] (TIMER[10]>=0))    ;
 156:  WARTE (M[66] [+] !F[20] [+] (TIMER[10]>=0))    ;
 157:  WARTE (M[67] [+] !F[21] [+] (TIMER[10]>=0))    ;
 158:  WARTE (M[68] [+] !F[22] [+] (TIMER[10]>=0))    ;
 159:  A[122]=((TIMER[10]>=0)) ;
 160:  A[125]=((TIMER[10]>=0)) ;
 161:  WARTE ((!M[31] [&] M[32]) [+] !F[1])    ;
 162:  WARTE ((!M[33] [&] M[34]) [+] !F[2])    ;
 163:  WARTE ((!M[35] [&] M[36]) [+] !F[3])    ;
 164:  WARTE ((!M[37] [&] M[38]) [+] !F[4])    ;
 165:  WARTE ((!M[39] [&] M[40]) [+] !F[5])    ;
 166:  WARTE ((!M[41] [&] M[42]) [+] !F[6])    ;
 167:  WARTE ((!M[43] [&] M[44]) [+] !F[7])    ;
 168:  WARTE ((!M[45] [&] M[46]) [+] !F[8])    ;
 169:  WARTE ((!M[47] [&] M[48]) [+] !F[9])    ;
 170:  WARTE ((!M[49] [&] M[50]) [+] !F[10])    ;
 171:  WARTE ((!M[51] [&] M[52]) [+] !F[11])    ;
 172:  WARTE ((!M[53] [&] M[54]) [+] !F[12])    ;
 173:  WARTE ((!M[55] [&] M[56]) [+] !F[13])    ;
 174:  WARTE ((!M[57] [&] M[58]) [+] !F[14])    ;
 175:  WARTE ((!M[59] [&] M[60]) [+] !F[15])    ;
 176:  WARTE ((!M[61] [&] M[62]) [+] !F[16])    ;
 177:  WARTE (M[63] [+] !F[17])    ;
 178:  WARTE (M[64] [+] !F[18])    ;
 179:  WARTE (M[65] [+] !F[19])    ;
 180:  WARTE (M[66] [+] !F[20])    ;
 181:  WARTE (M[67] [+] !F[21])    ;
 182:  WARTE (M[68] [+] !F[22])    ;
 183:  A[121]=(AUS) ;
 184:  A[122]=(AUS) ;
 185:  A[125]=(AUS) ;
 186:  !Ventile AUS ;
 187:  A[579]=(AUS) ;
 188:  A[581]=(AUS) ;
 189:  A[583]=(AUS) ;
 190:  A[585]=(AUS) ;
 191:  A[587]=(AUS) ;
 192:  A[589]=(AUS) ;
 193:  A[591]=(AUS) ;
 194:  A[593]=(AUS) ;
 195:  A[595]=(AUS) ;
 196:  A[597]=(AUS) ;
 197:  A[599]=(AUS) ;
 198:  A[601]=(AUS) ;
 199:  A[603]=(AUS) ;
 200:  A[605]=(AUS) ;
 201:  A[607]=(AUS) ;
 202:  A[609]=(AUS) ;
 203:  A[617]=(AUS) ;
 204:  A[619]=(AUS) ;
 205:  A[621]=(AUS) ;
 206:  A[623]=(AUS) ;
 207:  A[625]=(AUS) ;
 208:  A[627]=(AUS) ;
 209:  !Vorwahl Spanngruppen AUS ;
 210:  F[1]=(AUS) ;
 211:  F[2]=(AUS) ;
 212:  F[3]=(AUS) ;
 213:  F[4]=(AUS) ;
 214:  F[5]=(AUS) ;
 215:  F[6]=(AUS) ;
 216:  F[7]=(AUS) ;
 217:  F[8]=(AUS) ;
 218:  F[9]=(AUS) ;
 219:  F[10]=(AUS) ;
 220:  F[11]=(AUS) ;
 221:  F[12]=(AUS) ;
 222:  F[13]=(AUS) ;
 223:  F[14]=(AUS) ;
 224:  F[15]=(AUS) ;
 225:  F[16]=(AUS) ;
 226:  F[17]=(AUS) ;
 227:  F[18]=(AUS) ;
 228:  F[19]=(AUS) ;
 229:  F[20]=(AUS) ;
 230:  F[21]=(AUS) ;
 231:  F[22]=(AUS) ;
 232:  F[23]=(AUS) ;
 233:  F[58]=(AUS) ;
 234:  F[60]=(AUS) ;
 235:  F[61]=(AUS) ;
/POS
/END
