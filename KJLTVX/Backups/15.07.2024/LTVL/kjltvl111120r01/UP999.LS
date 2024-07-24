/PROG  UP999
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "PURGA DE GRASA";
PROG_GRÖßE	= 935;
ERSTELL		= TAG 21-04-01  ZEIT 19:29:06;
GEÄNDERT	= TAG 21-04-01  ZEIT 19:33:36;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 8;
SPEICHERGR.	= 1407;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 0,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= 1,1,1,1,*;
KONTROLLCODE	= 00000000 00000000;
/APPL

CORNER_SPEED_HEADER;
  ENABLE_CORNER_SPEED   : FALSE;
/MN
   1:  LABEL[1] ;
   2:J P[1] 100% CNT100    ;
   3:J P[2] 100% CNT100    ;
   4:J P[3] 100% CNT100    ;
   5:J P[4] 100% CNT100    ;
   6:J P[5] 100% CNT100    ;
   7:J P[6] 100% CNT100    ;
   8:  SPRUNG LABEL[1] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -249.031  mm,	Y =  1963.997  mm,	Z =  1583.768  mm,
	W =   -90.001 deg,	P =    45.003 deg,	R =    60.002 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 0, 0',
	X =   -67.789  mm,	Y =   113.697  mm,	Z =  2635.440  mm,
	W =    -1.373 deg,	P =   -79.949 deg,	R =   109.443 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.200  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   101.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 0, 0',
	X =    44.101  mm,	Y =   124.838  mm,	Z =  2635.401  mm,
	W =    -1.374 deg,	P =   -79.947 deg,	R =    59.183 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.200  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   101.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 0, 0',
	X =   509.415  mm,	Y =   904.840  mm,	Z =  2703.698  mm,
	W =    -1.374 deg,	P =   -79.947 deg,	R =    59.183 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.200  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   102.600  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 0, 0',
	X =  1376.485  mm,	Y =  2358.303  mm,	Z =  1504.647  mm,
	W =    -1.372 deg,	P =   -31.313 deg,	R =    59.182 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.200  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   102.600  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 0, 0',
	X =   318.920  mm,	Y =   585.520  mm,	Z =  2763.688  mm,
	W =    -1.374 deg,	P =   -77.907 deg,	R =    59.183 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.200  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   102.600  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
