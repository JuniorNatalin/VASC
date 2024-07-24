/PROG  UP001
/ATTR
OWNER		= AUROM;
COMMENT		= "Tomar de ST1520";
PROG_SIZE	= 5250;
CREATE		= DATE 96-03-17  TIME 19:31:46;
MODIFIED	= DATE 23-03-18  TIME 12:22:10;
FILE_NAME	= UP001;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 8778;
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
   1:  !Apagar Perfil Lib. 80 vs ST1520 ;
   2:  !Apagar Perfil Lib. 79 vs ST1520 ;
   3:  !Encender Anticol. 3 vs 1500R01 ;
   4:  !Encender Anticol. 5 vs 1520R01 ;
   5:  UFRAME_NUM=0 ;
   6:  UTOOL_NUM=1 ;
   7:  PAYLOAD[1] ;
   8:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
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
     16:  DO[70]=OFF ;
     17:  DO[69]=OFF ;
     18:  DO[68]=OFF ;
     19:  DO[67]=OFF ;
     20:  !Lib. de Anticolisiones ;
     21:  DO[41]=ON ;
     22:  DO[42]=ON ;
     23:  DO[43]=ON ;
     24:  DO[44]=ON ;
     25:  DO[45]=ON ;
     26:  DO[46]=ON ;
     27:  DO[47]=ON ;
     28:  DO[48]=ON ;
     29:  !Apagar Posicion Base ;
     30:  DO[15]=OFF ;
     31:  !Roboter auf der Bahn ;
     32:  DO[16]=ON ;
     33:  WAIT (!DI[65] AND DI[66] AND DI[79] AND DI[80])    ;
     34:  DO[80]=OFF ;
     35:  DO[79]=OFF ;
     36:  !Encender Anticolisiones ;
     37:  DO[83]=ON ;
     38:  DO[85]=ON ;
     39:  CALL MAKRO020    ;
     40:  WAIT (DI[23])    ;
     41:  DO[23]=ON ;
     42:  !Marca de Usuario Suma Anticol. ;
     43:  !M[10] = (DI[43] AND DI[45]) ;
     44:  !Marca de Usuario ST1520 C/Pieza ;
     45:  !M[11] = (!DI[65] AND DI[66]) ;
     46:  !Marca de Usuario Estado de Garra ;
     47:  !M[13] = (M[33] AND M[35] AND M[3 ;
     48:  TC_ONLINE (DI[79] AND DI[80] AND M[2] AND M[10] AND M[11] AND M[13] AND M[30] AND M[31] AND M[39] AND M[43]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[79] AND DI[80] AND M[2] AND M[10] AND M[11] AND M[13] AND M[30] AND M[31] AND M[39] AND M[43]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[79] AND DI[80] AND M[2] AND M[10] AND M[11] AND M[13] AND M[30] AND M[31] AND M[39] AND M[43]) ;
       ------ ;
  11:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[79] AND DI[80] AND M[10] AND M[11] AND M[13] AND M[30] AND M[31] AND M[39] AND M[43]) ;
       ------ ;
  12:  !En Posicion ST1520 ;
  13:  !Tomar Pieza de ST1520 ;
  14:  !Fin de Trabajo 1 ;
  15:L P[5] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[3])    ;
      4:  DO[78]=(ON) ;
      5:  DO[77]=(ON) ;
      6:  CALL MAKRO001    ;
      7:  WAIT (DI[78])    ;
      8:  DO[78]=(OFF) ;
      9:  DO[77]=(OFF) ;
     10:  F[5]=(ON) ;
     11:  F[7]=(ON) ;
     12:  CALL MAKRO342    ;
     13:  CALL MAKRO340    ;
     14:  WAIT (M[39] AND M[43])    ;
     15:  F[1]=(ON) ;
     16:  CALL MAKRO343    ;
     17:  WAIT (M[32])    ;
     18:  WAIT (DI[23])    ;
     19:  DO[23]=(ON) ;
     20:  TC_ONLINE (DI[78] AND DI[80] AND M[3] AND M[10] AND M[13] AND M[30] AND M[32] AND M[39] AND M[43]) ;
       ------ ;
  16:  PAYLOAD[2] ;
  17:L P[6] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  !Marca Usuario ST1520 S/Pieza ;
      2:  !M[12] = (DI[65] AND !DI[66]) ;
      3:  TC_ONLINE (DI[78] AND DI[80] AND M[3] AND M[10] AND M[12] AND M[13] AND M[30] AND M[32] AND M[39] AND M[43]) ;
       ------ ;
  18:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[78] AND DI[80] AND M[3] AND M[10] AND M[12] AND M[13] AND M[30] AND M[32] AND M[39] AND M[43]) ;
       ------ ;
  19:J P[8] 100% CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[78] AND DI[80] AND M[3] AND M[10] AND M[12] AND M[13] AND M[30] AND M[32] AND M[39] AND M[43]) ;
       ------ ;
  20:  !Encender Perfil Lib 80 vs ST1520 ;
  21:  !Encender Perfil Lib 79 vs ST1520 ;
  22:  !Apagar Anticol. 3 vs 1500R01 ;
  23:  !Apagar Anticol. 5 vs 1520R01 ;
  24:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[43]=ON ;
      5:  DO[45]=ON ;
      6:  DO[80]=ON ;
      7:  DO[79]=ON ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[43]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -63.679  mm,	Y =   564.245  mm,	Z =  2983.021  mm,
	W =  -122.362 deg,	P =   -18.830 deg,	R =    50.373 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =  1680.501  mm,	Y =   895.877  mm,	Z =   797.935  mm,
	W =   166.825 deg,	P =    85.884 deg,	R =    13.826 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =  1978.868  mm,	Y =   617.996  mm,	Z =   429.555  mm,
	W =   176.182 deg,	P =    89.084 deg,	R =    18.824 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =  1981.181  mm,	Y =   619.913  mm,	Z =  -117.589  mm,
	W =   176.147 deg,	P =    89.084 deg,	R =    18.822 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =  1981.108  mm,	Y =   620.048  mm,	Z =  -168.900  mm,
	W =   176.144 deg,	P =    89.084 deg,	R =    18.823 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =  1981.697  mm,	Y =   618.961  mm,	Z =   242.498  mm,
	W =   176.181 deg,	P =    89.084 deg,	R =    18.823 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =  1934.833  mm,	Y =  1208.630  mm,	Z =   610.410  mm,
	W =   153.000 deg,	P =    90.000 deg,	R =     0.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =  1567.379  mm,	Y =  1118.198  mm,	Z =   793.853  mm,
	W =   166.825 deg,	P =    85.884 deg,	R =    13.826 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =   -63.679  mm,	Y =   564.245  mm,	Z =  2983.021  mm,
	W =  -122.362 deg,	P =   -18.830 deg,	R =    50.373 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
