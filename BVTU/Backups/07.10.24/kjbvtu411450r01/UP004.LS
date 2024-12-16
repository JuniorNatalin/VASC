/PROG  UP004
/ATTR
OWNER		= AUROM;
COMMENT		= "Dep. Banda 1100";
PROG_SIZE	= 8134;
CREATE		= DATE 96-03-24  TIME 10:09:20;
MODIFIED	= DATE 23-06-10  TIME 07:43:14;
FILE_NAME	= R1450R01;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 15738;
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
   1:  PAYLOAD[2] ;
   2:  UFRAME_NUM=0 ;
   3:  UTOOL_NUM=1 ;
   4:  ! Esperar Lib. Depositar 1100 ;
   5:  ! Apagar Perfil Libre vs 1100 ;
   6:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=RESET ;
      4:  TIMER[6]=START ;
      5:  CALL MAKRO050    ;
      6:  ! Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[72]=ON ;
     10:  DO[70]=OFF ;
     11:  DO[68]=ON ;
     12:  DO[66]=OFF ;
     13:  ! Lib. de Anticolisiones ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  ! Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  ! Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (DI[68] AND !DI[60] AND DI[59] AND M[1] AND M[32] AND M[34] AND M[35])    ;
     21:  DO[68]=OFF ;
     22:  WAIT (DI[23])    ;
     23:  DO[23]=ON ;
     24:  TC_ONLINE (DI[59] AND !DI[60] AND DI[68] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[59] AND !DI[60] AND DI[68] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[59] AND !DI[60] AND DI[68] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[59] AND !DI[60] AND DI[68] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[59] AND !DI[60] AND DI[68] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[68] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  12:L P[7] 500mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[68] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  13:L P[8] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[68] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  14:  ! Posicion de Deposito ;
  15:  ! Depositar en ST1100 ;
  16:  ! Fin de Trabajo 4 ;
  17:L P[9] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[59] AND DI[60]) OR DI[15])    ;
      4:  F[3]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  F[1]=(ON) ;
      7:  F[2]=(ON) ;
      8:  CALL MAKRO342    ;
      9:  CALL MAKRO340    ;
     10:  WAIT (M[31] AND M[33] AND M[36])    ;
     11:  DO[66]=ON ;
     12:  CALL MAKRO004    ;
     13:  WAIT (DI[67])    ;
     14:  DO[66]=OFF ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=ON ;
     17:  TC_ONLINE (!DI[59] AND DI[60] AND DI[67] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  18:  PAYLOAD[1] ;
  19:L P[10] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (!DI[59] AND DI[60] AND DI[67] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  20:L P[11] 100mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[67] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[67] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[67] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[67] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  24:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[67] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  25:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[67] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  26:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[67] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  27:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[67] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  28:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[67] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  29:  !Encender P. L. Banda 1100 ;
  30:J P[20] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[68]=ON ;
      4:  TIMER[6]=STOP ;
      5:  F[3]=(ON) ;
      6:  CALL MAKRO342    ;
      7:  CALL MAKRO340    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   524.228  mm,	Y = -1203.116  mm,	Z =   971.191  mm,
	W =  -126.116 deg,	P =    39.769 deg,	R =   -85.635 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
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
	X =   858.592  mm,	Y = -1011.284  mm,	Z =  1832.021  mm,
	W =   -57.292 deg,	P =    10.023 deg,	R =   -90.533 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
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
	X =   744.004  mm,	Y =  -877.694  mm,	Z =  2115.802  mm,
	W =   -38.814 deg,	P =    -2.436 deg,	R =   -97.100 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
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
	X =   638.558  mm,	Y =  -735.412  mm,	Z =  2494.216  mm,
	W =   -22.249 deg,	P =    -5.426 deg,	R =  -100.120 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
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
	X =   620.029  mm,	Y =  -742.667  mm,	Z =  2848.787  mm,
	W =   -11.405 deg,	P =    -3.455 deg,	R =  -106.178 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.902  mm
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
	X =   630.072  mm,	Y =  -819.526  mm,	Z =  3052.651  mm,
	W =     -.198 deg,	P =     -.076 deg,	R =  -111.744 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.800  mm
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
	X =   571.724  mm,	Y =  -982.536  mm,	Z =  3049.120  mm,
	W =      .195 deg,	P =      .272 deg,	R =  -111.817 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.700  mm
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
	X =   551.889  mm,	Y = -1032.088  mm,	Z =  3048.871  mm,
	W =      .195 deg,	P =      .272 deg,	R =  -111.817 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.700  mm
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
	X =   552.306  mm,	Y = -1033.852  mm,	Z =  3034.535  mm,
	W =      .033 deg,	P =      .083 deg,	R =  -111.888 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.700  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   591.037  mm,	Y =  -937.444  mm,	Z =  3034.688  mm,
	W =      .033 deg,	P =      .083 deg,	R =  -111.888 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.700  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   664.853  mm,	Y =  -732.261  mm,	Z =  3034.929  mm,
	W =     -.200 deg,	P =    -1.331 deg,	R =  -111.739 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.800  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   735.242  mm,	Y =  -636.156  mm,	Z =  2906.710  mm,
	W =    -2.169 deg,	P =    -5.030 deg,	R =  -116.947 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.800  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   581.880  mm,	Y =  -556.211  mm,	Z =  2822.140  mm,
	W =     -.878 deg,	P =    -1.264 deg,	R =  -107.654 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.302  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =    87.430  mm,	Y =  -572.733  mm,	Z =  2850.485  mm,
	W =     8.964 deg,	P =     4.700 deg,	R =   -71.323 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   198.679  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =  -239.385  mm,	Y =  -408.390  mm,	Z =  2930.308  mm,
	W =    12.481 deg,	P =      .821 deg,	R =   -91.470 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   198.863  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =  -190.941  mm,	Y =   -63.564  mm,	Z =  2892.709  mm,
	W =    13.600 deg,	P =    -6.405 deg,	R =  -125.143 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.485  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -896.326  mm,	Y =  -440.525  mm,	Z =  2610.836  mm,
	W =    -3.380 deg,	P =     8.776 deg,	R =  -145.072 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -938.850  mm,	Y =  -891.944  mm,	Z =  2467.687  mm,
	W =    -5.622 deg,	P =     8.776 deg,	R =  -138.078 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -839.153  mm,	Y = -1278.773  mm,	Z =  1674.271  mm,
	W =      .258 deg,	P =    24.011 deg,	R =   -98.070 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   524.228  mm,	Y = -1203.116  mm,	Z =   971.191  mm,
	W =  -126.116 deg,	P =    39.769 deg,	R =   -85.635 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
