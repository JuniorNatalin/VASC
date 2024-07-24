/PROG  MAKRO343
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "G_ZU/SAUGER_EIN";
PROG_SIZE	= 5760;
CREATE		= DATE 10-09-17  TIME 16:56:16;
MODIFIED	= DATE 17-03-27  TIME 18:20:30;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 235;
MEMORY_SIZE	= 6396;
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
   1:  !Greifer ZU / Saugkreis EIN ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 002 ;
   5:  !letzte  Aenderung  18.08.2016 LZ ;
   6:  DO[121]=(ON) ;
   7:  F[58]=(F[17] OR F[18] OR F[19] OR F[20] OR F[21] OR F[22]) ;
   8:  F[60]=(F[9] OR F[10] OR F[11] OR F[12] OR F[13] OR F[14] OR F[15] OR F[16]) ;
   9:  F[61]=(F[1] OR F[2] OR F[3] OR F[4] OR F[5] OR F[6] OR F[7] OR F[8]) ;
  10:  WAIT (F[58] OR F[60] OR F[61])    ;
  11:  !Steuerluft EIN ;
  12:  DO[577]=(ON) ;
  13:  !Steuerluft 2. Ventilinsel  EIN ;
  14:  DO[703]=(F[56]) ;
  15:  !Steuerluft 3.  Ventilinsel  EIN ;
  16:  DO[701]=(F[55]) ;
  17:  TIMER[10]=((-.5)) ;
  18:  !Warte auf Vorwahl Ventilinsel ;
  19:  WAIT ((F[523] AND !F[524]) OR (!F[523] AND F[524]) OR (TIMER[10]>=0))    ;
  20:  DO[125]=((TIMER[10]>=0)) ;
  21:  WAIT ((F[523] AND !F[524]) OR (!F[523] AND F[524]))    ;
  22:  DO[125]=(OFF) ;
  23:  TIMER[10]=((-.5)) ;
  24:  !Warte bis Steuerluft EIN ;
  25:  WAIT ((F[523] AND DI[577]) OR (F[524] AND !DI[578]) OR (TIMER[10]>=0))    ;
  26:  DO[125]=((TIMER[10]>=0)) ;
  27:  WAIT ((F[523] AND DI[577]) OR (F[524] AND !DI[578]))    ;
  28:  DO[125]=(OFF) ;
  29:  !Warte bis Steuerluft ;
  30:  !2. Ventilinsel EIN ;
  31:  WAIT ((F[523] AND (DI[703] OR !F[56])) OR (F[524] AND (!DI[704] OR !F[56])) OR (TIMER[10]>=0))    ;
  32:  DO[125]=((TIMER[10]>=0)) ;
  33:  WAIT ((F[523] AND (DI[703] OR !F[56])) OR (F[524] AND (!DI[704] OR !F[56])))    ;
  34:  DO[125]=(OFF) ;
  35:  TIMER[10]=((-.5)) ;
  36:  !3. Warte bis Steuerluft ;
  37:  !Ventilinsel EIN ;
  38:  WAIT ((F[523] AND (DI[701] OR !F[55])) OR (F[524] AND (!DI[702] OR !F[55])) OR (TIMER[10]>=0))    ;
  39:  DO[125]=((TIMER[10]>=0)) ;
  40:  WAIT ((F[523] AND (DI[701] OR !F[55])) OR (F[524] AND (!DI[702] OR !F[55])))    ;
  41:  DO[125]=(OFF) ;
  42:  F[24]=(OFF) ;
  43:  F[25]=(OFF) ;
  44:  F[26]=(OFF) ;
  45:  F[27]=(OFF) ;
  46:  F[28]=(OFF) ;
  47:  F[29]=(OFF) ;
  48:  F[30]=(OFF) ;
  49:  F[31]=(OFF) ;
  50:  F[32]=(OFF) ;
  51:  F[33]=(OFF) ;
  52:  F[34]=(OFF) ;
  53:  F[35]=(OFF) ;
  54:  F[36]=(OFF) ;
  55:  F[37]=(OFF) ;
  56:  F[38]=(OFF) ;
  57:  F[39]=(OFF) ;
  58:  F[40]=(OFF) ;
  59:  F[41]=(OFF) ;
  60:  F[42]=(OFF) ;
  61:  F[43]=(OFF) ;
  62:  F[44]=(OFF) ;
  63:  F[45]=(OFF) ;
  64:  TIMER[10]=((-6)) ;
  65:  !Anwahl Greifer ;
  66:  F[23]=(OFF) ;
  67:  !Spanngruppe 1 ;
  68:  IF (F[1]),CALL MAKRO344 ;
  69:  WAIT (F[24] OR !F[1])    ;
  70:  !Spanngruppe 2 ;
  71:  IF (F[2]),CALL MAKRO345 ;
  72:  WAIT (F[25] OR !F[2])    ;
  73:  !Spanngruppe 3 ;
  74:  IF (F[3]),CALL MAKRO346 ;
  75:  WAIT (F[26] OR !F[3])    ;
  76:  !Spanngruppe 4 ;
  77:  IF (F[4]),CALL MAKRO347 ;
  78:  WAIT (F[27] OR !F[4])    ;
  79:  !Spanngruppe 5 ;
  80:  IF (F[5]),CALL MAKRO348 ;
  81:  WAIT (F[28] OR !F[5])    ;
  82:  !Spanngruppe 6 ;
  83:  IF (F[6]),CALL MAKRO349 ;
  84:  WAIT (F[29] OR !F[6])    ;
  85:  !Spanngruppe 7 ;
  86:  IF (F[7]),CALL MAKRO350 ;
  87:  WAIT (F[30] OR !F[7])    ;
  88:  !Spanngruppe 8 ;
  89:  IF (F[8]),CALL MAKRO351 ;
  90:  WAIT (F[31] OR !F[8])    ;
  91:  !Spanngruppe 9 ;
  92:  IF (F[9]),CALL MAKRO352 ;
  93:  WAIT (F[32] OR !F[9])    ;
  94:  !Spanngruppe 10 ;
  95:  IF (F[10]),CALL MAKRO353 ;
  96:  WAIT (F[33] OR !F[10])    ;
  97:  !Spanngruppe 11 ;
  98:  IF (F[11]),CALL MAKRO354 ;
  99:  WAIT (F[34] OR !F[11])    ;
 100:  !Spanngruppe 12 ;
 101:  IF (F[12]),CALL MAKRO355 ;
 102:  WAIT (F[35] OR !F[12])    ;
 103:  !Spanngruppe 13 ;
 104:  IF (F[13]),CALL MAKRO356 ;
 105:  WAIT (F[36] OR !F[13])    ;
 106:  !Spanngruppe 14 ;
 107:  IF (F[14]),CALL MAKRO357 ;
 108:  WAIT (F[37] OR !F[14])    ;
 109:  !Spanngruppe 15 ;
 110:  IF (F[15]),CALL MAKRO358 ;
 111:  WAIT (F[38] OR !F[15])    ;
 112:  !Spanngruppe 16 ;
 113:  IF (F[16]),CALL MAKRO359 ;
 114:  WAIT (F[39] OR !F[16])    ;
 115:  !Saugkreis 1 ;
 116:  IF (F[17]),CALL MAKRO360 ;
 117:  WAIT (F[40] OR !F[17])    ;
 118:  !Saugkreis 2 ;
 119:  IF (F[18]),CALL MAKRO361 ;
 120:  WAIT (F[41] OR !F[18])    ;
 121:  IF (F[19]),CALL MAKRO362 ;
 122:  !Saugkreis 3 ;
 123:  WAIT (F[42] OR !F[19])    ;
 124:  IF (F[20]),CALL MAKRO363 ;
 125:  !Saugkreis 4 ;
 126:  WAIT (F[43] OR !F[20])    ;
 127:  IF (F[21]),CALL MAKRO364 ;
 128:  !Saugkreis 5 ;
 129:  WAIT (F[44] OR !F[21])    ;
 130:  IF (F[22]),CALL MAKRO365 ;
 131:  !Saugkreis 6 ;
 132:  WAIT (F[45] OR !F[22])    ;
 133:  !Wartezeit Luftpolster aufbauen ;
 134:  IF (!F[59]),JMP LBL[1] ;
 135:  WAIT   1.00(sec) ;
 136:  LBL[1] ;
 137:  WAIT ((!M[31] AND M[32]) OR !F[1] OR (TIMER[10]>=0))    ;
 138:  WAIT ((!M[33] AND M[34]) OR !F[2] OR (TIMER[10]>=0))    ;
 139:  WAIT ((!M[35] AND M[36]) OR !F[3] OR (TIMER[10]>=0))    ;
 140:  WAIT ((!M[37] AND M[38]) OR !F[4] OR (TIMER[10]>=0))    ;
 141:  WAIT ((!M[39] AND M[40]) OR !F[5] OR (TIMER[10]>=0))    ;
 142:  WAIT ((!M[41] AND M[42]) OR !F[6] OR (TIMER[10]>=0))    ;
 143:  WAIT ((!M[43] AND M[44]) OR !F[7] OR (TIMER[10]>=0))    ;
 144:  WAIT ((!M[45] AND M[46]) OR !F[8] OR (TIMER[10]>=0))    ;
 145:  WAIT ((!M[47] AND M[48]) OR !F[9] OR (TIMER[10]>=0))    ;
 146:  WAIT ((!M[49] AND M[50]) OR !F[10] OR (TIMER[10]>=0))    ;
 147:  WAIT ((!M[51] AND M[52]) OR !F[11] OR (TIMER[10]>=0))    ;
 148:  WAIT ((!M[53] AND M[54]) OR !F[12] OR (TIMER[10]>=0))    ;
 149:  WAIT ((!M[55] AND M[56]) OR !F[13] OR (TIMER[10]>=0))    ;
 150:  WAIT ((!M[57] AND M[58]) OR !F[14] OR (TIMER[10]>=0))    ;
 151:  WAIT ((!M[59] AND M[60]) OR !F[15] OR (TIMER[10]>=0))    ;
 152:  WAIT ((!M[61] AND M[62]) OR !F[16] OR (TIMER[10]>=0))    ;
 153:  WAIT (M[63] OR !F[17] OR (TIMER[10]>=0))    ;
 154:  WAIT (M[64] OR !F[18] OR (TIMER[10]>=0))    ;
 155:  WAIT (M[65] OR !F[19] OR (TIMER[10]>=0))    ;
 156:  WAIT (M[66] OR !F[20] OR (TIMER[10]>=0))    ;
 157:  WAIT (M[67] OR !F[21] OR (TIMER[10]>=0))    ;
 158:  WAIT (M[68] OR !F[22] OR (TIMER[10]>=0))    ;
 159:  DO[122]=((TIMER[10]>=0)) ;
 160:  DO[125]=((TIMER[10]>=0)) ;
 161:  WAIT ((!M[31] AND M[32]) OR !F[1])    ;
 162:  WAIT ((!M[33] AND M[34]) OR !F[2])    ;
 163:  WAIT ((!M[35] AND M[36]) OR !F[3])    ;
 164:  WAIT ((!M[37] AND M[38]) OR !F[4])    ;
 165:  WAIT ((!M[39] AND M[40]) OR !F[5])    ;
 166:  WAIT ((!M[41] AND M[42]) OR !F[6])    ;
 167:  WAIT ((!M[43] AND M[44]) OR !F[7])    ;
 168:  WAIT ((!M[45] AND M[46]) OR !F[8])    ;
 169:  WAIT ((!M[47] AND M[48]) OR !F[9])    ;
 170:  WAIT ((!M[49] AND M[50]) OR !F[10])    ;
 171:  WAIT ((!M[51] AND M[52]) OR !F[11])    ;
 172:  WAIT ((!M[53] AND M[54]) OR !F[12])    ;
 173:  WAIT ((!M[55] AND M[56]) OR !F[13])    ;
 174:  WAIT ((!M[57] AND M[58]) OR !F[14])    ;
 175:  WAIT ((!M[59] AND M[60]) OR !F[15])    ;
 176:  WAIT ((!M[61] AND M[62]) OR !F[16])    ;
 177:  WAIT (M[63] OR !F[17])    ;
 178:  WAIT (M[64] OR !F[18])    ;
 179:  WAIT (M[65] OR !F[19])    ;
 180:  WAIT (M[66] OR !F[20])    ;
 181:  WAIT (M[67] OR !F[21])    ;
 182:  WAIT (M[68] OR !F[22])    ;
 183:  DO[121]=(OFF) ;
 184:  DO[122]=(OFF) ;
 185:  DO[125]=(OFF) ;
 186:  !Ventile AUS ;
 187:  DO[579]=(OFF) ;
 188:  DO[581]=(OFF) ;
 189:  DO[583]=(OFF) ;
 190:  DO[585]=(OFF) ;
 191:  DO[587]=(OFF) ;
 192:  DO[589]=(OFF) ;
 193:  DO[591]=(OFF) ;
 194:  DO[593]=(OFF) ;
 195:  DO[595]=(OFF) ;
 196:  DO[597]=(OFF) ;
 197:  DO[599]=(OFF) ;
 198:  DO[601]=(OFF) ;
 199:  DO[603]=(OFF) ;
 200:  DO[605]=(OFF) ;
 201:  DO[607]=(OFF) ;
 202:  DO[609]=(OFF) ;
 203:  DO[617]=(OFF) ;
 204:  DO[619]=(OFF) ;
 205:  DO[621]=(OFF) ;
 206:  DO[623]=(OFF) ;
 207:  DO[625]=(OFF) ;
 208:  DO[627]=(OFF) ;
 209:  !Vorwahl Spanngruppen AUS ;
 210:  F[1]=(OFF) ;
 211:  F[2]=(OFF) ;
 212:  F[3]=(OFF) ;
 213:  F[4]=(OFF) ;
 214:  F[5]=(OFF) ;
 215:  F[6]=(OFF) ;
 216:  F[7]=(OFF) ;
 217:  F[8]=(OFF) ;
 218:  F[9]=(OFF) ;
 219:  F[10]=(OFF) ;
 220:  F[11]=(OFF) ;
 221:  F[12]=(OFF) ;
 222:  F[13]=(OFF) ;
 223:  F[14]=(OFF) ;
 224:  F[15]=(OFF) ;
 225:  F[16]=(OFF) ;
 226:  F[17]=(OFF) ;
 227:  F[18]=(OFF) ;
 228:  F[19]=(OFF) ;
 229:  F[20]=(OFF) ;
 230:  F[21]=(OFF) ;
 231:  F[22]=(OFF) ;
 232:  F[23]=(OFF) ;
 233:  F[58]=(OFF) ;
 234:  F[60]=(OFF) ;
 235:  F[61]=(OFF) ;
/POS
/END
