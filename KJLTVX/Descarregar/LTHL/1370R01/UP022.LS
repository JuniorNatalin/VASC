/PROG  UP022
/ATTR
OWNER		= GME;
COMMENT		= "Tomar en ST1360";
PROG_SIZE	= 4980;
CREATE		= DATE 96-03-24  TIME 14:16:50;
MODIFIED	= DATE 23-07-08  TIME 21:09:44;
FILE_NAME	= UP022;
VERSION		= 0;
LINE_COUNT	= 18;
MEMORY_SIZE	= 8488;
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
   2:  UTOOL_NUM=3 ;
   3:  PAYLOAD[2] ;
   4:  !Apagar Perfil Lib. 76 vs ST1360 ;
   5:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=RESET ;
      4:  TIMER[4]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[77]=OFF ;
     11:  DO[76]=ON ;
     12:  DO[75]=OFF ;
     13:  DO[74]=OFF ;
     14:  DO[73]=ON ;
     15:  DO[72]=ON ;
     16:  DO[71]=OFF ;
     17:  DO[70]=OFF ;
     18:  DO[69]=OFF ;
     19:  DO[68]=OFF ;
     20:  DO[67]=OFF ;
     21:  !Lib. de Anticolisiones ;
     22:  DO[41]=ON ;
     23:  DO[42]=ON ;
     24:  DO[43]=ON ;
     25:  DO[44]=ON ;
     26:  DO[53]=ON ;
     27:  DO[54]=ON ;
     28:  DO[55]=ON ;
     29:  DO[56]=ON ;
     30:  !Apagar Pos. Base ;
     31:  DO[15]=OFF ;
     32:  !Robot en Trayectoria ;
     33:  DO[16]=ON ;
     34:  WAIT (!DI[61] AND DI[62] AND DI[76])    ;
     35:  DO[76]=OFF ;
     36:  WAIT (DI[23])    ;
     37:  DO[23]=(ON) ;
     38:  !Marcas de Usuario: ;
     39:  !Marca 3 ST1360 C/Pieza ;
     40:  !M[12]=(!DI[61] AND DI[62]) ;
     41:  !Marca 11 Estado de Garra ;
     42:  !Valula 2 en V, 1,3-5 en V ;
     43:  !M[20]=(M[31] AND M[34] AND M[35] ;
     44:  !AND M[37] AND M[39]) ;
     45:  TC_ONLINE (DI[76] AND M[3] AND M[12] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[12] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[12] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[76] AND M[12] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:  !En Posicion ST1360 ;
  10:  !Tomar Pieza en ST1360 ;
  11:  !Fin de Trabajo 2 ;
  12:L P[5] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (M[1])    ;
      4:  F[3]=(ON) ;
      5:  F[4]=(ON) ;
      6:  CALL MAKRO343    ;
      7:  WAIT (M[36] AND M[38])    ;
      8:  DO[75]=ON ;
      9:  DO[74]=ON ;
     10:  CALL MAKRO002    ;
     11:  WAIT (DI[75])    ;
     12:  DO[75]=OFF ;
     13:  DO[74]=OFF ;
     14:  WAIT (DI[23])    ;
     15:  DO[23]=ON ;
     16:  !Marcas de Usuario : ;
     17:  !Marca 12 Estado de Garra ;
     18:  !Valvulas 2-4 en V, 1&5 en R ;
     19:  !M[21]=(M[31] AND M[34] AND M[36] ;
     20:  !AND M[38] AND M[39]) ;
     21:  TC_ONLINE (DI[75] AND M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  13:  PAYLOAD[3] ;
  14:L P[6] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[61] AND !DI[62])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  !Marcas de Usuario: ;
      7:  !Marca 4 ST1360 S/Pieza ;
      8:  !M[13]=(DI[61] AND !DI[62]) ;
      9:  TC_ONLINE (DI[75] AND M[1] AND M[13] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[75] AND M[1] AND M[13] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[75] AND M[1] AND M[13] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:  !Encender Perfil Lib 76 vs ST1360 ;
  18:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[4]=STOP ;
      4:  DO[76]=ON ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=(ON) ;
      7:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X =   102.001  mm,	Y = -1201.470  mm,	Z =  1543.318  mm,
	W =   -90.000 deg,	P =   -60.000 deg,	R =   120.000 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X =  1348.229  mm,	Y =  -533.207  mm,	Z =   774.621  mm,
	W =   171.146 deg,	P =   -84.334 deg,	R =  -162.910 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 0, -1',
	X =  3249.022  mm,	Y =   504.270  mm,	Z =  -533.733  mm,
	W =   179.980 deg,	P =    24.418 deg,	R =  -179.497 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 0, -1',
	X =  3284.356  mm,	Y =   504.646  mm,	Z =  -727.010  mm,
	W =   179.980 deg,	P =    24.418 deg,	R =  -179.497 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 0, -1',
	X =  3261.719  mm,	Y =   505.811  mm,	Z =  -737.279  mm,
	W =  -179.785 deg,	P =    24.417 deg,	R =  -178.928 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 0, -1',
	X =  3449.305  mm,	Y =   507.495  mm,	Z =  -652.111  mm,
	W =   179.980 deg,	P =    24.417 deg,	R =  -179.497 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X =  1348.228  mm,	Y =  -533.224  mm,	Z =   774.623  mm,
	W =   171.152 deg,	P =   -84.334 deg,	R =  -162.916 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X =   939.317  mm,	Y = -1033.449  mm,	Z =   906.690  mm,
	W =  -105.774 deg,	P =   -70.762 deg,	R =   162.485 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X =   102.001  mm,	Y = -1201.470  mm,	Z =  1543.318  mm,
	W =   -90.000 deg,	P =   -60.000 deg,	R =   120.000 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
/END
