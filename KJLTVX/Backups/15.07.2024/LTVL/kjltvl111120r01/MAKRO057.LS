/PROG  MAKRO057
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "FLAG-Init";
PROG_GRÖßE	= 2290;
ERSTELL		= TAG 00-03-13  ZEIT 16:56:34;
GEÄNDERT	= TAG 16-08-10  ZEIT 06:34:54;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 85;
SPEICHERGR.	= 2578;
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
   2:  !Roboter mit Greifer. ;
   3:  !Kombi und Sta. EZ ohne KW. ;
   4:   ;
   5:  !Energiesparmodus aktivieren ;
   6:  F[522:c/Ahorro de Energía]=(AN) ;
   7:  !Mit Profinet ;
   8:  F[556:c/Profinet]=(AN) ;
   9:  !VWRIP mit Kuehlwasserfunktion ;
  10:  F[819:RIP c/Corte Agua (VW)]=(AN) ;
  11:   ;
  12:  !Handling ;
  13:  !mit Rueckm. Steuerluft vorh. ;
  14:  F[523:c/Conf.Ar.Pil.OK  KYP0xE]=(AN) ;
  15:  !mit Rueckm. Steuerluft nicht vor ;
  16:  F[524:c/Conf.Ar.Pil.NOK KYP0xE]=(AUS) ;
  17:   ;
  18:  !Widerstandspunktschweissen ;
  19:  !SK1 im Technologiepaket aktiv. ;
  20:  F[560:c/SK1 (Ctrl.Soldadura)]=(AN) ;
  21:  !SK2 im Technologiepaket aktiv. ;
  22:  F[561:c/SK2 (Ctrl.Soldadura)]=(AN) ;
  23:  !EZ2/SP2/PZ2 an SK1 ;
  24:  F[563:c/PZ2 en SK1]=(AUS) ;
  25:  !SK3 im Technologiepaket aktivier ;
  26:  F[562:c/SK3 (Ctrl.Soldadura)]=(AUS) ;
  27:  !Anwahl mit 2. Kappensetzen nach ;
  28:  !Startfraesen ;
  29:  F[292:Aux.Falla Ini/Fin RSK]=(AN) ;
  30:  !EZ1/SP1 Anwahl ohne Startfraesen ;
  31:  F[129:SP1 s/Fres.Incial]=(AUS) ;
  32:  !EZ1/SP1 Anwahl 2 Huebe bei ;
  33:  !Normalfraesen ;
  34:  F[130:SP1 Asent.Caps.Fres.Cicl]=(AUS) ;
  35:  !EZ2/SP2 Anwahl ohne Startfraesen ;
  36:  F[163:SP2 s/Fres.Inicial]=(AUS) ;
  37:  !EZ2/SP2 Anwahl 2 Huebe bei ;
  38:  !Normalfraesen ;
  39:  F[164:SP2 Asent.Caps.Fres.Cicl]=(AUS) ;
  40:  !EZ3/SP3 Anwahl ohne Startfraesen ;
  41:  F[199:SP3 s/Fres.Inicial]=(AUS) ;
  42:  !EZ3/SP3 Anwahl 2 Huebe bei ;
  43:  !Normalfraesen ;
  44:  F[200:SP3 Asent.Caps.Fres.Cicl]=(AUS) ;
  45:  !EZ1/SP1 robotergefuehrte Zange ;
  46:  !am Roboter montiert ;
  47:  F[530:SP1 Pinza en Robot]=(AN) ;
  48:  !EZ/SP Zangenausgleich durch Rob. ;
  49:  !KF mit Versetzeinheit ;
  50:  F[564:c/Comp.Por Robot]=(AUS) ;
  51:  !EZ1/SP1 Vorw. Dock. mit 1 Zange ;
  52:  F[314:SZ1 Dock c/1 Pinza]=(AUS) ;
  53:  !EZ1/SP1 Vorw. Dock. mit 2 Zange ;
  54:  F[315:SZ1 Dock c/2 Pinzas]=(AUS) ;
  55:  !EZ1/SP1 Vorw. Dock. mit 3 Zange ;
  56:  F[316:SZ1 Dock c/3 Pinzas]=(AUS) ;
  57:  !EZ1/SP1 Vorw. Dock. mit 4 Zange ;
  58:  F[317:SZ1 Dock c/4 Pinzas]=(AUS) ;
  59:  !EZ/SP Zangenausgleich durch Rob. ;
  60:  !ohne Blechdetektierung ;
  61:  F[827:Comp.Robotc/Detec.Luz]=(AUS) ;
  62:   ;
  63:  !KF ;
  64:  !Vorwahl Braeuer Kappenfraeser ;
  65:  F[318:KF Sel. Braeuer]=(AN) ;
  66:  !Vorwahl Lutz Kappenfraeser ;
  67:  F[319:KF Sel. Lutz]=(AUS) ;
  68:  !Vorwahl mit Mittelstellung ;
  69:  F[320:KF c/Pos. Intermedia]=(AUS) ;
  70:  !Vorwahl Kappenfraeser dauerhaft ;
  71:  !ausblasen ;
  72:  F[330:KF Var.Sopl1 RSK]=(AN) ;
  73:  !EZ1/SP1 Anwahl Fraesen mit KF2 ;
  74:  F[72:Fres. SP1 en KF2]=(AUS) ;
  75:  !EZ1/SP1 Anwahl Fraesen mit KF3 ;
  76:  F[73:Fres. SP1 en KF3]=(AUS) ;
  77:   ;
  78:  !Allgemein ;
  79:  !Kuehlwasserabfrage min/max ;
  80:  F[291:c/Ctrl.Min/Max Agua]=(AUS) ;
  81:  !Mit Zangenausgleich ;
  82:  F[710:SP c/Compenzación]=(AN) ;
  83:  !Mit Wiederholfraesen bei ;
  84:  !Kurzschlussschweissen ;
  85:  F[731:Rep.Fres>Prueb.Resist.]=(AUS) ;
/POS
/END
