/PROG  UP023
/ATTR
OWNER		= GME;
COMMENT		= "Soldadura Est.";
PROG_SIZE	= 6152;
CREATE		= DATE 96-06-10  TIME 20:14:02;
MODIFIED	= DATE 23-07-08  TIME 11:28:00;
FILE_NAME	= UP003;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 11140;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,1,1,*;
CONTROL_CODE	= 00000001 00000000;
/APPL
/MN
   1:  UFRAME_NUM=2 ;
   2:  UTOOL_NUM=3 ;
   3:  PAYLOAD[1] ;
   4:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
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
     20:  !Basculante 2 en Pos. de Reposo ;
     21:  IF (!DI[1002:KS2BE2R Reposo  Bascul.] AND DO[12:Autom�tico]),CALL MAKRO102 ;
     22:  WAIT (M[103:KS2 En Reposo])    ;
     23:  WAIT (DI[23:Sin Sol.Acceso])    ;
     24:  DO[23:Bloquear Rejas de Seg.]=ON ;
     25:  TC_ONLINE (M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
   9:  !5qa802035b_027_abps0008_L ;
  10:  !Punto de Sol. No. 10006 ;
  11:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  WAIT (!DI[16:Paro Correcciones] AND DI[23:Sin Sol.Acceso])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=10006,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[5:SZ2 Compensaci�n]=(R[198]) ;
      6:  WAIT (!DI[161:SZ2 Sin Fuerza] OR DI[26:Conf.Repetir])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23:Sin Sol.Acceso])    ;
      9:  DO[23:Bloquear Rejas de Seg.]=ON ;
     10:  TC_ONLINE (M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
  12:  !5qa802035b_027_abps0009_L ;
  13:  !Punto de Sol. No. 10007 ;
  14:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  WAIT (!DI[16:Paro Correcciones] AND DI[23:Sin Sol.Acceso])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=10007,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[5:SZ2 Compensaci�n]=(R[198]) ;
      6:  WAIT (!DI[161:SZ2 Sin Fuerza] OR DI[26:Conf.Repetir])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23:Sin Sol.Acceso])    ;
      9:  DO[23:Bloquear Rejas de Seg.]=ON ;
     10:  TC_ONLINE (M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
  15:  !5qa802035b_027_abps0007_L ;
  16:  !Punto de Sol. No. 10008 ;
  17:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  WAIT (!DI[16:Paro Correcciones] AND DI[23:Sin Sol.Acceso])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=10008,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[5:SZ2 Compensaci�n]=(R[198]) ;
      6:  WAIT (!DI[161:SZ2 Sin Fuerza] OR DI[26:Conf.Repetir])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23:Sin Sol.Acceso])    ;
      9:  DO[23:Bloquear Rejas de Seg.]=ON ;
     10:  TC_ONLINE (M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
  18:  !5qa802035b_027_abps0006_L ;
  19:  !Punto de Sol. No. 10009 ;
  20:  !Fin de Trabajo 3 ;
  21:J P[9] 100% CNT0 ACC100 TB    0.00sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  WAIT (!DI[16:Paro Correcciones] AND DI[23:Sin Sol.Acceso])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=10009,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[5:SZ2 Compensaci�n]=(R[198]) ;
      6:  WAIT (!DI[161:SZ2 Sin Fuerza] OR DI[26:Conf.Repetir])    ;
      7:  CALL MAKRO110    ;
      8:  IF (!DI[145:SK1 Sin Soldadura] AND !DI[129:SZ1 Sin Fuerza]),CALL MAKRO003 ;
      9:  WAIT (DI[23:Sin Sol.Acceso])    ;
     10:  DO[23:Bloquear Rejas de Seg.]=ON ;
     11:  TC_ONLINE (M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
  22:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
  23:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
  24:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto] AND M[95:Seguridad SP1] AND M[102:Seguridad SP2] AND M[103:KS2 En Reposo]) ;
       ------ ;
  25:J P[13] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  TIMER[5]=STOP ;
      4:  WAIT (DI[23:Sin Sol.Acceso])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  DO[23:Bloquear Rejas de Seg.]=ON ;
      7:  TC_ONLINE (M[1:Garra Llena] AND M[30:Seg. de M�quina] AND M[32:Gpo.Suj. 1 Cerrado] AND M[33:Gpo.Suj. 2 Abierto]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =   220.966  mm,	RY =  -149.051  mm,	RZ = -1783.343  mm,
	RW =     4.609 deg,	RP =   -21.812 deg,	RR =    66.408 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	RX =   231.591  mm,	RY =  -146.790  mm,	RZ =    53.220  mm,
	RW =   -37.181 deg,	RP =    38.685 deg,	RR =   171.272 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	RX =   332.783  mm,	RY =  -290.564  mm,	RZ =    73.819  mm,
	RW =   -15.141 deg,	RP =    53.863 deg,	RR =   179.277 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   180.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	RX =   280.577  mm,	RY =  -422.838  mm,	RZ =   156.586  mm,
	RW =   -13.009 deg,	RP =    55.901 deg,	RR =   179.987 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   180.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	RX =   202.001  mm,	RY =  -433.586  mm,	RZ =    97.318  mm,
	RW =   -13.009 deg,	RP =    55.901 deg,	RR =   179.987 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   180.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	RX =    93.533  mm,	RY =  -433.896  mm,	RZ =    74.545  mm,
	RW =   -17.447 deg,	RP =    54.298 deg,	RR =   174.608 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   101.700  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    26.500  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	RX =    84.633  mm,	RY =  -424.690  mm,	RZ =    84.663  mm,
	RW =   -16.447 deg,	RP =    54.209 deg,	RR =   174.611 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    24.200  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	RX =    92.415  mm,	RY =  -410.446  mm,	RZ =    79.094  mm,
	RW =   -12.815 deg,	RP =    53.503 deg,	RR =   176.597 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    23.200  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	RX =    74.995  mm,	RY =  -442.425  mm,	RZ =    91.230  mm,
	RW =   -21.235 deg,	RP =    55.293 deg,	RR =   174.850 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    21.400  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	RX =   201.141  mm,	RY =  -421.247  mm,	RZ =    91.428  mm,
	RW =   -13.006 deg,	RP =    55.900 deg,	RR =   179.985 deg
   GP2:
	UF : 2, UT : 3,	
	J1=    -3.200  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   100.900  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	RX =   248.713  mm,	RY =  -367.544  mm,	RZ =    78.769  mm,
	RW =   -13.009 deg,	RP =    55.901 deg,	RR =   179.987 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	RX =   231.591  mm,	RY =  -146.790  mm,	RZ =    53.220  mm,
	RW =   -37.181 deg,	RP =    38.685 deg,	RR =   171.272 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =   220.966  mm,	RY =  -149.051  mm,	RZ = -1783.343  mm,
	RW =     4.609 deg,	RP =   -21.812 deg,	RR =    66.408 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
/END
