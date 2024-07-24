/PROG  UP101
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Fresado";
PROG_GRÖßE	= 4428;
ERSTELL		= TAG 23-08-22  ZEIT 15:33:50;
GEÄNDERT	= TAG 24-02-04  ZEIT 10:48:24;
DATEI_NAME	= UP101;
VERSION		= 0;
ZEILEN		= 15;
SPEICHERGR.	= 7936;
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
   1:  WKZ_NUM=1 ;
   2:  BENUTZER_NUM=0 ;
   3:  TRAGLST[1] ;
   4:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  AUFRUF MAKRO050    ;
      4:  !Lib. de Herramientas ;
      5:  A[80:PL>Cortina Seg.]=AN ;
      6:  A[79:PL>1120 Herramienta]=AN ;
      7:  A[78:Ctrl.1120 Cil.]=AUS ;
      8:  A[77:Pos.Tomar 1120]=AUS ;
      9:  A[76:PL>1125 Depósito]=AN ;
     10:  A[74:Pos.Dejar 1125]=AUS ;
     11:  !Lib. de Anticolisiones ;
     12:  A[41:Blq>1130R01(1)]=AN ;
     13:  A[42:Blq>1130R01(2)]=AN ;
     14:  !Apagar Pos. Base ;
     15:  A[15:PF0 Robot (Punto Cero)]=AUS ;
     16:  !Robot en Trayectoria ;
     17:  A[16:SAK Robot (En camino)]=AN ;
     18:  !Ap. Med. Ant/Dsp. Fresar ;
     19:  A[756:SZ1 Medic. Prefresado]=AUS ;
     20:  A[757:SZ1 Medic. Posfresado]=AUS ;
     21:  AUFRUF VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
     22:  WARTE    .10(sec) ;
     23:  !Fresado Ciclico ;
     24:  F[79:SP1 Fres. Cíclico]=((E[786:SK1 Fres.Cíclico Req.] [&] !E[788:SK1 Fres.Inicial Req.]) [+] F[298:NoRepetirSoldNOK] [+] (!E[786:SK1 Fres.Cíclico Req.] [&] !E[788:SK1 Fres.Inicial Req.] [&] A[11:Manual/A Pasos]) [+] (!
       :  E[788:SK1 Fres.Inicial Req.] [&] E[130:SZ1 Sel.Fresar])) ;
     25:  !Fresado Inicial ;
     26:  F[78:SP1 Fres. Inicial]=(E[788:SK1 Fres.Inicial Req.] [&] !F[79:SP1 Fres. Cíclico]) ;
     27:  WARTE (E[23:Sin Sol.Acceso])    ;
     28:  A[23:Bloquear Rejas de Seg.]=AN ;
     29:  FB-PSPS (M[30:Seg. de Máquina] [&] M[95:Seguridad SP1]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[30:Seg. de Máquina] [&] M[95:Seguridad SP1]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[30:Seg. de Máquina] [&] M[95:Seguridad SP1]) ;
       ------ ;
   7:J P[4] 60% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE (E[23:Sin Sol.Acceso])    ;
      4:  A[23:Bloquear Rejas de Seg.]=AN ;
      5:  FB-PSPS (M[30:Seg. de Máquina] [&] M[95:Seguridad SP1]) ;
       ------ ;
   8:  !Posicion de Fresado ;
   9:L P[5] 100mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  AUFRUF VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      4:  !Sel. Pistola ;
      5:  F[64:SZ1 en SP1(p/fresado)]=(AN) ;
      6:  F[65:SZ2 en SP1(p/fresado)]=(AUS) ;
      7:  F[66:SZ3 en SP1(p/fresado)]=(AUS) ;
      8:  F[67:SZ4 en SP1(p/fresado)]=(AUS) ;
      9:  A[130:SZ1 en Fresador]=AN ;
     10:  gA[2:SP1 Compensación]=(i[197]+5) ;
     11:  WENN (F[78:SP1 Fres. Inicial] [+] F[79:SP1 Fres. Cíclico]),AUFRUF MAKRO082 ;
     12:  A[130:SZ1 en Fresador]=AUS ;
     13:  WARTE (E[23:Sin Sol.Acceso])    ;
     14:  A[23:Bloquear Rejas de Seg.]=AN ;
     15:  FB-PSPS (M[30:Seg. de Máquina] [&] M[95:Seguridad SP1]) ;
       ------ ;
  10:L P[6] 100mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE (E[23:Sin Sol.Acceso])    ;
      4:  A[23:Bloquear Rejas de Seg.]=AN ;
      5:  FB-PSPS (M[30:Seg. de Máquina] [&] M[95:Seguridad SP1]) ;
       ------ ;
  11:J P[7] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[30:Seg. de Máquina] [&] M[95:Seguridad SP1]) ;
       ------ ;
  12:  !Inic. de Med ;
  13:J P[8] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[715:SZ1 Lib. Posicionar]=AN ;
      3:  A[757:SZ1 Medic. Posfresado]=AN ;
      4:  FB-PSPS (M[30:Seg. de Máquina] [&] M[95:Seguridad SP1]) ;
       ------ ;
  14:  !Fin de Med. ;
  15:J P[9] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  AUFRUF MAKRO083    ;
      4:  WENN (F[78:SP1 Fres. Inicial] [&] !F[79:SP1 Fres. Cíclico] [&] F[335:Sel.2o Asent. Caps (RSK)]),AUFRUF MAKRO087 ;
      5:  AUFRUF VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=41, , ,S-Punkt=41, ,EIN/AUS=F[78:SP1 Fres. Inicial]) ;
      6:  AUFRUF VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=51, , ,S-Punkt=51, ,EIN/AUS=F[79:SP1 Fres. Cíclico]) ;
      7:  WENN (!F[85:SZ1 Falla Medición] [&] !F[86:SZ1 Falla Desg.AlFresar]),AUFRUF MAKRO080 ;
      8:  WARTE (!F[298:NoRepetirSoldNOK] [+] (E[777:SZ1 Falla Desgaste Caps] [&] F[298:NoRepetirSoldNOK]) [+] E[26:Conf.Repetir] [+] (F[298:NoRepetirSoldNOK] [&] F[749:SP Repitiendo Fresado]))    ;
      9:  WARTE (E[23:Sin Sol.Acceso])    ;
     10:  A[23:Bloquear Rejas de Seg.]=AN ;
     11:  FB-PSPS (M[30:Seg. de Máquina] [&] M[95:Seguridad SP1]) ;
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
	X =  1032.723  mm,	Y =  1623.400  mm,	Z =  -303.802  mm,
	W =   179.201 deg,	P =      .357 deg,	R =    42.576 deg
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
	X =  1034.708  mm,	Y =  1617.472  mm,	Z =  -712.714  mm,
	W =   179.201 deg,	P =      .357 deg,	R =    42.576 deg
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
	X =  1044.459  mm,	Y =  1627.276  mm,	Z =  -813.186  mm,
	W =   179.245 deg,	P =    -2.727 deg,	R =    44.313 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    60.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   103.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  1061.073  mm,	Y =  1643.496  mm,	Z =  -812.081  mm,
	W =   179.245 deg,	P =    -2.727 deg,	R =    44.313 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    40.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   103.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  1043.250  mm,	Y =  1627.537  mm,	Z =  -816.354  mm,
	W =   179.244 deg,	P =    -2.730 deg,	R =    44.312 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    59.700  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   101.600  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  1034.708  mm,	Y =  1617.472  mm,	Z =  -712.714  mm,
	W =   179.201 deg,	P =      .357 deg,	R =    42.576 deg
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
	X =  1032.723  mm,	Y =  1623.400  mm,	Z =  -303.802  mm,
	W =   179.201 deg,	P =      .357 deg,	R =    42.576 deg
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
