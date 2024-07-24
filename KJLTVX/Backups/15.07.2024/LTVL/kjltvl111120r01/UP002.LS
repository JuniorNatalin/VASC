/PROG  UP002
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Tomar en ST1120";
PROG_GRÖßE	= 4310;
ERSTELL		= TAG 96-06-10  ZEIT 20:13:56;
GEÄNDERT	= TAG 23-01-22  ZEIT 07:43:18;
DATEI_NAME	= UP002;
VERSION		= 0;
ZEILEN		= 18;
SPEICHERGR.	= 7838;
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
   2:  WKZ_NUM=2 ;
   3:  TRAGLST[1] ;
   4:  !Posicion de Salto ;
   5:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  TIMER[4]=RESET ;
      4:  TIMER[4]=START ;
      5:  AUFRUF MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  A[80:PL>Cortina Seg.]=AUS ;
      8:  A[79:PL>1120 Herramienta]=AUS ;
      9:  A[78:Ctrl.1120 Cil.]=AN ;
     10:  A[77:Pos.Tomar 1120]=AUS ;
     11:  A[76:PL>1125 Depósito]=AN ;
     12:  A[74:Pos.Dejar 1125]=AUS ;
     13:  A[57:Lib. 24 PLS Libre]=AUS ;
     14:  !Lib. de Anticolisiones ;
     15:  A[41:Blq>1130R01(1)]=AN ;
     16:  A[42:Blq>1130R01(2)]=AN ;
     17:  !Apagar Pos. Base ;
     18:  A[15:PF0 Robot (Punto Cero)]=AUS ;
     19:  !Robot en Trayectoria ;
     20:  A[16:SAK Robot (En camino)]=AN ;
     21:  WARTE (E[78:1120 Ent.s/Pza.] [&] E[80:Cortina Abajo] [&] E[64:1120 Llena KT] [&] !E[63:1120 Vacía /KT])    ;
     22:  A[78:Ctrl.1120 Cil.]=AUS ;
     23:  WARTE (E[23:Sin Sol.Acceso])    ;
     24:  A[23:Bloquear Rejas de Seg.]=AN ;
     25:  FB-PSPS (!E[63:1120 Vacía /KT] [&] E[64:1120 Llena KT] [&] E[78:1120 Ent.s/Pza.] [&] E[80:Cortina Abajo] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] 
       :  M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (!E[63:1120 Vacía /KT] [&] E[64:1120 Llena KT] [&] E[78:1120 Ent.s/Pza.] [&] E[80:Cortina Abajo] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] 
       :  M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   7:  !Tomar en ST1120 ;
   8:  !Fin de Trabajo 2 ;
   9:L P[3] 1500mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=(AUS) ;
      3:  WARTE (M[1:Garra Llena])    ;
      4:  F[1:Selecc.Gpo.  1]=(AN) ;
      5:  AUFRUF MAKRO343    ;
      6:  WARTE (M[1:Garra Llena] [&] M[32:Gpo.Suj. 1 Cerrado])    ;
      7:  A[77:Pos.Tomar 1120]=AN ;
      8:  AUFRUF MAKRO002    ;
      9:  WARTE (E[77:1120 Sal.c/Pza.])    ;
     10:  A[77:Pos.Tomar 1120]=AUS ;
     11:  WARTE (E[23:Sin Sol.Acceso])    ;
     12:  A[23:Bloquear Rejas de Seg.]=AN ;
     13:  FB-PSPS (E[77:1120 Sal.c/Pza.] [&] E[80:Cortina Abajo] [&] M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] 
       :  M[103:KS2 En Reposo]) ;
       ------ ;
  10:  TRAGLST[2] ;
  11:L P[4] 2000mm/sek CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[63:1120 Vacía /KT] [&] !E[64:1120 Llena KT] [&] E[77:1120 Sal.c/Pza.] [&] E[80:Cortina Abajo] [&] M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] 
       :  M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  12:J P[5] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[63:1120 Vacía /KT] [&] !E[64:1120 Llena KT] [&] E[77:1120 Sal.c/Pza.] [&] E[80:Cortina Abajo] [&] M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] 
       :  M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  13:J P[6] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[63:1120 Vacía /KT] [&] !E[64:1120 Llena KT] [&] E[77:1120 Sal.c/Pza.] [&] E[80:Cortina Abajo] [&] M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] 
       :  M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  14:J P[7] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[63:1120 Vacía /KT] [&] !E[64:1120 Llena KT] [&] E[77:1120 Sal.c/Pza.] [&] E[80:Cortina Abajo] [&] M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] 
       :  M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  15:  !Encender Perfil Lib 80 vs ST1120 ;
  16:  !Encender Perfil Lib 79 vs ST1120 ;
  17:J P[8] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[80:PL>Cortina Seg.]=AN ;
      3:  A[79:PL>1120 Herramienta]=AN ;
      4:  A[57:Lib. 24 PLS Libre]=AN ;
      5:  FB-PSPS (M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  18:J P[9] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  TIMER[4]=STOPP ;
      4:  WARTE (E[23:Sin Sol.Acceso])    ;
      5:  A[23:Bloquear Rejas de Seg.]=AN ;
      6:  FB-PSPS (M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =  1485.665  mm,	Y = -2258.672  mm,	Z =   191.111  mm,
	W =  -179.450 deg,	P =    53.804 deg,	R =   133.301 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =  1302.845  mm,	Y = -2125.012  mm,	Z =  -560.732  mm,
	W =  -179.934 deg,	P =    40.301 deg,	R =   132.385 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =  1224.221  mm,	Y = -2038.691  mm,	Z =  -660.392  mm,
	W =   179.916 deg,	P =    40.300 deg,	R =   132.387 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.500  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.900  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =  1302.845  mm,	Y = -2125.012  mm,	Z =  -560.732  mm,
	W =  -179.934 deg,	P =    40.301 deg,	R =   132.385 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =  1528.570  mm,	Y = -2380.827  mm,	Z =   182.827  mm,
	W =  -178.205 deg,	P =    58.198 deg,	R =   133.686 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =  1407.794  mm,	Y = -1648.255  mm,	Z =  1181.280  mm,
	W =  -123.798 deg,	P =     3.143 deg,	R =  -121.377 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =  1305.675  mm,	Y = -1211.819  mm,	Z =   787.478  mm,
	W =  -126.791 deg,	P =    16.326 deg,	R =  -118.102 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =  1883.696  mm,	Y =   252.302  mm,	Z =  1458.409  mm,
	W =  -131.443 deg,	P =     5.810 deg,	R =   -64.301 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =  1526.015  mm,	Y =  1261.103  mm,	Z =  1804.779  mm,
	W =  -135.000 deg,	P =     0.000 deg,	R =   -30.000 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
/END
