/PROG  UP921
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "Tst Deadtime E2 ";
PROG_GRÖßE	= 1298;
ERSTELL		= TAG 15-12-03  ZEIT 07:08:40;
GEÄNDERT	= TAG 15-12-03  ZEIT 07:08:40;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 15;
SPEICHERGR.	= 3018;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 0,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= 1,*,1,*,*;
KONTROLLCODE	= 00000000 00000000;
/MN
   1:  !Tst.Deadtime EZ2 ;
   2:  !Last Change 30.08.2010 ;
   3:  !  Change Output Values for MQB ;
   4:  PR[12]=LPOS    ;
   5:  PR[13]=LPOS    ;
   6:  PR[GP3:12,1]=($PARAM_GROUP[3].$LOWERLIMS[1]+20) ;
   7:  PR[GP3:13,1]=($PARAM_GROUP[3].$UPPERLIMS[1]-10) ;
   8:J PR[12] 100% CNT0 WEG VOR    0.0mm,P-SPS    ;
      1:  A[16:SAK Robot (En camino)]=AN ;
      2:  A[15:PF0 Robot (Punto Cero)]=AUS ;
      3:  A[11001]=AUS ;
       ------ ;
   9:  SPERRE PR ;
  10:  LABEL[1] ;
  11:J PR[12] 100% CNT0 WEG VOR    0.0mm,P-SPS    ;
       ------ ;
  12:J PR[13] 100% CNT0 WEG VOR    0.0mm,P-SPS    ;
       ------ ;
  13:  SPRUNG LABEL[1] ;
  14:   ;
  15:J PR[12] 100% CNT0 WEG VOR    0.0mm,P-SPS    ;
      1:  A[16:SAK Robot (En camino)]=AN ;
      2:  A[15:PF0 Robot (Punto Cero)]=AN ;
       ------ ;
/POS
/END
