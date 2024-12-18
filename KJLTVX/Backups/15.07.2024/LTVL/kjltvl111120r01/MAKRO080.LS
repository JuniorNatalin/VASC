/PROG  MAKRO080
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "EZ1SP1_WPS";
PROG_GR��E	= 5154;
ERSTELL		= TAG 15-06-03  ZEIT 13:15:46;
GE�NDERT	= TAG 17-03-27  ZEIT 17:03:24;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 196;
SPEICHERGR.	= 5674;
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
   1:  ! EZ1/SP1 Schweissen ;
   2:  ! KS24 ;
   3:  ! Version: 02 ;
   4:  ! Stand: 003 ;
   5:  ! letzte Aenderung 23.01.2016 MBA ;
   6:  ! F118 = Sammelstoerung EZ1/SP1 a ;
   7:  ! F119 = Sammelstoerung SK1 an BM ;
   8:  A[129:SZ1 Proc. Activo]=(AN) ;
   9:  !Initialisierung Roboter-Ausgleic ;
  10:  WENN (F[710:SP c/Compenzaci�n]),SPRUNG LABEL[10] ;
  11:  WENN (gA[3:SK1 Num.Prg.]>99),AUFRUF EQPGPRE1 ;
  12:  LABEL[10] ;
  13:  ! Abfrage Energiesparmodus ist AU ;
  14:  TIMER[10]=((-2)) ;
  15:  WARTE (!E[706:SZ1 *Ahorro Energ�a] [+] (TIMER[10]>=0))    ;
  16:  F[118:SP1 Aver�a General (PZ1)]=((TIMER[10]>=0)) ;
  17:  WARTE (!E[706:SZ1 *Ahorro Energ�a])    ;
  18:  F[118:SP1 Aver�a General (PZ1)]=(AUS) ;
  19:  A[715:SZ1 Lib. Posicionar]=(AN) ;
  20:  A[717:SZ1 Abrir Pinza]=(AUS) ;
  21:  A[718:SZ1 Cerrar Pinza]=(AUS) ;
  22:  A[785:SK1 Iniciar Soldadura]=(AUS) ;
  23:  F[78:SP1 Fres. Inicial]=(AUS) ;
  24:  F[79:SP1 Fres. C�clico]=(AUS) ;
  25:  F[80:SK1 Mem. Fin Sold.]=(AUS) ;
  26:  F[300:Falla SZ]=(AUS) ;
  27:  F[301:Falla SK]=(AUS) ;
  28:  F[303:Falla Reset SZ]=(AUS) ;
  29:  F[306:Fres.Pedes.Realizado]=(AUS) ;
  30:  F[271:Aux. Ciclo Makros]=(AUS) ;
  31:  F[749:SP Repitiendo Fresado]=(AUS) ;
  32:  ! Auswertung EZ1/SP1 i.O. ;
  33:  TIMER[10]=((-2)) ;
  34:  F[818:Enc.Agua Antes d/Punto]=(AN) ;
  35:  WARTE (E[705:SZ1 Preparado] [&] E[713:SZ1 En Autom. (Control)] [&] E[714:SZ1 Referenciada (Pinza)] [&] (!E[784:SZ1 Aver�a General] [+] (E[769:SZ1 Preaviso Pinza] [+] E[777:SZ1 Falla Desgaste Caps]) [&] E[784:SZ1 Aver�a General]) [+] 
    :  (TIMER[10]>=0))    ;
  36:  F[118:SP1 Aver�a General (PZ1)]=((TIMER[10]>=0)) ;
  37:  ! Auswertung SK1 i.O. ;
  38:  TIMER[10]=((-2)) ;
  39:  WARTE (F[127:SP1 Flujo Agua OK] [&] !E[785:SK1 Fin Soldadura] [&] E[792:SK1 c/Corriente] [&] E[802:SK1 Listo p/soldar] [&] !F[80:SK1 Mem. Fin Sold.] [+] !E[792:SK1 c/Corriente] [&] E[802:SK1 Listo p/soldar] [&] (
    :  E[145:SK1 Sin Soldadura] [+] F[525:s/Proceso en Step/T1]) [+] (TIMER[10]>=0))    ;
  40:  F[119:SK1 Aver�a General (PZ1)]=((TIMER[10]>=0)) ;
  41:  F[303:Falla Reset SZ]=((F[118:SP1 Aver�a General (PZ1)] [+] F[119:SK1 Aver�a General (PZ1)]) [&] E[784:SZ1 Aver�a General] [&] !E[769:SZ1 Preaviso Pinza] [&] !E[777:SZ1 Falla Desgaste Caps]) ;
  42:  ! Auswertung EZ1/SP1 i.O. ;
  43:  WARTE (E[705:SZ1 Preparado] [&] E[713:SZ1 En Autom. (Control)] [&] E[714:SZ1 Referenciada (Pinza)] [&] (!E[784:SZ1 Aver�a General] [+] (E[769:SZ1 Preaviso Pinza] [+] E[777:SZ1 Falla Desgaste Caps]) [&] E[784:SZ1 Aver�a General]))    ;
  44:  F[118:SP1 Aver�a General (PZ1)]=(AUS) ;
  45:  F[303:Falla Reset SZ]=(AUS) ;
  46:  ! Auswertung SK1 i.O. ;
  47:  WARTE (F[127:SP1 Flujo Agua OK] [&] !E[785:SK1 Fin Soldadura] [&] E[792:SK1 c/Corriente] [&] E[802:SK1 Listo p/soldar] [&] !F[80:SK1 Mem. Fin Sold.] [+] !E[792:SK1 c/Corriente] [&] E[802:SK1 Listo p/soldar] [&] (
    :  E[145:SK1 Sin Soldadura] [+] F[525:s/Proceso en Step/T1]))    ;
  48:  F[119:SK1 Aver�a General (PZ1)]=(AUS) ;
  49:  A[718:SZ1 Cerrar Pinza]=(AN) ;
  50:  WARTE (E[23:Sin Sol.Acceso])    ;
  51:  A[718:SZ1 Cerrar Pinza]=(AN) ;
  52:  TIMER[10]=((-8)) ;
  53:  WARTE (E[705:SZ1 Preparado] [&] E[713:SZ1 En Autom. (Control)] [&] E[714:SZ1 Referenciada (Pinza)] [+] (TIMER[10]>=0))    ;
  54:  F[118:SP1 Aver�a General (PZ1)]=((TIMER[10]>=0)) ;
  55:  WARTE (E[705:SZ1 Preparado] [&] E[713:SZ1 En Autom. (Control)] [&] E[714:SZ1 Referenciada (Pinza)])    ;
  56:  F[118:SP1 Aver�a General (PZ1)]=(AUS) ;
  57:  A[23:Bloquear Rejas de Seg.]=(AN) ;
  58:  ! Auswertung EZ1/SP1 ohne Kraftau ;
  59:  WARTE (!E[129:SZ1 Sin Fuerza] [+] E[129:SZ1 Sin Fuerza] [&] E[26:Conf.Repetir])    ;
  60:  ! Sprung Makro Ende bei ohne Kraf ;
  61:  WENN (E[129:SZ1 Sin Fuerza]),SPRUNG LABEL[1] ;
  62:  ! EZ1/SP1 schliessen ;
  63:  !Roboter-Ausgleichsfunktion start ;
  64:  WENN (F[710:SP c/Compenzaci�n]),SPRUNG LABEL[11] ;
  65:  WENN (gA[3:SK1 Num.Prg.]>99),AUFRUF MOTN011 ;
  66:  LABEL[11] ;
  67:  A[718:SZ1 Cerrar Pinza]=(!E[718:SZ1 Fuerza alcanzada]) ;
  68:  A[718:SZ1 Cerrar Pinza]=(AN) ;
  69:  TIMER[10]=((-2.5)) ;
  70:  WARTE (E[718:SZ1 Fuerza alcanzada] [&] !E[772:SZ1 Falla Prg/Presi�n] [+] E[772:SZ1 Falla Prg/Presi�n] [+] E[774:SZ1 Falla Pieza] [+] E[775:SZ1 Mov. c/Dificultad] [+] (TIMER[10]>=0))    ;
  71:  A[718:SZ1 Cerrar Pinza]=(E[718:SZ1 Fuerza alcanzada] [&] !E[772:SZ1 Falla Prg/Presi�n] [&] !E[774:SZ1 Falla Pieza] [&] !E[775:SZ1 Mov. c/Dificultad]) ;
  72:  A[717:SZ1 Abrir Pinza]=(!A[718:SZ1 Cerrar Pinza]) ;
  73:  ! SK1 Schweissen Start ;
  74:  A[145:SK1 Proceso activo]=(AN) ;
  75:  A[785:SK1 Iniciar Soldadura]=(E[718:SZ1 Fuerza alcanzada] [&] !E[772:SZ1 Falla Prg/Presi�n] [&] !E[774:SZ1 Falla Pieza] [&] !E[775:SZ1 Mov. c/Dificultad]) ;
  76:  !Rueckstellen Zangenoeffnung ;
  77:  WENN (F[710:SP c/Compenzaci�n]),SPRUNG LABEL[12] ;
  78:  WENN (gA[3:SK1 Num.Prg.]>99),AUFRUF MOTN013 ;
  79:  LABEL[12] ;
  80:  ! Fehler EZ1/SP1 ;
  81:  F[300:Falla SZ]=(E[774:SZ1 Falla Pieza] [+] E[775:SZ1 Mov. c/Dificultad] [+] !E[718:SZ1 Fuerza alcanzada]) ;
  82:  TIMER[10]=((-10)) ;
  83:  WARTE (F[80:SK1 Mem. Fin Sold.] [&] A[785:SK1 Iniciar Soldadura] [+] (E[804:SK1 OK Soldadura] [+] E[805:SK1 NOK Soldadura]) [&] E[785:SK1 Fin Soldadura] [&] A[785:SK1 Iniciar Soldadura] [+] E[771:SZ1 Tmpo.Pres.Excedido] [&] 
    :  E[784:SZ1 Aver�a General] [+] !A[785:SK1 Iniciar Soldadura] [+] (TIMER[10]>=0))    ;
  84:  ! Schweissung i.O. ;
  85:  F[297:Soldadura OK]=(F[80:SK1 Mem. Fin Sold.] [+] E[804:SK1 OK Soldadura] [&] !E[805:SK1 NOK Soldadura] [&] !E[806:SK1 Lim.Excedido en Sec.] [&] !E[775:SZ1 Mov. c/Dificultad] [&] E[785:SK1 Fin Soldadura]) ;
  86:  ! Wiederh. bei Fehler ;
  87:  F[298:NoRepetirSoldNOK]=(!F[297:Soldadura OK] [&] E[785:SK1 Fin Soldadura] [&] !E[804:SK1 OK Soldadura] [&] E[805:SK1 NOK Soldadura] [&] E[811:SK1 Falla Sens. Corrien.] [+] F[300:Falla SZ]) ;
  88:  ! keine Wiederh. bei Fehler ;
  89:  F[279:SPx s/Repetici�n]=(E[785:SK1 Fin Soldadura] [&] !E[804:SK1 OK Soldadura] [&] !E[811:SK1 Falla Sens. Corrien.]) ;
  90:  A[145:SK1 Proceso activo]=(AUS) ;
  91:  ! Fehler SK1 ;
  92:  F[301:Falla SK]=(!F[297:Soldadura OK] [+] E[811:SK1 Falla Sens. Corrien.] [+] E[812:SK1 Falla Sens. Tensi�n]) ;
  93:  A[785:SK1 Iniciar Soldadura]=(AUS) ;
  94:  A[23:Bloquear Rejas de Seg.]=(AUS) ;
  95:  ! Kurzschlussschweissung nach Ser ;
  96:  F[271:Aux. Ciclo Makros]=(gA[3:SK1 Num.Prg.]<60) ;
  97:  ! Flagbildung autom. Wiederholfra ;
  98:  F[749:SP Repitiendo Fresado]=(F[731:Rep.Fres>Prueb.Resist.] [&] F[271:Aux. Ciclo Makros] [&] !F[297:Soldadura OK] [&] !F[748:SP Se repiti� Fresado]) ;
  99:  F[748:SP Se repiti� Fresado]=(!F[297:Soldadura OK]) ;
 100:  ! Sprung Makro Ende bei Kurschlus ;
 101:  WENN (F[271:Aux. Ciclo Makros]),SPRUNG LABEL[1] ;
 102:  ! Sprung Makro Ende bei i.O. ;
 103:  WENN (F[297:Soldadura OK]),SPRUNG LABEL[1] ;
 104:  ! Sprung Makro Ende bei keine Wie ;
 105:  WENN (F[279:SPx s/Repetici�n]),SPRUNG LABEL[1] ;
 106:  ! EZ1/SP1 oeffnen ;
 107:  A[718:SZ1 Cerrar Pinza]=(AUS) ;
 108:  A[717:SZ1 Abrir Pinza]=(!E[717:SZ1 Pinza abierta]) ;
 109:  !Warte kein Punktanwahlfehler ;
 110:  WARTE (!E[815:SK1 Falla Sel. Punto])    ;
 111:  !Warte Zange geoeffnet ;
 112:  TIMER[10]=((-4)) ;
 113:  WARTE (E[717:SZ1 Pinza abierta] [&] F[300:Falla SZ] [+] E[717:SZ1 Pinza abierta] [&] F[301:Falla SK] [+] (TIMER[10]>=0))    ;
 114:  F[118:SP1 Aver�a General (PZ1)]=((TIMER[10]>=0)) ;
 115:  WARTE (E[717:SZ1 Pinza abierta] [&] F[300:Falla SZ] [+] E[717:SZ1 Pinza abierta] [&] F[301:Falla SK])    ;
 116:  F[118:SP1 Aver�a General (PZ1)]=(AUS) ;
 117:  A[717:SZ1 Abrir Pinza]=(AUS) ;
 118:  TIMER[10]=((-1)) ;
 119:  WARTE (F[297:Soldadura OK] [+] (TIMER[10]>=0))    ;
 120:  F[118:SP1 Aver�a General (PZ1)]=((TIMER[10]>=0) [&] F[300:Falla SZ]) ;
 121:  F[119:SK1 Aver�a General (PZ1)]=((TIMER[10]>=0) [&] F[301:Falla SK]) ;
 122:  WARTE (F[297:Soldadura OK] [+] E[26:Conf.Repetir])    ;
 123:  WARTE (!E[26:Conf.Repetir])    ;
 124:  F[118:SP1 Aver�a General (PZ1)]=(AUS) ;
 125:  F[119:SK1 Aver�a General (PZ1)]=(AUS) ;
 126:  ! Wiederholen wenn kein Strom gef ;
 127:  A[23:Bloquear Rejas de Seg.]=(F[300:Falla SZ] [+] F[301:Falla SK]) ;
 128:  WARTE (E[23:Sin Sol.Acceso])    ;
 129:  TIMER[10]=((-8)) ;
 130:  WARTE (E[705:SZ1 Preparado] [&] E[713:SZ1 En Autom. (Control)] [&] E[714:SZ1 Referenciada (Pinza)] [+] (TIMER[10]>=0))    ;
 131:  F[118:SP1 Aver�a General (PZ1)]=((TIMER[10]>=0)) ;
 132:  WARTE (E[705:SZ1 Preparado] [&] E[713:SZ1 En Autom. (Control)] [&] E[714:SZ1 Referenciada (Pinza)])    ;
 133:  F[118:SP1 Aver�a General (PZ1)]=(AUS) ;
 134:  A[23:Bloquear Rejas de Seg.]=(AN) ;
 135:  ! EZ1/SP1 schliessen ;
 136:  A[718:SZ1 Cerrar Pinza]=(F[300:Falla SZ] [+] F[301:Falla SK]) ;
 137:  TIMER[10]=((-4)) ;
 138:  WARTE (E[718:SZ1 Fuerza alcanzada] [&] !E[772:SZ1 Falla Prg/Presi�n] [&] !E[780:SZ1 Falla Compensaci�n] [+] E[774:SZ1 Falla Pieza] [+] E[775:SZ1 Mov. c/Dificultad] [+] !A[718:SZ1 Cerrar Pinza] [+] (TIMER[10]>=0))    ;
 139:  F[118:SP1 Aver�a General (PZ1)]=((TIMER[10]>=0)) ;
 140:  WARTE (E[718:SZ1 Fuerza alcanzada] [&] !E[772:SZ1 Falla Prg/Presi�n] [&] !E[780:SZ1 Falla Compensaci�n] [+] E[774:SZ1 Falla Pieza] [+] E[775:SZ1 Mov. c/Dificultad] [+] !A[718:SZ1 Cerrar Pinza])    ;
 141:  F[118:SP1 Aver�a General (PZ1)]=(AUS) ;
 142:  ! SK1 Schweissen Start ;
 143:  A[145:SK1 Proceso activo]=(AN) ;
 144:  A[785:SK1 Iniciar Soldadura]=(E[718:SZ1 Fuerza alcanzada] [&] !E[774:SZ1 Falla Pieza] [&] !E[775:SZ1 Mov. c/Dificultad] [&] (F[300:Falla SZ] [+] F[301:Falla SK])) ;
 145:  F[300:Falla SZ]=(E[774:SZ1 Falla Pieza] [+] E[775:SZ1 Mov. c/Dificultad]) ;
 146:  TIMER[10]=((-10)) ;
 147:  WARTE (F[80:SK1 Mem. Fin Sold.] [&] A[785:SK1 Iniciar Soldadura] [+] (E[804:SK1 OK Soldadura] [+] E[805:SK1 NOK Soldadura]) [&] E[785:SK1 Fin Soldadura] [&] A[785:SK1 Iniciar Soldadura] [+] E[771:SZ1 Tmpo.Pres.Excedido] [&] 
    :  E[784:SZ1 Aver�a General] [+] !A[785:SK1 Iniciar Soldadura] [+] (TIMER[10]>=0))    ;
 148:  ! SK1 Schweissen i.O. ;
 149:  F[297:Soldadura OK]=(F[80:SK1 Mem. Fin Sold.] [+] E[804:SK1 OK Soldadura] [&] !E[805:SK1 NOK Soldadura] [&] !E[806:SK1 Lim.Excedido en Sec.] [&] !E[775:SZ1 Mov. c/Dificultad] [&] E[785:SK1 Fin Soldadura]) ;
 150:  A[145:SK1 Proceso activo]=(AUS) ;
 151:  A[785:SK1 Iniciar Soldadura]=(AUS) ;
 152:  A[23:Bloquear Rejas de Seg.]=(AUS) ;
 153:  ! Sprungziel bei ohne Kraftaufbau ;
 154:  LABEL[1] ;
 155:  TIMER[10]=((-2)) ;
 156:  WARTE (E[705:SZ1 Preparado] [&] E[713:SZ1 En Autom. (Control)] [&] E[714:SZ1 Referenciada (Pinza)] [+] (TIMER[10]>=0))    ;
 157:  F[118:SP1 Aver�a General (PZ1)]=((TIMER[10]>=0)) ;
 158:  WARTE (E[705:SZ1 Preparado] [&] E[713:SZ1 En Autom. (Control)] [&] E[714:SZ1 Referenciada (Pinza)])    ;
 159:  F[118:SP1 Aver�a General (PZ1)]=(AUS) ;
 160:  ! EZ1/SP1 oeffnen ;
 161:  F[818:Enc.Agua Antes d/Punto]=(AUS) ;
 162:  WENN (F[710:SP c/Compenzaci�n]),SPRUNG LABEL[13] ;
 163:  WENN (gA[3:SK1 Num.Prg.]>99),AUFRUF MOTN012 ;
 164:  LABEL[13] ;
 165:  A[718:SZ1 Cerrar Pinza]=(AUS) ;
 166:  A[717:SZ1 Abrir Pinza]=(!E[717:SZ1 Pinza abierta]) ;
 167:  ! Fehler EZ1/SP1 ;
 168:  F[118:SP1 Aver�a General (PZ1)]=(F[300:Falla SZ]) ;
 169:  ! SK1 Schweissen i.O./n.i.O. ;
 170:  TIMER[10]=((-2)) ;
 171:  F[132:SP1 Soldadu. NOK]=(!F[297:Soldadura OK]) ;
 172:  WARTE ((F[297:Soldadura OK] [+] F[749:SP Repitiendo Fresado]) [&] !F[300:Falla SZ] [+] (TIMER[10]>=0))    ;
 173:  F[119:SK1 Aver�a General (PZ1)]=((TIMER[10]>=0)) ;
 174:  WARTE ((F[297:Soldadura OK] [+] F[749:SP Repitiendo Fresado]) [&] !F[300:Falla SZ] [+] E[27:Conf.Continuar])    ;
 175:  F[298:NoRepetirSoldNOK]=(E[27:Conf.Continuar] [+] F[749:SP Repitiendo Fresado] [+] F[298:NoRepetirSoldNOK]) ;
 176:  WARTE (!E[27:Conf.Continuar])    ;
 177:  F[119:SK1 Aver�a General (PZ1)]=(AUS) ;
 178:  F[118:SP1 Aver�a General (PZ1)]=(AUS) ;
 179:  F[132:SP1 Soldadu. NOK]=(AUS) ;
 180:  TIMER[10]=((-2)) ;
 181:  WARTE (E[717:SZ1 Pinza abierta] [&] !E[718:SZ1 Fuerza alcanzada] [&] (!E[784:SZ1 Aver�a General] [+] (E[769:SZ1 Preaviso Pinza] [+] E[777:SZ1 Falla Desgaste Caps]) [&] E[784:SZ1 Aver�a General]) [+] (TIMER[10]>=0))    ;
 182:  F[118:SP1 Aver�a General (PZ1)]=((TIMER[10]>=0)) ;
 183:  F[303:Falla Reset SZ]=(F[118:SP1 Aver�a General (PZ1)]) ;
 184:  WARTE (E[717:SZ1 Pinza abierta] [&] !E[718:SZ1 Fuerza alcanzada] [&] (!E[784:SZ1 Aver�a General] [+] (E[769:SZ1 Preaviso Pinza] [+] E[777:SZ1 Falla Desgaste Caps]) [&] E[784:SZ1 Aver�a General]))    ;
 185:  F[118:SP1 Aver�a General (PZ1)]=(AUS) ;
 186:  F[303:Falla Reset SZ]=(AUS) ;
 187:  A[717:SZ1 Abrir Pinza]=(AUS) ;
 188:  A[715:SZ1 Lib. Posicionar]=(AUS) ;
 189:  TIMER[10]=((-2)) ;
 190:  WARTE (!E[715:SZ1 Posicionam. Activo] [+] (TIMER[10]>=0))    ;
 191:  F[118:SP1 Aver�a General (PZ1)]=((TIMER[10]>=0)) ;
 192:  WARTE (!E[715:SZ1 Posicionam. Activo])    ;
 193:  F[118:SP1 Aver�a General (PZ1)]=(AUS) ;
 194:  A[130:SZ1 en Fresador]=(AUS) ;
 195:  A[129:SZ1 Proc. Activo]=(AUS) ;
 196:  F[271:Aux. Ciclo Makros]=(AUS) ;
/POS
/END
