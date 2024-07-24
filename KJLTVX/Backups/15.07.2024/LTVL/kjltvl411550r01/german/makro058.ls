/PROG  MAKRO058
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "Inic. Docking";
PROG_GRÖßE	= 702;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 16-10-04  ZEIT 02:18:50;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 22;
SPEICHERGR.	= 986;
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
   1:  !Configuracion Docking ;
   2:   ;
   3:  !SP1 Disp. Docking c/1 Pinza ;
   4:  F[314]=(AUS) ;
   5:  !SP1 Disp. Docking c/2 Pinzas ;
   6:  F[315]=(AUS) ;
   7:  !SP1 Disp. Docking c/3 Pinzas ;
   8:  F[316]=(AUS) ;
   9:  !SP1 Disp. Docking c/4 Pinzas ;
  10:  F[317]=(AUS) ;
  11:  !NZ1 Disp. Docking c/1 Pinza ;
  12:  F[414]=(AUS) ;
  13:  !NZ1 Disp. Docking c/2 Pinzas ;
  14:  F[415]=(AUS) ;
  15:  !CZ1 Disp. Docking c/1 Pinza ;
  16:  F[455]=(AUS) ;
  17:  !CZ1 Disp. Docking c/2 Pinzas ;
  18:  F[456]=(AUS) ;
  19:  !SM1 Disp. Docking c/1 Pinza ;
  20:  F[254]=(AUS) ;
  21:  !SM1 Disp. Docking c/2 Pinzas ;
  22:  F[255]=(AUS) ;
/POS
/END
