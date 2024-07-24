/PROG  MAKRO980
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "ParChange:EZX/G";
PROG_GRÖßE	= 1910;
ERSTELL		= TAG 06-04-04  ZEIT 19:25:18;
GEÄNDERT	= TAG 09-04-28  ZEIT 08:43:16;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 50;
SPEICHERGR.	= 2534;
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
   1:  !Initialisieren von allen EZ  -- ;
   2:  !letzte Aenderung 23.03.2009  -- ;
   3:  WENN ((gA[10800]>4) [+] (gA[10800]<1)),SPRUNG LABEL[999] ;
   4:  !Parameter EZ4  -- ;
   5:  !MAKRO941 fuer EZ4 Zange 1  -- ;
   6:  !MAKRO942 fuer EZ4 Zange 2  -- ;
   7:  WENN (gA[10800]<4),SPRUNG LABEL[4] ;
   8:  WENN ((gA[10804]>=1) [&] (gA[10503]=1)),AUFRUF MAKRO941 ;
   9:  WENN ((gA[10804]>=2) [&] (gA[10503]=2)),AUFRUF MAKRO942 ;
  10:  WENN ((gA[10804]>=3) [&] (gA[10503]=3)),AUFRUF MAKRO943 ;
  11:  WENN ((gA[10804]>=4) [&] (gA[10503]=4)),AUFRUF MAKRO944 ;
  12:  WENN ((gA[10804]>=5) [&] (gA[10503]=5)),AUFRUF MAKRO945 ;
  13:  WENN ((gA[10804]=6) [&] (gA[10503]=6)),AUFRUF MAKRO946 ;
  14:  LABEL[4] ;
  15:  !Parameter EZ3  -- ;
  16:  !MAKRO931 fuer EZ3 Zange 1  -- ;
  17:  !MAKRO932 fuer EZ3 Zange 2  -- ;
  18:  WENN (gA[10800]<3),SPRUNG LABEL[3] ;
  19:  WENN ((gA[10803]>=1) [&] (gA[10553]=1)),AUFRUF MAKRO931 ;
  20:  WENN ((gA[10803]>=2) [&] (gA[10553]=2)),AUFRUF MAKRO932 ;
  21:  WENN ((gA[10803]>=3) [&] (gA[10553]=3)),AUFRUF MAKRO933 ;
  22:  WENN ((gA[10803]>=4) [&] (gA[10553]=4)),AUFRUF MAKRO934 ;
  23:  WENN ((gA[10803]>=5) [&] (gA[10553]=5)),AUFRUF MAKRO935 ;
  24:  WENN ((gA[10803]=6) [&] (gA[10553]=6)),AUFRUF MAKRO936 ;
  25:  LABEL[3] ;
  26:  !Parameter EZ2  -- ;
  27:  !MAKRO921 fuer EZ2 Zange 1  -- ;
  28:  !MAKRO922 fuer EZ2 Zange 2  -- ;
  29:  WENN (gA[10800]<2),SPRUNG LABEL[2] ;
  30:  WENN ((gA[10802]>=1) [&] (gA[10603]=1)),AUFRUF MAKRO921 ;
  31:  WENN ((gA[10802]>=2) [&] (gA[10603]=2)),AUFRUF MAKRO922 ;
  32:  WENN ((gA[10802]>=3) [&] (gA[10603]=3)),AUFRUF MAKRO923 ;
  33:  WENN ((gA[10802]>=4) [&] (gA[10603]=4)),AUFRUF MAKRO924 ;
  34:  WENN ((gA[10802]>=5) [&] (gA[10603]=5)),AUFRUF MAKRO925 ;
  35:  WENN ((gA[10802]=6) [&] (gA[10603]=6)),AUFRUF MAKRO926 ;
  36:  LABEL[2] ;
  37:  !Parameter EZ1  -- ;
  38:  !MAKRO931 fuer EZ1 Zange 1  -- ;
  39:  !MAKRO932 fuer EZ1 Zange 2  -- ;
  40:  WENN (gA[10800]<1),SPRUNG LABEL[1] ;
  41:  WENN ((gA[10801]>=1) [&] (gA[10653]=1)),AUFRUF MAKRO911 ;
  42:  WENN ((gA[10801]>=2) [&] (gA[10653]=2)),AUFRUF MAKRO912 ;
  43:  WENN ((gA[10801]>=3) [&] (gA[10653]=3)),AUFRUF MAKRO913 ;
  44:  WENN ((gA[10801]>=4) [&] (gA[10653]=4)),AUFRUF MAKRO914 ;
  45:  WENN ((gA[10801]>=5) [&] (gA[10653]=5)),AUFRUF MAKRO915 ;
  46:  WENN ((gA[10801]=6) [&] (gA[10653]=6)),AUFRUF MAKRO916 ;
  47:  LABEL[1] ;
  48:  F[1022:Comunicación EZSP]=(AUS) ;
  49:  F[1024:Conf.EZ/SP Válida]=(AUS) ;
  50:  LABEL[999] ;
/POS
/END
