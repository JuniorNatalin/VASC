/PROG  MAKRO110
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "EZ2SP2_WPS";
PROG_GRÖßE	= 5392;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-03-27  ZEIT 17:03:26;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 189;
SPEICHERGR.	= 5812;
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
   1:  !EZ2/SP2  Schweissen ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 004 ;
   5:  !letzte Aenderung 18.08.2016 LZ ;
   6:  !F156  =  Sammelstoerung  EZ2/SP2 ;
   7:  !F157  =  Sammelstoerung  SK2  an ;
   8:  !F119  =  Sammelstoerung  SK1  an ;
   9:  A[161:SZ2 Proc. Activo]=(AN) ;
  10:  !Initialisierung Roboter-Ausgleic ;
  11:  WENN (F[710:SP c/Compenzación]),SPRUNG LABEL[10] ;
  12:  WENN (gA[6:SK2 Num.Prg.]>99),AUFRUF EQPGPRE2 ;
  13:  LABEL[10] ;
  14:  A[516:K1 Agua 2 Encender]=(AN) ;
  15:  A[875:SZ2 Lib. Posicionar]=(AN) ;
  16:  A[877:SZ2 Abrir Pinza]=(AUS) ;
  17:  A[878:SZ2 Cerrar Pinza]=(AUS) ;
  18:  A[785:SK1 Iniciar Soldadura]=(AUS) ;
  19:  A[945:SK2 Iniciar Soldadura]=(AUS) ;
  20:  F[80:SK1 Mem. Fin Sold.]=(AUS) ;
  21:  F[140:SK2 Mem. Fin Sold]=(AUS) ;
  22:  F[138:SP2 Fres.Inicial]=(AUS) ;
  23:  F[139:SP2 Fres.Ciclico]=(AUS) ;
  24:  F[142:SP2 en RIP2 Disponible]=(!F[285:2SZ en SK1]) ;
  25:  F[300:Falla SZ]=(AUS) ;
  26:  F[301:Falla SK]=(AUS) ;
  27:  F[303:Falla Reset SZ]=(AUS) ;
  28:  F[306:Fres.Pedes.Realizado]=(AUS) ;
  29:  !Abfrage Energiesparmodus ist AUS ;
  30:  TIMER[10]=((-2)) ;
  31:  WARTE (!E[866:SZ2 *Ahorro Energía] [+] (TIMER[10]>=0))    ;
  32:  F[156:SP2 Avería General]=(TIMER[10]>=0) ;
  33:  WARTE (!E[866:SZ2 *Ahorro Energía])    ;
  34:  F[156:SP2 Avería General]=(AUS) ;
  35:  !Auswertung EZ2/SP2 i.O. ;
  36:  TIMER[10]=((-2)) ;
  37:  F[818:Enc.Agua Antes d/Punto]=(AN) ;
  38:  WARTE ((E[865:SZ2 Preparado] [&] E[873:SZ2 En Autom. (Control)] [&] E[874:SZ2 Referenciada (Pinza)] [&] (!E[944:SZ2 Avería General] [+] ((E[929:SZ2 Preaviso Pinza] [+] E[937:SZ2 Falla Desgaste Caps]) [&] E[944:SZ2 Avería General]))) 
    :  [+] (TIMER[10]>=0))    ;
  39:  F[156:SP2 Avería General]=(TIMER[10]>=0) ;
  40:  !Auswertung SK2 i.O. ;
  41:  TIMER[10]=((-2)) ;
  42:  WARTE ((F[162:SP2 Flujo Agua OK] [&] !E[945:SK2 Fin Soldadura] [&] E[952:SK2 c/Corriente] [&] E[962:SK2 Listo p/soldar] [&] !F[140:SK2 Mem. Fin Sold]) [+] (!E[952:SK2 c/Corriente] [&] E[962:SK2 Listo p/soldar] [&] (
    :  E[177:SK2 Sin Soldadura] [+] F[525:s/Proceso en Step/T1])) [+] F[285:2SZ en SK1] [+] (TIMER[10]>=0))    ;
  43:  !Auswertung SK1 i.O. ;
  44:  WARTE ((F[162:SP2 Flujo Agua OK] [&] !E[785:SK1 Fin Soldadura] [&] E[792:SK1 c/Corriente] [&] E[802:SK1 Listo p/soldar] [&] !F[80:SK1 Mem. Fin Sold.]) [+] (!E[792:SK1 c/Corriente] [&] E[802:SK1 Listo p/soldar] [&] (
    :  E[145:SK1 Sin Soldadura] [+] F[525:s/Proceso en Step/T1])) [+] !F[285:2SZ en SK1] [+] (TIMER[10]>=0))    ;
  45:  F[119:SK1 Avería General (PZ1)]=((TIMER[10]>=0) [&] F[285:2SZ en SK1]) ;
  46:  F[157:SK2 Avería General (PZ2)]=((TIMER[10]>=0) [&] !F[285:2SZ en SK1]) ;
  47:  F[303:Falla Reset SZ]=((F[119:SK1 Avería General (PZ1)] [+] F[157:SK2 Avería General (PZ2)]) [&] E[944:SZ2 Avería General] [&] !E[929:SZ2 Preaviso Pinza] [&] !E[937:SZ2 Falla Desgaste Caps]) ;
  48:  !Auswertung EZ2/SP2 i.O. ;
  49:  WARTE (E[865:SZ2 Preparado] [&] E[873:SZ2 En Autom. (Control)] [&] E[874:SZ2 Referenciada (Pinza)] [&] (!E[944:SZ2 Avería General] [+] ((E[929:SZ2 Preaviso Pinza] [+] E[937:SZ2 Falla Desgaste Caps]) [&] E[944:SZ2 Avería General])))
    :      ;
  50:  F[156:SP2 Avería General]=(AUS) ;
  51:  F[303:Falla Reset SZ]=(AUS) ;
  52:  !Auswertung SK2 i.O. ;
  53:  WARTE ((F[162:SP2 Flujo Agua OK] [&] !E[945:SK2 Fin Soldadura] [&] E[952:SK2 c/Corriente] [&] E[962:SK2 Listo p/soldar] [&] !F[140:SK2 Mem. Fin Sold]) [+] (!E[952:SK2 c/Corriente] [&] E[962:SK2 Listo p/soldar] [&] (
    :  E[177:SK2 Sin Soldadura] [+] F[525:s/Proceso en Step/T1])) [+] F[285:2SZ en SK1])    ;
  54:  !Auswertung SK1 i.O. ;
  55:  WARTE ((F[162:SP2 Flujo Agua OK] [&] !E[785:SK1 Fin Soldadura] [&] E[792:SK1 c/Corriente] [&] E[802:SK1 Listo p/soldar] [&] !F[80:SK1 Mem. Fin Sold.]) [+] (!E[792:SK1 c/Corriente] [&] E[802:SK1 Listo p/soldar] [&] (
    :  E[145:SK1 Sin Soldadura] [+] F[525:s/Proceso en Step/T1])) [+] !F[285:2SZ en SK1])    ;
  56:  F[119:SK1 Avería General (PZ1)]=(AUS) ;
  57:  F[157:SK2 Avería General (PZ2)]=(AUS) ;
  58:  WARTE (E[23:Sin Sol.Acceso])    ;
  59:  A[23:Bloquear Rejas de Seg.]=(AN) ;
  60:  WARTE (!E[934:SZ2 Falla Pieza])    ;
  61:  !EZ2/SP2 schliessen ;
  62:  !Roboter-Ausgleichsfunktion start ;
  63:  WENN (F[710:SP c/Compenzación]),SPRUNG LABEL[11] ;
  64:  WENN (gA[6:SK2 Num.Prg.]>99),AUFRUF MOTN021 ;
  65:  LABEL[11] ;
  66:  A[878:SZ2 Cerrar Pinza]=(!E[878:SZ2 Fuerza alcanzada]) ;
  67:  !Auswertung EZ1/SP1 ohne Kraftauf ;
  68:  WARTE (!E[161:SZ2 Sin Fuerza] [+] (E[161:SZ2 Sin Fuerza] [&] E[26:Conf.Repetir]))    ;
  69:  !Sprung Makro Ende bei ohne Kraft ;
  70:  WENN (E[161:SZ2 Sin Fuerza]),SPRUNG LABEL[1] ;
  71:  TIMER[10]=((-4)) ;
  72:  WARTE ((E[878:SZ2 Fuerza alcanzada] [&] !E[932:SZ2 Falla Prg/Presión] [&] !E[940:SZ2 Falla Compensación]) [+] E[934:SZ2 Falla Pieza] [+] E[935:SZ2 Mov. c/Dificultad] [+] (TIMER[10]>=0))    ;
  73:  A[878:SZ2 Cerrar Pinza]=(E[878:SZ2 Fuerza alcanzada] [&] !E[934:SZ2 Falla Pieza] [&] !E[935:SZ2 Mov. c/Dificultad]) ;
  74:  A[877:SZ2 Abrir Pinza]=(!A[878:SZ2 Cerrar Pinza]) ;
  75:  !SK1/SK2 Schweissen Start ;
  76:  A[145:SK1 Proceso activo]=(F[285:2SZ en SK1]) ;
  77:  A[177:SK2 Proceso activo]=(!F[285:2SZ en SK1]) ;
  78:  A[785:SK1 Iniciar Soldadura]=(E[878:SZ2 Fuerza alcanzada] [&] !E[934:SZ2 Falla Pieza] [&] !E[935:SZ2 Mov. c/Dificultad] [&] F[285:2SZ en SK1]) ;
  79:  A[945:SK2 Iniciar Soldadura]=(E[878:SZ2 Fuerza alcanzada] [&] !E[934:SZ2 Falla Pieza] [&] !E[935:SZ2 Mov. c/Dificultad] [&] !F[285:2SZ en SK1]) ;
  80:  !Rueckstellen Zangenoeffnung ;
  81:  WENN (F[710:SP c/Compenzación]),SPRUNG LABEL[12] ;
  82:  WENN (gA[6:SK2 Num.Prg.]>99),AUFRUF MOTN023 ;
  83:  LABEL[12] ;
  84:  !Fehler EZ2/SP2 ;
  85:  F[300:Falla SZ]=(E[934:SZ2 Falla Pieza] [+] E[935:SZ2 Mov. c/Dificultad] [+] !E[878:SZ2 Fuerza alcanzada]) ;
  86:  TIMER[10]=((-10)) ;
  87:  !SK1 ;
  88:  WARTE ((F[80:SK1 Mem. Fin Sold.] [&] A[785:SK1 Iniciar Soldadura]) [+] ((E[804:SK1 OK Soldadura] [+] E[805:SK1 NOK Soldadura]) [&] E[785:SK1 Fin Soldadura] [&] A[785:SK1 Iniciar Soldadura]) [+] (E[931:SZ2 Tmpo.Pres.Excedido] [&] 
    :  E[944:SZ2 Avería General]) [+] (!A[785:SK1 Iniciar Soldadura] [&] !F[285:2SZ en SK1]) [+] (TIMER[10]>=0))    ;
  89:  !SK2 ;
  90:  WARTE ((F[140:SK2 Mem. Fin Sold] [&] A[945:SK2 Iniciar Soldadura]) [+] ((E[964:SK2 OK Soldadura] [+] E[965:SK2 NOK Soldadura]) [&] E[945:SK2 Fin Soldadura] [&] A[945:SK2 Iniciar Soldadura]) [+] (E[931:SZ2 Tmpo.Pres.Excedido] [&] 
    :  E[944:SZ2 Avería General]) [+] (!A[945:SK2 Iniciar Soldadura] [&] F[285:2SZ en SK1]) [+] (TIMER[10]>=0))    ;
  91:  F[297:Soldadura OK]=(F[140:SK2 Mem. Fin Sold] [+] F[80:SK1 Mem. Fin Sold.] [+] (((E[964:SK2 OK Soldadura] [&] !E[965:SK2 NOK Soldadura] [&] !E[966:SK2 Lim.Excedido en Sec.] [&] E[945:SK2 Fin Soldadura]) [+] (
    :  E[804:SK1 OK Soldadura] [&] !E[805:SK1 NOK Soldadura] [&] !E[806:SK1 Lim.Excedido en Sec.] [&] E[785:SK1 Fin Soldadura])) [&] !E[935:SZ2 Mov. c/Dificultad])) ;
  92:  F[298:NoRepetirSoldNOK]=((!F[297:Soldadura OK] [&] ((E[945:SK2 Fin Soldadura] [&] !E[964:SK2 OK Soldadura] [&] E[965:SK2 NOK Soldadura] [&] E[971:SK2 Falla Sens. Corrien.]) [+] (E[785:SK1 Fin Soldadura] [&] !
    :  E[804:SK1 OK Soldadura] [&] E[805:SK1 NOK Soldadura] [&] E[811:SK1 Falla Sens. Corrien.]))) [+] F[300:Falla SZ]) ;
  93:  A[145:SK1 Proceso activo]=(AUS) ;
  94:  A[177:SK2 Proceso activo]=(AUS) ;
  95:  !Fehler SK1/SK2 ;
  96:  F[301:Falla SK]=(!F[297:Soldadura OK] [+] E[811:SK1 Falla Sens. Corrien.] [+] E[971:SK2 Falla Sens. Corrien.] [+] E[812:SK1 Falla Sens. Tensión] [+] E[972:SK2 Falla Sens. Tensión]) ;
  97:  A[23:Bloquear Rejas de Seg.]=(AUS) ;
  98:  A[785:SK1 Iniciar Soldadura]=(AUS) ;
  99:  A[945:SK2 Iniciar Soldadura]=(AUS) ;
 100:  !Sprung Makro Ende bei i.O. ;
 101:  WENN (F[297:Soldadura OK] [+] !F[298:NoRepetirSoldNOK]),SPRUNG LABEL[1] ;
 102:  !EZ2/SP2 oeffnen ;
 103:  !R-Ausgleichsfunktion Zange oeffn ;
 104:  !Roboter-Ausgleichsfunktion ende ;
 105:  A[878:SZ2 Cerrar Pinza]=(AUS) ;
 106:  A[877:SZ2 Abrir Pinza]=(!E[877:SZ2 Pinza abierta]) ;
 107:  !Warte kein Punktanwahlfehler ;
 108:  WARTE (!E[815:SK1 Falla Sel. Punto] [&] !E[975:SK2 Falla Sel. Punto])    ;
 109:  !Warte Zange geoeffnet ;
 110:  TIMER[10]=((-2)) ;
 111:  WARTE ((E[877:SZ2 Pinza abierta] [&] F[298:NoRepetirSoldNOK]) [+] (E[877:SZ2 Pinza abierta] [&] F[300:Falla SZ]) [+] (E[877:SZ2 Pinza abierta] [&] F[301:Falla SK]) [+] (TIMER[10]>=0))    ;
 112:  F[156:SP2 Avería General]=(TIMER[10]>=0) ;
 113:  WARTE ((E[877:SZ2 Pinza abierta] [&] F[298:NoRepetirSoldNOK]) [+] (E[877:SZ2 Pinza abierta] [&] F[300:Falla SZ]) [+] (E[877:SZ2 Pinza abierta] [&] F[301:Falla SK]))    ;
 114:  F[156:SP2 Avería General]=(AUS) ;
 115:  A[877:SZ2 Abrir Pinza]=(AUS) ;
 116:  TIMER[10]=((-1)) ;
 117:  WARTE (F[297:Soldadura OK] [+] E[26:Conf.Repetir] [+] (TIMER[10]>=0))    ;
 118:  F[119:SK1 Avería General (PZ1)]=((TIMER[10]>=0) [&] F[285:2SZ en SK1]) ;
 119:  F[157:SK2 Avería General (PZ2)]=((TIMER[10]>=0) [&] !F[285:2SZ en SK1]) ;
 120:  WARTE (F[297:Soldadura OK] [+] E[26:Conf.Repetir])    ;
 121:  WARTE (!E[26:Conf.Repetir])    ;
 122:  F[119:SK1 Avería General (PZ1)]=(AUS) ;
 123:  F[157:SK2 Avería General (PZ2)]=(AUS) ;
 124:  !Wiederholen wenn kein Strom flie ;
 125:  A[23:Bloquear Rejas de Seg.]=(F[300:Falla SZ] [+] F[301:Falla SK]) ;
 126:  !EZ2/SP2 schliessen ;
 127:  A[878:SZ2 Cerrar Pinza]=(F[300:Falla SZ] [+] F[301:Falla SK]) ;
 128:  TIMER[10]=((-4)) ;
 129:  WARTE ((E[878:SZ2 Fuerza alcanzada] [&] !E[932:SZ2 Falla Prg/Presión] [&] !E[940:SZ2 Falla Compensación]) [+] E[934:SZ2 Falla Pieza] [+] E[935:SZ2 Mov. c/Dificultad] [+] !A[878:SZ2 Cerrar Pinza] [+] (TIMER[10]>=0))    ;
 130:  F[156:SP2 Avería General]=(TIMER[10]>=0) ;
 131:  WARTE ((E[878:SZ2 Fuerza alcanzada] [&] !E[932:SZ2 Falla Prg/Presión] [&] !E[940:SZ2 Falla Compensación]) [+] E[934:SZ2 Falla Pieza] [+] E[935:SZ2 Mov. c/Dificultad] [+] !A[878:SZ2 Cerrar Pinza])    ;
 132:  F[156:SP2 Avería General]=(AUS) ;
 133:  !SK1/SK2 Schweissen Start ;
 134:  A[145:SK1 Proceso activo]=(F[285:2SZ en SK1]) ;
 135:  A[177:SK2 Proceso activo]=(!F[285:2SZ en SK1]) ;
 136:  A[785:SK1 Iniciar Soldadura]=(E[878:SZ2 Fuerza alcanzada] [&] !E[934:SZ2 Falla Pieza] [&] !E[935:SZ2 Mov. c/Dificultad] [&] (F[300:Falla SZ] [+] F[301:Falla SK]) [&] F[285:2SZ en SK1]) ;
 137:  A[945:SK2 Iniciar Soldadura]=(E[878:SZ2 Fuerza alcanzada] [&] !E[934:SZ2 Falla Pieza] [&] !E[935:SZ2 Mov. c/Dificultad] [&] (F[300:Falla SZ] [+] F[301:Falla SK]) [&] !F[285:2SZ en SK1]) ;
 138:  F[300:Falla SZ]=(E[934:SZ2 Falla Pieza] [+] E[935:SZ2 Mov. c/Dificultad]) ;
 139:  TIMER[10]=((-10)) ;
 140:  !SK1 ;
 141:  WARTE ((F[80:SK1 Mem. Fin Sold.] [&] A[785:SK1 Iniciar Soldadura]) [+] ((E[804:SK1 OK Soldadura] [+] E[805:SK1 NOK Soldadura]) [&] E[785:SK1 Fin Soldadura] [&] A[785:SK1 Iniciar Soldadura]) [+] (E[931:SZ2 Tmpo.Pres.Excedido] [&] 
    :  E[944:SZ2 Avería General]) [+] (!A[785:SK1 Iniciar Soldadura] [&] !F[285:2SZ en SK1]) [+] (TIMER[10]>=0))    ;
 142:  !SK2 ;
 143:  WARTE ((F[140:SK2 Mem. Fin Sold] [&] A[945:SK2 Iniciar Soldadura]) [+] ((E[964:SK2 OK Soldadura] [+] E[965:SK2 NOK Soldadura]) [&] E[945:SK2 Fin Soldadura] [&] A[945:SK2 Iniciar Soldadura]) [+] (E[931:SZ2 Tmpo.Pres.Excedido] [&] 
    :  E[944:SZ2 Avería General]) [+] (!A[945:SK2 Iniciar Soldadura] [&] F[285:2SZ en SK1]) [+] (TIMER[10]>=0))    ;
 144:  !SK1/SK2 Schweissen i.O. ;
 145:  F[297:Soldadura OK]=(F[140:SK2 Mem. Fin Sold] [+] F[80:SK1 Mem. Fin Sold.] [+] (((E[964:SK2 OK Soldadura] [&] !E[965:SK2 NOK Soldadura] [&] !E[966:SK2 Lim.Excedido en Sec.] [&] E[945:SK2 Fin Soldadura]) [+] (
    :  E[804:SK1 OK Soldadura] [&] !E[805:SK1 NOK Soldadura] [&] !E[806:SK1 Lim.Excedido en Sec.] [&] E[785:SK1 Fin Soldadura])) [&] !E[935:SZ2 Mov. c/Dificultad])) ;
 146:  A[145:SK1 Proceso activo]=(F[285:2SZ en SK1]) ;
 147:  A[177:SK2 Proceso activo]=(!F[285:2SZ en SK1]) ;
 148:  A[785:SK1 Iniciar Soldadura]=(AUS) ;
 149:  A[945:SK2 Iniciar Soldadura]=(AUS) ;
 150:  A[23:Bloquear Rejas de Seg.]=(AUS) ;
 151:  !Sprungziel i.O/ohne Kraftaufbau ;
 152:  LABEL[1] ;
 153:  !EZ2/SP2 oeffnen ;
 154:  !Roboter-Ausgleichsfunktion ende ;
 155:  !R-Ausgleichsfunktion Zange oeffn ;
 156:  A[878:SZ2 Cerrar Pinza]=(AUS) ;
 157:  F[818:Enc.Agua Antes d/Punto]=(AUS) ;
 158:  WENN (F[710:SP c/Compenzación]),SPRUNG LABEL[13] ;
 159:  WENN (gA[6:SK2 Num.Prg.]>99),AUFRUF MOTN022 ;
 160:  LABEL[13] ;
 161:  A[877:SZ2 Abrir Pinza]=(!E[877:SZ2 Pinza abierta]) ;
 162:  TIMER[10]=((-2)) ;
 163:  WARTE ((E[877:SZ2 Pinza abierta] [&] !E[878:SZ2 Fuerza alcanzada] [&] (!E[944:SZ2 Avería General] [+] ((E[929:SZ2 Preaviso Pinza] [+] E[937:SZ2 Falla Desgaste Caps]) [&] E[944:SZ2 Avería General]))) [+] (TIMER[10]>=0))    ;
 164:  F[156:SP2 Avería General]=(TIMER[10]>=0) ;
 165:  F[303:Falla Reset SZ]=(F[156:SP2 Avería General]) ;
 166:  WARTE (E[877:SZ2 Pinza abierta] [&] !E[878:SZ2 Fuerza alcanzada] [&] (!E[944:SZ2 Avería General] [+] ((E[929:SZ2 Preaviso Pinza] [+] E[937:SZ2 Falla Desgaste Caps]) [&] E[944:SZ2 Avería General])))    ;
 167:  F[156:SP2 Avería General]=(AUS) ;
 168:  F[303:Falla Reset SZ]=(AUS) ;
 169:  A[877:SZ2 Abrir Pinza]=(AUS) ;
 170:  F[132:SP1 Soldadu. NOK]=(!F[297:Soldadura OK] [&] F[285:2SZ en SK1]) ;
 171:  F[166:SP2 Soldadu. NOK]=(!F[297:Soldadura OK] [&] !F[285:2SZ en SK1]) ;
 172:  TIMER[10]=((-1)) ;
 173:  WARTE (F[297:Soldadura OK] [+] E[27:Conf.Continuar] [+] (TIMER[10]>=0))    ;
 174:  F[119:SK1 Avería General (PZ1)]=((TIMER[10]>=0) [&] F[285:2SZ en SK1]) ;
 175:  F[157:SK2 Avería General (PZ2)]=((TIMER[10]>=0) [&] !F[285:2SZ en SK1]) ;
 176:  WARTE (F[297:Soldadura OK] [+] E[27:Conf.Continuar])    ;
 177:  F[298:NoRepetirSoldNOK]=(E[27:Conf.Continuar] [+] F[298:NoRepetirSoldNOK]) ;
 178:  WARTE (!E[27:Conf.Continuar])    ;
 179:  F[119:SK1 Avería General (PZ1)]=(AUS) ;
 180:  F[157:SK2 Avería General (PZ2)]=(AUS) ;
 181:  F[132:SP1 Soldadu. NOK]=(AUS) ;
 182:  F[166:SP2 Soldadu. NOK]=(AUS) ;
 183:  TIMER[10]=((-2)) ;
 184:  A[875:SZ2 Lib. Posicionar]=(AUS) ;
 185:  WARTE (!E[875:SZ2 Posicionam. Activo] [+] (TIMER[10]>=0))    ;
 186:  F[156:SP2 Avería General]=(TIMER[10]>=0) ;
 187:  WARTE (!E[875:SZ2 Posicionam. Activo])    ;
 188:  F[156:SP2 Avería General]=(AUS) ;
 189:  A[161:SZ2 Proc. Activo]=(AUS) ;
/POS
/END
