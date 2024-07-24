/PROG  UP026
/ATTR
OWNER		= GME;
COMMENT		= "Soldadura Est.";
PROG_SIZE	= 7044;
CREATE		= DATE 96-03-29  TIME 12:44:18;
MODIFIED	= DATE 24-03-16  TIME 12:07:14;
FILE_NAME	= UP026;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 12440;
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
   3:  PAYLOAD[2] ;
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
     28:  WAIT (M[1])    ;
     29:  !Basculante 1 en Pos. de Reposo ;
     30:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     31:  WAIT (M[96])    ;
     32:  !Encender Anticolisiones ;
     33:  DO[81]=ON ;
     34:  CALL MAKRO020    ;
     35:  WAIT (DI[23])    ;
     36:  DO[23]=ON ;
     37:  !Marcas de Usuario: ;
     38:  !Marca 4 Estado de Garra ;
     39:  !Valulas 1,2&4 en V, 3&5 en R ;
     40:  !M[13] = M[32] AND M[34] ;
     41:  !AND M[35] AND M[38] AND M[39] ;
     42:  TC_ONLINE (DI[41] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:  !5qa802035b_038_anps0002_R ;
   9:  !Punto de Sol. No. 5803 ;
  10:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11626,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+11) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  11:  !5qa802035b_038_anps0003_R ;
  12:  !Punto de Sol. No. 5804 ;
  13:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11627,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  14:  !5qa802035b_038_anps0004_R ;
  15:  !Punto de Sol. No. 5805 ;
  16:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11628,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  19:  !5qa802035b_038_anps0005_R ;
  20:  !Punto de Sol. No. 5806 ;
  21:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11629,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  22:  !5qa802035b_038_anps0006_R ;
  23:  !Punto de Sol. No. 5807 ;
  24:  !Fin de Trabajo 3 ;
  25:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11630,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO003 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (DI[41] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  26:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  27:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  28:J P[14] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=STOP ;
      4:  DO[41]=ON ;
      5:  WAIT (DI[23])    ;
      6:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =   335.820  mm,	RY = -1438.677  mm,	RZ =  -788.789  mm,
	RW =     5.719 deg,	RP =     1.772 deg,	RR =   175.588 deg
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
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =     9.665  mm,	RY =   423.532  mm,	RZ =  -596.848  mm,
	RW =   -32.532 deg,	RP =   -10.409 deg,	RR =    82.111 deg
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
P[3]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =    27.050  mm,	RY =   164.625  mm,	RZ =  -209.330  mm,
	RW =   -38.583 deg,	RP =      .000 deg,	RR =    82.663 deg
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
P[4]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 1',
	RX =    26.509  mm,	RY =   464.385  mm,	RZ =    90.430  mm,
	RW =   -18.583 deg,	RP =      .000 deg,	RR =    82.663 deg
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
P[5]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 1',
	RX =    24.123  mm,	RY =   460.052  mm,	RZ =    90.459  mm,
	RW =   -19.765 deg,	RP =    11.852 deg,	RR =    80.930 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    21.800  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 1',
	RX =    -4.836  mm,	RY =   471.413  mm,	RZ =    91.949  mm,
	RW =   -17.386 deg,	RP =    14.385 deg,	RR =    81.577 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    19.600  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 1',
	RX =   -27.091  mm,	RY =   474.808  mm,	RZ =    91.881  mm,
	RW =   -17.576 deg,	RP =    15.741 deg,	RR =    79.841 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    19.600  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -64.259  mm,	RY =   470.163  mm,	RZ =    77.610  mm,
	RW =   -19.678 deg,	RP =     -.000 deg,	RR =    82.663 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    60.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -114.661  mm,	RY =   482.561  mm,	RZ =   150.720  mm,
	RW =   -21.351 deg,	RP =     -.000 deg,	RR =    82.663 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    80.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -118.506  mm,	RY =   482.873  mm,	RZ =   151.692  mm,
	RW =   -21.546 deg,	RP =    15.130 deg,	RR =    79.008 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    26.400  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -141.374  mm,	RY =   485.256  mm,	RZ =   152.804  mm,
	RW =   -21.010 deg,	RP =    14.416 deg,	RR =    80.272 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    46.800  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -44.903  mm,	RY =   373.104  mm,	RZ =  -126.713  mm,
	RW =   -21.748 deg,	RP =      .094 deg,	RR =    82.916 deg
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
P[13]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -69.588  mm,	RY =   413.525  mm,	RZ =  -590.449  mm,
	RW =   -32.049 deg,	RP =   -11.216 deg,	RR =    92.941 deg
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
P[14]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =   335.820  mm,	RY = -1438.677  mm,	RZ =  -788.789  mm,
	RW =     5.719 deg,	RP =     1.772 deg,	RR =   175.588 deg
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
