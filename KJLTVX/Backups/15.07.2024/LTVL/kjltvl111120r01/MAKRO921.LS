/PROG  MAKRO921
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "Para.EZ2 Zange 1";
PROG_GRÖßE	= 1652;
ERSTELL		= TAG 00-11-17  ZEIT 13:37:32;
GEÄNDERT	= TAG 19-07-24  ZEIT 09:13:40;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 52;
SPEICHERGR.	= 1952;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 0,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= *,*,*,*,*;
KONTROLLCODE	= 00000000 00000000;
/MN
   1:  !Parameter EZ2 Zange 1  -- ;
   2:  !letzte Aenderung 14.04.2009  -- ;
   3:  !-------------------------------- ;
   4:  !Für Parameterübernahme  -- ;
   5:  !MAKRO980 starten  -- ;
   6:  !-------------------------------- ;
   7:  !Wenn Zange gedockt  -- ;
   8:  !erst abmelden  -- ;
   9:  !-------------------------------- ;
  10:  AUFRUF MAKRO920    ;
  11:  !-------------------------------- ;
  12:  !EZ Anwahl  -- ;
  13:  !-------------------------------- ;
  14:  !Zangencode an EZ2  -- ;
  15:  !-------------------------------- ;
  16:  !PMC Parameter  -- ;
  17:  !-------------------------------- ;
  18:  !ITP Takte Sollwertvergleich  -- ;
  19:  gA[10601]=11 ;
  20:  !Schleppfehler Tol.mm x 1/10  -- ;
  21:  gA[10602]=150 ;
  22:  !Filter as Timer  -- ;
  23:  !for follow Error  -- ;
  24:  gA[10605]=2 ;
  25:  !Programm-Nr Handfunktion  -- ;
  26:  gA[10606]=98 ;
  27:  !Aktive Zange an PMC  -- ;
  28:  gA[10603]=1 ;
  29:  !Messen Schleppfehler ein  -- ;
  30:  A[21401]=AN ;
  31:  !Schleppfehleralarm Deaktiv  -- ;
  32:  A[21405]=AUS ;
  33:  !-------------------------------- ;
  34:  !KAREL Parameter  -- ;
  35:  !-------------------------------- ;
  36:  !Lower Limit mm x 1/10  -- ;
  37:  gA[10607]=(-200) ;
  38:  !Upper Limit mm x 1/10 ;
  39:  gA[10608]=2499 ;
  40:  !Speed Limit mm/sec x 1/10  -- ;
  41:  gA[10609]=3500 ;
  42:  !Accel Time 1 msec  -- ;
  43:  gA[10610]=150 ;
  44:  !Accel Time 2 msec  -- ;
  45:  gA[10611]=150 ;
  46:  !Min Accel Time msec  -- ;
  47:  gA[10612]=300 ;
  48:  !Parameter setzen  -- ;
  49:  !Zangenkonfig. gueltig  -- ;
  50:  i[309]=0    ;
  51:  F[1024:Conf.EZ/SP Válida]=(AUS) ;
  52:  MELDUNG[Parameter E2 Z1] ;
/POS
/END
