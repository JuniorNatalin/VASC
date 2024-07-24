/PROG  FOLGE020
/ATTR
OWNER		= engenhar;
COMMENT		= "VW326";
PROG_SIZE	= 4500;
CREATE		= DATE 03-02-02  TIME 14:41:42;
MODIFIED	= DATE 23-12-17  TIME 08:16:26;
FILE_NAME	= FOLGE020;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 7408;
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
    :  UFRAME_NUM=0 ;
    :  UTOOL_NUM=1 ;
    :   ;
    :  PAYLOAD[1] ;
    :J P[1] 10% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  IF (DO[12]),CALL MAKRO998 ;
      2:  DO[15]=ON ;
      3:  DO[16]=ON ;
      4:  CALL MAKRO000    ;
      5:  WAIT (DI[9])    ;
       ------ ;
    :J P[2] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[1]=RESET ;
      4:  TIMER[1]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[77]=OFF ;
     11:  DO[76]=ON ;
     12:  DO[75]=OFF ;
     13:  DO[74]=OFF ;
     14:  DO[73]=ON ;
     15:  DO[72]=ON ;
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
     27:  DO[47]=ON ;
     28:  DO[48]=ON ;
     29:  !Apagar Posicion Base ;
     30:  DO[15]=OFF ;
     31:  !Garra a Base si no hay pieza ;
     32:  WAIT (M[2])    ;
     33:  F[1]=(ON) ;
     34:  F[2]=(ON) ;
     35:  F[3]=(ON) ;
     36:  F[4]=(ON) ;
     37:  F[5]=(ON) ;
     38:  F[6]=(ON) ;
     39:  IF (M[2]),CALL MAKRO342 ;
     40:  CALL MAKRO340    ;
     41:  WAIT (M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41])    ;
     42:  F[7]=(ON) ;
     43:  IF (M[2]),CALL MAKRO343 ;
     44:  CALL MAKRO340    ;
     45:  WAIT (M[44])    ;
     46:  WAIT (DI[23])    ;
     47:  DO[23]=ON ;
     48:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
    :  ! Llamar UP021 ;
    :  !Tomar de la Estacion ST1520 ;
    :  CALL UP021    ;
    :J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
    :  ! Llamar UP022 ;
    :  !Tomar de la Estacion ST1530 ;
    :  CALL UP022    ;
    :  ! UP023 VW336 Perno TAYRON ;
    :  //CALL UP023    ;
    :  CALL MAKRO006    ;
    :  !En Posicion de Mantenimiento ;
    :  ! Llamar a UP024 ;
    :  !Dejar en ST1600 ;
    :J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  LBL[1] ;
      4:  DO[18]=(ON) ;
      5:  WAIT ((DI[57] AND !DI[58] AND DI[59] AND !DI[60] AND DI[73] AND DI[69] AND !DI[18]) OR DI[19])    ;
      6:  IF (DI[19]),JMP LBL[3] ;
      7:  IF (DI[57] AND !DI[58] AND DI[59] AND !DI[60] AND DI[73] AND DI[69]),JMP LBL[2] ;
      8:  LBL[3] ;
      9:  DO[17]=(ON) ;
     10:  GO[19]=(1) ;
     11:  WAIT (DI[17])    ;
     12:  DO[17]=(OFF) ;
     13:  GO[19]=(0) ;
     14:  WAIT (!DI[19])    ;
     15:  JMP LBL[1] ;
     16:  LBL[2] ;
     17:  DO[18]=(OFF) ;
     18:  WAIT (DI[23])    ;
     19:  DO[23]=(ON) ;
     20:  TC_ONLINE (M[6] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :  CALL UP024    ;
    :J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
    :  !Fin de Trabajo Total ;
    :J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO015    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
    :J P[7] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[14]=ON ;
      3:  DO[15]=ON ;
      4:  TIMER[1]=STOP ;
      5:  TIMER[2]=(TIMER[1]) ;
      6:  TIMER[2]=STOP ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   857.086  mm,	Y =  -599.298  mm,	Z =  2061.845  mm,
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
	X =   857.086  mm,	Y =  -599.298  mm,	Z =  2061.845  mm,
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
	X =   857.086  mm,	Y =  -599.298  mm,	Z =  2061.845  mm,
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
	X =   857.086  mm,	Y =  -599.298  mm,	Z =  2061.845  mm,
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
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   857.086  mm,	Y =  -599.298  mm,	Z =  2061.845  mm,
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
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   857.086  mm,	Y =  -599.298  mm,	Z =  2061.845  mm,
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
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   857.086  mm,	Y =  -599.298  mm,	Z =  2061.845  mm,
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
