/PROG  UP022
/ATTR
OWNER		= GME;
COMMENT		= "Tomar en ST1120";
PROG_SIZE	= 4610;
CREATE		= DATE 96-06-10  TIME 20:13:56;
MODIFIED	= DATE 23-07-08  TIME 09:57:28;
FILE_NAME	= UP022;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 8518;
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
   4:  !Posicion de Salto ;
   5:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  TIMER[4]=RESET ;
      4:  TIMER[4]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80:PL>Cortina Seg.]=OFF ;
      8:  DO[79:PL>1120 Herramienta]=OFF ;
      9:  DO[78:Ctrl.1120 Cil.]=ON ;
     10:  DO[77:Pos.Tomar 1120]=OFF ;
     11:  DO[76:PL>1125 Dep�sito]=ON ;
     12:  DO[74:Pos.Dejar 1125]=OFF ;
     13:  !Lib. de Anticolisiones ;
     14:  DO[41:Blq>1130R01(1)]=ON ;
     15:  DO[42:Blq>1130R01(2)]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15:PF0 Robot (Punto Cero)]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16:SAK Robot (En camino)]=ON ;
     20:  WAIT (DI[78:1120 Ent.s/Pza.] AND DI[80:Cortina Abajo] AND DI[64:1120 Llena KT] AND !DI[63:1120 Vac�a /KT])    ;
     21:  DO[78:Ctrl.1120 Cil.]=OFF ;
     22:  WAIT (DI[23:Sin Sol.Acceso])    ;
     23:  DO[23:Bloquear Rejas de Seg.]=ON ;
     24:  TC_ONLINE (!DI[63:1120 Vac�a /KT] AND DI[64:1120 Llena KT] AND DI[78:1120 Ent.s/Pza.] AND DI[80:Cortina Abajo] AND M[2:Garra Vacia] AND M[30:Seg. de M�quina] AND M[31:Gpo.Suj. 1 Abierto] AND M[33:Gpo.Suj. 2 Abierto] AND 
       :  M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63:1120 Vac�a /KT] AND DI[64:1120 Llena KT] AND DI[78:1120 Ent.s/Pza.] AND DI[80:Cortina Abajo] AND M[30:Seg. de M�quina] AND M[31:Gpo.Suj. 1 Abierto] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND 
       :  M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63:1120 Vac�a /KT] AND DI[64:1120 Llena KT] AND DI[78:1120 Ent.s/Pza.] AND DI[80:Cortina Abajo] AND M[30:Seg. de M�quina] AND M[31:Gpo.Suj. 1 Abierto] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND 
       :  M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
   8:  !Tomar en ST1120 ;
   9:  !Fin de Trabajo 2 ;
  10:L P[4] 1500mm/sec CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=(OFF) ;
      3:  WAIT (M[1:Garra Llena])    ;
      4:  F[1:Selecc.Gpo.  1]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[1:Garra Llena] AND M[32:Gpo.Suj. 1 Cerrado])    ;
      7:  DO[77:Pos.Tomar 1120]=ON ;
      8:  CALL MAKRO002    ;
      9:  WAIT (DI[77:1120 Sal.c/Pza.])    ;
     10:  DO[77:Pos.Tomar 1120]=OFF ;
     11:  WAIT (DI[23:Sin Sol.Acceso])    ;
     12:  DO[23:Bloquear Rejas de Seg.]=ON ;
     13:  TC_ONLINE (DI[77:1120 Sal.c/Pza.] AND DI[80:Cortina Abajo] AND M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND 
       :  M[103:KS2 En Reposo]) ;
       ------ ;
  11:  PAYLOAD[2] ;
  12:L P[5] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63:1120 Vac�a /KT] AND !DI[64:1120 Llena KT] AND DI[77:1120 Sal.c/Pza.] AND DI[80:Cortina Abajo] AND M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND 
       :  M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
  13:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63:1120 Vac�a /KT] AND !DI[64:1120 Llena KT] AND DI[77:1120 Sal.c/Pza.] AND DI[80:Cortina Abajo] AND M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND 
       :  M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
  14:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63:1120 Vac�a /KT] AND !DI[64:1120 Llena KT] AND DI[77:1120 Sal.c/Pza.] AND DI[80:Cortina Abajo] AND M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND 
       :  M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63:1120 Vac�a /KT] AND !DI[64:1120 Llena KT] AND DI[77:1120 Sal.c/Pza.] AND DI[80:Cortina Abajo] AND M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND 
       :  M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
  16:  !Encender Perfil Lib 80 vs ST1120 ;
  17:  !Encender Perfil Lib 79 vs ST1120 ;
  18:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[80:PL>Cortina Seg.]=ON ;
      3:  DO[79:PL>1120 Herramienta]=ON ;
      4:  TC_ONLINE (M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
  19:J P[10] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23:Sin Sol.Acceso])    ;
      5:  DO[23:Bloquear Rejas de Seg.]=ON ;
      6:  TC_ONLINE (M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1232.976  mm,	Y = -2048.282  mm,	Z =  -649.381  mm,
	W =  -179.287 deg,	P =    40.300 deg,	R =   132.387 deg
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
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
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
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
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
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
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
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
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
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
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
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
P[10]{
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
