/PROG  FOLGE123
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Pos. de Ajuste";
PROG_GRÖßE	= 2568;
ERSTELL		= TAG 03-15-00  ZEIT 13:36:58;
GEÄNDERT	= TAG 17-02-10  ZEIT 17:44:50;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 11;
SPEICHERGR.	= 5072;
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
   1:  WKZ_NUM=24 ;
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
      4:  A[15:PF0 Robot (Punto Cero)]=AUS ;
      5:  WARTE (E[23:Sin Sol.Acceso])    ;
      6:  A[23:Bloquear Rejas de Seg.]=AN ;
      7:  FB-PSPS (M[30:Seg. de Máquina]) ;
       ------ ;
   6:  !Posicion de Ajuste Eje 1 ;
   7:J P[3] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  A[17:Rob.En Mantenimiento]=AN ;
      4:  WARTE (E[17:Conf.Mantenim.])    ;
      5:  A[17:Rob.En Mantenimiento]=AUS ;
      6:  WARTE (E[23:Sin Sol.Acceso])    ;
      7:  A[23:Bloquear Rejas de Seg.]=AN ;
      8:  FB-PSPS (M[30:Seg. de Máquina]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[30:Seg. de Máquina]) ;
       ------ ;
   9:  !Posicion de Ajuste Ejes 2-6 ;
  10:J P[5] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  A[17:Rob.En Mantenimiento]=AN ;
      4:  WARTE (E[17:Conf.Mantenim.])    ;
      5:  A[17:Rob.En Mantenimiento]=AUS ;
      6:  WARTE (E[23:Sin Sol.Acceso])    ;
      7:  A[23:Bloquear Rejas de Seg.]=AN ;
      8:  FB-PSPS (M[30:Seg. de Máquina]) ;
       ------ ;
  11:J P[6] 100% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[14:Último Punto Alcanzado]=AN ;
      3:  A[15:PF0 Robot (Punto Cero)]=AN ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =   706.246  mm,	Y =  1223.255  mm,	Z =  1744.113  mm,
	W =  -135.000 deg,	P =     0.000 deg,	R =   -30.000 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =   706.246  mm,	Y =  1223.255  mm,	Z =  1744.113  mm,
	W =  -135.000 deg,	P =     0.000 deg,	R =   -30.000 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 24,	
	J1=     0.000 deg,	J2=   -74.910 deg,	J3=    57.470 deg,
	J4=     0.000 deg,	J5=     1.252 deg,	J6=  -178.117 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.200  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.998  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =   706.246  mm,	Y =  1223.255  mm,	Z =  1744.113  mm,
	W =  -135.000 deg,	P =     0.000 deg,	R =   -30.000 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 24,	
	J1=    60.000 deg,	J2=     0.000 deg,	J3=     0.000 deg,
	J4=     0.000 deg,	J5=     0.000 deg,	J6=     0.000 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =   706.246  mm,	Y =  1223.255  mm,	Z =  1744.113  mm,
	W =  -135.000 deg,	P =     0.000 deg,	R =   -30.000 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
/END
