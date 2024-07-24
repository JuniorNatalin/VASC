/PROG  FOLGE020
/ATTR
EIGN.		= GME;
KOMMENTAR	= "VW336";
PROG_GRÖßE	= 6854;
ERSTELL		= TAG 96-06-10  ZEIT 20:12:02;
GEÄNDERT	= TAG 23-06-29  ZEIT 01:56:58;
DATEI_NAME	= FOLE020;
VERSION		= 0;
ZEILEN		= 47;
SPEICHERGR.	= 10674;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 500,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= 1,1,1,1,*;
KONTROLLCODE	= 00000000 00000000;
/APPL
/MN
   1:  BENUTZER_NUM=0 ;
   2:  WKZ_NUM=1 ;
   3:  TRAGLST[1] ;
   4:J P[1] 10% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  WENN (A[12:Automático]),AUFRUF MAKRO998 ;
      2:  A[15:PF0 Robot (Punto Cero)]=AN ;
      3:  A[16:SAK Robot (En camino)]=AN ;
      4:  AUFRUF MAKRO000    ;
      5:  WARTE (E[9:Iniciar Secuencia])    ;
       ------ ;
   5:  !Fresado SP1 & SP2 ;
   6:J P[2] 100% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  TIMER[1]=RESET ;
      4:  TIMER[1]=START ;
      5:  AUFRUF MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  A[80:PL>Cortina Seg.]=AN ;
      8:  A[79:PL>1120 Herramienta]=AN ;
      9:  A[78:Ctrl.1120 Cil.]=AUS ;
     10:  A[77:Pos.Tomar 1120]=AUS ;
     11:  A[76:PL>1125 Depósito]=AN ;
     12:  A[74:Pos.Dejar 1125]=AUS ;
     13:  !Lib. de Anticolisiones ;
     14:  A[41:Blq>1130R01(1)]=AN ;
     15:  A[42:Blq>1130R01(2)]=AN ;
     16:  !Apagar Posicion Base ;
     17:  A[15:PF0 Robot (Punto Cero)]=AUS ;
     18:  !Garra a Base si no hay pieza ;
     19:  WARTE (M[2:Garra Vacia])    ;
     20:  F[1:Selecc.Gpo.  1]=(AN) ;
     21:  F[2:Selecc.Gpo.  2]=(AN) ;
     22:  WENN (M[2:Garra Vacia]),AUFRUF MAKRO342 ;
     23:  AUFRUF MAKRO340    ;
     24:  WARTE (M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto])    ;
     25:  !Fresado SP1 ;
     26:  F[298:NoRepetirSoldNOK]=(AUS) ;
     27:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=AN) ;
     28:  WARTE    .10(sec) ;
     29:  F[79:SP1 Fres. Cíclico]=((E[786:SK1 Fres.Cíclico Req.] [&] !E[788:SK1 Fres.Inicial Req.]) [+] (!E[788:SK1 Fres.Inicial Req.] [&] E[130:SZ1 Sel.Fresar])) ;
     30:  F[78:SP1 Fres. Inicial]=(E[788:SK1 Fres.Inicial Req.] [&] !F[79:SP1 Fres. Cíclico]) ;
     31:  !Fresado SP2 ;
     32:  F[298:NoRepetirSoldNOK]=(AUS) ;
     33:  AUFRUF VW_USER(Basic1,EZSP,Nr2,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=AN) ;
     34:  WARTE    .10(sec) ;
     35:  F[139:SP2 Fres.Ciclico]=((E[946:SK2 Fres.Cíclico Req.] [&] !E[948:SK2 Fres.Inicial Req.]) [+] (!E[948:SK2 Fres.Inicial Req.] [&] E[162:SZ2 Sel.Fresar])) ;
     36:  F[138:SP2 Fres.Inicial]=(E[948:SK2 Fres.Inicial Req.] [&] !F[139:SP2 Fres.Ciclico]) ;
     37:  gA[5:SZ2 Compensación]=(i[198]+0) ;
     38:  F[286:Caps Asentadas]=(F[138:SP2 Fres.Inicial]) ;
     39:  WENN (F[138:SP2 Fres.Inicial] [+] F[139:SP2 Fres.Ciclico]),AUFRUF MAKRO115 ;
     40:  WENN (F[138:SP2 Fres.Inicial] [+] F[139:SP2 Fres.Ciclico]),AUFRUF MAKRO114 ;
     41:  WARTE (M[103:KS2 En Reposo])    ;
     42:  WARTE (E[23:Sin Sol.Acceso])    ;
     43:  A[23:Bloquear Rejas de Seg.]=AN ;
     44:  FB-PSPS (M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   7:  LABEL[1] ;
   8:  WENN (F[78:SP1 Fres. Inicial] [+] F[79:SP1 Fres. Cíclico] [+] F[298:NoRepetirSoldNOK]),AUFRUF UP101 ;
   9:  WENN (F[298:NoRepetirSoldNOK]),SPRUNG LABEL[1] ;
  10:  BENUTZER_NUM=0 ;
  11:  WKZ_NUM=1 ;
  12:  !Llamar a UP021 ;
  13:  !Soldar ST1120 ;
  14:  AUFRUF UP021    ;
  15:  BENUTZER_NUM=0 ;
  16:  WKZ_NUM=1 ;
  17:J P[3] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE (E[23:Sin Sol.Acceso])    ;
      4:  A[23:Bloquear Rejas de Seg.]=AN ;
      5:  FB-PSPS (M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  18:  !Llamar a UP022 ;
  19:  !Tomar de la Estacion ST1120 ;
  20:  AUFRUF UP022    ;
  21:  BENUTZER_NUM=0 ;
  22:  WKZ_NUM=1 ;
  23:J P[4] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE (E[23:Sin Sol.Acceso])    ;
      4:  A[23:Bloquear Rejas de Seg.]=AN ;
      5:  FB-PSPS (M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  24:  !Llamar a UP023 ;
  25:  !Soldadura Est. ;
  26:  AUFRUF UP023    ;
  27:  BENUTZER_NUM=0 ;
  28:  WKZ_NUM=1 ;
  29:J P[5] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE (E[23:Sin Sol.Acceso])    ;
      4:  A[23:Bloquear Rejas de Seg.]=AN ;
      5:  FB-PSPS (M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  30:  !En Area de Mantenimiento ;
  31:  !Llamar a UP024 ;
  32:  !Dejar en ST1125 ;
  33:J P[6] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  LABEL[1] ;
      4:  A[18:Rob.En Área Mant.]=(AN) ;
      5:  WARTE ((E[76:1125 Ent.c/Pza.] [&] !E[62:1125 Llena KT] [&] E[61:1125 Vacía /KT] [&] !E[18:ParoEnÁreaManten.]) [+] E[19:Mant.En.Sec.Trab.])    ;
      6:  WENN (E[19:Mant.En.Sec.Trab.]),SPRUNG LABEL[3] ;
      7:  WENN (E[76:1125 Ent.c/Pza.] [&] !E[62:1125 Llena KT] [&] E[61:1125 Vacía /KT]),SPRUNG LABEL[2] ;
      8:  !EZ1 ;
      9:  LABEL[3] ;
     10:  A[17:Rob.En Mantenimiento]=(AN) ;
     11:  gA[19:Pto.De Proceso]=(11) ;
     12:  F[281:Apa.Med.Folge124  SPx]=(AN) ;
     13:  WARTE (E[17:Conf.Mantenim.])    ;
     14:  F[64:SZ1 en SP1(p/fresado)]=(AN) ;
     15:  F[65:SZ2 en SP1(p/fresado)]=(AUS) ;
     16:  F[66:SZ3 en SP1(p/fresado)]=(AUS) ;
     17:  F[67:SZ4 en SP1(p/fresado)]=(AUS) ;
     18:  LABEL[4] ;
     19:  WENN (E[132:SZ1 Sel.1/5.Pinza] [&] !E[133:SZ1 Sel.2/6.Pinza] [&] !E[134:SZ1 Sel.3/7.Pinza] [&] !E[135:SZ1 Sel.4/8.Pinza] [&] E[17:Conf.Mantenim.]),AUFRUF MAKRO081 ;
     20:  WENN (F[85:SZ1 Falla Medición]),SPRUNG LABEL[4] ;
     21:  AUFRUF VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
     22:  F[79:SP1 Fres. Cíclico]=(!(E[788:SK1 Fres.Inicial Req.] [&] E[130:SZ1 Sel.Fresar]) [+] (E[786:SK1 Fres.Cíclico Req.] [&] !E[788:SK1 Fres.Inicial Req.])) ;
     23:  F[78:SP1 Fres. Inicial]=(E[788:SK1 Fres.Inicial Req.] [&] !F[79:SP1 Fres. Cíclico]) ;
     24:  gA[2:SP1 Compensación]=(i[197]+5) ;
     25:  WARTE (!E[132:SZ1 Sel.1/5.Pinza])    ;
     26:  !EZ2 ;
     27:  WENN (F[138:SP2 Fres.Inicial] [+] F[139:SP2 Fres.Ciclico]),AUFRUF MAKRO114 ;
     28:  AUFRUF MAKRO119    ;
     29:  A[17:Rob.En Mantenimiento]=(AN) ;
     30:  gA[19:Pto.De Proceso]=(51) ;
     31:  F[281:Apa.Med.Folge124  SPx]=(AN) ;
     32:  WARTE (E[17:Conf.Mantenim.])    ;
     33:  F[64:SZ1 en SP1(p/fresado)]=(AUS) ;
     34:  F[65:SZ2 en SP1(p/fresado)]=(AN) ;
     35:  F[66:SZ3 en SP1(p/fresado)]=(AUS) ;
     36:  F[67:SZ4 en SP1(p/fresado)]=(AUS) ;
     37:  LABEL[5] ;
     38:  WENN (E[164:SZ2 Sel.1/5.Pinza] [&] !E[165:SZ2 Sel.2/6.Pinza] [&] !E[166:SZ2 Sel.3/7.Pinza] [&] !E[167:SZ2 Sel.4/8.Pinza] [&] E[17:Conf.Mantenim.]),AUFRUF MAKRO111 ;
     39:  WENN (F[143:SZ2 Falla Medición]),SPRUNG LABEL[5] ;
     40:  AUFRUF VW_USER(Basic1,EZSP,Nr2 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
     41:  F[139:SP2 Fres.Ciclico]=((E[946:SK2 Fres.Cíclico Req.] [&] !E[948:SK2 Fres.Inicial Req.]) [+] (!E[948:SK2 Fres.Inicial Req.] [&] E[162:SZ2 Sel.Fresar])) ;
     42:  F[138:SP2 Fres.Inicial]=(E[948:SK2 Fres.Inicial Req.] [&] !F[139:SP2 Fres.Ciclico]) ;
     43:  gA[5:SZ2 Compensación]=(i[198]+0) ;
     44:  WENN (F[138:SP2 Fres.Inicial] [+] F[139:SP2 Fres.Ciclico]),AUFRUF MAKRO115 ;
     45:  WENN (F[138:SP2 Fres.Inicial] [+] F[139:SP2 Fres.Ciclico]),AUFRUF MAKRO114 ;
     46:  WARTE (M[103:KS2 En Reposo] [&] E[164:SZ2 Sel.1/5.Pinza])    ;
     47:  A[17:Rob.En Mantenimiento]=(AUS) ;
     48:  gA[19:Pto.De Proceso]=(0) ;
     49:  WARTE (!E[19:Mant.En.Sec.Trab.])    ;
     50:  SPRUNG LABEL[1] ;
     51:  LABEL[2] ;
     52:  A[18:Rob.En Área Mant.]=(AUS) ;
     53:  F[281:Apa.Med.Folge124  SPx]=(AUS) ;
     54:  WARTE (E[23:Sin Sol.Acceso])    ;
     55:  A[23:Bloquear Rejas de Seg.]=AN ;
     56:  FB-PSPS (M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  34:  AUFRUF UP024    ;
  35:  BENUTZER_NUM=0 ;
  36:  WKZ_NUM=1 ;
  37:  !Fresado SP1 & SP2 ;
  38:J P[7] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  !Fresado SP1 ;
      4:  F[298:NoRepetirSoldNOK]=(AUS) ;
      5:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=AN) ;
      6:  WARTE    .10(sec) ;
      7:  F[79:SP1 Fres. Cíclico]=((E[786:SK1 Fres.Cíclico Req.] [&] !E[788:SK1 Fres.Inicial Req.]) [+] (!E[788:SK1 Fres.Inicial Req.] [&] E[130:SZ1 Sel.Fresar])) ;
      8:  F[78:SP1 Fres. Inicial]=(E[788:SK1 Fres.Inicial Req.] [&] !F[79:SP1 Fres. Cíclico]) ;
      9:  !Fresado SP2 ;
     10:  F[298:NoRepetirSoldNOK]=(AUS) ;
     11:  AUFRUF VW_USER(Basic1,EZSP,Nr2,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=AN) ;
     12:  WARTE    .10(sec) ;
     13:  F[139:SP2 Fres.Ciclico]=((E[946:SK2 Fres.Cíclico Req.] [&] !E[948:SK2 Fres.Inicial Req.]) [+] (!E[948:SK2 Fres.Inicial Req.] [&] E[162:SZ2 Sel.Fresar])) ;
     14:  F[138:SP2 Fres.Inicial]=(E[948:SK2 Fres.Inicial Req.] [&] !F[139:SP2 Fres.Ciclico]) ;
     15:  gA[5:SZ2 Compensación]=(i[198]+0) ;
     16:  F[286:Caps Asentadas]=(F[138:SP2 Fres.Inicial]) ;
     17:  WENN (F[138:SP2 Fres.Inicial] [+] F[139:SP2 Fres.Ciclico]),AUFRUF MAKRO115 ;
     18:  WENN (F[138:SP2 Fres.Inicial] [+] F[139:SP2 Fres.Ciclico]),AUFRUF MAKRO114 ;
     19:  WARTE (M[103:KS2 En Reposo])    ;
     20:  WARTE (E[23:Sin Sol.Acceso])    ;
     21:  A[23:Bloquear Rejas de Seg.]=AN ;
     22:  FB-PSPS (M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  39:  !Fresado ;
  40:  LABEL[3] ;
  41:  WENN (F[78:SP1 Fres. Inicial] [+] F[79:SP1 Fres. Cíclico] [+] F[298:NoRepetirSoldNOK]),AUFRUF UP101 ;
  42:  WENN (F[298:NoRepetirSoldNOK]),SPRUNG LABEL[3] ;
  43:  BENUTZER_NUM=0 ;
  44:  WKZ_NUM=1 ;
  45:  !Fin de Trabajo Total ;
  46:J P[8] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  AUFRUF MAKRO015    ;
      4:  WARTE (E[23:Sin Sol.Acceso])    ;
      5:  A[23:Bloquear Rejas de Seg.]=AN ;
      6:  FB-PSPS (M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  47:J P[9] 100% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[14:Último Punto Alcanzado]=AN ;
      3:  A[15:PF0 Robot (Punto Cero)]=AN ;
      4:  TIMER[1]=STOPP ;
      5:  TIMER[2]=(TIMER[1]) ;
      6:  TIMER[2]=STOPP ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -248.953  mm,	Y =  1964.002  mm,	Z =  1583.883  mm,
	W =   -90.000 deg,	P =    45.000 deg,	R =    60.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -248.953  mm,	Y =  1964.002  mm,	Z =  1583.883  mm,
	W =   -90.000 deg,	P =    45.000 deg,	R =    60.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  2487.229  mm,	Y = -2805.764  mm,	Z =  1737.374  mm,
	W =     -.402 deg,	P =    36.194 deg,	R =   -47.381 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -248.953  mm,	Y =  1964.002  mm,	Z =  1583.883  mm,
	W =   -90.000 deg,	P =    45.000 deg,	R =    60.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -248.953  mm,	Y =  1964.002  mm,	Z =  1583.883  mm,
	W =   -90.000 deg,	P =    45.000 deg,	R =    60.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -248.953  mm,	Y =  1964.002  mm,	Z =  1583.883  mm,
	W =   -90.000 deg,	P =    45.000 deg,	R =    60.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -248.953  mm,	Y =  1964.002  mm,	Z =  1583.883  mm,
	W =   -90.000 deg,	P =    45.000 deg,	R =    60.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -248.953  mm,	Y =  1964.002  mm,	Z =  1583.883  mm,
	W =   -90.000 deg,	P =    45.000 deg,	R =    60.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -248.953  mm,	Y =  1964.002  mm,	Z =  1583.883  mm,
	W =   -90.000 deg,	P =    45.000 deg,	R =    60.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
