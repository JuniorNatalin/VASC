/PROG  FOLGE124
/ATTR
OWNER		= AUROM;
COMMENT		= "Mantenimiento";
PROG_SIZE	= 2856;
CREATE		= DATE 03-15-00  TIME 13:37:40;
MODIFIED	= DATE 21-04-16  TIME 03:06:34;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 14;
MEMORY_SIZE	= 4628;
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
    :   ;
    :   ;
    :J P[1] 10% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  IF (DO[12]=ON),CALL MAKRO998 ;
      2:  DO[15]=ON ;
      3:  DO[16]=ON ;
      4:  CALL MAKRO000    ;
      5:  WAIT (DI[9])    ;
       ------ ;
    :J P[2] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO050    ;
      4:  !Lib. de Herramientas ;
      5:  DO[80]=ON ;
      6:  DO[79]=ON ;
      7:  DO[78]=OFF ;
      8:  DO[77]=OFF ;
      9:  DO[76]=ON ;
     10:  DO[75]=OFF ;
     11:  DO[74]=OFF ;
     12:  DO[73]=ON ;
     13:  DO[72]=ON ;
     14:  DO[70]=OFF ;
     15:  DO[69]=OFF ;
     16:  DO[68]=OFF ;
     17:  DO[67]=OFF ;
     18:  !Lib. de Anticolisiones ;
     19:  DO[41]=ON ;
     20:  DO[42]=ON ;
     21:  DO[43]=ON ;
     22:  DO[44]=ON ;
     23:  DO[45]=ON ;
     24:  DO[46]=ON ;
     25:  DO[47]=ON ;
     26:  DO[48]=ON ;
     27:  !Apagar Posicion Base ;
     28:  DO[15]=OFF ;
     29:  WAIT (M[2])    ;
     30:  F[1]=(ON) ;
     31:  F[2]=(ON) ;
     32:  F[3]=(ON) ;
     33:  F[4]=(ON) ;
     34:  F[5]=(ON) ;
     35:  F[6]=(ON) ;
     36:  IF (M[2]),CALL MAKRO342 ;
     37:  CALL MAKRO340    ;
     38:  WAIT (M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41])    ;
     39:  WAIT (DI[23])    ;
     40:  DO[23]=ON ;
     41:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
    :  !Pos. de Mantenimiento ;
    :  !UP112 Mantenimiento G1 ;
    :  !UP201 Cambio Herramienta G1 ;
    :J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[940]=(OFF) ;
      4:  F[941]=(OFF) ;
      5:  WAIT ((DI[20] OR DI[21] AND (DI[121] OR DI[132])) OR DI[121] OR (DI[132] OR DI[777] OR DI[801]))    ;
      6:  !Mantenimiento G1 ;
      7:  F[940]=(!DI[20] AND !DI[21] AND DI[121]) ;
      8:  !Cambio de Herramienta G1 ;
      9:  F[941]=(DI[20] AND !DI[21] AND DI[121] AND !DI[132]) ;
     10:  WAIT (F[940] OR F[941])    ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=ON ;
     13:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
    :  IF (F[940]),CALL UP112 ;
    :  IF (F[941]),CALL UP201 ;
    :J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[15]=ON ;
      3:  DO[14]=ON ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   857.086  mm,	Y =  -599.298  mm,	Z =  2061.846  mm,
	W =    36.403 deg,	P =    28.190 deg,	R =   -17.877 deg
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
	X =   857.086  mm,	Y =  -599.298  mm,	Z =  2061.846  mm,
	W =    36.403 deg,	P =    28.190 deg,	R =   -17.877 deg
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
	X =   857.086  mm,	Y =  -599.298  mm,	Z =  2061.846  mm,
	W =    36.403 deg,	P =    28.190 deg,	R =   -17.877 deg
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
	X =   857.086  mm,	Y =  -599.298  mm,	Z =  2061.846  mm,
	W =    36.403 deg,	P =    28.190 deg,	R =   -17.877 deg
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
