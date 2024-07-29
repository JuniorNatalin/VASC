/PROG  MAKRO210
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "MS1_ENDE";
PROG_SIZE	= 704;
CREATE		= DATE 10-08-25  TIME 12:00:00;
MODIFIED	= DATE 17-03-31  TIME 10:13:00;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 984;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  !MIG/MAG1  ENDE ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  !F573  =  Sammelstoerung  MS1  an ;
   7:  !MS1 Lichtbogen AUS ;
   8:  F[571]=(OFF) ;
   9:  F[588]=(OFF) ;
  10:  F[590]=(OFF) ;
  11:  F[591]=(OFF) ;
  12:  F[596]=(OFF) ;
  13:  TIMER[10]=((-5)) ;
  14:  !MS1 Betriebsbereit und Energiesp ;
  15:  WAIT ((DI[1857] AND DI[1858] AND !DI[1859] AND !DI[1860] AND !DI[1876] AND DI[1877]) OR (TIMER[10]>=0))    ;
  16:  F[573]=(TIMER[10]>=0) ;
  17:  F[790]=(TIMER[10]>=0) ;
  18:  DO[23]=(TIMER[10]<=0) ;
  19:  WAIT ((DI[1857] AND DI[1858] AND !DI[1859] AND !DI[1860] AND !DI[1876] AND DI[1877] AND !F[790]) OR DI[27])    ;
  20:  F[573]=(OFF) ;
  21:  F[790]=(OFF) ;
  22:  DO[23]=(ON) ;
  23:  DO[209]=(OFF) ;
/POS
/END
