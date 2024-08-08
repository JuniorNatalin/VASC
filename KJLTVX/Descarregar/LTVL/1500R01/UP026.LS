/PROG  UP026
/ATTR
OWNER		= GME;
COMMENT		= "Soldadura Est.";
PROG_SIZE	= 6798;
CREATE		= DATE 96-03-23  TIME 08:54:02;
MODIFIED	= DATE 24-03-16  TIME 11:26:10;
FILE_NAME	= UP026;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 11406;
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
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=3 ;
   3:  PAYLOAD[1] ;
   4:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=OFF ;
      9:  DO[78]=ON ;
     10:  DO[77]=OFF ;
     11:  DO[76]=ON ;
     12:  DO[75]=ON ;
     13:  DO[74]=OFF ;
     14:  DO[73]=OFF ;
     15:  DO[72]=OFF ;
     16:  DO[71]=OFF ;
     17:  !Lib. de Anticolisiones ;
     18:  DO[41]=ON ;
     19:  DO[42]=ON ;
     20:  DO[43]=ON ;
     21:  DO[44]=ON ;
     22:  DO[55]=ON ;
     23:  DO[56]=ON ;
     24:  !Apagar Pos. Base ;
     25:  DO[15]=OFF ;
     26:  !Robot en Trayectoria ;
     27:  DO[16]=ON ;
     28:  !Basculante 1 en Pos. de Reposo ;
     29:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     30:  WAIT (M[96])    ;
     31:  WAIT (DI[23])    ;
     32:  DO[23]=ON ;
     33:  !Marcas de Usuario: ;
     34:  !Marca 4 Estado de Garra ;
     35:  !Valulas 1,2&4 en V, 3&5 en R ;
     36:  !M[13] = M[32] AND M[34] ;
     37:  !AND M[35] AND M[38] AND M[39] ;
     38:  TC_ONLINE (M[1] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:  !5qa802035b_037_amps0002_L ;
   8:  !Punto de Sol. No. 10117 ;
   9:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10117,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+0) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:  !5qa802035b_037_amps0003_L ;
  11:  !Punto de Sol. No. 10118 ;
  12:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10118,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+0) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  13:  !5qa802035b_037_amps0004_L ;
  14:  !Punto de Sol. No. 10119 ;
  15:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10119,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+0) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  16:  !5qa802035b_037_amps0005_L ;
  17:  !Punto de Sol. No. 10120 ;
  18:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10120,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+0) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  19:  !5qa802035b_037_amps0006_L ;
  20:  !Punto de Sol. No. 10121 ;
  21:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10121,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+0) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  22:  !5qa802035b_037_amps0007_L ;
  23:  !Punto de Sol. No. 10122 ;
  24:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10122,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+10) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  25:  !5qa802035b_037_amps0008_L ;
  26:  !Punto de Sol. No. 10123 ;
  27:  !Fin de Trabajo 3 ;
  28:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10123,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+10) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO003 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  29:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  30:J P[12] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, -1, 0',
	RX =  -397.527  mm,	RY =    -3.242  mm,	RZ =  3835.332  mm,
	RW =    95.813 deg,	RP =   -45.094 deg,	RR =  -145.882 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    78.276  mm,	RY = -1103.736  mm,	RZ =  1184.582  mm,
	RW =  -152.494 deg,	RP =     7.337 deg,	RR =      .000 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    50.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    63.664  mm,	RY =  -909.067  mm,	RZ =  1071.761  mm,
	RW =  -152.194 deg,	RP =     7.337 deg,	RR =     -.000 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    50.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    73.248  mm,	RY =  -904.556  mm,	RZ =  1077.099  mm,
	RW =  -149.652 deg,	RP =    11.324 deg,	RR =      .346 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    23.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    77.167  mm,	RY =  -899.173  mm,	RZ =  1103.635  mm,
	RW =  -146.631 deg,	RP =     9.558 deg,	RR =      .795 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    30.434  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    67.830  mm,	RY =  -900.959  mm,	RZ =  1133.281  mm,
	RW =  -152.667 deg,	RP =     8.065 deg,	RR =    -1.490 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    35.222  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    84.907  mm,	RY =  -893.243  mm,	RZ =  1166.739  mm,
	RW =  -151.634 deg,	RP =     6.289 deg,	RR =    -1.747 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    24.400  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    88.947  mm,	RY =  -859.014  mm,	RZ =  1182.073  mm,
	RW =  -148.011 deg,	RP =     7.513 deg,	RR =    -1.200 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    24.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    90.868  mm,	RY =  -850.812  mm,	RZ =  1206.901  mm,
	RW =  -148.111 deg,	RP =     7.225 deg,	RR =     -.080 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    23.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    94.261  mm,	RY =  -848.542  mm,	RZ =  1230.960  mm,
	RW =  -147.836 deg,	RP =     7.369 deg,	RR =    -1.216 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    23.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    76.383  mm,	RY = -1132.200  mm,	RZ =  1169.881  mm,
	RW =  -152.494 deg,	RP =     7.337 deg,	RR =      .000 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    50.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, -1, 0',
	RX =  -397.513  mm,	RY =    -3.241  mm,	RZ =  3835.332  mm,
	RW =    95.813 deg,	RP =   -45.094 deg,	RR =  -145.882 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
/END
