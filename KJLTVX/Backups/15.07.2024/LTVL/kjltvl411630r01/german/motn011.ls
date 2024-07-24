/PROG  MOTN011
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "EQ EZSP1 ZU";
PROG_GRÖßE	= 780;
ERSTELL		= TAG 11-08-17  ZEIT 15:56:06;
GEÄNDERT	= TAG 17-03-27  ZEIT 18:30:48;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 15;
SPEICHERGR.	= 1264;
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
   1:  !EQ EZSP1 ZU ;
   2:  !letzte  Aenderung  21.07.2015 DB ;
   3:  IRQ BEDINGUNG E[718]=AN [+] $EQZ.$EQ_SOFTMODE=0    ;
   4:  i[820]=($MCR.$GENOVERRIDE) ;
   5:  OVERRIDE=100% ;
   6:  $SSR.$SINGLESTEP=0 ;
   7:  !@@@@@ EQ START @@@@@ ;
   8:  AUFRUF EQSTART    ;
   9:  A[718]=AN ;
  10:L P[1] 10mm/sek CNT0 ACC250 Interrupt,LABEL[1]    ;
  11:  LABEL[1] ;
  12:  OVERRIDE=i[820] ;
  13:  i[819]=A[22902]    ;
  14:  $SSR.$SINGLESTEP=i[819] ;
  15:  A[22855]=AUS ;
/POS
P[1]{
   GP1:
	UF : F, UT : F,		KONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
/END
