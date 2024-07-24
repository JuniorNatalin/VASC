/PROG  MAKRO020
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "ROB_VERRIEGELUNG";
PROG_GRÖßE	= 1768;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-03-27  ZEIT 17:03:24;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 61;
SPEICHERGR.	= 2024;
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
   1:  !Roboter Verriegelungen ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  A[41:Blq>1130R01(1)]=(A[41:Blq>1130R01(1)] [+] A[81:Sol>1130R01(1)]) ;
   7:  A[42:Blq>1130R01(2)]=(A[42:Blq>1130R01(2)] [+] A[82:Sol>1130R01(2)]) ;
   8:  A[43:Bloqueo.3  Rob>Rob]=(A[43:Bloqueo.3  Rob>Rob] [+] A[83:Petic.Antic. 3 Rob>Rob]) ;
   9:  A[44:Bloqueo.4  Rob>Rob]=(A[44:Bloqueo.4  Rob>Rob] [+] A[84:Petic.Antic. 4 Rob>Rob]) ;
  10:  A[45:Bloqueo.5  Rob>Rob]=(A[45:Bloqueo.5  Rob>Rob] [+] A[85:Petic.Antic. 5 Rob>Rob]) ;
  11:  A[46:Bloqueo.6  Rob>Rob]=(A[46:Bloqueo.6  Rob>Rob] [+] A[86:Petic.Antic. 6 Rob>Rob]) ;
  12:  A[47:Bloqueo.7  Rob>Rob]=(A[47:Bloqueo.7  Rob>Rob] [+] A[87:Petic.Antic. 7 Rob>Rob]) ;
  13:  A[48:Bloqueo.8  Rob>Rob]=(A[48:Bloqueo.8  Rob>Rob] [+] A[88:Petic.Antic. 8 Rob>Rob]) ;
  14:  A[49:Bloqueo.9  Rob>Rob]=(A[49:Bloqueo.9  Rob>Rob] [+] A[89:Petic.Antic. 9 Rob>Rob]) ;
  15:  A[50:Bloqueo.10 Rob>Rob]=(A[50:Bloqueo.10 Rob>Rob] [+] A[90:Petic.Antic.10 Rob>Rob]) ;
  16:  A[51:Bloqueo.11 Rob>Rob]=(A[51:Bloqueo.11 Rob>Rob] [+] A[91:Petic.Antic.11 Rob>Rob]) ;
  17:  A[52:Bloqueo.12 Rob>Rob]=(A[52:Bloqueo.12 Rob>Rob] [+] A[92:Petic.Antic.12 Rob>Rob]) ;
  18:  A[53:Bloqueo.13 Rob>Rob]=(A[53:Bloqueo.13 Rob>Rob] [+] A[93:Petic.Antic.13 Rob>Rob]) ;
  19:  A[54:Bloqueo.14 Rob>Rob]=(A[54:Bloqueo.14 Rob>Rob] [+] A[94:Petic.Antic.14 Rob>Rob]) ;
  20:  A[55:Bloqueo.15 Rob>Rob]=(A[55:Bloqueo.15 Rob>Rob] [+] A[95:Petic.Antic.15 Rob>Rob]) ;
  21:  A[56:Bloqueo.16 Rob>Rob]=(A[56:Bloqueo.16 Rob>Rob] [+] A[96:Petic.Antic.16 Rob>Rob]) ;
  22:  WARTE ((E[81:Con>1130R01(1)] [+] !A[81:Sol>1130R01(1)]) [&] (E[82:Con>1130R01(2)] [+] !A[82:Sol>1130R01(2)]) [&] (E[83:Conf.Anticol.3 Rob>Rob] [+] !A[83:Petic.Antic. 3 Rob>Rob]) [&] (E[84:Conf.Anticol.4 Rob>Rob] [+] !
    :  A[84:Petic.Antic. 4 Rob>Rob]) [&] (E[85:Conf.Anticol.5 Rob>Rob] [+] !A[85:Petic.Antic. 5 Rob>Rob]))    ;
  23:  WARTE ((E[86:Conf.Anticol.6 Rob>Rob] [+] !A[86:Petic.Antic. 6 Rob>Rob]) [&] (E[87:Conf.Anticol.7 Rob>Rob] [+] !A[87:Petic.Antic. 7 Rob>Rob]) [&] (E[88:Conf.Anticol.8 Rob>Rob] [+] !A[88:Petic.Antic. 8 Rob>Rob]) [&] (
    :  E[89:Conf.Anticol.9 Rob>Rob] [+] !A[89:Petic.Antic. 9 Rob>Rob]) [&] (E[90:Conf.Antico.10 Rob>Rob] [+] !A[90:Petic.Antic.10 Rob>Rob]))    ;
  24:  WARTE ((E[91:Conf.Antico.11 Rob>Rob] [+] !A[91:Petic.Antic.11 Rob>Rob]) [&] (E[92:Conf.Antico.12 Rob>Rob] [+] !A[92:Petic.Antic.12 Rob>Rob]) [&] (E[93:Conf.Antico.13 Rob>Rob] [+] !A[93:Petic.Antic.13 Rob>Rob]) [&] (
    :  E[94:Conf.Antico.14 Rob>Rob] [+] !A[94:Petic.Antic.14 Rob>Rob]) [&] (E[95:Conf.Antico.15 Rob>Rob] [+] !A[95:Petic.Antic.15 Rob>Rob]))    ;
  25:  WARTE (E[96:Conf.Antico.16 Rob>Rob] [+] !A[96:Petic.Antic.16 Rob>Rob])    ;
  26:  WARTE ((E[41:Lib>1130R01(1)] [+] !A[81:Sol>1130R01(1)]) [&] (E[42:Lib>1130R01(2)] [+] !A[82:Sol>1130R01(2)]) [&] (E[43:Anticol.3  Rob<Rob] [+] !A[83:Petic.Antic. 3 Rob>Rob]) [&] (E[44:Anticol.4  Rob<Rob] [+] !
    :  A[84:Petic.Antic. 4 Rob>Rob]) [&] (E[45:Anticol.5  Rob<Rob] [+] !A[85:Petic.Antic. 5 Rob>Rob]))    ;
  27:  WARTE ((E[46:Anticol.6  Rob<Rob] [+] !A[86:Petic.Antic. 6 Rob>Rob]) [&] (E[47:Anticol.7  Rob<Rob] [+] !A[87:Petic.Antic. 7 Rob>Rob]) [&] (E[48:Anticol.8  Rob<Rob] [+] !A[88:Petic.Antic. 8 Rob>Rob]) [&] (E[49:Anticol.9  Rob<Rob] [+] !
    :  A[89:Petic.Antic. 9 Rob>Rob]) [&] (E[50:Anticol.10 Rob<Rob] [+] !A[90:Petic.Antic.10 Rob>Rob]))    ;
  28:  WARTE ((E[51:Anticol.11 Rob<Rob] [+] !A[91:Petic.Antic.11 Rob>Rob]) [&] (E[52:Anticol.12 Rob<Rob] [+] !A[92:Petic.Antic.12 Rob>Rob]) [&] (E[53:Anticol.13 Rob<Rob] [+] !A[93:Petic.Antic.13 Rob>Rob]) [&] (E[54:Anticol.14 Rob<Rob] [+] !
    :  A[94:Petic.Antic.14 Rob>Rob]) [&] (E[55:Anticol.15 Rob<Rob] [+] !A[95:Petic.Antic.15 Rob>Rob]))    ;
  29:  WARTE (E[56:Anticol.16 Rob<Rob] [+] !A[96:Petic.Antic.16 Rob>Rob])    ;
  30:  A[41:Blq>1130R01(1)]=(A[41:Blq>1130R01(1)] [&] !A[81:Sol>1130R01(1)]) ;
  31:  A[42:Blq>1130R01(2)]=(A[42:Blq>1130R01(2)] [&] !A[82:Sol>1130R01(2)]) ;
  32:  A[43:Bloqueo.3  Rob>Rob]=(A[43:Bloqueo.3  Rob>Rob] [&] !A[83:Petic.Antic. 3 Rob>Rob]) ;
  33:  A[44:Bloqueo.4  Rob>Rob]=(A[44:Bloqueo.4  Rob>Rob] [&] !A[84:Petic.Antic. 4 Rob>Rob]) ;
  34:  A[45:Bloqueo.5  Rob>Rob]=(A[45:Bloqueo.5  Rob>Rob] [&] !A[85:Petic.Antic. 5 Rob>Rob]) ;
  35:  A[46:Bloqueo.6  Rob>Rob]=(A[46:Bloqueo.6  Rob>Rob] [&] !A[86:Petic.Antic. 6 Rob>Rob]) ;
  36:  A[47:Bloqueo.7  Rob>Rob]=(A[47:Bloqueo.7  Rob>Rob] [&] !A[87:Petic.Antic. 7 Rob>Rob]) ;
  37:  A[48:Bloqueo.8  Rob>Rob]=(A[48:Bloqueo.8  Rob>Rob] [&] !A[88:Petic.Antic. 8 Rob>Rob]) ;
  38:  A[49:Bloqueo.9  Rob>Rob]=(A[49:Bloqueo.9  Rob>Rob] [&] !A[89:Petic.Antic. 9 Rob>Rob]) ;
  39:  A[50:Bloqueo.10 Rob>Rob]=(A[50:Bloqueo.10 Rob>Rob] [&] !A[90:Petic.Antic.10 Rob>Rob]) ;
  40:  A[51:Bloqueo.11 Rob>Rob]=(A[51:Bloqueo.11 Rob>Rob] [&] !A[91:Petic.Antic.11 Rob>Rob]) ;
  41:  A[52:Bloqueo.12 Rob>Rob]=(A[52:Bloqueo.12 Rob>Rob] [&] !A[92:Petic.Antic.12 Rob>Rob]) ;
  42:  A[53:Bloqueo.13 Rob>Rob]=(A[53:Bloqueo.13 Rob>Rob] [&] !A[93:Petic.Antic.13 Rob>Rob]) ;
  43:  A[54:Bloqueo.14 Rob>Rob]=(A[54:Bloqueo.14 Rob>Rob] [&] !A[94:Petic.Antic.14 Rob>Rob]) ;
  44:  A[55:Bloqueo.15 Rob>Rob]=(A[55:Bloqueo.15 Rob>Rob] [&] !A[95:Petic.Antic.15 Rob>Rob]) ;
  45:  A[56:Bloqueo.16 Rob>Rob]=(A[56:Bloqueo.16 Rob>Rob] [&] !A[96:Petic.Antic.16 Rob>Rob]) ;
  46:  A[81:Sol>1130R01(1)]=(AUS) ;
  47:  A[82:Sol>1130R01(2)]=(AUS) ;
  48:  A[83:Petic.Antic. 3 Rob>Rob]=(AUS) ;
  49:  A[84:Petic.Antic. 4 Rob>Rob]=(AUS) ;
  50:  A[85:Petic.Antic. 5 Rob>Rob]=(AUS) ;
  51:  A[86:Petic.Antic. 6 Rob>Rob]=(AUS) ;
  52:  A[87:Petic.Antic. 7 Rob>Rob]=(AUS) ;
  53:  A[88:Petic.Antic. 8 Rob>Rob]=(AUS) ;
  54:  A[89:Petic.Antic. 9 Rob>Rob]=(AUS) ;
  55:  A[90:Petic.Antic.10 Rob>Rob]=(AUS) ;
  56:  A[91:Petic.Antic.11 Rob>Rob]=(AUS) ;
  57:  A[92:Petic.Antic.12 Rob>Rob]=(AUS) ;
  58:  A[93:Petic.Antic.13 Rob>Rob]=(AUS) ;
  59:  A[94:Petic.Antic.14 Rob>Rob]=(AUS) ;
  60:  A[95:Petic.Antic.15 Rob>Rob]=(AUS) ;
  61:  A[96:Petic.Antic.16 Rob>Rob]=(AUS) ;
/POS
/END
