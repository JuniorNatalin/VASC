/PROG  UP112
/ATTR
OWNER		= AUROM;
COMMENT		= "Mant. SP1";
PROG_SIZE	= 3532;
CREATE		= DATE 03-15-00  TIME 13:37:40;
MODIFIED	= DATE 17-11-14  TIME 14:24:38;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 12;
MEMORY_SIZE	= 6848;
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
    :  UTOOL_NUM=1 ;
    :  UFRAME_NUM=0 ;
    :  PAYLOAD[1] ;
    :J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO050    ;
      4:  !Lib. de Herramientas ;
      5:  DO[80]=ON ;
      6:  DO[79]=ON ;
      7:  !Lib. Anticolisiones ;
      8:  DO[41]=ON ;
      9:  DO[42]=ON ;
     10:  DO[43]=ON ;
     11:  DO[44]=ON ;
     12:  !Apagar Posicion Base ;
     13:  DO[15]=OFF ;
     14:  !Robot en Trayectoria ;
     15:  DO[16]=ON ;
     16:  WAIT (DI[23])    ;
     17:  DO[23]=ON ;
     18:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
    :J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
    :J P[3] 100% CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
    :J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
    :  !Posicion de Mantenimiento ;
    :J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[281]=(ON) ;
      4:  F[64]=(ON) ;
      5:  F[65]=(OFF) ;
      6:  F[66]=(OFF) ;
      7:  F[67]=(OFF) ;
      8:  CALL MAKRO089    ;
      9:  DO[17]=ON ;
     10:  GO[19]=11 ;
     11:  WAIT (DI[17])    ;
     12:  IF (DI[132] AND !DI[133] AND !DI[134] AND !DI[135]),CALL MAKRO081 ;
     13:  LBL[1] ;
     14:  WAIT (!F[85] OR DI[26])    ;
     15:  IF (F[85]),CALL MAKRO081 ;
     16:  IF (F[85]),JMP LBL[1] ;
     17:  DO[17]=OFF ;
     18:  GO[19]=0 ;
     19:  F[281]=(OFF) ;
     20:  WAIT (!DI[132] AND !DI[133] AND !DI[134] AND !DI[135])    ;
     21:  WAIT (DI[23])    ;
     22:  DO[23]=ON ;
     23:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
    :J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
    :J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
    :J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1607.403  mm,	Y =  -801.499  mm,	Z =   725.794  mm,
	W =   176.848 deg,	P =   -29.910 deg,	R =   -22.694 deg
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
	X =  1607.403  mm,	Y =  -801.499  mm,	Z =   725.794  mm,
	W =   176.848 deg,	P =   -29.910 deg,	R =   -22.694 deg
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
	X =  1607.403  mm,	Y =  -801.499  mm,	Z =   725.794  mm,
	W =   176.848 deg,	P =   -29.910 deg,	R =   -22.694 deg
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
	X =  2120.574  mm,	Y =  -942.816  mm,	Z =  -270.102  mm,
	W =   176.548 deg,	P =   -10.788 deg,	R =   -13.281 deg
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
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1948.211  mm,	Y =  -875.041  mm,	Z =  -593.088  mm,
	W =  -179.733 deg,	P =     4.271 deg,	R =    -6.225 deg
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
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2120.574  mm,	Y =  -942.816  mm,	Z =  -270.102  mm,
	W =   176.548 deg,	P =   -10.788 deg,	R =   -13.281 deg
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
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1607.403  mm,	Y =  -801.499  mm,	Z =   725.794  mm,
	W =   176.848 deg,	P =   -29.910 deg,	R =   -22.694 deg
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
	X =  1607.403  mm,	Y =  -801.499  mm,	Z =   725.794  mm,
	W =   176.848 deg,	P =   -29.910 deg,	R =   -22.694 deg
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
