/PROG  UP023
/ATTR
OWNER		= GME;
COMMENT		= "Dejar en  ST1620";
PROG_SIZE	= 4492;
CREATE		= DATE 96-03-22  TIME 17:32:12;
MODIFIED	= DATE 23-07-09  TIME 10:01:10;
FILE_NAME	= UP023;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 8004;
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
   1:  !Apagar Perfil Lib. 76 vs ST1620 ;
   2:  !Encender Anticol. 1 vs 1630R01 ;
   3:  UFRAME_NUM=0 ;
   4:  UTOOL_NUM=1 ;
   5:  PAYLOAD[2] ;
   6:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[77]=OFF ;
     11:  DO[76]=ON ;
     12:  DO[74]=OFF ;
     13:  !Lib. de Anticolisiones ;
     14:  DO[41]=ON ;
     15:  DO[42]=ON ;
     16:  DO[43]=ON ;
     17:  DO[44]=ON ;
     18:  DO[47]=ON ;
     19:  DO[48]=ON ;
     20:  !Apagar Pos. Base ;
     21:  DO[15]=OFF ;
     22:  !Robot en Trayectoria ;
     23:  DO[16]=ON ;
     24:  WAIT (DI[76] AND !DI[62] AND DI[61])    ;
     25:  DO[76]=OFF ;
     26:  !Encender Anticolisiones ;
     27:  DO[81]=ON ;
     28:  CALL MAKRO020    ;
     29:  WAIT (DI[23])    ;
     30:  DO[23]=ON ;
     31:  TC_ONLINE (DI[41] AND !DI[62] AND DI[61] AND DI[76] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[62] AND DI[61] AND DI[76] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[62] AND DI[61] AND DI[76] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[76] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  10:  !En Posicion ST1620 ;
  11:  !Dejar Pieza en ST1620 ;
  12:  !Fin de Trabajo 3 ;
  13:L P[5] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((DI[62] AND !DI[61]) OR DI[15])    ;
      4:  DO[74]=ON ;
      5:  CALL MAKRO003    ;
      6:  WAIT (DI[75])    ;
      7:  DO[74]=OFF ;
      8:  F[2]=(ON) ;
      9:  CALL MAKRO342    ;
     10:  CALL MAKRO340    ;
     11:  WAIT (M[33])    ;
     12:  CALL MAKRO003    ;
     13:  WAIT (DI[23])    ;
     14:  DO[23]=ON ;
     15:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  14:  PAYLOAD[1] ;
  15:L P[6] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  18:  !Encender Perfil Lib 76 vs ST1620 ;
  19:  !Apagar Anticol. 1 vs 1630R01 ;
  20:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=STOP ;
      4:  DO[41]=ON ;
      5:  DO[76]=ON ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =   554.386  mm,	Y =   714.944  mm,	Z =  1327.417  mm,
	W =   171.209 deg,	P =    10.262 deg,	R =  -131.540 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  -186.542  mm,	Y =  2075.682  mm,	Z =  1667.599  mm,
	W =   -50.719 deg,	P =    48.580 deg,	R =    56.631 deg
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
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  -602.753  mm,	Y =  1939.381  mm,	Z =  -256.123  mm,
	W =   -52.503 deg,	P =    89.353 deg,	R =    89.572 deg
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
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X = -1343.782  mm,	Y =  1522.748  mm,	Z =  -256.123  mm,
	W =   -52.504 deg,	P =    89.353 deg,	R =   113.734 deg
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
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X = -1345.766  mm,	Y =  1524.161  mm,	Z =  -529.909  mm,
	W =  -164.277 deg,	P =    88.038 deg,	R =     1.221 deg
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
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X = -1343.782  mm,	Y =  1522.748  mm,	Z =  -256.123  mm,
	W =   -52.504 deg,	P =    89.353 deg,	R =   113.734 deg
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
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  -602.752  mm,	Y =  1939.381  mm,	Z =  -256.123  mm,
	W =   -52.503 deg,	P =    89.353 deg,	R =    89.572 deg
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
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  -186.542  mm,	Y =  2075.682  mm,	Z =  1667.599  mm,
	W =   -50.719 deg,	P =    48.580 deg,	R =    56.631 deg
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
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =   554.386  mm,	Y =   714.944  mm,	Z =  1327.417  mm,
	W =   171.209 deg,	P =    10.262 deg,	R =  -131.540 deg
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
