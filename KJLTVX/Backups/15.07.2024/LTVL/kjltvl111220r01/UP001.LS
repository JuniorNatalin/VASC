/PROG  UP001
/ATTR
OWNER		= AUROM;
COMMENT		= "Tomar en ST1190";
PROG_SIZE	= 3144;
CREATE		= DATE 96-03-27  TIME 20:42:32;
MODIFIED	= DATE 20-07-30  TIME 01:22:04;
FILE_NAME	= UP001;
VERSION		= 0;
LINE_COUNT	= 13;
MEMORY_SIZE	= 5284;
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
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=0 ;
   3:  PAYLOAD[1] ;
   4:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  DO[16]=(ON) ;
      4:  TIMER[3]=RESET ;
      5:  TIMER[3]=START ;
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
     28:  WAIT (DI[80] AND DI[68] AND !DI[67])    ;
     29:  DO[80]=OFF ;
     30:  !Encender Anticolisiones ;
     31:  DO[83]=ON ;
     32:  CALL MAKRO020    ;
     33:  WAIT (DI[23])    ;
     34:  DO[23]=ON ;
     35:  !Marca de Usuario ;
     36:  !M[24]=(M[35] AND M[37] AND M[39] ;
     37:  TC_ONLINE (DI[43] AND DI[80] AND DI[68] AND !DI[67] AND M[2] AND M[30] AND M[31] AND M[33] AND M[24] AND M[41]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[80] AND DI[68] AND !DI[67] AND M[30] AND M[31] AND M[33] AND M[24] AND M[41]) ;
       ------ ;
   6:  !Tomar en ST1190 ;
   7:  !Fin de Trabajo 1 ;
   8:L P[3] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (M[3])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[32])    ;
      7:  DO[78]=ON ;
      8:  CALL MAKRO001    ;
      9:  WAIT (DI[79])    ;
     10:  DO[78]=OFF ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=ON ;
     13:  TC_ONLINE (DI[79] AND DI[43] AND M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41]) ;
       ------ ;
   9:  PAYLOAD[2] ;
  10:L P[4] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[79] AND DI[43] AND !DI[68] AND DI[67] AND M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41]) ;
       ------ ;
  11:  !Encender Perfil Lib 80 vs ST1190 ;
  12:  !Lib. de Anticolision vs 1180R01 ;
  13:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[43]=ON ;
      5:  DO[80]=ON ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   846.483  mm,	Y =  1473.446  mm,	Z =  1251.233  mm,
	W =   -40.712 deg,	P =    36.105 deg,	R =    90.967 deg
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
	X =  1591.059  mm,	Y =  1946.243  mm,	Z =  -432.309  mm,
	W =   -92.482 deg,	P =    87.426 deg,	R =    85.944 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.400  mm
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
	X =  1591.514  mm,	Y =  1952.786  mm,	Z =  -578.182  mm,
	W =   -92.481 deg,	P =    87.426 deg,	R =    85.946 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.400  mm
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
	X =  1591.181  mm,	Y =  1948.066  mm,	Z =  -472.941  mm,
	W =   -92.485 deg,	P =    87.426 deg,	R =    85.941 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.400  mm
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
	X =   846.483  mm,	Y =  1473.446  mm,	Z =  1251.233  mm,
	W =   -40.712 deg,	P =    36.105 deg,	R =    90.967 deg
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
