/PROG  UP202
/ATTR
OWNER		= AUROM;
COMMENT		= "Camb. Herr. SP1";
PROG_SIZE	= 2738;
CREATE		= DATE 03-15-00  TIME 13:37:40;
MODIFIED	= DATE 17-05-30  TIME 17:36:32;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 9;
MEMORY_SIZE	= 4942;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,1,1,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=0 ;
   3:  PAYLOAD[1] ;
   4:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO050    ;
      4:  !Lib. de Herramientas ;
      5:  DO[80]=ON ;
      6:  DO[79]=ON ;
      7:  DO[78]=OFF ;
      8:  DO[77]=OFF ;
      9:  DO[76]=ON ;
     10:  DO[74]=OFF ;
     11:  !Lib. de Anticolisiones ;
     12:  DO[41]=ON ;
     13:  DO[42]=ON ;
     14:  !Apagar Pos. Base ;
     15:  DO[15]=OFF ;
     16:  !Robot en Trayectoria ;
     17:  DO[16]=ON ;
     18:  WAIT (DI[23])    ;
     19:  DO[23]=ON ;
     20:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   6:  !Cambio de Herramienta ;
   7:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[281]=(ON) ;
      4:  F[64]=(ON) ;
      5:  F[65]=(OFF) ;
      6:  F[66]=(OFF) ;
      7:  F[67]=(OFF) ;
      8:  DO[17]=ON ;
      9:  GO[19]=11 ;
     10:  WAIT (DI[17])    ;
     11:  IF (DI[132] AND !DI[133] AND !DI[134] AND !DI[135]),CALL MAKRO081 ;
     12:  LBL[1] ;
     13:  WAIT (!F[85] OR DI[26])    ;
     14:  IF (F[85]),CALL MAKRO081 ;
     15:  IF (F[85]),JMP LBL[1] ;
     16:  DO[17]=OFF ;
     17:  GO[19]=0 ;
     18:  F[281]=(OFF) ;
     19:  WAIT (!DI[132] AND !DI[133] AND !DI[134] AND !DI[135])    ;
     20:  WAIT (DI[23])    ;
     21:  DO[23]=ON ;
     22:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   9:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   428.854  mm,	Y =  -792.886  mm,	Z =   487.331  mm,
	W =   165.177 deg,	P =    26.016 deg,	R =   -36.122 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1458.221  mm,	Y = -1284.734  mm,	Z =  -288.953  mm,
	W =   179.199 deg,	P =     -.116 deg,	R =    -1.327 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1458.221  mm,	Y = -1284.734  mm,	Z =  -866.187  mm,
	W =   179.199 deg,	P =     -.116 deg,	R =    -1.327 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1458.221  mm,	Y = -1284.734  mm,	Z =  -288.953  mm,
	W =   179.199 deg,	P =     -.116 deg,	R =    -1.327 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   428.854  mm,	Y =  -792.886  mm,	Z =   487.331  mm,
	W =   165.177 deg,	P =    26.016 deg,	R =   -36.122 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
