/PROG  MAKRO080
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EZ1SP1_WPS";
PROG_SIZE	= 5154;
CREATE		= DATE 15-06-03  TIME 13:15:46;
MODIFIED	= DATE 17-03-27  TIME 18:30:04;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 196;
MEMORY_SIZE	= 5674;
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
   1:  ! EZ1/SP1 Schweissen ;
   2:  ! KS24 ;
   3:  ! Version: 02 ;
   4:  ! Stand: 003 ;
   5:  ! letzte Aenderung 23.01.2016 MBA ;
   6:  ! F118 = Sammelstoerung EZ1/SP1 a ;
   7:  ! F119 = Sammelstoerung SK1 an BM ;
   8:  DO[129]=(ON) ;
   9:  !Initialisierung Roboter-Ausgleic ;
  10:  IF (F[710]),JMP LBL[10] ;
  11:  IF (GO[3]>99),CALL EQPGPRE1 ;
  12:  LBL[10] ;
  13:  ! Abfrage Energiesparmodus ist AU ;
  14:  TIMER[10]=((-2)) ;
  15:  WAIT (!DI[706] OR (TIMER[10]>=0))    ;
  16:  F[118]=((TIMER[10]>=0)) ;
  17:  WAIT (!DI[706])    ;
  18:  F[118]=(OFF) ;
  19:  DO[715]=(ON) ;
  20:  DO[717]=(OFF) ;
  21:  DO[718]=(OFF) ;
  22:  DO[785]=(OFF) ;
  23:  F[78]=(OFF) ;
  24:  F[79]=(OFF) ;
  25:  F[80]=(OFF) ;
  26:  F[300]=(OFF) ;
  27:  F[301]=(OFF) ;
  28:  F[303]=(OFF) ;
  29:  F[306]=(OFF) ;
  30:  F[271]=(OFF) ;
  31:  F[749]=(OFF) ;
  32:  ! Auswertung EZ1/SP1 i.O. ;
  33:  TIMER[10]=((-2)) ;
  34:  F[818]=(ON) ;
  35:  WAIT (DI[705] AND DI[713] AND DI[714] AND (!DI[784] OR (DI[769] OR DI[777]) AND DI[784]) OR (TIMER[10]>=0))    ;
  36:  F[118]=((TIMER[10]>=0)) ;
  37:  ! Auswertung SK1 i.O. ;
  38:  TIMER[10]=((-2)) ;
  39:  WAIT (F[127] AND !DI[785] AND DI[792] AND DI[802] AND !F[80] OR !DI[792] AND DI[802] AND (DI[145] OR F[525]) OR (TIMER[10]>=0))    ;
  40:  F[119]=((TIMER[10]>=0)) ;
  41:  F[303]=((F[118] OR F[119]) AND DI[784] AND !DI[769] AND !DI[777]) ;
  42:  ! Auswertung EZ1/SP1 i.O. ;
  43:  WAIT (DI[705] AND DI[713] AND DI[714] AND (!DI[784] OR (DI[769] OR DI[777]) AND DI[784]))    ;
  44:  F[118]=(OFF) ;
  45:  F[303]=(OFF) ;
  46:  ! Auswertung SK1 i.O. ;
  47:  WAIT (F[127] AND !DI[785] AND DI[792] AND DI[802] AND !F[80] OR !DI[792] AND DI[802] AND (DI[145] OR F[525]))    ;
  48:  F[119]=(OFF) ;
  49:  DO[718]=(ON) ;
  50:  WAIT (DI[23])    ;
  51:  DO[718]=(ON) ;
  52:  TIMER[10]=((-8)) ;
  53:  WAIT (DI[705] AND DI[713] AND DI[714] OR (TIMER[10]>=0))    ;
  54:  F[118]=((TIMER[10]>=0)) ;
  55:  WAIT (DI[705] AND DI[713] AND DI[714])    ;
  56:  F[118]=(OFF) ;
  57:  DO[23]=(ON) ;
  58:  ! Auswertung EZ1/SP1 ohne Kraftau ;
  59:  WAIT (!DI[129] OR DI[129] AND DI[26])    ;
  60:  ! Sprung Makro Ende bei ohne Kraf ;
  61:  IF (DI[129]),JMP LBL[1] ;
  62:  ! EZ1/SP1 schliessen ;
  63:  !Roboter-Ausgleichsfunktion start ;
  64:  IF (F[710]),JMP LBL[11] ;
  65:  IF (GO[3]>99),CALL MOTN011 ;
  66:  LBL[11] ;
  67:  DO[718]=(!DI[718]) ;
  68:  DO[718]=(ON) ;
  69:  TIMER[10]=((-2.5)) ;
  70:  WAIT (DI[718] AND !DI[772] OR DI[772] OR DI[774] OR DI[775] OR (TIMER[10]>=0))    ;
  71:  DO[718]=(DI[718] AND !DI[772] AND !DI[774] AND !DI[775]) ;
  72:  DO[717]=(!DO[718]) ;
  73:  ! SK1 Schweissen Start ;
  74:  DO[145]=(ON) ;
  75:  DO[785]=(DI[718] AND !DI[772] AND !DI[774] AND !DI[775]) ;
  76:  !Rueckstellen Zangenoeffnung ;
  77:  IF (F[710]),JMP LBL[12] ;
  78:  IF (GO[3]>99),CALL MOTN013 ;
  79:  LBL[12] ;
  80:  ! Fehler EZ1/SP1 ;
  81:  F[300]=(DI[774] OR DI[775] OR !DI[718]) ;
  82:  TIMER[10]=((-10)) ;
  83:  WAIT (F[80] AND DO[785] OR (DI[804] OR DI[805]) AND DI[785] AND DO[785] OR DI[771] AND DI[784] OR !DO[785] OR (TIMER[10]>=0))    ;
  84:  ! Schweissung i.O. ;
  85:  F[297]=(F[80] OR DI[804] AND !DI[805] AND !DI[806] AND !DI[775] AND DI[785]) ;
  86:  ! Wiederh. bei Fehler ;
  87:  F[298]=(!F[297] AND DI[785] AND !DI[804] AND DI[805] AND DI[811] OR F[300]) ;
  88:  ! keine Wiederh. bei Fehler ;
  89:  F[279]=(DI[785] AND !DI[804] AND !DI[811]) ;
  90:  DO[145]=(OFF) ;
  91:  ! Fehler SK1 ;
  92:  F[301]=(!F[297] OR DI[811] OR DI[812]) ;
  93:  DO[785]=(OFF) ;
  94:  DO[23]=(OFF) ;
  95:  ! Kurzschlussschweissung nach Ser ;
  96:  F[271]=(GO[3]<60) ;
  97:  ! Flagbildung autom. Wiederholfra ;
  98:  F[749]=(F[731] AND F[271] AND !F[297] AND !F[748]) ;
  99:  F[748]=(!F[297]) ;
 100:  ! Sprung Makro Ende bei Kurschlus ;
 101:  IF (F[271]),JMP LBL[1] ;
 102:  ! Sprung Makro Ende bei i.O. ;
 103:  IF (F[297]),JMP LBL[1] ;
 104:  ! Sprung Makro Ende bei keine Wie ;
 105:  IF (F[279]),JMP LBL[1] ;
 106:  ! EZ1/SP1 oeffnen ;
 107:  DO[718]=(OFF) ;
 108:  DO[717]=(!DI[717]) ;
 109:  !Warte kein Punktanwahlfehler ;
 110:  WAIT (!DI[815])    ;
 111:  !Warte Zange geoeffnet ;
 112:  TIMER[10]=((-4)) ;
 113:  WAIT (DI[717] AND F[300] OR DI[717] AND F[301] OR (TIMER[10]>=0))    ;
 114:  F[118]=((TIMER[10]>=0)) ;
 115:  WAIT (DI[717] AND F[300] OR DI[717] AND F[301])    ;
 116:  F[118]=(OFF) ;
 117:  DO[717]=(OFF) ;
 118:  TIMER[10]=((-1)) ;
 119:  WAIT (F[297] OR (TIMER[10]>=0))    ;
 120:  F[118]=((TIMER[10]>=0) AND F[300]) ;
 121:  F[119]=((TIMER[10]>=0) AND F[301]) ;
 122:  WAIT (F[297] OR DI[26])    ;
 123:  WAIT (!DI[26])    ;
 124:  F[118]=(OFF) ;
 125:  F[119]=(OFF) ;
 126:  ! Wiederholen wenn kein Strom gef ;
 127:  DO[23]=(F[300] OR F[301]) ;
 128:  WAIT (DI[23])    ;
 129:  TIMER[10]=((-8)) ;
 130:  WAIT (DI[705] AND DI[713] AND DI[714] OR (TIMER[10]>=0))    ;
 131:  F[118]=((TIMER[10]>=0)) ;
 132:  WAIT (DI[705] AND DI[713] AND DI[714])    ;
 133:  F[118]=(OFF) ;
 134:  DO[23]=(ON) ;
 135:  ! EZ1/SP1 schliessen ;
 136:  DO[718]=(F[300] OR F[301]) ;
 137:  TIMER[10]=((-4)) ;
 138:  WAIT (DI[718] AND !DI[772] AND !DI[780] OR DI[774] OR DI[775] OR !DO[718] OR (TIMER[10]>=0))    ;
 139:  F[118]=((TIMER[10]>=0)) ;
 140:  WAIT (DI[718] AND !DI[772] AND !DI[780] OR DI[774] OR DI[775] OR !DO[718])    ;
 141:  F[118]=(OFF) ;
 142:  ! SK1 Schweissen Start ;
 143:  DO[145]=(ON) ;
 144:  DO[785]=(DI[718] AND !DI[774] AND !DI[775] AND (F[300] OR F[301])) ;
 145:  F[300]=(DI[774] OR DI[775]) ;
 146:  TIMER[10]=((-10)) ;
 147:  WAIT (F[80] AND DO[785] OR (DI[804] OR DI[805]) AND DI[785] AND DO[785] OR DI[771] AND DI[784] OR !DO[785] OR (TIMER[10]>=0))    ;
 148:  ! SK1 Schweissen i.O. ;
 149:  F[297]=(F[80] OR DI[804] AND !DI[805] AND !DI[806] AND !DI[775] AND DI[785]) ;
 150:  DO[145]=(OFF) ;
 151:  DO[785]=(OFF) ;
 152:  DO[23]=(OFF) ;
 153:  ! Sprungziel bei ohne Kraftaufbau ;
 154:  LBL[1] ;
 155:  TIMER[10]=((-2)) ;
 156:  WAIT (DI[705] AND DI[713] AND DI[714] OR (TIMER[10]>=0))    ;
 157:  F[118]=((TIMER[10]>=0)) ;
 158:  WAIT (DI[705] AND DI[713] AND DI[714])    ;
 159:  F[118]=(OFF) ;
 160:  ! EZ1/SP1 oeffnen ;
 161:  F[818]=(OFF) ;
 162:  IF (F[710]),JMP LBL[13] ;
 163:  IF (GO[3]>99),CALL MOTN012 ;
 164:  LBL[13] ;
 165:  DO[718]=(OFF) ;
 166:  DO[717]=(!DI[717]) ;
 167:  ! Fehler EZ1/SP1 ;
 168:  F[118]=(F[300]) ;
 169:  ! SK1 Schweissen i.O./n.i.O. ;
 170:  TIMER[10]=((-2)) ;
 171:  F[132]=(!F[297]) ;
 172:  WAIT ((F[297] OR F[749]) AND !F[300] OR (TIMER[10]>=0))    ;
 173:  F[119]=((TIMER[10]>=0)) ;
 174:  WAIT ((F[297] OR F[749]) AND !F[300] OR DI[27])    ;
 175:  F[298]=(DI[27] OR F[749] OR F[298]) ;
 176:  WAIT (!DI[27])    ;
 177:  F[119]=(OFF) ;
 178:  F[118]=(OFF) ;
 179:  F[132]=(OFF) ;
 180:  TIMER[10]=((-2)) ;
 181:  WAIT (DI[717] AND !DI[718] AND (!DI[784] OR (DI[769] OR DI[777]) AND DI[784]) OR (TIMER[10]>=0))    ;
 182:  F[118]=((TIMER[10]>=0)) ;
 183:  F[303]=(F[118]) ;
 184:  WAIT (DI[717] AND !DI[718] AND (!DI[784] OR (DI[769] OR DI[777]) AND DI[784]))    ;
 185:  F[118]=(OFF) ;
 186:  F[303]=(OFF) ;
 187:  DO[717]=(OFF) ;
 188:  DO[715]=(OFF) ;
 189:  TIMER[10]=((-2)) ;
 190:  WAIT (!DI[715] OR (TIMER[10]>=0))    ;
 191:  F[118]=((TIMER[10]>=0)) ;
 192:  WAIT (!DI[715])    ;
 193:  F[118]=(OFF) ;
 194:  DO[130]=(OFF) ;
 195:  DO[129]=(OFF) ;
 196:  F[271]=(OFF) ;
/POS
/END
