/PROG  FOLGE011
/ATTR
OWNER		= AUROM;
COMMENT		= "VW326";
PROG_SIZE	= 6758;
CREATE		= DATE 96-03-11  TIME 09:47:40;
MODIFIED	= DATE 23-09-23  TIME 17:53:44;
FILE_NAME	= FOLGE011;
VERSION		= 0;
LINE_COUNT	= 56;
MEMORY_SIZE	= 10466;
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
   4:   ;
   5:J P[1] 10% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  IF (DO[12]),CALL MAKRO998 ;
      2:  DO[15]=ON ;
      3:  DO[16]=ON ;
      4:  CALL MAKRO000    ;
      5:  WAIT (DI[9])    ;
       ------ ;
   6:   ;
   7:  !Fresado Estacionario ;
   8:J P[2] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[1]=RESET ;
      4:  TIMER[1]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[75]=OFF ;
     11:  DO[74]=ON ;
     12:  DO[73]=ON ;
     13:  DO[71]=OFF ;
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
     25:  !Apagar Posicion Base ;
     26:  DO[15]=OFF ;
     27:  !Garra a Base si no hay pieza ;
     28:  F[1]=(ON) ;
     29:  F[3]=(ON) ;
     30:  F[4]=(ON) ;
     31:  F[5]=(ON) ;
     32:  F[6]=(ON) ;
     33:  F[7]=(ON) ;
     34:  IF (!DI[15]),F[17]=(ON) ;
     35:  IF (M[2]),CALL MAKRO342 ;
     36:  CALL MAKRO340    ;
     37:  WAIT (M[31] AND M[35] AND M[37] AND M[39] AND M[41] AND M[43])    ;
     38:  !Fresado SZ1 ;
     39:  F[298]=(OFF) ;
     40:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
     41:  WAIT    .10(sec) ;
     42:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
     43:  F[78]=(DI[788] AND !F[79]) ;
     44:  GO[2]=(R[197]+0) ;
     45:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     46:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     47:  WAIT (M[96])    ;
     48:  WAIT (DI[23])    ;
     49:  DO[23]=ON ;
     50:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[35] AND M[37] AND M[39] AND M[41] AND M[43] AND M[95] AND M[96]) ;
       ------ ;
   9:   ;
  10:  !Llamar a UP001 ;
  11:  !Tomar de la Estacion ST1125 ;
  12:  CALL UP001    ;
  13:   ;
  14:  UFRAME_NUM=0 ;
  15:  UTOOL_NUM=1 ;
  16:   ;
  17:  !UP002 Tomar en ST1140-1 ;
  18:  !UP003 Tomar en ST1140-2 ;
  19:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[930]=(OFF) ;
      4:  F[931]=(OFF) ;
      5:  WAIT ((DI[64] AND !DI[63] AND DI[77]) OR (DI[62] AND !DI[61] AND DI[77]))    ;
      6:  F[930]=(DI[64] AND !DI[63] AND DI[77]) ;
      7:  F[931]=(!F[930] AND DI[62] AND !DI[61] AND DI[77]) ;
      8:  WAIT (F[930] OR F[931])    ;
      9:  WAIT (M[96])    ;
     10:  WAIT (DI[23])    ;
     11:  DO[23]=ON ;
     12:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[35] AND M[37] AND M[39] AND M[41] AND M[43] AND M[95] AND M[96]) ;
       ------ ;
  20:   ;
  21:  IF (F[930]),CALL UP002 ;
  22:  IF (F[931]),CALL UP003 ;
  23:   ;
  24:  !PALET_NOVO Tomar en ST1140 ;
  25:  !UP222 Tomar en ST1140-1 ;
  26:  !UP333 Tomar en ST1140-2 ;
  27:   ;
  28:  //IF (F[930]),CALL UP222 ;
  29:  //IF (F[931]),CALL UP333 ;
  30:   ;
  31:  UFRAME_NUM=0 ;
  32:  UTOOL_NUM=1 ;
  33:   ;
  34:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[36] AND M[37] AND M[40] AND M[41] AND M[43] AND M[63] AND M[95] AND M[96]) ;
       ------ ;
  35:  !Llamar a UP004 ;
  36:  !Soldadura Est. ;
  37:  CALL UP444    ;
  38:   ;
  39:  UFRAME_NUM=0 ;
  40:  UTOOL_NUM=1 ;
  41:   ;
  42:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[36] AND M[37] AND M[40] AND M[41] AND M[43] AND M[63] AND M[95] AND M[96]) ;
       ------ ;
  43:   ;
  44:  !En Area de Mantenimiento ;
  45:  !Llamar a UP005 ;
  46:  !Dejar en ST1150 ;
  47:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  LBL[1] ;
      4:  DO[18]=(ON) ;
      5:  WAIT ((DI[74] AND !DI[60] AND DI[59] AND !DI[58] AND DI[57] AND !DI[18]) OR DI[19])    ;
      6:  IF (DI[19]),JMP LBL[3] ;
      7:  IF (DI[74] AND !DI[60] AND DI[59] AND !DI[58] AND DI[57]),JMP LBL[2] ;
      8:  LBL[3] ;
      9:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     10:  CALL MAKRO089    ;
     11:  DO[17]=(ON) ;
     12:  GO[19]=(11) ;
     13:  F[281]=(ON) ;
     14:  WAIT (DI[17])    ;
     15:  F[64]=(ON) ;
     16:  F[65]=(OFF) ;
     17:  F[66]=(OFF) ;
     18:  F[67]=(OFF) ;
     19:  LBL[4] ;
     20:  IF (DI[132] AND !DI[133] AND !DI[134] AND !DI[135] AND DI[17]),CALL MAKRO081 ;
     21:  IF (F[85]),JMP LBL[4] ;
     22:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
     23:  F[79]=((!DI[788] AND DI[130]) OR (DI[786] AND !DI[788])) ;
     24:  F[78]=(DI[788] AND !F[79]) ;
     25:  GO[2]=(R[197]+0) ;
     26:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     27:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     28:  WAIT (M[96] AND !DI[132])    ;
     29:  DO[17]=(OFF) ;
     30:  GO[19]=(0) ;
     31:  WAIT (!DI[19])    ;
     32:  JMP LBL[1] ;
     33:  LBL[2] ;
     34:  DO[18]=(OFF) ;
     35:  F[281]=(OFF) ;
     36:  WAIT (DI[23])    ;
     37:  DO[23]=ON ;
     38:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[36] AND M[37] AND M[40] AND M[41] AND M[43] AND M[63] AND M[95] AND M[96]) ;
       ------ ;
  48:  CALL UP005    ;
  49:   ;
  50:  UFRAME_NUM=0 ;
  51:  UTOOL_NUM=1 ;
  52:   ;
  53:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  !Fresado SZ1 ;
      4:  F[298]=(OFF) ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      6:  WAIT    .10(sec) ;
      7:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
      8:  F[78]=(DI[788] AND !F[79]) ;
      9:  GO[2]=(R[197]+0) ;
     10:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     11:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     12:  WAIT (M[96])    ;
     13:  WAIT (DI[23])    ;
     14:  DO[23]=ON ;
     15:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[35] AND M[37] AND M[39] AND M[41] AND M[43] AND M[95] AND M[96]) ;
       ------ ;
  54:  !Fin de Trabajo Total ;
  55:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO015    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[35] AND M[37] AND M[39] AND M[41] AND M[43] AND M[95] AND M[96]) ;
       ------ ;
  56:J P[9] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
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
	X =   893.302  mm,	Y =   623.421  mm,	Z =    77.203  mm,
	W =    98.852 deg,	P =    39.834 deg,	R =  -104.177 deg
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
	X =   893.302  mm,	Y =   623.421  mm,	Z =    77.203  mm,
	W =    98.852 deg,	P =    39.834 deg,	R =  -104.177 deg
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
	X =   893.302  mm,	Y =   623.421  mm,	Z =    77.203  mm,
	W =    98.852 deg,	P =    39.834 deg,	R =  -104.177 deg
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
	X =   893.302  mm,	Y =   623.421  mm,	Z =    77.203  mm,
	W =    98.852 deg,	P =    39.834 deg,	R =  -104.177 deg
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
	X =   893.302  mm,	Y =   623.421  mm,	Z =    77.203  mm,
	W =    98.852 deg,	P =    39.834 deg,	R =  -104.177 deg
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
	X =   893.302  mm,	Y =   623.421  mm,	Z =    77.203  mm,
	W =    98.852 deg,	P =    39.834 deg,	R =  -104.177 deg
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
	X =   893.302  mm,	Y =   623.421  mm,	Z =    77.203  mm,
	W =    98.852 deg,	P =    39.834 deg,	R =  -104.177 deg
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
	X =   893.302  mm,	Y =   623.421  mm,	Z =    77.203  mm,
	W =    98.852 deg,	P =    39.834 deg,	R =  -104.177 deg
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
	X =   893.302  mm,	Y =   623.421  mm,	Z =    77.203  mm,
	W =    98.852 deg,	P =    39.834 deg,	R =  -104.177 deg
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
