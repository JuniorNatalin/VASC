/PROG  UP023
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Dejar en ST1400";
PROG_SIZE	= 4706;
CREATE		= DATE 23-07-08  TIME 22:44:02;
MODIFIED	= DATE 23-07-08  TIME 22:44:04;
FILE_NAME	= UP003;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 8182;
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
   1:  !Apagar Perfil Lib. 75 vs ST1400 ;
   2:  !Encender Anticol. 1 vs 1410R01 ;
   3:  UFRAME_NUM=0 ;
   4:  UTOOL_NUM=1 ;
   5:  PAYLOAD[2] ;
   6:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[77]=OFF ;
     11:  DO[76]=OFF ;
     12:  DO[75]=ON ;
     13:  DO[73]=OFF ;
     14:  !Lib. de Anticolisiones ;
     15:  DO[41]=ON ;
     16:  DO[42]=ON ;
     17:  DO[43]=ON ;
     18:  DO[44]=ON ;
     19:  DO[45]=ON ;
     20:  DO[46]=ON ;
     21:  !Apagar Pos. Base ;
     22:  DO[15]=OFF ;
     23:  !Robot en Trayectoria ;
     24:  DO[16]=ON ;
     25:  WAIT (DI[61] AND !DI[62] AND DI[75])    ;
     26:  DO[75]=(OFF) ;
     27:  DO[81]=(ON) ;
     28:  CALL MAKRO020    ;
     29:  WAIT (DI[23])    ;
     30:  DO[23]=(ON) ;
     31:  TC_ONLINE (DI[41] AND DI[61] AND !DI[62] AND DI[75] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[61] AND !DI[62] AND DI[75] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[61] AND !DI[62] AND DI[75] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[1]=(ON) ;
      4:  CALL MAKRO343    ;
      5:  WAIT (M[32])    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (DI[41] AND DI[75] AND M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  10:  !En Posicion ST1400 ;
  11:  !Dejar Pieza en ST1400 ;
  12:  !Fin de Trabajo 3 ;
  13:L P[5] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[61] AND DI[62]) OR DI[15])    ;
      4:  DO[73]=ON ;
      5:  CALL MAKRO003    ;
      6:  WAIT (DI[74])    ;
      7:  DO[73]=OFF ;
      8:  F[2]=(ON) ;
      9:  CALL MAKRO342    ;
     10:  CALL MAKRO340    ;
     11:  WAIT (M[33])    ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[74] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  14:  PAYLOAD[1] ;
  15:L P[6] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[2])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[74] AND M[2] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[74] AND M[2] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[74] AND M[2] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  18:  !Encender Perfil Lib 75 vs ST1400 ;
  19:  !Apagar Anticol. 1 vs 1410R01 ;
  20:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[3]=STOP ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[31])    ;
      8:  DO[41]=ON ;
      9:  DO[75]=ON ;
     10:  WAIT (DI[23])    ;
     11:  DO[23]=(ON) ;
     12:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   584.813  mm,	Y =   359.341  mm,	Z =  1620.482  mm,
	W =   -42.182 deg,	P =    26.578 deg,	R =    17.187 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   386.416  mm,	Y =  1264.681  mm,	Z =  1088.864  mm,
	W =    39.154 deg,	P =    40.494 deg,	R =    60.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   110.400  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1267.297  mm,	Y =  1651.622  mm,	Z =   154.774  mm,
	W =   130.903 deg,	P =    89.887 deg,	R =   131.318 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   110.100  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1266.877  mm,	Y =  1652.100  mm,	Z =  -168.660  mm,
	W =   130.867 deg,	P =    89.888 deg,	R =   131.282 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   110.100  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1266.786  mm,	Y =  1652.202  mm,	Z =  -236.340  mm,
	W =   130.849 deg,	P =    89.888 deg,	R =   131.264 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   110.100  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1266.877  mm,	Y =  1652.100  mm,	Z =  -168.660  mm,
	W =   131.149 deg,	P =    89.887 deg,	R =   131.565 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   110.100  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1267.297  mm,	Y =  1651.622  mm,	Z =   154.774  mm,
	W =   130.903 deg,	P =    89.887 deg,	R =   131.318 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   110.100  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   386.416  mm,	Y =  1264.681  mm,	Z =  1088.864  mm,
	W =    39.154 deg,	P =    40.494 deg,	R =    60.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   110.400  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   584.813  mm,	Y =   359.341  mm,	Z =  1620.482  mm,
	W =   -42.182 deg,	P =    26.578 deg,	R =    17.187 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
