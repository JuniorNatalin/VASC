/PROG  UP021
/ATTR
OWNER		= GME;
COMMENT		= "Soldar en ST1350";
PROG_SIZE	= 17308;
CREATE		= DATE 23-11-02  TIME 18:32:00;
MODIFIED	= DATE 24-04-02  TIME 17:46:40;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 70;
MEMORY_SIZE	= 34264;
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
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=1 ;
   3:  PAYLOAD[1] ;
   4:  !Apagar Perfil Lib. 80 vs ST1350 ;
   5:  !Apagar Perfil Lib. 79 vs ST1350 ;
   6:  !Encender Anticol. 3 vs 1340R01 ;
   7:  !Encender Anticol. 13 vs 1370R01 ;
   8:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=ON ;
      9:  !Lib. de Anticolisiones ;
     10:  DO[43]=ON ;
     11:  DO[44]=ON ;
     12:  DO[53]=ON ;
     13:  DO[54]=ON ;
     14:  !Apagar Pos. Base ;
     15:  DO[15]=OFF ;
     16:  !Robot en Trayectoria ;
     17:  DO[16]=ON ;
     18:  WAIT (DI[79] AND DI[80])    ;
     19:  DO[80]=OFF ;
     20:  DO[79]=OFF ;
     21:  !Encender Anticolisiones ;
     22:  DO[83]=ON ;
     23:  DO[93]=ON ;
     24:  CALL MAKRO020    ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=ON ;
     27:  TC_ONLINE (DI[43] AND DI[53] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  11:  !5qa802035b_045_aups0001_L ;
  12:  !Punto de Sol. No. 10067 ;
  13:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10067,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+30) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[43] AND DI[53] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  14:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  15:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  16:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  17:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  18:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  19:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[43] AND DI[53] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  20:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  21:  !5qa802035b_053_bmps0001_L ;
  22:  !Punto de Sol. No. 10068 ;
  23:J P[12] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10068,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+37) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[43] AND DI[53] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  24:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  25:J P[14] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[43] AND DI[53] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  26:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  27:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  28:J P[17] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[78]=ON ;
      4:  IF (!DI[145] AND !DI[129]),CALL MAKRO001 ;
      5:  WAIT (DI[78])    ;
      6:  DO[78]=OFF ;
      7:  WAIT (DI[23])    ;
      8:  DO[23]=ON ;
      9:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  29:  !Peligro de Colision ;
  30:  !Cil. 13,14 to R & 15 to V ;
  31:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  32:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  33:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  34:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  35:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  36:  !5qa802035b_053_bmps0002_L ;
  37:  !Punto de Sol. No. 10069 ;
  38:J P[23] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10069,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+37) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  39:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  40:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  41:J P[26] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  42:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  43:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  44:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  45:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  46:J P[31] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  47:  !5qa802035b_041_aqps0001_L ;
  48:  !Punto de Sol. No. 10070 ;
  49:J P[32] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10070,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  50:J P[33] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  51:J P[34] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  52:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  53:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  54:J P[37] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  55:J P[38] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  56:J P[39] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  57:  !5qa802035b_039_aops0001_L ;
  58:  !Punto de Sol. No. 10071 ;
  59:J P[40] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10071,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  60:  !5qa802035b_039_aops0003_L ;
  61:  !Punto de Sol. No. 10072 ;
  62:J P[41] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10072,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  63:J P[42] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  64:J P[43] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  65:J P[44] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[53] AND DI[78] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  66:  !Encender Perfil Lib 80 vs ST1350 ;
  67:  !Encender Perfil Lib 79 vs ST1350 ;
  68:  !Apagar Anticol. 3 vs 1340R01 ;
  69:  !Apagar Anticil. 13 vs 1370R01 ;
  70:J P[45] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[43]=ON ;
      5:  DO[53]=ON ;
      6:  DO[80]=ON ;
      7:  DO[79]=ON ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -334.652  mm,	Y = -1633.864  mm,	Z =  1709.471  mm,
	W =  -107.723 deg,	P =     7.337 deg,	R =  -124.372 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -447.160  mm,	Y =  -814.061  mm,	Z =   331.492  mm,
	W =  -121.139 deg,	P =     0.000 deg,	R =   -90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -429.114  mm,	Y =  -503.117  mm,	Z =   335.642  mm,
	W =  -121.254 deg,	P =      .323 deg,	R =   -90.767 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    40.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -378.712  mm,	Y =  -516.175  mm,	Z =   290.940  mm,
	W =  -133.530 deg,	P =     -.738 deg,	R =   -90.895 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    19.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -434.166  mm,	Y =  -506.226  mm,	Z =   324.560  mm,
	W =  -123.517 deg,	P =      .006 deg,	R =   -90.016 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    34.388  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -447.160  mm,	Y =  -814.061  mm,	Z =   331.492  mm,
	W =  -121.139 deg,	P =     0.000 deg,	R =   -90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -123.074  mm,	Y =  -778.730  mm,	Z =    86.301  mm,
	W =   -17.268 deg,	P =   -19.190 deg,	R =   -79.408 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -135.016  mm,	Y =  -455.557  mm,	Z =    38.011  mm,
	W =   -17.268 deg,	P =   -19.191 deg,	R =   -79.409 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -112.893  mm,	Y =  -443.052  mm,	Z =   118.932  mm,
	W =   -18.589 deg,	P =   -19.191 deg,	R =   -79.408 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -100.526  mm,	Y =  -403.972  mm,	Z =   162.875  mm,
	W =   -20.268 deg,	P =   -19.191 deg,	R =   -79.409 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -83.643  mm,	Y =  -385.258  mm,	Z =   234.536  mm,
	W =   -16.281 deg,	P =     -.028 deg,	R =   -85.239 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -79.909  mm,	Y =  -408.466  mm,	Z =   250.958  mm,
	W =   -17.225 deg,	P =     -.930 deg,	R =   -85.391 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    20.200  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -84.291  mm,	Y =  -377.485  mm,	Z =   234.533  mm,
	W =   -16.281 deg,	P =     -.027 deg,	R =   -85.239 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -104.671  mm,	Y =  -405.187  mm,	Z =   150.701  mm,
	W =   -20.268 deg,	P =   -19.190 deg,	R =   -79.409 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -108.964  mm,	Y =  -427.295  mm,	Z =   135.072  mm,
	W =   -18.589 deg,	P =   -19.191 deg,	R =   -79.408 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -118.783  mm,	Y =  -456.995  mm,	Z =    92.999  mm,
	W =   -17.268 deg,	P =   -19.191 deg,	R =   -79.409 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -123.074  mm,	Y =  -778.730  mm,	Z =    86.301  mm,
	W =   -17.268 deg,	P =   -19.190 deg,	R =   -79.408 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -121.870  mm,	Y =  -435.164  mm,	Z =    88.659  mm,
	W =   -17.268 deg,	P =   -19.191 deg,	R =   -79.409 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -108.964  mm,	Y =  -427.295  mm,	Z =   135.072  mm,
	W =   -18.589 deg,	P =   -19.191 deg,	R =   -79.408 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -104.830  mm,	Y =  -416.000  mm,	Z =   148.238  mm,
	W =   -20.268 deg,	P =   -19.191 deg,	R =   -79.409 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -83.643  mm,	Y =  -385.258  mm,	Z =   234.536  mm,
	W =   -16.281 deg,	P =     -.028 deg,	R =   -85.239 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -95.034  mm,	Y =  -410.762  mm,	Z =   252.973  mm,
	W =   -17.240 deg,	P =    -2.149 deg,	R =   -84.879 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    20.400  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -96.120  mm,	Y =  -409.602  mm,	Z =   252.492  mm,
	W =   -15.507 deg,	P =      .740 deg,	R =   -86.864 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    20.700  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -83.643  mm,	Y =  -385.258  mm,	Z =   234.536  mm,
	W =   -16.281 deg,	P =     -.028 deg,	R =   -85.239 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -99.701  mm,	Y =  -401.673  mm,	Z =   174.979  mm,
	W =   -16.281 deg,	P =     -.026 deg,	R =   -85.238 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[26]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -123.102  mm,	Y =  -428.575  mm,	Z =    86.326  mm,
	W =   -17.268 deg,	P =   -19.191 deg,	R =   -79.409 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[27]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -123.074  mm,	Y =  -778.730  mm,	Z =    86.301  mm,
	W =   -17.268 deg,	P =   -19.190 deg,	R =   -79.408 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -42.278  mm,	Y =  -672.986  mm,	Z =   267.923  mm,
	W =   -77.384 deg,	P =   -89.451 deg,	R =    21.487 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[29]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -80.797  mm,	Y =  -488.972  mm,	Z =   267.546  mm,
	W =  -122.943 deg,	P =   -84.872 deg,	R =    95.069 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    60.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[30]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -82.182  mm,	Y =  -481.097  mm,	Z =   269.898  mm,
	W =   -28.847 deg,	P =   -89.005 deg,	R =   -13.889 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    43.823  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[31]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -86.989  mm,	Y =  -482.216  mm,	Z =   268.334  mm,
	W =  -116.899 deg,	P =   -84.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    19.066  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -109.136  mm,	Y =  -479.131  mm,	Z =   270.128  mm,
	W =   -64.767 deg,	P =   -85.396 deg,	R =    42.897 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    11.600  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[33]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -95.501  mm,	Y =  -475.483  mm,	Z =   268.913  mm,
	W =  -116.821 deg,	P =   -84.074 deg,	R =    88.918 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    20.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[34]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -80.988  mm,	Y =  -481.874  mm,	Z =   271.673  mm,
	W =  -118.862 deg,	P =   -83.832 deg,	R =    89.207 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    30.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[35]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -80.795  mm,	Y =  -486.092  mm,	Z =   267.578  mm,
	W =  -122.943 deg,	P =   -84.872 deg,	R =    95.069 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    60.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[36]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -42.278  mm,	Y =  -672.986  mm,	Z =   267.923  mm,
	W =   -77.384 deg,	P =   -89.451 deg,	R =    21.487 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[37]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -405.312  mm,	Y =  -661.652  mm,	Z =   284.367  mm,
	W =   144.106 deg,	P =   -84.001 deg,	R =    89.977 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[38]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -409.344  mm,	Y =  -498.882  mm,	Z =   269.570  mm,
	W =   117.175 deg,	P =   -75.458 deg,	R =   105.730 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.539  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[39]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -409.605  mm,	Y =  -497.960  mm,	Z =   273.262  mm,
	W =   117.176 deg,	P =   -75.458 deg,	R =   105.730 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    29.600  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[40]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -375.757  mm,	Y =  -495.567  mm,	Z =   272.322  mm,
	W =   131.244 deg,	P =   -84.010 deg,	R =    85.033 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    15.100  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[41]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -373.802  mm,	Y =  -458.730  mm,	Z =   268.559  mm,
	W =   146.863 deg,	P =   -85.367 deg,	R =    73.044 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    16.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[42]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -390.496  mm,	Y =  -489.993  mm,	Z =   272.490  mm,
	W =   129.084 deg,	P =   -84.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    15.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[43]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -404.899  mm,	Y =  -490.781  mm,	Z =   270.288  mm,
	W =   134.084 deg,	P =   -84.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    40.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[44]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -405.312  mm,	Y =  -661.652  mm,	Z =   284.367  mm,
	W =   144.106 deg,	P =   -84.001 deg,	R =    89.977 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[45]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -334.652  mm,	Y = -1633.864  mm,	Z =  1709.471  mm,
	W =  -107.723 deg,	P =     7.337 deg,	R =  -124.372 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
/END
