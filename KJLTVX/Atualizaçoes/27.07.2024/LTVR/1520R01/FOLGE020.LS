/PROG  FOLGE020
/ATTR
OWNER		= GME;
COMMENT		= "VW336";
PROG_SIZE	= 3432;
CREATE		= DATE 18-10-08  TIME 17:31:58;
MODIFIED	= DATE 23-07-01  TIME 02:00:00;
FILE_NAME	= FOLGE020;
VERSION		= 0;
LINE_COUNT	= 21;
MEMORY_SIZE	= 5960;
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
      1:  IF (DO[12:Automático]),CALL MAKRO998 ;
      2:  DO[15:PF0 Robot (Punto Cero)]=ON ;
      3:  DO[16:SAK Robot (En camino)]=ON ;
      4:  CALL MAKRO000    ;
      5:  WAIT (DI[9:Iniciar Secuencia])    ;
       ------ ;
   5:J P[2] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  TIMER[1]=RESET ;
      4:  TIMER[1]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80:PL>1520DT M.Giratoria]=ON ;
      8:  DO[79:PL>1520 Herramienta]=ON ;
      9:  !Lib. de Anticolisiones ;
     10:  DO[41:Blq>1500R01(1)]=ON ;
     11:  DO[42:Blq>1500R01(2)]=ON ;
     12:  DO[45:Blq>1550R01(5)]=ON ;
     13:  DO[46:Blq>1550R01(6)]=ON ;
     14:  !Apagar Pos. Base ;
     15:  DO[15:PF0 Robot (Punto Cero)]=OFF ;
     16:  !Fresado EZ1 ;
     17:  F[298:NoRepetirSoldNOK]=(OFF) ;
     18:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
     19:  WAIT    .10(sec) ;
     20:  F[79:SP1 Fres. Cíclico]=((DI[786:SK1 Fres.Cíclico Req.] AND !DI[788:SK1 Fres.Inicial Req.]) OR (!DI[788:SK1 Fres.Inicial Req.] AND DI[130:SZ1 Sel.Fresar])) ;
     21:  F[78:SP1 Fres. Inicial]=(DI[788:SK1 Fres.Inicial Req.] AND !F[79:SP1 Fres. Cíclico]) ;
     22:  GO[2:SP1 Compensación]=(R[197]+0) ;
     23:  WAIT (DI[23:Sin Sol.Acceso])    ;
     24:  DO[23:Bloquear Rejas de Seg.]=ON ;
     25:  TC_ONLINE (M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
   6:  LBL[1] ;
   7:  IF (F[78:SP1 Fres. Inicial] OR F[79:SP1 Fres. Cíclico] OR F[298:NoRepetirSoldNOK]),CALL UP101 ;
   8:  IF (F[298:NoRepetirSoldNOK]),JMP LBL[1] ;
   9:  !LLamar a UP021 ;
  10:  !Sol. en Geometria ST1520 ;
  11:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  WAIT (DI[23:Sin Sol.Acceso])    ;
      4:  DO[23:Bloquear Rejas de Seg.]=ON ;
      5:  TC_ONLINE (M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  12:  CALL UP021    ;
  13:  UFRAME_NUM=0 ;
  14:  UTOOL_NUM=1 ;
  15:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  !Fresado EZ1 ;
      4:  F[298:NoRepetirSoldNOK]=(OFF) ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      6:  WAIT    .10(sec) ;
      7:  F[79:SP1 Fres. Cíclico]=((DI[786:SK1 Fres.Cíclico Req.] AND !DI[788:SK1 Fres.Inicial Req.]) OR (!DI[788:SK1 Fres.Inicial Req.] AND DI[130:SZ1 Sel.Fresar])) ;
      8:  F[78:SP1 Fres. Inicial]=(DI[788:SK1 Fres.Inicial Req.] AND !F[79:SP1 Fres. Cíclico]) ;
      9:  GO[2:SP1 Compensación]=(R[197]) ;
     10:  WAIT (DI[23:Sin Sol.Acceso])    ;
     11:  DO[23:Bloquear Rejas de Seg.]=ON ;
     12:  TC_ONLINE (M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  16:  LBL[2] ;
  17:  IF (F[78:SP1 Fres. Inicial] OR F[79:SP1 Fres. Cíclico] OR F[298:NoRepetirSoldNOK]),CALL UP101 ;
  18:  IF (F[298:NoRepetirSoldNOK]),JMP LBL[2] ;
  19:  !Fin de Trabajo Total ;
  20:J P[5] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23:Bloquear Rejas de Seg.]=OFF ;
      3:  CALL MAKRO015    ;
      4:  WAIT (DI[23:Sin Sol.Acceso])    ;
      5:  DO[23:Bloquear Rejas de Seg.]=ON ;
      6:  TC_ONLINE (M[30:Seg. de Máquina] AND M[95:Seguridad SP1]) ;
       ------ ;
  21:J P[6] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[14:Último Punto Alcanzado]=ON ;
      3:  DO[15:PF0 Robot (Punto Cero)]=ON ;
      4:  TIMER[1]=STOP ;
      5:  TIMER[2]=(TIMER[1]) ;
      6:  TIMER[2]=STOP ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   799.023  mm,	Y =  -527.414  mm,	Z =  -219.232  mm,
	W =  -145.439 deg,	P =   -75.894 deg,	R =   -90.439 deg
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
	X =   799.023  mm,	Y =  -527.414  mm,	Z =  -219.232  mm,
	W =  -145.439 deg,	P =   -75.894 deg,	R =   -90.439 deg
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
	X =   799.023  mm,	Y =  -527.414  mm,	Z =  -219.232  mm,
	W =  -145.439 deg,	P =   -75.894 deg,	R =   -90.439 deg
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
	X =   799.023  mm,	Y =  -527.414  mm,	Z =  -219.232  mm,
	W =  -145.439 deg,	P =   -75.894 deg,	R =   -90.439 deg
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
	X =   799.023  mm,	Y =  -527.414  mm,	Z =  -219.232  mm,
	W =  -145.439 deg,	P =   -75.894 deg,	R =   -90.439 deg
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
	X =   799.023  mm,	Y =  -527.414  mm,	Z =  -219.232  mm,
	W =  -145.439 deg,	P =   -75.894 deg,	R =   -90.439 deg
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
