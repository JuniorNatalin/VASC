/PROG  MAKRO000
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "A/F_RUECKSETZEN";
PROG_SIZE	= 1968;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-27  TIME 18:20:28;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 102;
MEMORY_SIZE	= 2316;
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
   1:  !Ausgaenge/Flags Ruecksetzen ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  !Warte  bis  PF0 ;
   7:  WAIT (DO[15])    ;
   8:  !Arbeitsfertigm.  Ruecksetzen ;
   9:  DO[33]=(OFF) ;
  10:  DO[34]=(OFF) ;
  11:  DO[35]=(OFF) ;
  12:  DO[36]=(OFF) ;
  13:  !Typinfo  Ruecksetzen ;
  14:  DO[37]=(OFF) ;
  15:  DO[38]=(OFF) ;
  16:  DO[39]=(OFF) ;
  17:  DO[40]=(OFF) ;
  18:  !Roboterverr. Ruecksetzen ;
  19:  DO[41]=(OFF) ;
  20:  DO[42]=(OFF) ;
  21:  DO[43]=(OFF) ;
  22:  DO[44]=(OFF) ;
  23:  DO[45]=(OFF) ;
  24:  DO[46]=(OFF) ;
  25:  DO[47]=(OFF) ;
  26:  DO[48]=(OFF) ;
  27:  DO[49]=(OFF) ;
  28:  DO[50]=(OFF) ;
  29:  DO[51]=(OFF) ;
  30:  DO[52]=(OFF) ;
  31:  DO[53]=(OFF) ;
  32:  DO[54]=(OFF) ;
  33:  DO[55]=(OFF) ;
  34:  DO[56]=(OFF) ;
  35:  !Werkzeugfreigaben  Ruecksetzen ;
  36:  DO[57]=(OFF) ;
  37:  DO[58]=(OFF) ;
  38:  DO[59]=(OFF) ;
  39:  DO[60]=(OFF) ;
  40:  DO[61]=(OFF) ;
  41:  DO[62]=(OFF) ;
  42:  DO[63]=(OFF) ;
  43:  DO[64]=(OFF) ;
  44:  DO[65]=(OFF) ;
  45:  DO[66]=(OFF) ;
  46:  DO[67]=(OFF) ;
  47:  DO[68]=(OFF) ;
  48:  DO[69]=(OFF) ;
  49:  DO[70]=(OFF) ;
  50:  DO[71]=(OFF) ;
  51:  DO[72]=(OFF) ;
  52:  DO[73]=(OFF) ;
  53:  DO[74]=(OFF) ;
  54:  DO[75]=(OFF) ;
  55:  DO[76]=(OFF) ;
  56:  DO[77]=(OFF) ;
  57:  DO[78]=(OFF) ;
  58:  DO[79]=(OFF) ;
  59:  DO[80]=(OFF) ;
  60:  !Anford. Roboterverr. Ruecksetzen ;
  61:  DO[81]=(OFF) ;
  62:  DO[82]=(OFF) ;
  63:  DO[83]=(OFF) ;
  64:  DO[84]=(OFF) ;
  65:  DO[85]=(OFF) ;
  66:  DO[86]=(OFF) ;
  67:  DO[87]=(OFF) ;
  68:  DO[88]=(OFF) ;
  69:  DO[89]=(OFF) ;
  70:  DO[90]=(OFF) ;
  71:  DO[91]=(OFF) ;
  72:  DO[92]=(OFF) ;
  73:  DO[93]=(OFF) ;
  74:  DO[94]=(OFF) ;
  75:  DO[95]=(OFF) ;
  76:  DO[96]=(OFF) ;
  77:  !erw. Typinfo  Ruecksetzen ;
  78:  DO[233]=(OFF) ;
  79:  DO[234]=(OFF) ;
  80:  DO[235]=(OFF) ;
  81:  DO[236]=(OFF) ;
  82:  DO[237]=(OFF) ;
  83:  DO[238]=(OFF) ;
  84:  DO[239]=(OFF) ;
  85:  DO[240]=(OFF) ;
  86:  !FRG Ventilsteuerung Ruecksetzen ;
  87:  DO[577]=(OFF) ;
  88:  DO[701]=(OFF) ;
  89:  DO[703]=(OFF) ;
  90:  DO[857]=(OFF) ;
  91:  DO[2113]=(OFF) ;
  92:  DO[2121]=(OFF) ;
  93:  DO[2129]=(OFF) ;
  94:  DO[2137]=(OFF) ;
  95:  DO[2145]=(OFF) ;
  96:  DO[2153]=(OFF) ;
  97:  DO[2161]=(OFF) ;
  98:  DO[2169]=(OFF) ;
  99:  DO[2177]=(OFF) ;
 100:  DO[2185]=(OFF) ;
 101:  DO[2193]=(OFF) ;
 102:  DO[2201]=(OFF) ;
/POS
/END
