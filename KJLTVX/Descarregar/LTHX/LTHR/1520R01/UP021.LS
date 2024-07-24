/PROG  UP021
/ATTR
OWNER		= GME;
COMMENT		= "Soldar en ST1520";
PROG_SIZE	= 8352;
CREATE		= DATE 18-10-08  TIME 17:39:38;
MODIFIED	= DATE 23-10-07  TIME 22:01:08;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 43;
MEMORY_SIZE	= 16396;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=1 ;
   3:  PAYLOAD[1] ;
   4:  !Apagar Perfil Lib. 80 vs ST1520 ;
   5:  !Apagar Perfil Lib. 79 vs ST1520 ;
   6:  !Encender Anticol. 1 vs 1500R01 ;
   7:  !Encender Anticol. 5 vs 1550R01 ;
   8:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80:PL>1520DT M.Giratoria]=ON ;
      8:  DO[79:PL>1520 Herramienta]=ON ;
      9:  !Lib. de Anticolisiones ;
     10:  DO[41:Blq>1500R01(1)]=ON ;
     11:  DO[42:Blq>1500R01(2)]=ON ;
     12:  DO[45:Blq>1550R01(5)]=ON ;
     13:  DO[46:Blq>1550R01(6)]=ON ;
     14:  !Apagar Pos. Base ;
     15:  DO[15:PF0 Robot (Punto Cero)]=OFF ;
     16:  !Robot en Trayectoria ;
     17:  DO[16:SAK Robot (En camino)]=ON ;
     18:  WAIT (DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria])    ;
     19:  DO[79:PL>1520 Herramienta]=OFF ;
     20:  DO[80:PL>1520DT M.Giratoria]=OFF ;
     21:  !Encender Anticolisiones ;
     22:  DO[81:Sol>1500R01(1)]=ON ;
     23:  DO[85:Sol>1550R01(5)]=ON ;
     24:  CALL MAKRO020    ;
     25:  WAIT (DI[23:Sin Sol.Acceso])    ;
     26:  DO[23:Bloquear Rejas de Seg.]=ON ;
     27:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  11:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  12:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  13:   ;
  14:  !5qa802035b_022_wps0001_R ;
  15:  !Punto de Sol. No. 11631 ;
  16:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  WAIT (!DI[16:Paro Correcciones] AND DI[23:Sin Sol.Acceso])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11631,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2:SP1 Compensación]=R[197] ;
      6:  WAIT (!DI[129:SZ1 Sin Fuerza] OR DI[26:Conf.Repetir])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23:Sin Sol.Acceso])    ;
      9:  DO[23:Bloquear Rejas de Seg.]=ON ;
     10:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  17:   ;
  18:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  19:   ;
  20:  !5qa802035b_046_avps0001_R ;
  21:  !Punto de Sol. No. 11632 ;
  22:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  WAIT (!DI[16:Paro Correcciones] AND DI[23:Sin Sol.Acceso])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11632,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2:SP1 Compensación]=R[197] ;
      6:  WAIT (!DI[129:SZ1 Sin Fuerza] OR DI[26:Conf.Repetir])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23:Sin Sol.Acceso])    ;
      9:  DO[23:Bloquear Rejas de Seg.]=ON ;
     10:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  23:   ;
  24:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  25:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  26:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  27:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  28:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  29:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  30:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  31:  !5qa802035b_018_sps0035_R ;
  32:  !Punto de Sol. No. 11633 ;
  33:  !Fin de Trabajo 1 ;
  34:J P[16] 100% CNT0 ACC100 TB    0.00sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  WAIT (!DI[16:Paro Correcciones] AND DI[23:Sin Sol.Acceso])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11633,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2:SP1 Compensación]=(R[197]-10) ;
      6:  WAIT (!DI[129:SZ1 Sin Fuerza] OR DI[26:Conf.Repetir])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145:SK1 Sin Soldadura] AND !DI[129:SZ1 Sin Fuerza]),CALL MAKRO001 ;
      9:  WAIT (DI[23:Sin Sol.Acceso])    ;
     10:  DO[23:Bloquear Rejas de Seg.]=ON ;
     11:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  35:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  36:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  37:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  38:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41:Lib>1500R01(1)] AND DI[45:Lib>1550R01(5)] AND DI[79:1520 Soldar] AND DI[80:1520DT Mesa Giratoria] AND M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  39:  !Encender Perfil Lib 80 vs ST1520 ;
  40:  !Encender Perfil Lib 79 vs ST1520 ;
  41:  !Apagar Anticol. 1 vs 1500R01 ;
  42:  !Apagar Anticol. 5 vs 1550R01 ;
  43:J P[21] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[41:Blq>1500R01(1)]=ON ;
      5:  DO[45:Blq>1550R01(5)]=ON ;
      6:  DO[80:PL>1520DT M.Giratoria]=ON ;
      7:  DO[79:PL>1520 Herramienta]=ON ;
      8:  WAIT (DI[23:Sin Sol.Acceso])    ;
      9:  DO[23:Bloquear Rejas de Seg.]=ON ;
     10:  TC_ONLINE (M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2646.302  mm,	Y =   536.682  mm,	Z =   132.495  mm,
	W =  -146.626 deg,	P =   -75.578 deg,	R =    26.011 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1564.024  mm,	Y =   840.573  mm,	Z =   110.546  mm,
	W =   -92.681 deg,	P =   -41.654 deg,	R =   -90.246 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    55.578  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -815.555  mm,	Y =   508.046  mm,	Z =   675.594  mm,
	W =   -51.626 deg,	P =   -25.814 deg,	R =  -145.227 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    55.578  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -459.988  mm,	Y =   657.147  mm,	Z =   314.689  mm,
	W =   -55.781 deg,	P =   -36.909 deg,	R =  -143.121 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    55.578  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -365.699  mm,	Y =   625.865  mm,	Z =   277.440  mm,
	W =   -56.179 deg,	P =   -37.831 deg,	R =  -142.885 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    84.466  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -347.294  mm,	Y =   598.073  mm,	Z =   307.287  mm,
	W =   -56.096 deg,	P =   -37.831 deg,	R =  -142.884 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    18.100  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -346.008  mm,	Y =   581.638  mm,	Z =   288.375  mm,
	W =   -79.856 deg,	P =   -37.622 deg,	R =  -136.206 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    19.800  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -331.140  mm,	Y =   559.727  mm,	Z =   281.138  mm,
	W =   -80.264 deg,	P =   -37.719 deg,	R =  -135.546 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    28.800  mm
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -392.116  mm,	Y =   617.094  mm,	Z =   265.874  mm,
	W =   -77.060 deg,	P =   -42.542 deg,	R =  -132.934 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -500.133  mm,	Y =   673.763  mm,	Z =   303.129  mm,
	W =  -111.840 deg,	P =   -38.262 deg,	R =  -103.745 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -599.915  mm,	Y =   773.235  mm,	Z =   599.680  mm,
	W =  -164.087 deg,	P =   -20.077 deg,	R =   -84.622 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -254.031  mm,	Y =   607.375  mm,	Z =   675.786  mm,
	W =  -171.068 deg,	P =   -15.246 deg,	R =  -101.250 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -111.244  mm,	Y =   575.730  mm,	Z =   664.105  mm,
	W =  -171.068 deg,	P =   -15.246 deg,	R =  -101.250 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -80.053  mm,	Y =   543.427  mm,	Z =   427.801  mm,
	W =  -171.068 deg,	P =   -15.246 deg,	R =  -101.250 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -85.695  mm,	Y =   547.365  mm,	Z =   353.931  mm,
	W =   166.991 deg,	P =   -14.934 deg,	R =  -105.558 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -114.810  mm,	Y =   504.443  mm,	Z =   241.196  mm,
	W =   167.137 deg,	P =   -13.250 deg,	R =  -105.962 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    19.500  mm
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -85.695  mm,	Y =   547.365  mm,	Z =   353.931  mm,
	W =   166.991 deg,	P =   -14.934 deg,	R =  -105.558 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    32.275  mm,	Y =   504.187  mm,	Z =   761.035  mm,
	W =  -178.344 deg,	P =   -11.415 deg,	R =  -108.920 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -632.670  mm,	Y =   550.677  mm,	Z =  1001.195  mm,
	W =   176.579 deg,	P =   -12.705 deg,	R =  -107.895 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -632.670  mm,	Y =   550.677  mm,	Z =  1001.195  mm,
	W =   176.579 deg,	P =   -12.705 deg,	R =  -107.895 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2646.302  mm,	Y =   536.682  mm,	Z =   132.495  mm,
	W =  -146.626 deg,	P =   -75.578 deg,	R =    26.011 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
};
/END
