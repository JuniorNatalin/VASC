/PROG  MOTN015
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "EQ EZSP1 TIN AUF";
PROG_GRÖßE	= 652;
ERSTELL		= TAG 10-07-09  ZEIT 16:38:32;
GEÄNDERT	= TAG 17-03-27  ZEIT 18:30:48;
DATEI_NAME	= EQPRGAPC;
VERSION		= 0;
ZEILEN		= 7;
SPEICHERGR.	= 1028;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 0,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= 1,*,*,*,*;
KONTROLLCODE	= 00000000 00000000;
/APPL
/MN
   1:  !EQ EZSP1 TIN AUF ;
   2:  !letzte  Aenderung  21.07.2015 DB ;
   3:  $SSR.$SINGLESTEP=0 ;
   4:  ! Open movable electrode first ;
   5:L P[1] 200mm/sek CNT0 ACC100    ;
   6:  i[819]=A[22902]    ;
   7:  $SSR.$SINGLESTEP=i[819] ;
/POS
P[1]{
   GP1:
	UF : F, UT : F,		KONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
/END
