/PROG  UP004
/ATTR
OWNER		= AUROM;
COMMENT		= "Dejar en ST1125";
PROG_SIZE	= 3533;
CREATE		= DATE 96-03-31  TIME 20:14:14;
MODIFIED	= DATE 20-07-17  TIME 07:50:40;
FILE_NAME	= UP004;
VERSION		= 0;
LINE_COUNT	= 18;
MEMORY_SIZE	= 5941;
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
   1:  UTOOL_NUM=2 ;
   2:  UFRAME_NUM=0 ;
   3:  PAYLOAD[2] ;
   4:  !Apagar Perfil Lib. 76 vs ST1125 ;
   5:  !Encender Anticol. 1 vs 1130R01 ;
   6:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=RESET ;
      4:  TIMER[6]=START ;
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
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (DI[76] AND !DI[62] AND DI[61])    ;
     21:  DO[76]=OFF ;
     22:  !Encender Anticolisiones ;
     23:  DO[81]=ON ;
     24:  CALL MAKRO020    ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=ON ;
     27:  TC_ONLINE (DI[41] AND DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   9:  !En Posicion ST1125 ;
  10:  !Dejar Pieza en ST1125 ;
  11:  !Fin de Trabajo 4 ;
  12:L P[4] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[61] AND DI[62]) OR DI[15])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[31])    ;
      8:  DO[74]=ON ;
      9:  CALL MAKRO004    ;
     10:  WAIT (DI[75])    ;
     11:  DO[74]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  13:  PAYLOAD[1] ;
  14:J P[5] 100% CNT100    ;
  15:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[41]=ON ;
      3:  DO[76]=ON ;
      4:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  16:  !Encender Perfil Lib 76 vs ST1125 ;
  17:  !Apagar Anticol. 1 vs 1130R01 ;
  18:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1463.108  mm,	Y = -1445.457  mm,	Z =  1908.051  mm,
	W =  -115.008 deg,	P =   -27.392 deg,	R =   -22.470 deg
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
	X =  3192.304  mm,	Y = -1632.687  mm,	Z =   304.442  mm,
	W =   -89.839 deg,	P =      .009 deg,	R =    -1.212 deg
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
	X =  3187.281  mm,	Y = -1641.654  mm,	Z =  -222.568  mm,
	W =   -89.698 deg,	P =     1.631 deg,	R =    -1.426 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    98.989  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   101.180  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  3188.680  mm,	Y = -1641.737  mm,	Z =  -299.445  mm,
	W =   -89.698 deg,	P =     1.631 deg,	R =    -1.426 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    98.989  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   101.180  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  3091.175  mm,	Y = -1641.737  mm,	Z =  -299.445  mm,
	W =   -89.698 deg,	P =     1.631 deg,	R =    -1.426 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    98.989  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   101.180  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  2602.639  mm,	Y = -1626.710  mm,	Z =   136.293  mm,
	W =   -89.838 deg,	P =      .009 deg,	R =    -1.212 deg
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
	X =  1463.108  mm,	Y = -1445.457  mm,	Z =  1908.051  mm,
	W =  -115.008 deg,	P =   -27.392 deg,	R =   -22.470 deg
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
