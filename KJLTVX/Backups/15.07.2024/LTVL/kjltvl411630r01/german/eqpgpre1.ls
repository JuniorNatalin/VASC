/PROG  EQPGPRE1
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "Eqlz1 prog prep";
PROG_GR��E	= 588;
ERSTELL		= TAG 10-07-09  ZEIT 19:00:42;
GE�NDERT	= TAG 16-06-11  ZEIT 23:31:06;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 17;
SPEICHERGR.	= 1048;
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
   1:  FREIG. PREG ;
   2:  AUFRUF EQEXTTYP(1) ;
   3:  $EQZ.$EQ_GUN_MNT=1 ;
   4:  WENN gA[3]<=97,SPRUNG LABEL[1] ;
   5:  ! Set pos for gun closing motion ;
   6:  AUFRUF EQGSTRUN(0) ;
   7:  AUFRUF EQTCHPOS('MOTN011',1,1,15) ;
   8:  SPRUNG LABEL[2] ;
   9:  LABEL[1] ;
  10:  AUFRUF EQGSTRUN(1) ;
  11:  AUFRUF EQTCHPOS('MOTN011',1,1,0) ;
  12:  LABEL[2] ;
  13:  ! Set pos for gun opening motion ;
  14:  AUFRUF EQTCHPOS('MOTN012',1,1,0) ;
  15:  AUFRUF EQTCHPOS('MOTN013',2,1,15) ;
  16:   ;
  17:  PR[48]=LPOS    ;
/POS
/END
