/PROG  MOTN013
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "EQ EZSP1 AUF POS";
PROG_GRÖßE	= 738;
ERSTELL		= TAG 11-08-17  ZEIT 15:56:10;
GEÄNDERT	= TAG 17-04-01  ZEIT 11:18:08;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 13;
SPEICHERGR.	= 1106;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 0,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= *,1,*,*,*;
KONTROLLCODE	= 00000000 00000000;
/MN
   1:  !EQ EZSP1 AUF POS ;
   2:  !letzte  Aenderung  31.08.2011 ;
   3:  !Ausschalten Ausgleich ;
   4:  i[820]=($MCR.$GENOVERRIDE) ;
   5:  OVERRIDE=100% ;
   6:  $SSR.$SINGLESTEP=0 ;
   7:  AUFRUF EQGUNOPN    ;
   8:  AUFRUF EQEND    ;
   9:  !Open movable electrode ;
  10:  //J P[1] 100% CNT10 ACC200    ;
  11:  OVERRIDE=i[820] ;
  12:  i[819]=A[22902]    ;
  13:  $SSR.$SINGLESTEP=i[819] ;
/POS
P[1]{
   GP2:
	UF : F, UT : F,		KONFIG : '',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
/END
