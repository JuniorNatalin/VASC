/PROG  MAKRO211
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "MS1_START";
PROG_SIZE	= 1628;
CREATE		= DATE 10-08-25  TIME 12:00:00;
MODIFIED	= DATE 17-03-31  TIME 10:13:00;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 55;
MEMORY_SIZE	= 2040;
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
   1:  !MIG/MAG1  Start ;
   2:  !KS24 ;
   3:  !Version: 02 ;
   4:  !Stand: 002 ;
   5:  !letzte  Aenderung  15.03.2016 LZ ;
   6:  !F573  =  Sammelstoerung  MS1  an ;
   7:  !F595  =  Verzögerung Abfrage Hoc ;
   8:  DO[23]=(OFF) ;
   9:  DO[209]=(ON) ;
  10:  IF (!DI[15]),JMP LBL[1] ;
  11:  TIMER[12]=(R[101]) ;
  12:  WAIT ((TIMER[12]>=0))    ;
  13:  JMP LBL[2] ;
  14:  LBL[1] ;
  15:  F[590]=(OFF) ;
  16:  F[591]=(OFF) ;
  17:  F[594]=(ON) ;
  18:  F[596]=(OFF) ;
  19:  TIMER[10]=((-2)) ;
  20:  !MS1 Betriebsbereit und Energiesp ;
  21:  WAIT ((DI[1857] AND DI[1858] AND DI[1866] AND DI[1867] AND !DI[1876] AND (DI[1877] OR DO[11]) AND F[980]) OR (TIMER[10]>=0))    ;
  22:  F[573]=(TIMER[10]>=0) ;
  23:  WAIT (DI[1857] AND DI[1858] AND DI[1866] AND DI[1867] AND !DI[1876] AND (DI[1877] OR DO[11]) AND F[980])    ;
  24:  F[573]=(OFF) ;
  25:  TIMER[10]=((-2)) ;
  26:  !MS1 Medien und Brennerabschaltun ;
  27:  WAIT ((DI[1869] AND DI[1870] AND DI[1871] AND (DI[1872] OR F[599]) AND DI[1873] AND DI[1874]) OR (TIMER[10]>=0))    ;
  28:  F[573]=(TIMER[10]>=0) ;
  29:  WAIT (DI[1869] AND DI[1870] AND DI[1871] AND (DI[1872] OR F[599]) AND DI[1873] AND DI[1874] AND DI[23])    ;
  30:  F[573]=(OFF) ;
  31:  DO[23]=(ON) ;
  32:  !MS1 Lichtbogen EIN ;
  33:  F[571]=(!F[588] AND F[589]) ;
  34:  TIMER[10]=((-2)) ;
  35:  WAIT ((DI[1858] AND DI[1859] AND F[595]) OR F[588] OR !F[589] OR (TIMER[10]>=0))    ;
  36:  F[573]=((TIMER[10]>=0) AND DO[16]) ;
  37:  F[598]=((TIMER[10]>=0) AND DO[16]) ;
  38:  F[596]=(!F[598]) ;
  39:  F[571]=(F[595] AND !F[573]) ;
  40:  WAIT ((DI[1858] AND DI[1859] AND F[595]) OR F[588] OR !F[589] OR DI[27])    ;
  41:  LBL[3] ;
  42:  WAIT ((DI[1857] AND DI[1858]) OR F[588] OR !F[589])    ;
  43:  !MS1 Lichtbogen EIN ;
  44:  F[571]=(!F[588] AND F[589]) ;
  45:  TIMER[10]=((-1.5)) ;
  46:  !Warte bis MS1 Prozess gestartet ;
  47:  WAIT ((DI[1858] AND DI[1859] AND F[595]) OR F[588] OR !F[589] OR (TIMER[10]>=0))    ;
  48:  F[573]=((TIMER[10]>=0) AND DO[16]) ;
  49:  F[571]=(F[595] AND !F[573]) ;
  50:  WAIT ((DI[1858] AND DI[1859] AND F[595]) OR F[588] OR !F[589] OR DI[26] OR DI[27])    ;
  51:  !Sprung Wiederholung ;
  52:  IF (F[573] AND DI[26]),JMP LBL[3] ;
  53:  F[573]=(OFF) ;
  54:  LBL[2] ;
  55:  DO[23]=(ON) ;
/POS
/END
