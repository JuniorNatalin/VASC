/PROG  UP023
/ATTR
OWNER		= GME;
COMMENT		= "Perno 1550R01";
PROG_SIZE	= 4332;
CREATE		= DATE 03-02-09  TIME 10:54:42;
MODIFIED	= DATE 23-07-01  TIME 02:05:44;
FILE_NAME	= UP023;
VERSION		= 0;
LINE_COUNT	= 15;
MEMORY_SIZE	= 7996;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,1,1,*;
CONTROL_CODE	= 00000001 00000000;
/APPL
/MN
    :  UTOOL_NUM=4 ;
    :  PAYLOAD[2] ;
    :  UFRAME_NUM=3 ;
    :   ;
    :J P[1] 10% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[4]=RESET ;
      4:  TIMER[4]=START ;
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
     29:  !Apagar Pos. Base ;
     30:  DO[15]=OFF ;
     31:  !Robot en Trayectoria ;
     32:  DO[16]=ON ;
     33:  WAIT (DI[23])    ;
     34:  DO[23]=ON ;
     35:  TC_ONLINE (DI[1729] AND M[1] AND M[15] AND M[17] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :  !Posicion de Inicio ;
    :J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[1729] AND M[1] AND M[15] AND M[17] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[1729] AND M[1] AND M[15] AND M[17] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[1729] AND M[1] AND M[15] AND M[17] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :  ! N0324_LL_0787_000100 ;
    :J P[5] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic2,BZ,Steuerung1,ProgNr=99, , , ,BolzenNr=99,EIN/AUS=931) ;
      5:  CALL MAKRO161    ;
      6:  ! Fin de Trabajo 1 ;
      7:  CALL MAKRO006    ;
      8:  WAIT (DI[23] AND DI[1729])    ;
      9:  DO[23]=(ON) ;
     10:  TC_ONLINE (DI[1729] AND M[1] AND M[15] AND M[17] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[1729] AND M[1] AND M[15] AND M[17] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[1729] AND M[1] AND M[15] AND M[17] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[1729] AND M[1] AND M[15] AND M[17] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :J P[9] 10% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DI[1729] AND M[1] AND M[15] AND M[17] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 3, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  2690.936  mm,	RY =  -823.266  mm,	RZ = -1236.919  mm,
	RW =   -11.019 deg,	RP =   -62.318 deg,	RR =   -37.495 deg
   GP2:
	UF : 3, UT : 4,	
	J1=     0.000  mm
   GP3:
	UF : 3, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 3, UT : 4,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 3, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  2812.187  mm,	RY =  1693.978  mm,	RZ =    -9.978  mm,
	RW =    21.496 deg,	RP =   -76.783 deg,	RR =    -8.985 deg
   GP2:
	UF : 3, UT : 4,	
	J1=     0.000  mm
   GP3:
	UF : 3, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 3, UT : 4,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 3, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1204.005  mm,	RY =  1650.735  mm,	RZ =   161.619  mm,
	RW =    58.824 deg,	RP =   -77.658 deg,	RR =    73.204 deg
   GP2:
	UF : 3, UT : 4,	
	J1=     0.000  mm
   GP3:
	UF : 3, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 3, UT : 4,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 3, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -495.773  mm,	RY =   503.682  mm,	RZ =    19.181  mm,
	RW =     5.513 deg,	RP =   -84.278 deg,	RR =   172.692 deg
   GP2:
	UF : 3, UT : 4,	
	J1=     0.000  mm
   GP3:
	UF : 3, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 3, UT : 4,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 3, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -561.568  mm,	RY =   479.277  mm,	RZ =   150.010  mm,
	RW =   180.000 deg,	RP =   -90.000 deg,	RR =     0.000 deg
   GP2:
	UF : 3, UT : 4,	
	J1=     0.000  mm
   GP3:
	UF : 3, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 3, UT : 4,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 3, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -495.772  mm,	RY =   503.681  mm,	RZ =    19.180  mm,
	RW =     5.513 deg,	RP =   -84.278 deg,	RR =   172.692 deg
   GP2:
	UF : 3, UT : 4,	
	J1=     0.000  mm
   GP3:
	UF : 3, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 3, UT : 4,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 3, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1204.005  mm,	RY =  1650.735  mm,	RZ =   161.619  mm,
	RW =    58.824 deg,	RP =   -77.658 deg,	RR =    73.204 deg
   GP2:
	UF : 3, UT : 4,	
	J1=     0.000  mm
   GP3:
	UF : 3, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 3, UT : 4,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 3, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  2812.187  mm,	RY =  1693.978  mm,	RZ =    -9.979  mm,
	RW =    21.496 deg,	RP =   -76.783 deg,	RR =    -8.985 deg
   GP2:
	UF : 3, UT : 4,	
	J1=     0.000  mm
   GP3:
	UF : 3, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 3, UT : 4,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 3, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  2690.936  mm,	RY =  -823.266  mm,	RZ = -1236.919  mm,
	RW =   -11.019 deg,	RP =   -62.318 deg,	RR =   -37.495 deg
   GP2:
	UF : 3, UT : 4,	
	J1=     0.000  mm
   GP3:
	UF : 3, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 3, UT : 4,	
	J1=     0.000  mm
};
/END
