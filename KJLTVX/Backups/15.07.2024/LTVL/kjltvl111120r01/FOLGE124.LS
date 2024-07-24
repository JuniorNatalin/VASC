/PROG  FOLGE124
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Mantenimiento";
PROG_GRÖßE	= 5724;
ERSTELL		= TAG 03-15-00  ZEIT 13:37:40;
GEÄNDERT	= TAG 17-03-12  ZEIT 12:12:46;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 37;
SPEICHERGR.	= 8592;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 500,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= 1,1,1,1,*;
KONTROLLCODE	= 00000000 00000000;
/MN
   1:  WKZ_NUM=1 ;
   2:  BENUTZER_NUM=0 ;
   3:  TRAGLST[1] ;
   4:J P[1] 10% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  WENN (A[12:Automático]=AN),AUFRUF MAKRO998 ;
      2:  A[15:PF0 Robot (Punto Cero)]=AN ;
      3:  A[16:SAK Robot (En camino)]=AN ;
      4:  AUFRUF MAKRO000    ;
      5:  WARTE (E[9:Iniciar Secuencia])    ;
       ------ ;
   5:J P[2] 100% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
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
     14:  !Apagar Posicion Base ;
     15:  A[15:PF0 Robot (Punto Cero)]=AUS ;
     16:  WARTE (M[2:Garra Vacia])    ;
     17:  F[1:Selecc.Gpo.  1]=(AN) ;
     18:  F[2:Selecc.Gpo.  2]=(AN) ;
     19:  WENN (M[2:Garra Vacia]),AUFRUF MAKRO342 ;
     20:  AUFRUF MAKRO340    ;
     21:  WARTE (M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto])    ;
     22:  WARTE (E[23:Sin Sol.Acceso])    ;
     23:  A[23:Bloquear Rejas de Seg.]=AN ;
     24:  FB-PSPS (M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   6:  !Fresado antes de Mant. ;
   7:J P[3] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  !Fresado SP1 ;
      4:  F[298:NoRepetirSoldNOK]=(AUS) ;
      5:  AUFRUF VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  WARTE    .10(sec) ;
      7:  F[79:SP1 Fres. Cíclico]=((E[786:SK1 Fres.Cíclico Req.] [&] !E[788:SK1 Fres.Inicial Req.]) [+] F[298:NoRepetirSoldNOK] [+] (!E[786:SK1 Fres.Cíclico Req.] [&] !E[788:SK1 Fres.Inicial Req.] [&] A[11:Manual/A Pasos]) [+] (!
       :  E[788:SK1 Fres.Inicial Req.] [&] E[130:SZ1 Sel.Fresar])) ;
      8:  F[78:SP1 Fres. Inicial]=(E[788:SK1 Fres.Inicial Req.] [&] !F[79:SP1 Fres. Cíclico]) ;
      9:  gA[2:SP1 Compensación]=(i[197]+0) ;
     10:  !Fresado SP2 ;
     11:  F[298:NoRepetirSoldNOK]=(AUS) ;
     12:  AUFRUF VW_USER(Basic1,EZSP,Nr2,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=AN) ;
     13:  WARTE    .10(sec) ;
     14:  F[139:SP2 Fres.Ciclico]=((E[946:SK2 Fres.Cíclico Req.] [&] !E[948:SK2 Fres.Inicial Req.]) [+] (!E[948:SK2 Fres.Inicial Req.] [&] E[162:SZ2 Sel.Fresar])) ;
     15:  F[138:SP2 Fres.Inicial]=(E[948:SK2 Fres.Inicial Req.] [&] !F[139:SP2 Fres.Ciclico]) ;
     16:  gA[5:SZ2 Compensación]=(i[198]+0) ;
     17:  F[286:Caps Asentadas]=(F[138:SP2 Fres.Inicial]) ;
     18:  WENN (F[138:SP2 Fres.Inicial] [+] F[139:SP2 Fres.Ciclico]),AUFRUF MAKRO115 ;
     19:  WENN (F[138:SP2 Fres.Inicial] [+] F[139:SP2 Fres.Ciclico]),AUFRUF MAKRO114 ;
     20:  WARTE (M[103:KS2 En Reposo])    ;
     21:  WARTE (E[23:Sin Sol.Acceso])    ;
     22:  A[23:Bloquear Rejas de Seg.]=AN ;
     23:  FB-PSPS (M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   8:  LABEL[1] ;
   9:  WENN (F[78:SP1 Fres. Inicial] [+] F[79:SP1 Fres. Cíclico] [+] F[298:NoRepetirSoldNOK]),AUFRUF UP101 ;
  10:  WENN (F[298:NoRepetirSoldNOK]),SPRUNG LABEL[1] ;
  11:J P[4] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  12:  !Pos. de Mantenimiento ;
  13:  !UP112 Mant. G1 ;
  14:  !UP113 Mant. SP1 ;
  15:  !UP114 Mant. SP2 ;
  16:  !UP201 Cambio Herramienta G1 ;
  17:  !UP202 Cambio Herramienta SP1 ;
  18:  !UP203 Cambio Herramienta SP2 ;
  19:  !UP206 TCP Check SP1 ;
  20:  !UP207 TCP Check SP2 ;
  21:J P[5] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  F[940:Llamada UP112]=(AUS) ;
      4:  F[941:Llamada UP113]=(AUS) ;
      5:  F[942:Llamada UP114]=(AUS) ;
      6:  F[943:Llamada UP201]=(AUS) ;
      7:  F[944:Llamada UP202]=(AUS) ;
      8:  F[945:Llamada UP203]=(AUS) ;
      9:  F[946:Llamada UP206]=(AUS) ;
     10:  WARTE (((E[20:Cambio de Herramienta] [+] E[21:Pos de Referencia]) [&] (E[121:Sel.1 Multigarra] [+] E[132:SZ1 Sel.1/5.Pinza] [+] E[164:SZ2 Sel.1/5.Pinza])) [+] E[121:Sel.1 Multigarra] [+] (E[132:SZ1 Sel.1/5.Pinza] [+] 
       :  E[777:SZ1 Falla Desgaste Caps] [+] E[801:SK1 Fin Vida Caps]) [+] (E[164:SZ2 Sel.1/5.Pinza] [+] E[937:SZ2 Falla Desgaste Caps] [+] E[961:SK2 Fin Vida Caps]))    ;
     11:  !Mantenimiento G1 ;
     12:  F[940:Llamada UP112]=(!E[20:Cambio de Herramienta] [&] !E[21:Pos de Referencia] [&] E[121:Sel.1 Multigarra] [&] !E[130:SZ1 Sel.Fresar] [&] !E[132:SZ1 Sel.1/5.Pinza] [&] !E[162:SZ2 Sel.Fresar] [&] !E[164:SZ2 Sel.1/5.Pinza]) ;
     13:  !Mantenimiento SP1 ;
     14:  F[941:Llamada UP113]=(!E[20:Cambio de Herramienta] [&] !E[21:Pos de Referencia] [&] !E[121:Sel.1 Multigarra] [&] (E[132:SZ1 Sel.1/5.Pinza] [+] E[777:SZ1 Falla Desgaste Caps] [+] E[801:SK1 Fin Vida Caps]) [&] !
       :  E[164:SZ2 Sel.1/5.Pinza]) ;
     15:  !Mantenimiento SP2 ;
     16:  F[942:Llamada UP114]=(!E[20:Cambio de Herramienta] [&] !E[21:Pos de Referencia] [&] !E[121:Sel.1 Multigarra] [&] !E[132:SZ1 Sel.1/5.Pinza] [&] (E[164:SZ2 Sel.1/5.Pinza] [+] E[937:SZ2 Falla Desgaste Caps] [+] 
       :  E[961:SK2 Fin Vida Caps])) ;
     17:  !Cambio de Herramienta G1 ;
     18:  F[943:Llamada UP201]=(E[20:Cambio de Herramienta] [&] !E[21:Pos de Referencia] [&] E[121:Sel.1 Multigarra] [&] !E[132:SZ1 Sel.1/5.Pinza] [&] !E[164:SZ2 Sel.1/5.Pinza]) ;
     19:  !Cambio de Herramienta SP1 ;
     20:  F[944:Llamada UP202]=(E[20:Cambio de Herramienta] [&] !E[21:Pos de Referencia] [&] !E[121:Sel.1 Multigarra] [&] E[132:SZ1 Sel.1/5.Pinza] [&] !E[164:SZ2 Sel.1/5.Pinza]) ;
     21:  !Cambio de Herramienta SP2 ;
     22:  F[945:Llamada UP203]=(E[20:Cambio de Herramienta] [&] !E[21:Pos de Referencia] [&] !E[121:Sel.1 Multigarra] [&] !E[132:SZ1 Sel.1/5.Pinza] [&] E[164:SZ2 Sel.1/5.Pinza]) ;
     23:  !TCP Check SP1 ;
     24:  F[946:Llamada UP206]=(!E[20:Cambio de Herramienta] [&] E[21:Pos de Referencia] [&] !E[121:Sel.1 Multigarra] [&] E[132:SZ1 Sel.1/5.Pinza] [&] !E[164:SZ2 Sel.1/5.Pinza]) ;
     25:  !TCP Check SP2 ;
     26:  F[947:Llamada UP207]=(!E[20:Cambio de Herramienta] [&] E[21:Pos de Referencia] [&] !E[121:Sel.1 Multigarra] [&] !E[132:SZ1 Sel.1/5.Pinza] [&] E[164:SZ2 Sel.1/5.Pinza]) ;
     27:  WARTE (F[940:Llamada UP112] [+] F[941:Llamada UP113] [+] F[942:Llamada UP114] [+] F[943:Llamada UP201] [+] F[944:Llamada UP202] [+] F[945:Llamada UP203] [+] F[946:Llamada UP206] [+] F[947:Llamada UP207])    ;
     28:  WARTE (E[23:Sin Sol.Acceso])    ;
     29:  A[23:Bloquear Rejas de Seg.]=AN ;
     30:  FB-PSPS (M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  22:  WENN (F[940:Llamada UP112]),AUFRUF UP112 ;
  23:  WENN (F[941:Llamada UP113]),AUFRUF UP113 ;
  24:  WENN (F[942:Llamada UP114]),AUFRUF UP114 ;
  25:  WENN (F[943:Llamada UP201]),AUFRUF UP201 ;
  26:  WENN (F[944:Llamada UP202]),AUFRUF UP202 ;
  27:  WENN (F[945:Llamada UP203]),AUFRUF UP203 ;
  28:  WENN (F[946:Llamada UP206]),AUFRUF UP206 ;
  29:  WENN (F[947:Llamada UP207]),AUFRUF UP207 ;
  30:  WKZ_NUM=1 ;
  31:  BENUTZER_NUM=0 ;
  32:  !Fresado despues de Mant. ;
  33:J P[6] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  !Fresado SP1 ;
      4:  F[298:NoRepetirSoldNOK]=(AUS) ;
      5:  AUFRUF VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  WARTE    .10(sec) ;
      7:  F[79:SP1 Fres. Cíclico]=((E[786:SK1 Fres.Cíclico Req.] [&] !E[788:SK1 Fres.Inicial Req.]) [+] F[298:NoRepetirSoldNOK] [+] (!E[786:SK1 Fres.Cíclico Req.] [&] !E[788:SK1 Fres.Inicial Req.] [&] A[11:Manual/A Pasos]) [+] (!
       :  E[788:SK1 Fres.Inicial Req.] [&] E[130:SZ1 Sel.Fresar])) ;
      8:  F[78:SP1 Fres. Inicial]=(E[788:SK1 Fres.Inicial Req.] [&] !F[79:SP1 Fres. Cíclico]) ;
      9:  gA[2:SP1 Compensación]=(i[197]+0) ;
     10:  !Fresado SP2 ;
     11:  F[298:NoRepetirSoldNOK]=(AUS) ;
     12:  AUFRUF VW_USER(Basic1,EZSP,Nr2,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=AN) ;
     13:  WARTE    .10(sec) ;
     14:  F[139:SP2 Fres.Ciclico]=((E[946:SK2 Fres.Cíclico Req.] [&] !E[948:SK2 Fres.Inicial Req.]) [+] (!E[948:SK2 Fres.Inicial Req.] [&] E[162:SZ2 Sel.Fresar])) ;
     15:  F[138:SP2 Fres.Inicial]=(E[948:SK2 Fres.Inicial Req.] [&] !F[139:SP2 Fres.Ciclico]) ;
     16:  gA[5:SZ2 Compensación]=(i[198]+0) ;
     17:  F[286:Caps Asentadas]=(F[138:SP2 Fres.Inicial]) ;
     18:  WENN (F[138:SP2 Fres.Inicial] [+] F[139:SP2 Fres.Ciclico]),AUFRUF MAKRO115 ;
     19:  WENN (F[138:SP2 Fres.Inicial] [+] F[139:SP2 Fres.Ciclico]),AUFRUF MAKRO114 ;
     20:  WARTE (M[103:KS2 En Reposo])    ;
     21:  WARTE (E[23:Sin Sol.Acceso])    ;
     22:  A[23:Bloquear Rejas de Seg.]=AN ;
     23:  FB-PSPS (M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  34:  LABEL[2] ;
  35:  WENN (F[78:SP1 Fres. Inicial] [+] F[79:SP1 Fres. Cíclico] [+] F[298:NoRepetirSoldNOK]),AUFRUF UP101 ;
  36:  WENN (F[298:NoRepetirSoldNOK]),SPRUNG LABEL[2] ;
  37:J P[7] 100% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[15:PF0 Robot (Punto Cero)]=AN ;
      3:  A[14:Último Punto Alcanzado]=AN ;
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
/END
