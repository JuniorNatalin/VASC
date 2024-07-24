/PROG  MOTN022
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "EQ EZSP2 AUF";
PROG_GRÖßE	= 743;
ERSTELL		= TAG 10-07-09  ZEIT 16:38:32;
GEÄNDERT	= TAG 16-05-25  ZEIT 22:57:48;
DATEI_NAME	= EQPRGAPC;
VERSION		= 0;
ZEILEN		= 10;
SPEICHERGR.	= 1107;
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
   1:  !EQ EZSP2 AUF ;
   2:  !letzte  Aenderung  16.08.2011 ;
   3:  i[400]=i[400]+1    ;
   4:  i[819]=($SSR.$SINGLESTEP) ;
   5:  $SSR.$SINGLESTEP=0 ;
   6:  A[877:SZ2 Abrir Pinza]=AN ;
   7:  !EZ2/SP2 oeffnen ;
   8:L P[1] max_Geschw. CNT0 ACC200    ;
   9:  i[819]=A[22902]    ;
  10:  $SSR.$SINGLESTEP=i[819] ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, -1',
	X =     0.000  mm,	Y =     0.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
