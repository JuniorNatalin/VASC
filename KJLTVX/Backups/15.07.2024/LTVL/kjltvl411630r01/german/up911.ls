/PROG  UP911
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "Tst Deadtime E1 ";
PROG_GR��E	= 1306;
ERSTELL		= TAG 15-12-03  ZEIT 09:55:32;
GE�NDERT	= TAG 15-12-03  ZEIT 09:55:32;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 16;
SPEICHERGR.	= 3022;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GR��E	= 0,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= 1,1,*,*,*;
KONTROLLCODE	= 00000000 00000000;
/MN
   1:  !Tst.Deadtime EZ1 ;
   2:  !Last Change 30.08.2010 ;
   3:  !  Change Output Values for MQB ;
   4:  PR[10]=LPOS    ;
   5:  PR[11]=LPOS    ;
   6:  PR[GP2:10,1]=($PARAM_GROUP[2].$LOWERLIMS[1]+20) ;
   7:  PR[GP2:11,1]=($PARAM_GROUP[2].$UPPERLIMS[1]-10) ;
   8:J PR[10] 100% CNT0 WEG VOR    0.0mm,P-SPS    ;
      1:  A[16]=AN ;
      2:  A[15]=AUS ;
      3:  A[11001]=AUS ;
       ------ ;
   9:  SPERRE PR ;
  10:  LABEL[1] ;
  11:J PR[10] 100% CNT0 WEG VOR    0.0mm,P-SPS    ;
       ------ ;
  12:J PR[11] 100% CNT0 WEG VOR    0.0mm,P-SPS    ;
       ------ ;
  13:  SPRUNG LABEL[1] ;
  14:   ;
  15:J PR[10] 100% CNT0 WEG VOR    0.0mm,P-SPS    ;
      1:  A[16]=AN ;
      2:  A[15]=AN ;
       ------ ;
  16:   ;
/POS
/END