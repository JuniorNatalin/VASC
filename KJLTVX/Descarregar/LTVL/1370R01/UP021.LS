/PROG  UP021
/ATTR
OWNER		= GME;
COMMENT		= "Tomar en ST1350";
PROG_SIZE	= 5430;
CREATE		= DATE 96-03-24  TIME 14:16:26;
MODIFIED	= DATE 23-07-08  TIME 21:09:40;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 8502;
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
   3:  PAYLOAD[1] ;
   4:  !Apagar Perfil Lib. 80 vs ST1350 ;
   5:  !Apagar Perfil Lib. 79 vs ST1350 ;
   6:  !Encender Anticol. 13 vs 1350R01 ;
   7:  !Encender Anticol. 15 vs 1340R01 ;
   8:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     34:  WAIT (M[2])    ;
     35:  F[1]=(ON) ;
     36:  CALL MAKRO343    ;
     37:  WAIT (M[32])    ;
     38:  WAIT (!DI[63] AND DI[64] AND DI[79] AND DI[80])    ;
     39:  DO[80]=OFF ;
     40:  DO[79]=OFF ;
     41:  !Encender Anticolisiones ;
     42:  DO[93]=ON ;
     43:  DO[95]=ON ;
     44:  CALL MAKRO020    ;
     45:  WAIT (DI[23])    ;
     46:  DO[23]=(ON) ;
     47:  !Marcas de Usuario: ;
     48:  !Marca 1 ST1350 C/Pieza ;
     49:  !M[10]=(!DI[63] AND DI[64]) ;
     50:  !Marca 9 Estado de Garra ;
     51:  !Valvula 1 en V, 2-5 en R ;
     52:  !M[18]=(M[32] AND M[33] AND M[35] ;
     53:  !AND M[37] AND M[39]) ;
     54:  TC_ONLINE (DI[53] AND DI[55] AND DI[79] AND DI[80] AND M[2] AND M[10] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[53] AND DI[55] AND DI[79] AND DI[80] AND M[2] AND M[10] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[53] AND DI[55] AND DI[79] AND DI[80] AND M[10] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  11:  !En Posicion ST1350 ;
  12:  !Tomar Pieza de ST1350 ;
  13:  !Fin de Trabajo 1 ;
  14:L P[4] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[3])    ;
      4:  DO[78]=ON ;
      5:  DO[77]=ON ;
      6:  CALL MAKRO001    ;
      7:  WAIT (DI[78])    ;
      8:  DO[78]=OFF ;
      9:  DO[77]=OFF ;
     10:  F[1]=(ON) ;
     11:  CALL MAKRO342    ;
     12:  CALL MAKRO340    ;
     13:  WAIT (M[31])    ;
     14:  F[2]=(ON) ;
     15:  CALL MAKRO343    ;
     16:  WAIT (M[34])    ;
     17:  F[1]=(ON) ;
     18:  CALL MAKRO343    ;
     19:  WAIT (M[32])    ;
     20:  WAIT (DI[23])    ;
     21:  DO[23]=ON ;
     22:  !Marcas de Usuario: ;
     23:  !Marca 10 Estado de Garra ;
     24:  !Valvulas 1-2 en V, 3-5 en R ;
     25:  !M[19]=(M[32] AND M[34] AND M[35] ;
     26:  !AND M[37] AND M[39]) ;
     27:  TC_ONLINE (DI[53] AND DI[55] AND DI[78] AND DI[80] AND M[3] AND M[19] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:  PAYLOAD[2] ;
  16:  !Encender Perfil Lib 79 vs ST1350 ;
  17:L P[5] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[64])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[31])    ;
      8:  DO[79]=ON ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  !Marcas Usuario: ;
     12:  !Marca 2 ST1350 S/Pieza ;
     13:  !M[11]=(DI[63] AND !DI[64]) ;
     14:  !Marca 11 Estado de Garra ;
     15:  !Valula 2 en V, 1,3-5 en V ;
     16:  !M[20]=(M[31] AND M[34] AND M[35] ;
     17:  !AND M[37] AND M[39]) ;
     18:  TC_ONLINE (DI[53] AND DI[55] AND !DI[64] AND M[3] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[53] AND DI[55] AND M[3] AND M[11] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[53] AND DI[55] AND M[3] AND M[11] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  20:  !Encender Perfil Lib 80 vs ST1350 ;
  21:  !Apagar Anticol. 13 vs 1350R01 ;
  22:  !Apagar Anticol. 15 vs 1340R01 ;
  23:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[3]=STOP ;
      4:  DO[53]=ON ;
      5:  DO[55]=ON ;
      6:  DO[80]=ON ;
      7:  WAIT (DI[23])    ;
      8:  DO[23]=(ON) ;
      9:  TC_ONLINE (M[3] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1190.731  mm,	Y =  -289.205  mm,	Z =  1231.849  mm,
	W =   -30.000 deg,	P =     0.000 deg,	R =    30.000 deg
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
	X =  1415.848  mm,	Y =   756.643  mm,	Z =  1366.454  mm,
	W =    27.410 deg,	P =    23.922 deg,	R =   -56.249 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1074.508  mm,	Y =  3252.976  mm,	Z =  -547.321  mm,
	W =      .271 deg,	P =     -.027 deg,	R =   -21.045 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    97.800  mm
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
	X =  1437.164  mm,	Y =  3112.865  mm,	Z =  -547.786  mm,
	W =      .236 deg,	P =     -.030 deg,	R =   -20.996 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    93.800  mm
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
	X =  1437.144  mm,	Y =  3112.931  mm,	Z =  -507.373  mm,
	W =      .239 deg,	P =     -.029 deg,	R =   -21.001 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    94.201  mm
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
	X =  1436.970  mm,	Y =  3113.511  mm,	Z =  -154.464  mm,
	W =      .268 deg,	P =     -.028 deg,	R =   -21.047 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    97.700  mm
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
	X =  1301.078  mm,	Y =  1005.565  mm,	Z =  1185.471  mm,
	W =    16.117 deg,	P =    15.490 deg,	R =   -52.791 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1190.730  mm,	Y =  -289.205  mm,	Z =  1231.848  mm,
	W =   -30.000 deg,	P =     0.000 deg,	R =    30.000 deg
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
