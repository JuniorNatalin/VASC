/PROG  UP021
/ATTR
OWNER		= GME;
COMMENT		= "Soldar en ST1380";
PROG_SIZE	= 13350;
CREATE		= DATE 21-11-08  TIME 17:35:22;
MODIFIED	= DATE 23-07-08  TIME 22:24:16;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 56;
MEMORY_SIZE	= 26182;
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
    :  !Apagar Perfil Lib. 80 vs ST1380 ;
    :  !Apagar Perfil Lib. 79 vs ST1380 ;
    :  !Encender Anticol. 1 vs 1370R01 ;
    :  !Encender Anticol. 5 vs 1390R01 ;
    :  UFRAME_NUM=1 ;
    :  UTOOL_NUM=1 ;
    :  PAYLOAD[1] ;
    :J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=ON ;
      9:  !Lib. de Anticolisiones ;
     10:  DO[41]=ON ;
     11:  DO[42]=ON ;
     12:  DO[45]=ON ;
     13:  DO[46]=ON ;
     14:  !Apagar Pos. Base ;
     15:  DO[15]=OFF ;
     16:  !Robot en Trayectoria ;
     17:  DO[16]=ON ;
     18:  WAIT (DI[80] AND DI[79])    ;
     19:  DO[80]=(OFF) ;
     20:  DO[79]=(OFF) ;
     21:  !Encender Anticolisiones ;
     22:  DO[81]=(ON) ;
     23:  DO[85]=(ON) ;
     24:  CALL MAKRO020    ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=(ON) ;
     27:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :  !5qa802035b_017_rps0006_L ;
    :  !Punto de Sol. No. 10076 ;
    :J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10076,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :  !5qa802035b_017_rps0016_L ;
    :  !Punto de Sol. No. 10077 ;
    :J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10077,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+10) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :  !5qa802035b_037_amps0001_L ;
    :  !Punto de Sol. No. 10078 ;
    :J P[16] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10078,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :  !5qa802035b_017_rps0030_L ;
    :  !Punto de Sol. No. 10079 ;
    :J P[23] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10079,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[27] 100% CNT70 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[28] 100% CNT10 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[29] 100% CNT10 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :  !Fin de Trabajo 1 ;
    :  !5qa802035b_017_rps0024_L ;
    :  !Punto de Sol. No. 10080 ;
    :J P[30] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10080,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-1) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] OR DI[129]),CALL MAKRO001 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :  !Encender Perfil Lib 79 vs ST1380 ;
    :J P[33] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[79]=ON ;
      3:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
    :  !Encender Perfil Lib 80 vs ST1380 ;
    :  !Apagar Anticol. 1 vs 1370R01 ;
    :  !Apagar Anticol. 5 vs 1390R01 ;
    :J P[34] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[3]=STOP ;
      4:  DO[80]=ON ;
      5:  DO[79]=ON ;
      6:  DO[41]=ON ;
      7:  DO[45]=ON ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=(ON) ;
     10:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1674.507  mm,	Y =  -161.562  mm,	Z =  1115.169  mm,
	W =   179.717 deg,	P =   -19.890 deg,	R =    56.237 deg
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
	X =  -549.615  mm,	Y =  -518.289  mm,	Z =   444.462  mm,
	W =   180.000 deg,	P =     0.000 deg,	R =   -90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000  mm
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
	X =  -549.014  mm,	Y =  -515.369  mm,	Z =   295.952  mm,
	W =   179.988 deg,	P =      .774 deg,	R =   -89.658 deg
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
	X =  -549.027  mm,	Y =  -521.091  mm,	Z =   293.813  mm,
	W =   179.959 deg,	P =    -1.897 deg,	R =   -89.994 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    13.800  mm
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
	X =  -549.017  mm,	Y =  -515.376  mm,	Z =   294.350  mm,
	W =   180.000 deg,	P =     0.000 deg,	R =   -90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000  mm
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
	X =  -549.615  mm,	Y =  -518.289  mm,	Z =   444.462  mm,
	W =   180.000 deg,	P =     0.000 deg,	R =   -90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000  mm
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
	X =    -5.671  mm,	Y =  -545.696  mm,	Z =   601.878  mm,
	W =  -165.947 deg,	P =    10.423 deg,	R =   -92.668 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000  mm
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
	X =    95.528  mm,	Y =  -476.238  mm,	Z =   221.170  mm,
	W =  -165.947 deg,	P =    10.423 deg,	R =   -92.668 deg
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
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    94.509  mm,	Y =  -481.760  mm,	Z =   217.352  mm,
	W =  -165.915 deg,	P =    11.482 deg,	R =   -92.488 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    14.000  mm
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
	X =    62.269  mm,	Y =  -504.523  mm,	Z =   345.756  mm,
	W =  -165.962 deg,	P =    10.443 deg,	R =   -92.753 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000  mm
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
	X =    48.270  mm,	Y =  -496.019  mm,	Z =   402.036  mm,
	W =  -165.947 deg,	P =    10.423 deg,	R =   -92.668 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   160.000  mm
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
	X =    27.079  mm,	Y =  -553.174  mm,	Z =   393.869  mm,
	W =   168.750 deg,	P =    -4.526 deg,	R =   105.507 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   160.000  mm
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
	X =    61.798  mm,	Y =  -526.857  mm,	Z =   191.037  mm,
	W =   168.749 deg,	P =    -4.525 deg,	R =   105.507 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   160.000  mm
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
	X =    65.258  mm,	Y =  -466.412  mm,	Z =    67.557  mm,
	W =   171.018 deg,	P =    -3.135 deg,	R =   105.290 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    99.022  mm
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
	X =    63.395  mm,	Y =  -460.135  mm,	Z =    64.998  mm,
	W =   171.082 deg,	P =    -3.086 deg,	R =   105.303 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    70.219  mm
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
	X =    58.062  mm,	Y =  -460.612  mm,	Z =    70.540  mm,
	W =   175.078 deg,	P =     -.068 deg,	R =   104.510 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    19.200  mm
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
	X =    62.039  mm,	Y =  -465.664  mm,	Z =    67.536  mm,
	W =   172.751 deg,	P =    -4.999 deg,	R =   101.832 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   160.000  mm
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
	X =    80.603  mm,	Y =  -485.615  mm,	Z =   161.549  mm,
	W =   168.744 deg,	P =    -4.570 deg,	R =   105.499 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   144.115  mm
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
	X =    33.495  mm,	Y =  -568.801  mm,	Z =   426.325  mm,
	W =   168.750 deg,	P =    -4.526 deg,	R =   105.507 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   160.000  mm
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
	X =  -218.164  mm,	Y =  -554.677  mm,	Z =   399.537  mm,
	W =   175.250 deg,	P =    -6.429 deg,	R =    95.483 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   199.110  mm
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
	X =  -193.233  mm,	Y =  -513.169  mm,	Z =   181.141  mm,
	W =   174.959 deg,	P =    -3.233 deg,	R =    91.714 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   114.792  mm
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
	X =  -193.060  mm,	Y =  -497.630  mm,	Z =   146.023  mm,
	W =   174.877 deg,	P =    -4.605 deg,	R =    91.612 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    87.489  mm
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
	X =  -195.192  mm,	Y =  -490.955  mm,	Z =   145.520  mm,
	W =   174.803 deg,	P =    -5.351 deg,	R =    91.429 deg
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
P[24]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -192.318  mm,	Y =  -506.030  mm,	Z =   143.118  mm,
	W =   174.820 deg,	P =    -2.690 deg,	R =    91.187 deg
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
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -201.922  mm,	Y =  -527.438  mm,	Z =   252.995  mm,
	W =   174.822 deg,	P =    -2.692 deg,	R =    91.187 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   160.000  mm
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
	X =  -283.067  mm,	Y =  -576.811  mm,	Z =   480.567  mm,
	W =   164.944 deg,	P =    -2.690 deg,	R =    91.187 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
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
	X =  -630.572  mm,	Y =  -542.110  mm,	Z =   491.979  mm,
	W =   164.000 deg,	P =     0.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
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
	X =  -617.602  mm,	Y =  -538.210  mm,	Z =   226.186  mm,
	W =   164.001 deg,	P =     0.000 deg,	R =    89.999 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
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
	X =  -596.129  mm,	Y =  -528.161  mm,	Z =   151.027  mm,
	W =   164.000 deg,	P =     0.000 deg,	R =    90.000 deg
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
P[30]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -595.740  mm,	Y =  -515.888  mm,	Z =   151.371  mm,
	W =   164.000 deg,	P =     0.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    16.200  mm
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
	X =  -596.112  mm,	Y =  -528.187  mm,	Z =   144.787  mm,
	W =   164.000 deg,	P =     0.000 deg,	R =    90.000 deg
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
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -617.602  mm,	Y =  -538.212  mm,	Z =   226.190  mm,
	W =   164.001 deg,	P =     0.000 deg,	R =    89.999 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
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
	X =  -617.654  mm,	Y =  -542.112  mm,	Z =   405.128  mm,
	W =   164.000 deg,	P =     0.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
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
	X = -1674.507  mm,	Y =  -161.562  mm,	Z =  1115.169  mm,
	W =   179.717 deg,	P =   -19.890 deg,	R =    56.237 deg
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
