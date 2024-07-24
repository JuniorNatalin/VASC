/PROG  UP021
/ATTR
OWNER		= GME;
COMMENT		= "Tomar en ST1420";
PROG_SIZE	= 4458;
CREATE		= DATE 96-03-28  TIME 16:49:36;
MODIFIED	= DATE 23-07-09  TIME 17:07:12;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 7982;
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
   4:  !Apagar Perfil Lib. 80 vs ST1420 ;
   5:  !Encender Anticol. 3 vs 1410R01 ;
   6:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
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
     20:  WAIT (!DI[63] AND DI[64] AND DI[80])    ;
     21:  DO[80]=(OFF) ;
     22:  !Encender Anticolisiones ;
     23:  DO[83]=(ON) ;
     24:  CALL MAKRO020    ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=(ON) ;
     27:  TC_ONLINE (DI[43] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[63] AND DI[64] AND DI[80] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  10:  !En Posicion ST1420 ;
  11:  !Tomar Pieza en ST1420 ;
  12:  !Fin de Trabajo 1 ;
  13:L P[5] 500mm/sec CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[2]=(ON) ;
      5:  F[3]=(ON) ;
      6:  CALL MAKRO343    ;
      7:  WAIT (M[34] AND M[36])    ;
      8:  DO[78]=ON ;
      9:  CALL MAKRO001    ;
     10:  WAIT (DI[79])    ;
     11:  DO[78]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (DI[43] AND DI[79] AND M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  14:  PAYLOAD[2] ;
  15:L P[6] 500mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  18:  !Encender Perfil Lib 80 vs ST1420 ;
  19:  !Apagar Anticol. 3 vs 1410R01 ;
  20:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[43]=ON ;
      5:  DO[80]=ON ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2210.071  mm,	Y =   360.200  mm,	Z =  1430.545  mm,
	W =   -89.999 deg,	P =    75.000 deg,	R =     0.000 deg
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
	X =   785.659  mm,	Y =  1541.541  mm,	Z =   330.161  mm,
	W =  -144.426 deg,	P =    79.313 deg,	R =    20.554 deg
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
	X =  1084.536  mm,	Y =  2345.878  mm,	Z =  -349.121  mm,
	W =   -19.959 deg,	P =    89.514 deg,	R =   161.165 deg
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
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1079.515  mm,	Y =  2346.462  mm,	Z =  -690.809  mm,
	W =   -19.264 deg,	P =    89.514 deg,	R =   162.029 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   103.000  mm
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
	X =  1072.818  mm,	Y =  2348.369  mm,	Z =  -738.783  mm,
	W =   -40.282 deg,	P =    89.341 deg,	R =   141.066 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   104.200  mm
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
	X =  1073.798  mm,	Y =  2346.333  mm,	Z =  -631.398  mm,
	W =   -19.257 deg,	P =    89.513 deg,	R =   162.036 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   103.000  mm
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
	X =  1076.187  mm,	Y =  2345.713  mm,	Z =  -349.055  mm,
	W =   -19.959 deg,	P =    89.514 deg,	R =   161.165 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   785.659  mm,	Y =  1541.541  mm,	Z =   330.161  mm,
	W =  -144.426 deg,	P =    79.313 deg,	R =    20.554 deg
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
	X =  2210.071  mm,	Y =   360.200  mm,	Z =  1430.545  mm,
	W =   -89.999 deg,	P =    75.000 deg,	R =     0.000 deg
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
