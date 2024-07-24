/PROG  MOTN025
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "EQ EZSP2 TIN AUF";
PROG_GRÖßE	= 687;
ERSTELL		= TAG 10-07-09  ZEIT 16:38:32;
GEÄNDERT	= TAG 16-05-25  ZEIT 22:57:52;
DATEI_NAME	= EQPRGAPC;
VERSION		= 0;
ZEILEN		= 7;
SPEICHERGR.	= 1063;
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
   1:  !EQ EZSP2 TIN AUF ;
   2:  !letzte  Aenderung  13.07.2011 ;
   3:  $SSR.$SINGLESTEP=0 ;
   4:  ! Open movable electrode first ;
   5:L P[1] 200mm/sek CNT0 ACC100    ;
   6:  i[819]=A[22902]    ;
   7:  $SSR.$SINGLESTEP=i[819] ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, -1',
	X =     0.000  mm,	Y =     0.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
