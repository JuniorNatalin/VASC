/PROG  UP003
/ATTR
OWNER		= AUROM;
COMMENT		= "Tomar ST1510-3";
PROG_SIZE	= 6270;
CREATE		= DATE 16-08-24  TIME 02:33:56;
MODIFIED	= DATE 24-03-14  TIME 03:42:56;
FILE_NAME	= UP003;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 11734;
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
   4:  !Apagar Perfil Lib 80 vs ST1510-3 ;
   5:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=OFF ;
      9:  DO[78]=ON ;
     10:  DO[77]=OFF ;
     11:  DO[76]=ON ;
     12:  DO[75]=ON ;
     13:  DO[74]=OFF ;
     14:  DO[73]=OFF ;
     15:  DO[72]=OFF ;
     16:  DO[71]=OFF ;
     17:  !Lib. de Anticolisiones ;
     18:  DO[41]=ON ;
     19:  DO[42]=ON ;
     20:  DO[43]=ON ;
     21:  DO[44]=ON ;
     22:  DO[55]=ON ;
     23:  DO[56]=ON ;
     24:  !Apagar Pos. Base ;
     25:  DO[15]=OFF ;
     26:  !Robot en Trayectoria ;
     27:  DO[16]=ON ;
     28:  F[3]=(ON) ;
     29:  CALL MAKRO343    ;
     30:  WAIT (M[36])    ;
     31:  WAIT (!DI[65] AND DI[66] AND DI[80])    ;
     32:  DO[80]=OFF ;
     33:  WAIT (DI[23])    ;
     34:  DO[23]=ON ;
     35:  !Marcas de Usuario : ;
     36:  !Marca 2 Estado de Garra ;
     37:  !Valula 3 en V, 1,2,4,5&6 en R ;
     38:  !M[11] = M[31] AND M[33] ;
     39:  !AND M[36] AND M[37] AND M[39] AN ;
     40:  TC_ONLINE (!DI[65] AND DI[66] AND DI[80] AND M[2] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[65] AND DI[66] AND DI[80] AND M[2] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[65] AND DI[66] AND DI[80] AND M[2] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[65] AND DI[66] AND DI[80] AND M[2] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[65] AND DI[66] AND DI[80] AND M[2] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[65] AND DI[66] AND DI[80] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  11:  !En Posicion ST1510-3 ;
  12:  !Tomar Pieza en ST1510-3 ;
  13:  !Fin de Trabajo 1 ;
  14:L P[7] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (M[3])    ;
      4:  F[3]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[35])    ;
      8:  F[4]=(ON) ;
      9:  CALL MAKRO343    ;
     10:  WAIT (M[38])    ;
     11:  DO[79]=ON ;
     12:  CALL MAKRO001    ;
     13:  WAIT (DI[79])    ;
     14:  DO[79]=OFF ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=ON ;
     17:  !Marca 3 Estado de Garra ;
     18:  !Valula 4 en V, 1,2,3,5&6 en R ;
     19:  !M[12] = M[31] AND M[33] ;
     20:  !AND M[35] AND M[38] AND M[39] AN ;
     21:  TC_ONLINE (DI[79] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:L P[8] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[65] AND !DI[66] AND DI[79] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[65] AND !DI[66] AND DI[79] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[65] AND !DI[66] AND DI[79] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[65] AND !DI[66] AND DI[79] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[65] AND !DI[66] AND DI[79] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[65] AND !DI[66] AND DI[79] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  21:  !Encender Perf Lib 80 vs ST1510-3 ;
  22:J P[14] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[80]=ON ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1915.120  mm,	Y =   507.878  mm,	Z =  1815.465  mm,
	W =    99.570 deg,	P =   -53.196 deg,	R =    -5.907 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  1590.893  mm,	Y =  -283.557  mm,	Z =  1482.240  mm,
	W =   110.705 deg,	P =    55.897 deg,	R =  -135.448 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  1087.698  mm,	Y =  -941.007  mm,	Z =  1255.731  mm,
	W =   115.848 deg,	P =    65.392 deg,	R =  -163.394 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  1332.038  mm,	Y = -1696.107  mm,	Z =   761.178  mm,
	W =   -31.735 deg,	P =    71.205 deg,	R =    14.788 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  1303.390  mm,	Y = -2217.246  mm,	Z =   -54.547  mm,
	W =    44.550 deg,	P =    65.222 deg,	R =    78.941 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  1205.766  mm,	Y = -3093.929  mm,	Z =  -332.275  mm,
	W =    83.207 deg,	P =    79.631 deg,	R =   127.962 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    99.800  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  1207.747  mm,	Y = -3091.495  mm,	Z =  -373.259  mm,
	W =    83.207 deg,	P =    79.631 deg,	R =   127.962 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    99.800  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  1205.766  mm,	Y = -3093.929  mm,	Z =  -332.275  mm,
	W =    83.207 deg,	P =    79.631 deg,	R =   127.962 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    99.800  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  1205.766  mm,	Y = -3093.930  mm,	Z =  -212.857  mm,
	W =    83.207 deg,	P =    79.631 deg,	R =   127.962 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    99.800  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  1697.619  mm,	Y = -2832.467  mm,	Z =    64.040  mm,
	W =    34.151 deg,	P =    68.823 deg,	R =    69.359 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  1303.390  mm,	Y = -2217.246  mm,	Z =   -54.547  mm,
	W =    44.550 deg,	P =    65.222 deg,	R =    78.941 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  1332.038  mm,	Y = -1696.107  mm,	Z =   761.178  mm,
	W =   -31.735 deg,	P =    71.205 deg,	R =    14.788 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  1087.698  mm,	Y =  -941.007  mm,	Z =  1255.731  mm,
	W =   115.848 deg,	P =    65.392 deg,	R =  -163.394 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1915.120  mm,	Y =   507.878  mm,	Z =  1815.465  mm,
	W =    99.570 deg,	P =   -53.196 deg,	R =    -5.907 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
/END
