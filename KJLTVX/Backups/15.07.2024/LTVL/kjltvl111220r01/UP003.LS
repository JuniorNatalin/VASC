/PROG  UP003
/ATTR
OWNER		= AUROM;
COMMENT		= "Tomar en ST1210-";
PROG_SIZE	= 5640;
CREATE		= DATE 96-03-27  TIME 20:38:54;
MODIFIED	= DATE 17-09-22  TIME 22:45:42;
FILE_NAME	= UP003;
VERSION		= 0;
LINE_COUNT	= 21;
MEMORY_SIZE	= 10364;
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
   4:  !Apagar Perfil Lib. 77 vs ST1210 ;
   5:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  DO[16]=(ON) ;
      4:  TIMER[5]=RESET ;
      5:  TIMER[5]=START ;
      6:  CALL MAKRO050    ;
      7:  !Lib. de Herramientas ;
      8:  DO[80]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[77]=ON ;
     11:  DO[75]=OFF ;
     12:  DO[74]=ON ;
     13:  DO[73]=ON ;
     14:  DO[72]=OFF ;
     15:  DO[71]=OFF ;
     16:  DO[69]=OFF ;
     17:  !Lib. de Anticolisiones ;
     18:  DO[41]=ON ;
     19:  DO[42]=ON ;
     20:  DO[43]=ON ;
     21:  DO[44]=ON ;
     22:  DO[45]=ON ;
     23:  DO[46]=ON ;
     24:  !Apagar Pos. Base ;
     25:  DO[15]=OFF ;
     26:  !Robot en Trayectoria ;
     27:  DO[16]=ON ;
     28:  !Retraer Pernos ;
     29:  F[2]=(ON) ;
     30:  CALL MAKRO343    ;
     31:  WAIT (M[34])    ;
     32:  WAIT (DI[77] AND DI[66] AND !DI[65])    ;
     33:  DO[77]=OFF ;
     34:  WAIT (DI[23])    ;
     35:  DO[23]=ON ;
     36:  !Marca de Usuario Estado de Garra ;
     37:  !M[24]=(M[35] AND M[37] AND M[39] ;
     38:  TC_ONLINE (DI[77] AND DI[66] AND !DI[65] AND M[3] AND M[30] AND M[32] AND M[34] AND M[24] AND M[41]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[77] AND DI[66] AND !DI[65] AND M[3] AND M[30] AND M[32] AND M[34] AND M[24] AND M[41]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[77] AND DI[66] AND !DI[65] AND M[3] AND M[30] AND M[32] AND M[34] AND M[24] AND M[41]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[77] AND DI[66] AND !DI[65] AND M[3] AND M[30] AND M[32] AND M[34] AND M[24] AND M[41]) ;
       ------ ;
   9:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[77] AND DI[66] AND !DI[65] AND M[3] AND M[30] AND M[32] AND M[34] AND M[24] AND M[41]) ;
       ------ ;
  10:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[77] AND DI[66] AND !DI[65] AND M[30] AND M[32] AND M[34] AND M[24] AND M[41]) ;
       ------ ;
  11:  !En Posicion ST1210-1 ;
  12:  !Tomar Piezas en ST1120-1 ;
  13:  !Fin de Trabajo 3 ;
  14:L P[7] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (M[1])    ;
      4:  F[2]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[33])    ;
      8:  F[3]=(ON) ;
      9:  F[4]=(ON) ;
     10:  F[5]=(ON) ;
     11:  CALL MAKRO343    ;
     12:  !Marca de Usuario Estado de Garra ;
     13:  !M[25]=(M[36] AND M[38] AND M[40] ;
     14:  WAIT (M[1] AND M[25])    ;
     15:  DO[75]=ON ;
     16:  CALL MAKRO003    ;
     17:  WAIT (DI[76])    ;
     18:  DO[75]=OFF ;
     19:  WAIT (DI[23])    ;
     20:  DO[23]=ON ;
     21:  TC_ONLINE (DI[76] AND M[1] AND M[30] AND M[32] AND M[33] AND M[25] AND M[41]) ;
       ------ ;
  15:  PAYLOAD[3] ;
  16:L P[8] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND !DI[66] AND DI[65] AND M[1] AND M[30] AND M[32] AND M[33] AND M[25] AND M[41]) ;
       ------ ;
  17:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND !DI[66] AND DI[65] AND M[1] AND M[30] AND M[32] AND M[33] AND M[25] AND M[41]) ;
       ------ ;
  18:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND !DI[66] AND DI[65] AND M[1] AND M[30] AND M[32] AND M[33] AND M[25] AND M[41]) ;
       ------ ;
  19:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND !DI[66] AND DI[65] AND M[1] AND M[30] AND M[32] AND M[33] AND M[25] AND M[41]) ;
       ------ ;
  20:  !Encender Perfil Lib 77 vs ST1210 ;
  21:J P[12] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[5]=STOP ;
      4:  DO[77]=(ON) ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=(ON) ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[25] AND M[41]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1386.241  mm,	Y =   181.427  mm,	Z =   995.718  mm,
	W =   120.000 deg,	P =     0.000 deg,	R =   -60.000 deg
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1352.575  mm,	Y =  -856.012  mm,	Z =   255.765  mm,
	W =   157.784 deg,	P =    13.315 deg,	R =  -108.496 deg
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
	X =   201.137  mm,	Y = -1651.666  mm,	Z =   697.017  mm,
	W =  -176.614 deg,	P =     -.194 deg,	R =  -159.891 deg
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
	X =  -565.193  mm,	Y = -2922.057  mm,	Z =   235.291  mm,
	W =      .795 deg,	P =    76.287 deg,	R =   -41.758 deg
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
	X =  -728.641  mm,	Y = -3001.428  mm,	Z =   130.000  mm,
	W =     3.618 deg,	P =    75.457 deg,	R =   -42.060 deg
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
	X =  -663.367  mm,	Y = -3060.180  mm,	Z =  -208.267  mm,
	W =     2.572 deg,	P =    75.459 deg,	R =   -42.044 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.300  mm
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
	X =  -643.339  mm,	Y = -3077.120  mm,	Z =  -315.612  mm,
	W =     3.613 deg,	P =    75.036 deg,	R =   -42.543 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   102.700  mm
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
	X =  -661.082  mm,	Y = -3064.492  mm,	Z =  -238.863  mm,
	W =     4.404 deg,	P =    74.963 deg,	R =   -42.147 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   102.600  mm
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
	X =  -728.246  mm,	Y = -3001.784  mm,	Z =   127.959  mm,
	W =     3.618 deg,	P =    75.457 deg,	R =   -42.060 deg
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
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =   385.835  mm,	Y = -1931.728  mm,	Z =  -119.140  mm,
	W =    40.586 deg,	P =    79.088 deg,	R =    23.756 deg
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
	X =  1301.407  mm,	Y =  -975.399  mm,	Z =    62.207  mm,
	W =   161.472 deg,	P =    70.579 deg,	R =  -137.694 deg
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1386.241  mm,	Y =   181.427  mm,	Z =   995.718  mm,
	W =   120.000 deg,	P =     0.000 deg,	R =   -60.000 deg
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
