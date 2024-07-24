/PROG  UP114
/ATTR
OWNER		= AUROM;
COMMENT		= "Mant. SP2";
PROG_SIZE	= 2650;
CREATE		= DATE 17-07-04  TIME 12:15:26;
MODIFIED	= DATE 17-07-04  TIME 12:15:26;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 9;
MEMORY_SIZE	= 4062;
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
      4:  !Lib. Herramientas ;
      5:  DO[80]=ON ;
      6:  DO[79]=ON ;
      7:  DO[78]=OFF ;
      8:  DO[77]=OFF ;
      9:  DO[76]=ON ;
     10:  DO[74]=OFF ;
     11:  !Lib. de Anticolisiones ;
     12:  DO[41]=ON ;
     13:  DO[42]=ON ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  DO[45]=ON ;
     17:  DO[46]=ON ;
     18:  !Apagar Posicion Base ;
     19:  DO[15]=OFF ;
     20:  !Robot en Trayectoria ;
     21:  DO[16]=ON ;
     22:  WAIT (DI[23])    ;
     23:  DO[23]=ON ;
     24:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   5:  !Posicion de Mantenimiento ;
   6:J P[2] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[281]=(ON) ;
      4:  IF (DI[164]),JMP LBL[1] ;
      5:  IF (DO[12]),CALL MAKRO103 ;
      6:  CALL MAKRO119    ;
      7:  DO[17]=ON ;
      8:  WAIT (DI[17])    ;
      9:  DO[17]=OFF ;
     10:  IF (DO[12]),CALL MAKRO102 ;
     11:  LBL[1] ;
     12:  GO[19]=51 ;
     13:  CALL MAKRO119    ;
     14:  DO[17]=ON ;
     15:  WAIT (DI[17])    ;
     16:  IF (DI[164] AND !DI[165] AND !DI[166] AND !DI[167]),CALL MAKRO111 ;
     17:  LBL[2] ;
     18:  WAIT (!F[143] OR DI[26])    ;
     19:  IF (F[143]),CALL MAKRO111 ;
     20:  IF (F[143]),JMP LBL[2] ;
     21:  DO[17]=OFF ;
     22:  GO[19]=0 ;
     23:  F[281]=(OFF) ;
     24:  WAIT (!DI[164] AND !DI[165] AND !DI[166] AND !DI[167])    ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=ON ;
     27:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   7:  !Fresado SP2 despues de ;
   8:  !mantenimiento ;
   9:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[298]=(OFF) ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      5:  WAIT    .10(sec) ;
      6:  F[139]=((DI[946] AND !DI[948]) OR (!DI[948] AND DI[162])) ;
      7:  F[138]=(DI[948] AND !F[139]) ;
      8:  GO[5]=(R[198]+0) ;
      9:  IF (F[138] OR F[139]),CALL MAKRO115 ;
     10:  IF (F[138] OR F[139]),CALL MAKRO114 ;
     11:  WAIT (M[103])    ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   428.128  mm,	Y =   297.241  mm,	Z =  1068.180  mm,
	W =    15.400 deg,	P =    27.794 deg,	R =  -173.854 deg
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
	X =   428.128  mm,	Y =   297.241  mm,	Z =  1068.180  mm,
	W =    15.400 deg,	P =    27.794 deg,	R =  -173.854 deg
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
	X =   428.128  mm,	Y =   297.241  mm,	Z =  1068.180  mm,
	W =    15.400 deg,	P =    27.794 deg,	R =  -173.854 deg
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
