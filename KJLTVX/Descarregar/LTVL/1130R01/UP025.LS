/PROG  UP025
/ATTR
OWNER		= GME;
COMMENT		= "Toma ST1140-2";
PROG_SIZE	= 4016;
CREATE		= DATE 17-09-29  TIME 06:33:06;
MODIFIED	= DATE 23-06-29  TIME 01:55:54;
FILE_NAME	= UP025;
VERSION		= 0;
LINE_COUNT	= 15;
MEMORY_SIZE	= 6852;
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
   3:  PAYLOAD[2] ;
   4:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[16]=ON ;
      4:  TIMER[4]=RESET ;
      5:  TIMER[4]=START ;
      6:  CALL MAKRO050    ;
      7:  !Lib. de Herramientas ;
      8:  DO[80]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[77]=ON ;
     11:  DO[76]=OFF ;
     12:  DO[75]=OFF ;
     13:  DO[74]=ON ;
     14:  DO[73]=ON ;
     15:  DO[71]=OFF ;
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
     27:  !Apagar Pos. Base ;
     28:  DO[15]=OFF ;
     29:  !Robot en Trayectoria ;
     30:  DO[16]=ON ;
     31:  WAIT (DI[77] AND DI[63] AND DI[62] AND !DI[61])    ;
     32:  DO[77]=OFF ;
     33:  WAIT (DI[23])    ;
     34:  DO[23]=ON ;
     35:  !Marcas de Usuario ;
     36:  !Marca 5 Estado de Garra ;
     37:  !Valvula 1 en V, 2-7 en R ;
     38:  !M[21]=(M[32] AND M[35] AND M[37] ;
     39:  !M[39] AND M[41] AND M[43] ;
     40:  TC_ONLINE (DI[77] AND DI[62] AND !DI[61] AND M[3] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[77] AND DI[62] AND !DI[61] AND M[3] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 75% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[77] AND DI[62] AND !DI[61] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:   ;
   8:  !En Posicion ST1140-2 ;
   9:  !Toma ST1140-2 ;
  10:  !Fin de Trabajo 2 ;
  11:L P[4] 50mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (M[1])    ;
      4:  F[3]=(ON) ;
      5:  F[5]=(ON) ;
      6:  IF (!DI[15]),F[17]=(ON) ;
      7:  CALL MAKRO343    ;
      8:  WAIT (M[36] AND M[40] AND M[63])    ;
      9:  DO[76]=ON ;
     10:  CALL MAKRO002    ;
     11:  WAIT (DI[75])    ;
     12:  DO[76]=OFF ;
     13:  WAIT (DI[23])    ;
     14:  DO[23]=ON ;
     15:  !Marca 6 Estado de Garra ;
     16:  !Valvula 1,2,3&5 en V, 4,6&7 en R ;
     17:  !M[22]=(M[32] AND M[36] AND M[37] ;
     18:  !M[40] AND M[41] AND M[43] AND ;
     19:  !M[63] ;
     20:  TC_ONLINE (DI[75] AND M[1] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  12:L P[5] 40mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[75] AND !DI[62] AND DI[61] AND M[1] AND M[22] AND M[30] AND M[95] AND M[96] AND M[36]) ;
       ------ ;
  13:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:   ;
      2:  TC_ONLINE (DI[75] AND !DI[62] AND DI[61] AND M[1] AND M[22] AND M[30] AND M[95] AND M[96] AND M[36]) ;
       ------ ;
  14:  !Encender Perfil Lib. vs ST1140-2 ;
  15:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  DO[77]=ON ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	X =   832.917  mm,	Y =   273.182  mm,	Z =  1045.589  mm,
	W =   -11.703 deg,	P =    49.712 deg,	R =    -2.628 deg
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	X =   574.669  mm,	Y = -2069.375  mm,	Z =   183.055  mm,
	W =   -89.000 deg,	P =    90.000 deg,	R =     0.000 deg
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	X =   632.227  mm,	Y = -2206.278  mm,	Z =  -194.238  mm,
	W =  -154.341 deg,	P =    89.158 deg,	R =   -59.909 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    99.200  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	X =   633.130  mm,	Y = -2205.342  mm,	Z =  -363.513  mm,
	W =   171.418 deg,	P =    89.871 deg,	R =   -94.065 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    94.600  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	X =   633.299  mm,	Y = -2205.076  mm,	Z =  -196.618  mm,
	W =   174.312 deg,	P =    89.857 deg,	R =   -91.168 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    99.200  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	X =   574.669  mm,	Y = -2069.375  mm,	Z =   183.055  mm,
	W =   -89.000 deg,	P =    90.000 deg,	R =     0.000 deg
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
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	X =   832.917  mm,	Y =   273.182  mm,	Z =  1045.589  mm,
	W =   -11.703 deg,	P =    49.712 deg,	R =    -2.628 deg
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
