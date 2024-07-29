/PROG  FOLGE020
/ATTR
OWNER		= GME;
COMMENT		= "VW336";
PROG_SIZE	= 7230;
CREATE		= DATE 96-03-11  TIME 09:47:40;
MODIFIED	= DATE 23-12-17  TIME 08:49:28;
FILE_NAME	= FOLGE020;
VERSION		= 0;
LINE_COUNT	= 50;
MEMORY_SIZE	= 11554;
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
   4:J P[1] 10% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  IF (DO[12]),CALL MAKRO998 ;
      2:  DO[15]=ON ;
      3:  DO[16]=ON ;
      4:  CALL MAKRO000    ;
      5:  WAIT (DI[9])    ;
       ------ ;
   5:  !Liberaciones PLC ;
   6:  !Fresado Estacionario SP1 ;
   7:  !Purgar KL1 ;
   8:J P[2] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      4:  DO[23]=OFF ;
      5:  TIMER[1]=RESET ;
      6:  TIMER[1]=START ;
      7:  CALL MAKRO050 ;
      8:  !Lib. Herramientas ;
      9:  DO[80]=ON ;
     10:  DO[78]=OFF ;
     11:  DO[77]=ON ;
     12:  DO[76]=OFF ;
     13:  DO[75]=OFF ;
     14:  DO[74]=ON ;
     15:  DO[73]=ON ;
     16:  DO[72]=OFF ;
     17:  DO[71]=OFF ;
     18:  DO[70]=OFF ;
     19:  DO[69]=OFF ;
     20:  DO[68]=OFF ;
     21:  !Anticolisiones Robot ;
     22:  DO[41]=ON ;
     23:  DO[42]=ON ;
     24:  DO[43]=ON ;
     25:  DO[44]=ON ;
     26:  DO[45]=ON ;
     27:  DO[46]=ON ;
      2:  !Espera fin de purga en casa ;
      3:  WAIT ((!DI[1534] AND !DI[1535]) OR !F[346])    ;
     28:  !Apagar Posicion base ;
     29:  DO[15]=OFF ;
     30:  !Inicializar Garra ;
     31:  F[1]=(ON) ;
     32:  F[2]=(ON) ;
     33:  F[3]=(ON) ;
     34:  F[4]=(ON) ;
     35:  F[5]=(ON) ;
     36:  IF (M[2]),CALL MAKRO342 ;
     37:  CALL MAKRO340    ;
     38:  WAIT (M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[2])    ;
     39:  F[6]=(ON) ;
     40:  CALL MAKRO343 ;
     42:  WAIT (M[42])    ;
     41:  CALL MAKRO340    ;
     43:  !Fresado SP1 ;
     44:  F[298]=(OFF) ;
     45:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
     46:  WAIT    .10(sec) ;
     47:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
     48:  F[78]=(DI[788] AND !F[79]) ;
     49:  GO[2]=(R[197]) ;
     50:  IF (F[78] AND F[79]),CALL MAKRO085 ;
     51:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     52:  WAIT (M[96])    ;
     53:  !Seleccionar Pistola 1 ;
     54:  DO[1521]=ON ;
     55:  DO[1522]=OFF ;
     56:  DO[1523]=OFF ;
     57:  !Confirmacion Pistola 1 ;
     58:  WAIT (DI[1521] AND !DI[1522] AND !DI[1523])    ;
     59:  !Programa ;
     60:  GO[10]=(20) ;
     61:  !Parametro ;
     62:  GO[11]=(1) ;
     63:  !Purgar ;
     64:  IF (DI[1534] AND !DI[15]),CALL MAKRO183 ;
     65:  WAIT (DI[23])    ;
     66:  DO[23]=ON ;
     67:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[95] AND M[96]) ;
       ------ ;
   9:  !Llamar a UP021 ;
  10:  !Tomar de la Estacion ST1350 ;
  11:  CALL UP021    ;
  12:  UFRAME_NUM=0 ;
  13:  UTOOL_NUM=1 ;
  14:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[3] AND M[30] AND M[31] AND M[34] AND M[35] AND M[37] AND M[39] AND M[95] AND M[96]) ;
       ------ ;
  15:  !Llamar a UP022 ;
  16:  !Tomar de la Estacion ST1360 ;
  17:  CALL UP022    ;
  18:  UFRAME_NUM=0 ;
  19:  UTOOL_NUM=1 ;
  20:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[38] AND M[39] AND M[95] AND M[96]) ;
       ------ ;
  21:  !Llamar a UP023 ;
  22:  !Soldadura ;
  23:  CALL UP023    ;
  24:  UFRAME_NUM=0 ;
  25:  UTOOL_NUM=1 ;
  26:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[38] AND M[39] AND M[95] AND M[96]) ;
       ------ ;
  27:   ;
  28:  !Purgar ;
  29:  !UP027 Sello Estacionario ;
  30:  !UP070 Posicion Muestra ;
  31:  LBL[1] ;
  32:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  !Purgar KL1 ;
      4:  IF (DI[1534] OR DI[163]),CALL MAKRO183 ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[38] AND M[39] AND M[95] AND M[96]) ;
       ------ ;
  33:   ;
  34:  CALL UP027    ;
  35:   ;
  36:  IF (F[343] OR DI[162]),CALL UP071 ;
  37:  IF (F[343]),JMP LBL[1] ;
  38:  UFRAME_NUM=0 ;
  39:  UTOOL_NUM=1 ;
  40:  !En Area de Mantenimiento ;
  41:  !Llamar a UP026 ;
  42:  !Dejar en ST1380 ;
  43:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  LBL[1] ;
      4:  DO[18]=(ON) ;
      5:  WAIT ((DI[74] AND DI[73] AND !DI[60] AND DI[59] AND !DI[58] AND DI[57] AND !DI[18]) OR DI[19])    ;
      6:  IF (DI[19]),JMP LBL[3] ;
      7:  IF (DI[74] AND DI[73] AND !DI[60] AND DI[59] AND !DI[58] AND DI[57]),JMP LBL[2] ;
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
     25:  GO[2]=(R[197]) ;
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
     38:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[38] AND M[39] AND M[95] AND M[96]) ;
       ------ ;
  44:  CALL UP026    ;
  45:  UFRAME_NUM=0 ;
  46:  UTOOL_NUM=1 ;
  47:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[298]=(OFF) ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      5:  WAIT    .10(sec) ;
      6:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
      7:  F[78]=(DI[788] AND !F[79]) ;
      8:  GO[2]=(R[197]) ;
      9:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     10:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     11:  WAIT (M[96])    ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[95] AND M[96]) ;
       ------ ;
  48:  !Fin de Trabajo Total ;
  49:J P[9] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO015    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[95] AND M[96]) ;
       ------ ;
  50:J P[10] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   839.400  mm,	Y = -1767.696  mm,	Z =  1746.892  mm,
	W =   150.000 deg,	P =     0.000 deg,	R =     0.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   839.400  mm,	Y = -1767.696  mm,	Z =  1746.892  mm,
	W =   150.000 deg,	P =     0.000 deg,	R =     0.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   839.400  mm,	Y = -1767.696  mm,	Z =  1746.892  mm,
	W =   150.000 deg,	P =     0.000 deg,	R =     0.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   839.400  mm,	Y = -1767.696  mm,	Z =  1746.892  mm,
	W =   150.000 deg,	P =     0.000 deg,	R =     0.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   839.400  mm,	Y = -1767.696  mm,	Z =  1746.892  mm,
	W =   150.000 deg,	P =     0.000 deg,	R =     0.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   839.400  mm,	Y = -1767.696  mm,	Z =  1746.892  mm,
	W =   150.000 deg,	P =     0.000 deg,	R =     0.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   839.400  mm,	Y = -1767.696  mm,	Z =  1746.892  mm,
	W =   150.000 deg,	P =     0.000 deg,	R =     0.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   839.400  mm,	Y = -1767.696  mm,	Z =  1746.892  mm,
	W =   150.000 deg,	P =     0.000 deg,	R =     0.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   839.400  mm,	Y = -1767.696  mm,	Z =  1746.892  mm,
	W =   150.000 deg,	P =     0.000 deg,	R =     0.000 deg
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
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   839.400  mm,	Y = -1767.696  mm,	Z =  1746.892  mm,
	W =   150.000 deg,	P =     0.000 deg,	R =     0.000 deg
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
