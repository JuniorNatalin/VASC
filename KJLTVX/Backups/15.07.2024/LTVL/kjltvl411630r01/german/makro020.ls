/PROG  MAKRO020
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "ROB_VERRIEGELUNG";
PROG_GR��E	= 1768;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GE�NDERT	= TAG 17-03-27  ZEIT 18:30:02;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 61;
SPEICHERGR.	= 2024;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GR��E	= 0,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= *,*,*,*,*;
KONTROLLCODE	= 00000000 00000000;
/MN
   1:  !Roboter Verriegelungen ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  A[41]=(A[41] [+] A[81]) ;
   7:  A[42]=(A[42] [+] A[82]) ;
   8:  A[43]=(A[43] [+] A[83]) ;
   9:  A[44]=(A[44] [+] A[84]) ;
  10:  A[45]=(A[45] [+] A[85]) ;
  11:  A[46]=(A[46] [+] A[86]) ;
  12:  A[47]=(A[47] [+] A[87]) ;
  13:  A[48]=(A[48] [+] A[88]) ;
  14:  A[49]=(A[49] [+] A[89]) ;
  15:  A[50]=(A[50] [+] A[90]) ;
  16:  A[51]=(A[51] [+] A[91]) ;
  17:  A[52]=(A[52] [+] A[92]) ;
  18:  A[53]=(A[53] [+] A[93]) ;
  19:  A[54]=(A[54] [+] A[94]) ;
  20:  A[55]=(A[55] [+] A[95]) ;
  21:  A[56]=(A[56] [+] A[96]) ;
  22:  WARTE ((E[81] [+] !A[81]) [&] (E[82] [+] !A[82]) [&] (E[83] [+] !A[83]) [&] (E[84] [+] !A[84]) [&] (E[85] [+] !A[85]))    ;
  23:  WARTE ((E[86] [+] !A[86]) [&] (E[87] [+] !A[87]) [&] (E[88] [+] !A[88]) [&] (E[89] [+] !A[89]) [&] (E[90] [+] !A[90]))    ;
  24:  WARTE ((E[91] [+] !A[91]) [&] (E[92] [+] !A[92]) [&] (E[93] [+] !A[93]) [&] (E[94] [+] !A[94]) [&] (E[95] [+] !A[95]))    ;
  25:  WARTE (E[96] [+] !A[96])    ;
  26:  WARTE ((E[41] [+] !A[81]) [&] (E[42] [+] !A[82]) [&] (E[43] [+] !A[83]) [&] (E[44] [+] !A[84]) [&] (E[45] [+] !A[85]))    ;
  27:  WARTE ((E[46] [+] !A[86]) [&] (E[47] [+] !A[87]) [&] (E[48] [+] !A[88]) [&] (E[49] [+] !A[89]) [&] (E[50] [+] !A[90]))    ;
  28:  WARTE ((E[51] [+] !A[91]) [&] (E[52] [+] !A[92]) [&] (E[53] [+] !A[93]) [&] (E[54] [+] !A[94]) [&] (E[55] [+] !A[95]))    ;
  29:  WARTE (E[56] [+] !A[96])    ;
  30:  A[41]=(A[41] [&] !A[81]) ;
  31:  A[42]=(A[42] [&] !A[82]) ;
  32:  A[43]=(A[43] [&] !A[83]) ;
  33:  A[44]=(A[44] [&] !A[84]) ;
  34:  A[45]=(A[45] [&] !A[85]) ;
  35:  A[46]=(A[46] [&] !A[86]) ;
  36:  A[47]=(A[47] [&] !A[87]) ;
  37:  A[48]=(A[48] [&] !A[88]) ;
  38:  A[49]=(A[49] [&] !A[89]) ;
  39:  A[50]=(A[50] [&] !A[90]) ;
  40:  A[51]=(A[51] [&] !A[91]) ;
  41:  A[52]=(A[52] [&] !A[92]) ;
  42:  A[53]=(A[53] [&] !A[93]) ;
  43:  A[54]=(A[54] [&] !A[94]) ;
  44:  A[55]=(A[55] [&] !A[95]) ;
  45:  A[56]=(A[56] [&] !A[96]) ;
  46:  A[81]=(AUS) ;
  47:  A[82]=(AUS) ;
  48:  A[83]=(AUS) ;
  49:  A[84]=(AUS) ;
  50:  A[85]=(AUS) ;
  51:  A[86]=(AUS) ;
  52:  A[87]=(AUS) ;
  53:  A[88]=(AUS) ;
  54:  A[89]=(AUS) ;
  55:  A[90]=(AUS) ;
  56:  A[91]=(AUS) ;
  57:  A[92]=(AUS) ;
  58:  A[93]=(AUS) ;
  59:  A[94]=(AUS) ;
  60:  A[95]=(AUS) ;
  61:  A[96]=(AUS) ;
/POS
/END
