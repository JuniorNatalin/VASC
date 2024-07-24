/PROG  EQTEACH	  Makro
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "Eqlz teach mode";
PROG_GRÖßE	= 1320;
ERSTELL		= TAG 10-07-08  ZEIT 19:47:22;
GEÄNDERT	= TAG 16-05-25  ZEIT 22:56:28;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 50;
SPEICHERGR.	= 1848;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 0,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 7;
DEFAULT_GRUP	= *,1,*,*,*;
KONTROLLCODE	= 00000000 00000000;
/APPL
  SPOT : TRUE ; 

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
  SPOT Welding Equipment Number : 1 ;

CORNER_SPEED_HEADER;
  ENABLE_CORNER_SPEED   : FALSE;
/MN
   1:  ! Set pos for gun closing motion ;
   2:  FREIG. PREG ;
   3:  i[819]=$JCR.$JOG_GP ;
   4:  IST    i[819]=0,SPRUNG LABEL[99] ;
   5:         =1,SPRUNG LABEL[10] ;
   6:         =2,SPRUNG LABEL[20] ;
   7:         =3,SPRUNG LABEL[30] ;
   8:         =4,SPRUNG LABEL[40] ;
   9:        SONST,SPRUNG LABEL[99] ;
  10:   ;
  11:  LABEL[10] ;
  12:  BALM[1] ;
  13:  ENDE ;
  14:   ;
  15:  LABEL[20] ;
  16:  AUFRUF EQEXTTYP(1) ;
  17:  $EQZ.$EQ_GUN_MNT=1 ;
  18:  AUFRUF EQTCHPOS('MOTN014',1,1,10) ;
  19:  AUFRUF EQTCHPOS('MOTN015',1,1,0) ;
  20:  ! Gun closing motion with eq ;
  21:  AUFRUF MOTN014    ;
  22:  AUFRUF MOTN015    ;
  23:  A[22925]=AUS ;
  24:  ENDE ;
  25:   ;
  26:  LABEL[30] ;
  27:  AUFRUF EQEXTTYP(2) ;
  28:  $EQZ.$EQ_GUN_MNT=2 ;
  29:  AUFRUF EQTCHPOS('MOTN024',1,1,10) ;
  30:  AUFRUF EQTCHPOS('MOTN025',1,1,0) ;
  31:  ! Gun closing motion with eq ;
  32:  AUFRUF MOTN024    ;
  33:  WARTE E[877:SZ2 Pinza abierta]=AN    ;
  34:  AUFRUF MOTN025    ;
  35:  A[22925]=AUS ;
  36:  ENDE ;
  37:   ;
  38:  LABEL[40] ;
  39:  AUFRUF EQEXTTYP(3) ;
  40:  $EQZ.$EQ_GUN_MNT=2 ;
  41:  AUFRUF EQTCHPOS('MOTN034',1,1,10) ;
  42:  AUFRUF EQTCHPOS('MOTN035',1,1,0) ;
  43:  ! Gun closing motion with eq ;
  44:  AUFRUF MOTN034    ;
  45:  AUFRUF MOTN035    ;
  46:  A[22925]=AUS ;
  47:  ENDE ;
  48:   ;
  49:  LABEL[99] ;
  50:  A[22925]=AUS ;
/POS
/END
