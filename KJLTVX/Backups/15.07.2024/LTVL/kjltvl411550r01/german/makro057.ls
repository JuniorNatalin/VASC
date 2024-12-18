/PROG  MAKRO057
/ATTR
EIGN.		= GME;
KOMMENTAR	= "FLAG-Init";
PROG_GR��E	= 2748;
ERSTELL		= TAG 00-03-13  ZEIT 16:56:34;
GE�NDERT	= TAG 23-02-12  ZEIT 11:31:40;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 116;
SPEICHERGR.	= 3040;
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
   1:  !FLAG-Init ;
   2:  !letzte  Aenderung  29.01.2015 ;
   3:  !Diverse Anwahlen ;
   4:  !Energiesparmodus aktivieren ;
   5:  F[522]=(AN) ;
   6:   ;
   7:  !VWRIP mit Kuehlwasserfunktion ;
   8:  F[819]=(AN) ;
   9:   ;
  10:  !Mit Profinet ;
  11:  F[556]=(AN) ;
  12:   ;
  13:  !mit R�ckm. Steuerluft vorh. (Sch ;
  14:  F[523]=(AN) ;
  15:   ;
  16:  !mit R�ckm. Steuerluft nicht vorh ;
  17:  F[524]=(AUS) ;
  18:   ;
  19:  !Widerstandspunktschweissen ;
  20:  !Mit EZ/SP-Ausgleich ;
  21:  F[710]=(AN) ;
  22:  !SK1 ;
  23:  !SK1 im Technologiepaket aktiv. ;
  24:  F[560]=(AN) ;
  25:   ;
  26:  !SK2/SK1 ;
  27:  !SK2 im Technologiepaket aktiv. ;
  28:  F[561]=(AUS) ;
  29:  F[563]=(AUS) ;
  30:   ;
  31:  !SK3 ;
  32:  F[562]=(AUS) ;
  33:   ;
  34:  !EZ/SP ;
  35:  !Anwahl mit 2. Kappensetzen nach ;
  36:  !Startfraesen ;
  37:  F[292]=(AN) ;
  38:   ;
  39:  !EZ1/SP1 Anwahl ohne Startfr�sen ;
  40:  F[129]=(AUS) ;
  41:   ;
  42:  !EZ1/SP1 Anwahl 2 H�be bei ;
  43:  !Normalfraesen ;
  44:  !(nur wenn ein zus�tzliches Aus ;
  45:  !blasen erforderlich ist ;
  46:  F[130]=(AUS) ;
  47:   ;
  48:  !EZ2/SP2 Anwahl ohne Startfr�sen ;
  49:  F[163]=(AUS) ;
  50:   ;
  51:  !EZ2/SP2 Anwahl 2 H�be bei ;
  52:  !Normalfraesen ;
  53:  !(nur wenn ein zus�tzliches Aus ;
  54:  !blasen erforderlich ist ;
  55:  F[164]=(AUS) ;
  56:   ;
  57:  !EZ3/SP3 Anwahl ohne Startfr�sen ;
  58:  F[199]=(AUS) ;
  59:   ;
  60:  !EZ3/SP3 Anwahl 2 H�be bei ;
  61:  !Normalfraesen ;
  62:  !(nur wenn ein zus�tzliches Aus ;
  63:  !blasen erforderlich ist ;
  64:  F[200]=(AUS) ;
  65:   ;
  66:  !EZ1/SP1 robotergef�hrte Zange ;
  67:  F[530]=(AUS) ;
  68:   ;
  69:  !EZ/SP Zangenausgleich durch Rob. ;
  70:  !KF mit Versetzeinheit ;
  71:  F[564]=(AUS) ;
  72:   ;
  73:  !EZ1/SP1 Vorw. Dock. mit 1 Zange ;
  74:  F[314]=(AUS) ;
  75:   ;
  76:  !EZ1/SP1 Vorw. Dock. mit 2 Zange ;
  77:  F[315]=(AUS) ;
  78:   ;
  79:  !EZ1/SP1 Vorw. Dock. mit 3 Zange ;
  80:  F[316]=(AUS) ;
  81:   ;
  82:  !EZ1/SP1 Vorw. Dock. mit 4 Zange ;
  83:  F[317]=(AUS) ;
  84:   ;
  85:  !EZ/SP Zangenausgleich durch Rob. ;
  86:  !ohne Blechdetektierung ;
  87:  F[827]=(AUS) ;
  88:   ;
  89:  !STP1 ;
  90:  !STP1 im Technologiepaket aktiv. ;
  91:  F[565]=(AUS) ;
  92:   ;
  93:  !KF ;
  94:  !Vorwahl Br�uer Kappenfr�ser ;
  95:  F[318]=(AN) ;
  96:  !Vorwahl Lutz Kappenfr�ser ;
  97:  F[319]=(AUS) ;
  98:  !Vorwahl mit Mittelstellung ;
  99:  F[320]=(AUS) ;
 100:  !Vorwahl Kappenfraeser dauerhaft ;
 101:  !ausblasen ;
 102:  F[330]=(AN) ;
 103:  !EZ1/SP1 Anwahl Fraesen mit KF2 ;
 104:  F[72]=(AUS) ;
 105:  !EZ1/SP1 Anwahl Fraesen mit KF3 ;
 106:  F[73]=(AUS) ;
 107:   ;
 108:  !Allgemein , ;
 109:  !K�hlwasserabfrage min/max ;
 110:  F[291]=(AUS) ;
 111:  !Anwahl mit 2. Kappensetzen nach ;
 112:  !Startfraesen ;
 113:  !(bei robotergefuehrt. EZ/SP erf. ;
 114:  F[335]=(AUS) ;
 115:  !Mit Wiederholfraesen bei Kurzsch ;
 116:  F[731]=(AUS) ;
/POS
/END
