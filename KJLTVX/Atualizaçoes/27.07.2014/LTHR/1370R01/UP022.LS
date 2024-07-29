/PROG  UP022
/ATTR
OWNER		= GME;
COMMENT		= "Tomar en ST1360";
PROG_SIZE	= 5538;
CREATE		= DATE 96-03-30  TIME 18:04:58;
MODIFIED	= DATE 23-09-03  TIME 08:29:24;
FILE_NAME	= UP022;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 10230;
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
   4:  !Apagar Perfil Lib. 77 vs ST1360 ;
   5:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=RESET ;
      4:  TIMER[4]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[76]=OFF ;
     11:  DO[75]=OFF ;
     12:  DO[74]=ON ;
     13:  DO[73]=ON ;
     14:  DO[72]=OFF ;
     15:  DO[71]=OFF ;
     16:  DO[70]=OFF ;
     17:  DO[69]=OFF ;
     18:  DO[68]=OFF ;
     19:  !Lib. de Anticolisiones ;
     20:  DO[41]=ON ;
     21:  DO[42]=ON ;
     22:  DO[43]=ON ;
     23:  DO[44]=ON ;
     24:  DO[45]=ON ;
     25:  DO[46]=ON ;
     26:  !Apagar Pos. Base ;
     27:  DO[15]=OFF ;
     28:  !Robot en Trayectoria ;
     29:  DO[16]=ON ;
     30:  F[5]=(ON) ;
     31:  IF (M[3]),CALL MAKRO343 ;
     32:  WAIT (M[40])    ;
     33:  WAIT (!DI[61] AND DI[62] AND DI[77])    ;
     34:  DO[77]=OFF ;
     35:  WAIT (DI[23])    ;
     36:  DO[23]=(ON) ;
     37:  !Marca Usuario ST1360 C/Piezas ;
     38:  !M[12] = !DI[61] AND DI[62] ;
     39:  TC_ONLINE (DI[77] AND M[3] AND M[12] AND M[19] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[77] AND M[3] AND M[12] AND M[19] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[77] AND M[3] AND M[12] AND M[19] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[77] AND M[3] AND M[12] AND M[19] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[77] AND M[3] AND M[12] AND M[19] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[6] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[5]=(ON) ;
      4:  CALL MAKRO342    ;
      5:  CALL MAKRO340    ;
      6:  WAIT (M[39])    ;
      7:  WAIT (DI[23])    ;
      8:  DO[23]=ON ;
      9:  TC_ONLINE (DI[77] AND M[12] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  11:   ;
  12:  !En Posicion ST1360 ;
  13:  !Tomar Piezas en ST1360 ;
  14:  !Fin de Trabajo 2 ;
  15:L P[7] 1500mm/sec CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[3]=(ON) ;
      5:  F[4]=(ON) ;
      6:  CALL MAKRO343    ;
      7:  WAIT (M[36] AND M[38])    ;
      8:  DO[76]=ON ;
      9:  DO[75]=ON ;
     10:  CALL MAKRO002    ;
     11:  WAIT (DI[76])    ;
     12:  DO[75]=OFF ;
     13:  DO[76]=OFF ;
     14:  WAIT (DI[23])    ;
     15:  DO[23]=ON ;
     16:  TC_ONLINE (DI[76] AND M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  16:   ;
  17:  PAYLOAD[3] ;
  18:   ;
  19:L P[8] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  !Marca Usuario ST1360 S/Pieza ;
      2:  !M[13] = DI[61] AND !DI[62] ;
      3:  TC_ONLINE (DI[76] AND M[1] AND M[13] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[13] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[13] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[13] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[12] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  DO[77]=ON ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 1',
	X =  -510.500  mm,	Y = -1560.695  mm,	Z =  1807.628  mm,
	W =    87.550 deg,	P =   -60.000 deg,	R =    90.000 deg
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
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  1014.935  mm,	Y = -1012.194  mm,	Z =   971.499  mm,
	W =     5.050 deg,	P =   -18.759 deg,	R =   150.674 deg
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
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	X =  2026.885  mm,	Y = -1009.883  mm,	Z =    48.836  mm,
	W =     5.050 deg,	P =     6.868 deg,	R =   163.314 deg
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
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	X =  3032.739  mm,	Y = -1117.088  mm,	Z =  -290.902  mm,
	W =    -2.234 deg,	P =    26.395 deg,	R =  -178.433 deg
   GP2:
	UF : 0, UT : 3,	
	J1=    99.900  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	X =  3070.198  mm,	Y = -1419.742  mm,	Z =  -349.666  mm,
	W =    -2.235 deg,	P =    26.395 deg,	R =  -178.433 deg
   GP2:
	UF : 0, UT : 3,	
	J1=    99.900  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	X =  3136.431  mm,	Y = -1412.078  mm,	Z =  -479.348  mm,
	W =    -1.894 deg,	P =    26.392 deg,	R =  -178.435 deg
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
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	X =  3116.428  mm,	Y = -1412.625  mm,	Z =  -489.279  mm,
	W =    -1.894 deg,	P =    26.392 deg,	R =  -178.435 deg
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
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	X =  3193.735  mm,	Y = -1410.512  mm,	Z =  -450.899  mm,
	W =    -1.894 deg,	P =    26.393 deg,	R =  -178.435 deg
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
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	X =  3076.399  mm,	Y = -1140.058  mm,	Z =  -270.602  mm,
	W =    -2.234 deg,	P =    26.395 deg,	R =  -178.433 deg
   GP2:
	UF : 0, UT : 3,	
	J1=    99.900  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	X =  2026.885  mm,	Y = -1009.883  mm,	Z =    48.836  mm,
	W =     5.050 deg,	P =     6.868 deg,	R =   163.314 deg
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
P[11]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  1014.935  mm,	Y = -1012.194  mm,	Z =   971.499  mm,
	W =     5.050 deg,	P =   -18.759 deg,	R =   150.674 deg
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
P[12]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 1',
	X =  -510.500  mm,	Y = -1560.695  mm,	Z =  1807.628  mm,
	W =    87.550 deg,	P =   -60.000 deg,	R =    90.000 deg
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
