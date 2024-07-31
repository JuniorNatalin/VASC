/PROG  UP023
/ATTR
OWNER		= GME;
COMMENT		= "Dejar en ST1470";
PROG_SIZE	= 4518;
CREATE		= DATE 21-08-02  TIME 08:24:36;
MODIFIED	= DATE 23-09-23  TIME 16:19:56;
FILE_NAME	= UP023;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 8050;
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
   1:  !Apagar Perfil Lib. 77 vs ST1470 ;
   2:  !Encender Anticol. 15 vs 1500R01 ;
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
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[75]=OFF ;
     11:  !Lib. de Anticolisiones ;
     12:  DO[43]=ON ;
     13:  DO[44]=ON ;
     14:  DO[55]=ON ;
     15:  DO[56]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (DI[61] AND !DI[62] AND DI[77])    ;
     21:  DO[77]=OFF ;
     22:  DO[95]=ON ;
     23:  CALL MAKRO020    ;
     24:  WAIT (DI[23])    ;
     25:  DO[23]=ON ;
     26:  TC_ONLINE (DI[55] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND DI[77] AND M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  10:  !En Posicion ST1470 ;
  11:  !Dejar Pieza en ST1470 ;
  12:  !Fin de Trabajo 3 ;
  13:L P[5] 1200mm/sec CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[62] OR DI[15])    ;
      4:  DO[75]=ON ;
      5:  CALL MAKRO003    ;
      6:  WAIT (DI[76])    ;
      7:  DO[75]=OFF ;
      8:  F[2]=(ON) ;
      9:  F[3]=(ON) ;
     10:  CALL MAKRO342    ;
     11:  CALL MAKRO340    ;
     12:  WAIT (M[33] AND M[35])    ;
     13:  WAIT (DI[23])    ;
     14:  DO[23]=ON ;
     15:  TC_ONLINE (DI[55] AND DI[62] AND DI[76] AND M[30] AND M[32] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  14:  PAYLOAD[1] ;
  15:L P[6] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND !DI[61] AND DI[62] AND DI[76] AND M[2] AND M[30] AND M[32] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND !DI[61] AND DI[62] AND DI[76] AND M[2] AND M[30] AND M[32] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND !DI[61] AND DI[62] AND DI[76] AND M[2] AND M[30] AND M[32] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  18:  !Encender Perfil Lib 77 vs ST1470 ;
  19:  !Apagar Anticol. 15 vs 1500R01 ;
  20:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=STOP ;
      4:  //F[1]=(ON) ;
      5:  //CALL MAKRO342    ;
      6:  //CALL MAKRO340    ;
      7:  //WAIT (M[31])    ;
      8:  DO[77]=ON ;
      9:  DO[55]=ON ;
     10:  WAIT (DI[23])    ;
     11:  DO[23]=ON ;
     12:  TC_ONLINE (M[2] AND M[30] AND M[32] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1397.669  mm,	Y =   -34.900  mm,	Z =  1229.565  mm,
	W =  -178.704 deg,	P =    60.622 deg,	R =    -1.110 deg
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
	X =  2374.083  mm,	Y =  -797.220  mm,	Z =   264.929  mm,
	W =    43.424 deg,	P =    89.167 deg,	R =  -138.513 deg
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
	X =  2372.541  mm,	Y =  -765.003  mm,	Z =  -482.063  mm,
	W =    69.938 deg,	P =    89.159 deg,	R =  -111.623 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.500  mm
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
	X =  2371.016  mm,	Y =  -784.508  mm,	Z =  -587.200  mm,
	W =    72.926 deg,	P =    89.033 deg,	R =  -108.788 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.500  mm
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
	X =  2370.186  mm,	Y =  -783.716  mm,	Z =  -737.616  mm,
	W =    79.631 deg,	P =    88.826 deg,	R =  -102.091 deg
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
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2370.052  mm,	Y =  -789.498  mm,	Z =  -686.955  mm,
	W =    73.337 deg,	P =    89.033 deg,	R =  -108.769 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.500  mm
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
	X =  2372.541  mm,	Y =  -765.003  mm,	Z =  -482.063  mm,
	W =    69.938 deg,	P =    89.159 deg,	R =  -111.623 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.500  mm
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
	X =  2374.083  mm,	Y =  -797.220  mm,	Z =   264.929  mm,
	W =    43.243 deg,	P =    89.167 deg,	R =  -138.513 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1397.669  mm,	Y =   -34.900  mm,	Z =  1229.565  mm,
	W =  -178.704 deg,	P =    60.622 deg,	R =    -1.110 deg
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
