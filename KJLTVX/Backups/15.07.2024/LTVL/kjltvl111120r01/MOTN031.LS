/PROG  MOTN031
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "EQ EZSP3 ZU";
PROG_GRÖßE	= 779;
ERSTELL		= TAG 10-07-09  ZEIT 16:38:02;
GEÄNDERT	= TAG 16-05-25  ZEIT 22:57:52;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 15;
SPEICHERGR.	= 1263;
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
   2:  !letzte  Aenderung  16.08.2011 ;
   3:  IRQ BEDINGUNG E[1038:SZ3 Fuerza alcanzada]=AN [+] A[22855]=AN    ;
   4:  i[820]=($MCR.$GENOVERRIDE) ;
   5:  OVERRIDE=100% ;
   6:  $SSR.$SINGLESTEP=0 ;
   7:  !EQ Start ;
   8:  AUFRUF EQSTART    ;
   9:  A[1038:SZ3 Cerrar Pinza]=AN ;
  10:L P[1] 10mm/sek CNT0 ACC250 Interrupt,LABEL[1]    ;
  11:  LABEL[1] ;
  12:  OVERRIDE=i[820] ;
  13:  i[819]=A[22902]    ;
  14:  $SSR.$SINGLESTEP=i[819] ;
  15:  A[22855]=AUS ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
