/PROG  MAKRO057
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "Flagbildung";
PROG_GRÖßE	= 2230;
ERSTELL		= TAG 00-03-13  ZEIT 16:56:34;
GEÄNDERT	= TAG 16-11-05  ZEIT 23:46:10;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 82;
SPEICHERGR.	= 2530;
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
   1:  !FLAG-Init ;
   2:  !Roboter mit EZ ohne KW ;
   3:   ;
   4:  !Energiesparmodus aktivieren ;
   5:  F[522]=(AN) ;
   6:  !Retroalimentacion aire disp. ;
   7:  F[523]=(AN) ;
   8:  !Retroalimentacion aire no disp. ;
   9:  F[524]=(AN) ;
  10:  !Mit Profinet ;
  11:  F[556]=(AN) ;
  12:  !VW RIP mit Kuehlwasserfunktion ;
  13:  F[819]=(AN) ;
  14:   ;
  15:  !Widerstandspunktschweissen ;
  16:  !SK1 im Technologiepaket aktiv. ;
  17:  F[560]=(AN) ;
  18:  !SK2 im Technologiepaket aktiv. ;
  19:  F[561]=(AUS) ;
  20:  !EZ2/SP2/PZ2 an SK1 ;
  21:  F[563]=(AUS) ;
  22:  !SK3 im Technologiepaket aktivier ;
  23:  F[562]=(AUS) ;
  24:  !Anwahl mit 2. Kappensetzen nach ;
  25:  !Startfraesen ;
  26:  F[292]=(AN) ;
  27:  !EZ1/SP1 Anwahl ohne Startfraesen ;
  28:  F[129]=(AUS) ;
  29:  !EZ1/SP1 Anwahl 2 Huebe bei ;
  30:  !Normalfraesen ;
  31:  F[130]=(AUS) ;
  32:  !EZ2/SP2 Anwahl ohne Startfraesen ;
  33:  F[163]=(AUS) ;
  34:  !EZ2/SP2 Anwahl 2 Huebe bei ;
  35:  !Normalfraesen ;
  36:  F[164]=(AUS) ;
  37:  !EZ3/SP3 Anwahl ohne Startfraesen ;
  38:  F[199]=(AUS) ;
  39:  !EZ3/SP3 Anwahl 2 Huebe bei ;
  40:  !Normalfraesen ;
  41:  F[200]=(AUS) ;
  42:  !EZ1/SP1 robotergefuehrte Zange ;
  43:  !am Roboter montiert ;
  44:  F[530]=(AN) ;
  45:  !EZ/SP Zangenausgleich durch Rob. ;
  46:  !KF mit Versetzeinheit ;
  47:  F[564]=(AUS) ;
  48:  !EZ1/SP1 Vorw. Dock. mit 1 Zange ;
  49:  F[314]=(AUS) ;
  50:  !EZ1/SP1 Vorw. Dock. mit 2 Zange ;
  51:  F[315]=(AUS) ;
  52:  !EZ1/SP1 Vorw. Dock. mit 3 Zange ;
  53:  F[316]=(AUS) ;
  54:  !EZ1/SP1 Vorw. Dock. mit 4 Zange ;
  55:  F[317]=(AUS) ;
  56:  !EZ/SP Zangenausgleich durch Rob. ;
  57:  !ohne Blechdetektierung ;
  58:  F[827]=(AUS) ;
  59:   ;
  60:  !KF ;
  61:  !Vorwahl Braeuer Kappenfraeser ;
  62:  F[318]=(AN) ;
  63:  !Vorwahl Lutz Kappenfraeser ;
  64:  F[319]=(AUS) ;
  65:  !Vorwahl mit Mittelstellung ;
  66:  F[320]=(AUS) ;
  67:  !Vorwahl Kappenfraeser dauerhaft ;
  68:  !ausblasen ;
  69:  F[330]=(AN) ;
  70:  !EZ1/SP1 Anwahl Fraesen mit KF2 ;
  71:  F[72]=(AUS) ;
  72:  !EZ1/SP1 Anwahl Fraesen mit KF3 ;
  73:  F[73]=(AUS) ;
  74:   ;
  75:  !Allgemein ;
  76:  !Kuehlwasserabfrage min/max ;
  77:  F[291]=(AUS) ;
  78:  !Mit Zangenausgleich ;
  79:  F[710]=(AN) ;
  80:  !Mit Wiederholfraesen bei ;
  81:  !Kurzschlussschweißen ;
  82:  F[731]=(AUS) ;
/POS
/END
