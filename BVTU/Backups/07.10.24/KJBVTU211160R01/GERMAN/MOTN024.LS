/PROG  MOTN024
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "EQ EZSP2 TIN";
PROG_GRÖßE	= 1101;
ERSTELL		= TAG 10-07-09  ZEIT 16:38:02;
GEÄNDERT	= TAG 16-06-15  ZEIT 00:26:20;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 30;
SPEICHERGR.	= 1549;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 0,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= 1,*,*,*,*;
KONTROLLCODE	= 00000000 00000000;
/MN
   1:  !EQ EZSP2 TIN ;
   2:  FREIG. PREG ;
   3:  PR[49]=LPOS    ;
   4:  !letzte  Aenderung  01.06.2011 ;
   5:  IRQ BEDINGUNG E[878]=AN [+] A[22855]=AN    ;
   6:  A[875]=AN ;
   7:  i[820]=($MCR.$GENOVERRIDE) ;
   8:  OVERRIDE=100% ;
   9:  $SSR.$SINGLESTEP=0 ;
  10:J PR[49] 100% CNT100 ACC100    ;
  11:  !@@@@@ EQ START @@@@@ ;
  12:  AUFRUF EQSTART    ;
  13:  A[22925]=AN ;
  14:  A[870]=AN ;
  15:  WARTE gE[52]>85    ;
  16:  WARTE gE[52]<100    ;
  17:L P[1] 10mm/sek CNT0 ACC250 Interrupt,LABEL[1]    ;
  18:  LABEL[1] ;
  19:  i[819]=A[22902]    ;
  20:  $SSR.$SINGLESTEP=i[819] ;
  21:  WARTE A[870]=AUS [+] A[22855]=AN    ;
  22:  AUFRUF EQGUNOPN    ;
  23:  AUFRUF EQEND    ;
  24:  ! Set pos for gun opening motion ;
  25:  //AUFRUF EQTCHPOS('MOTN025',1,1,(-3)) ;
  26:  OVERRIDE=i[820] ;
  27:  i[819]=A[22902]    ;
  28:  $SSR.$SINGLESTEP=i[819] ;
  29:  A[22855]=AUS ;
  30:  ENDE ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, -1',
	X =     0.000  mm,	Y =     0.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
