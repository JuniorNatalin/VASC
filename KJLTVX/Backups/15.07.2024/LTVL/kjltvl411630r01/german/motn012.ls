/PROG  MOTN012
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "EQ EZSP1 AUF";
PROG_GRÖßE	= 714;
ERSTELL		= TAG 10-07-09  ZEIT 16:38:32;
GEÄNDERT	= TAG 17-03-27  ZEIT 18:30:48;
DATEI_NAME	= EQPRGAPC;
VERSION		= 0;
ZEILEN		= 10;
SPEICHERGR.	= 1078;
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
   1:  !EQ EZSP1 AUF ;
   2:  !letzte  Aenderung  21.07.2015 DB ;
   3:  i[400]=i[400]+1    ;
   4:  i[819]=($SSR.$SINGLESTEP) ;
   5:  $SSR.$SINGLESTEP=0 ;
   6:  A[717]=AN ;
   7:  ! Open fixed electrode ;
   8:L P[1] max_Geschw. CNT0 ACC100    ;
   9:  i[819]=A[22902]    ;
  10:  $SSR.$SINGLESTEP=i[819] ;
/POS
P[1]{
   GP1:
	UF : F, UT : F,		KONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
/END
