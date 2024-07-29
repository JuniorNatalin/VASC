/PROG  UP024
/ATTR
OWNER		= GME;
COMMENT		= "Depositar ST1125";
PROG_SIZE	= 4060;
CREATE		= DATE 96-06-10  TIME 20:14:12;
MODIFIED	= DATE 23-06-29  TIME 01:57:10;
FILE_NAME	= UP024;
VERSION		= 0;
LINE_COUNT	= 17;
MEMORY_SIZE	= 7224;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,1,1,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  UFRAME_NUM=0 ;
   2:  UTOOL_NUM=2 ;
   3:  PAYLOAD[1] ;
   4:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  TIMER[6]=RESET ;
      4:  TIMER[6]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80:PL>Cortina Seg.]=ON ;
      8:  DO[79:PL>1120 Herramienta]=ON ;
      9:  DO[78:Ctrl.1120 Cil.]=OFF ;
     10:  DO[77:Pos.Tomar 1120]=OFF ;
     11:  DO[76:PL>1125 Dep�sito]=ON ;
     12:  DO[74:Pos.Dejar 1125]=OFF ;
     13:  !Lib. de Anticolisiones ;
     14:  DO[41:Blq>1130R01(1)]=ON ;
     15:  DO[42:Blq>1130R01(2)]=ON ;
     16:  !Apagar Posicion Base ;
     17:  DO[15:PF0 Robot (Punto Cero)]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16:SAK Robot (En camino)]=ON ;
     20:  WAIT (M[1:Garra Llena] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND DI[76:1125 Ent.c/Pza.] AND !DI[62:1125 Llena KT] AND DI[61:1125 Vac�a /KT])    ;
     21:  DO[76:PL>1125 Dep�sito]=OFF ;
     22:  !Encendier Anticolisiones ;
     23:  DO[81:Sol>1130R01(1)]=ON ;
     24:  CALL MAKRO020    ;
     25:  WAIT (DI[23:Sin Sol.Acceso])    ;
     26:  DO[23:Bloquear Rejas de Seg.]=ON ;
     27:  TC_ONLINE (DI[41:Lib>1130R01(1)] AND DI[61:1125 Vac�a /KT] AND !DI[62:1125 Llena KT] AND DI[76:1125 Ent.c/Pza.] AND M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND 
       :  M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1130R01(1)] AND DI[61:1125 Vac�a /KT] AND !DI[62:1125 Llena KT] AND DI[76:1125 Ent.c/Pza.] AND M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND 
       :  M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1130R01(1)] AND DI[76:1125 Ent.c/Pza.] AND M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND 
       :  M[103:KS2 En Reposo]) ;
       ------ ;
   7:  !En Pos. Deposito ST1125 ;
   8:  !Fin de Trabajo 4 ;
   9:  !Deposito en ST1125 ;
  10:L P[4] 2000mm/sec CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  WAIT ((DI[62:1125 Llena KT] AND !DI[61:1125 Vac�a /KT]) OR DI[15:Prueba de funcionamiento])    ;
      4:  F[1:Selecc.Gpo.  1]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[31:Gpo.Suj. 1 Abierto])    ;
      8:  DO[74:Pos.Dejar 1125]=ON ;
      9:  CALL MAKRO004    ;
     10:  WAIT (DI[75:1125 Sal.s/Pza.])    ;
     11:  DO[74:Pos.Dejar 1125]=OFF ;
     12:  WAIT (DI[23:Sin Sol.Acceso])    ;
     13:  DO[23:Bloquear Rejas de Seg.]=ON ;
     14:  TC_ONLINE (DI[41:Lib>1130R01(1)] AND !DI[61:1125 Vac�a /KT] AND DI[62:1125 Llena KT] AND DI[75:1125 Sal.s/Pza.] AND M[30:Seg. de M�quina] AND M[31:Gpo.Suj. 1 Abierto] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND 
       :  M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
  11:  PAYLOAD[2] ;
  12:L P[5] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1130R01(1)] AND !DI[61:1125 Vac�a /KT] AND DI[62:1125 Llena KT] AND DI[75:1125 Sal.s/Pza.] AND M[2:Garra Vacia] AND M[30:Seg. de M�quina] AND M[31:Gpo.Suj. 1 Abierto] AND M[33:Gpo.Suj. 2 Abierto] AND 
       :  M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
  13:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1130R01(1)] AND !DI[61:1125 Vac�a /KT] AND DI[62:1125 Llena KT] AND DI[75:1125 Sal.s/Pza.] AND M[2:Garra Vacia] AND M[30:Seg. de M�quina] AND M[31:Gpo.Suj. 1 Abierto] AND M[33:Gpo.Suj. 2 Abierto] AND 
       :  M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
  14:  !Encender Perfil Libre vs ST1320 ;
  15:  !Apagar Anticol. 1 vs 1130R01 ;
  16:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[41:Blq>1130R01(1)]=ON ;
      3:  DO[76:PL>1125 Dep�sito]=ON ;
      4:  TC_ONLINE (M[2:Garra Vacia] AND M[30:Seg. de M�quina] AND M[31:Gpo.Suj. 1 Abierto] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
  17:J P[8] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  TIMER[6]=STOP ;
      4:  WAIT (DI[23:Sin Sol.Acceso])    ;
      5:  DO[23:Bloquear Rejas de Seg.]=ON ;
      6:  TC_ONLINE (M[2:Garra Vacia] AND M[30:Seg. de M�quina] AND M[31:Gpo.Suj. 1 Abierto] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
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
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   989.950  mm,	Y =  3350.556  mm,	Z =     2.799  mm,
	W =  -179.947 deg,	P =     -.913 deg,	R =    45.134 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.100  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   102.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   987.259  mm,	Y =  3349.092  mm,	Z =  -452.963  mm,
	W =   179.918 deg,	P =    -1.459 deg,	R =    45.199 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.200  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   103.500  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   987.259  mm,	Y =  3349.093  mm,	Z =  -544.301  mm,
	W =   179.918 deg,	P =    -1.458 deg,	R =    45.199 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.200  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   103.500  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   933.049  mm,	Y =  3294.503  mm,	Z =  -548.728  mm,
	W =   179.918 deg,	P =    -1.459 deg,	R =    45.199 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.200  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   103.500  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   838.140  mm,	Y =  3198.031  mm,	Z =  -548.734  mm,
	W =  -179.947 deg,	P =     -.913 deg,	R =    45.134 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.100  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   102.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1586.079  mm,	Y =  2243.980  mm,	Z =  1260.977  mm,
	W =  -152.152 deg,	P =   -10.121 deg,	R =    -6.231 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.035  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.702  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
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
