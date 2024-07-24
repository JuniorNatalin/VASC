/PROG  UP004
/ATTR
OWNER		= AUROM;
COMMENT		= "Dejar en ST1190";
PROG_SIZE	= 4844;
CREATE		= DATE 18-09-17  TIME 16:34:26;
MODIFIED	= DATE 23-09-28  TIME 20:55:02;
FILE_NAME	= UP004;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 8444;
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
   2:  UTOOL_NUM=1 ;
   3:  PAYLOAD[2] ;
   4:  !Apagar Perfil Lib. 76 vs ST1190 ;
   5:  !Encender Anticol. 3 vs 1220R01 ;
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
     16:  DO[43]=ON ;
     17:  DO[44]=ON ;
     18:  DO[45]=ON ;
     19:  DO[46]=ON ;
     20:  !Apagar Pos. Base ;
     21:  DO[15]=OFF ;
     22:  !Robot en Trayectoria ;
     23:  DO[16]=ON ;
     24:  WAIT (DI[61] AND !DI[62] AND DI[76])    ;
     25:  DO[76]=OFF ;
     26:  !Encender Anticolisiones ;
     27:  DO[83]=ON ;
     28:  CALL MAKRO020    ;
     29:  WAIT (DI[23])    ;
     30:  DO[23]=ON ;
     31:  !Marca de Usuario Estado Garra ;
     32:  !M[15]=(M[31] AND M[34]) ;
     33:  !Marca Usuario ST1190 S/Pieza ;
     34:  !M[18]=(DI[61] AND !DI[62]) ;
     35:  TC_ONLINE (DI[43] AND DI[76] AND M[1] AND M[15] AND M[18] AND M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[76] AND M[1] AND M[15] AND M[18] AND M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[76] AND M[1] AND M[15] AND M[18] AND M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   9:J P[4] 30% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  !Marca de Usuario Estado Garra ;
      2:  !M[16]=(M[32] AND M[34]) ;
      3:  TC_ONLINE (DI[43] AND DI[76] AND M[1] AND M[15] AND M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  10:  !En Posicion ST1190 ;
  11:  !Dejar Pieza en ST1190 ;
  12:  !Fin de Trabajo 3 ;
  13:L P[5] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[61] AND DI[62]) OR DI[15])    ;
      4:  F[2]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[33])    ;
      8:  DO[74]=ON ;
      9:  CALL MAKRO004    ;
     10:  WAIT (DI[75])    ;
     11:  DO[74]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  !Marca de Usuario Estado Garra ;
     15:  !M[13]=(M[31] AND M[33]) ;
     16:  !Marca Usuario ST1190 C/Pieza ;
     17:  !M[17]=(!DI[61] AND DI[62]) ;
     18:  TC_ONLINE (DI[43] AND DI[75] AND M[13] AND M[17] AND M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  14:  PAYLOAD[1] ;
  15:L P[6] 500mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[75] AND M[2] AND M[13] AND M[17] AND M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  16:J P[7] 80% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[75] AND M[2] AND M[13] AND M[17] AND M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  17:  !Encender Perfil Lib 76 vs ST1190 ;
  18:  !Apagar Anticol. 3 vs 1220R01 ;
  19:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[76]=ON ;
      3:  DO[43]=ON ;
      4:  TC_ONLINE (M[2] AND M[13] AND M[17] AND M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  20:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   428.131  mm,	Y =   297.237  mm,	Z =  1068.180  mm,
	W =    15.400 deg,	P =    27.794 deg,	R =  -173.854 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    20.180  mm,	Y =   520.806  mm,	Z =  1068.180  mm,
	W =    15.400 deg,	P =    27.794 deg,	R =  -120.844 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1470.823  mm,	Y =  2505.180  mm,	Z =  -325.173  mm,
	W =   139.585 deg,	P =    89.189 deg,	R =   -10.562 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1478.237  mm,	Y =  2502.616  mm,	Z =  -315.873  mm,
	W =   101.250 deg,	P =    89.143 deg,	R =   -49.307 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.300  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   104.300  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1480.682  mm,	Y =  2499.768  mm,	Z =  -567.638  mm,
	W =   101.231 deg,	P =    89.143 deg,	R =   -49.325 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.300  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   104.300  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1478.237  mm,	Y =  2502.616  mm,	Z =  -315.873  mm,
	W =   101.250 deg,	P =    89.143 deg,	R =   -49.307 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.300  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   104.300  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1433.818  mm,	Y =  2526.542  mm,	Z =  -362.133  mm,
	W =   139.585 deg,	P =    89.189 deg,	R =    -9.719 deg
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
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    20.180  mm,	Y =   520.806  mm,	Z =  1068.180  mm,
	W =    15.400 deg,	P =    27.794 deg,	R =  -120.844 deg
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
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   428.131  mm,	Y =   297.237  mm,	Z =  1068.180  mm,
	W =    15.400 deg,	P =    27.794 deg,	R =  -173.854 deg
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
