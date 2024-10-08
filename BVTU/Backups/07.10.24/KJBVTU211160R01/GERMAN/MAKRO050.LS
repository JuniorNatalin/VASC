/PROG  MAKRO050
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "Merkerbildung";
PROG_GRÖßE	= 1062;
ERSTELL		= TAG 00-03-13  ZEIT 16:56:34;
GEÄNDERT	= TAG 19-11-07  ZEIT 05:43:32;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 34;
SPEICHERGR.	= 1450;
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
   1:  !Merker-Init ;
   2:  !Roboter mit EZ ohne KW. ;
   3:  ! ;
   4:  !Maschinelle Sicherheiten ;
   5:  !mit Niederdruck ueberwachung ;
   6:  M[30]=(E[14] [&] E[24] [&] E[516]) ;
   7:  ! ;
   8:  !Widerstandspunktschweissen ;
   9:  !Sicherheiten EZ1/SP1 ;
  10:  M[95]=(E[705] [&] !E[706] [&] E[713] [&] E[714] [&] ((!E[715] [&] E[719]) [+] A[715]) [&] !E[773] [&] !E[779] [&] A[716]) ;
  11:  !Flankenausw.der Fraeserumd.KF1 ;
  12:  M[97]=((E[718] [&] A[718] [+] F[312]) [&] E[834] [&] A[834] [&] !F[72] [&] !F[73] [&] (F[90] [+] F[92])) ;
  13:  ! ;
  14:  !EZ1/SP1/SZ1 Umdrehungen Startfr ;
  15:  i[2]=4    ;
  16:  !Umdrehungen Startfraesen Teil 2 ;
  17:  i[3]=4    ;
  18:  !Umdrehungen Nomalfraesen ;
  19:  i[4]=3    ;
  20:  ! ;
  21:  !;Ausgleichswert EZ1/SP1 ;
  22:  i[197]=115    ;
  23:  !Kappenverschl. Verhaeltnis ;
  24:  !feste EK in % (Rob-EZ) ;
  25:  i[407]=65    ;
  26:   ;
  27:  !Kappenkompenstion bei ;
  28:  !Robotergefuehrter EZ1/SP1 ;
  29:  AUFRUF MOTN003    ;
  30:  ! ;
  31:  !Aufruf Makro57 ;
  32:  AUFRUF MAKRO057    ;
  33:  !Llamar Inicializar Docking ;
  34:  AUFRUF MAKRO058    ;
/POS
/END
