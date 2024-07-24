/PROG  MAKRO050
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "Merkerbildung";
PROG_GRÖßE	= 2666;
ERSTELL		= TAG 24-07-11  ZEIT 09:49:34;
GEÄNDERT	= TAG 24-07-11  ZEIT 09:49:34;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 102;
SPEICHERGR.	= 3046;
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
   2:  !Roboter mit Greifer. ;
   3:  !Kombi und Sta. EZ ohne KW. ;
   4:  ! ;
   5:  !Abfrage Bauteilkontrollen ;
   6:  M[1:Garra Llena]=((E[589:C. Pza. BT11/2] [&] E[591:C. Pza. BT11/1]) [+] E[15:Prueba de funcionamiento]) ;
   7:  M[2:Garra Vacia]=(!E[589:C. Pza. BT11/2] [&] !E[591:C. Pza. BT11/1]) ;
   8:  ! ;
   9:  !Abfrage Spanngruppen ;
  10:  M[31:Gpo.Suj. 1 Abierto]=(E[579:Cil.Suj. 11a R] [&] !E[580:Cil.Suj. 11a V] [&] E[581:Cil.Suj. 11b R] [&] !E[582:Cil.Suj. 11b V] [&] E[583:Cil.Suj. 11c R] [&] !E[584:Cil.Suj. 11c V] [&] E[585:Cil.Suj. 11d R] [&] !
    :  E[586:Cil.Suj. 11d V]) ;
  11:  M[32:Gpo.Suj. 1 Cerrado]=(!E[579:Cil.Suj. 11a R] [&] E[580:Cil.Suj. 11a V] [&] !E[581:Cil.Suj. 11b R] [&] E[582:Cil.Suj. 11b V] [&] !E[583:Cil.Suj. 11c R] [&] E[584:Cil.Suj. 11c V] [&] !E[585:Cil.Suj. 11d R] [&] 
    :  E[586:Cil.Suj. 11d V]) ;
  12:  M[33:Gpo.Suj. 2 Abierto]=(!E[587:Cil.Cen. 12 V] [&] E[588:Cil.Cen. 12 R]) ;
  13:  M[34:Gpo.Suj. 2 Cerrado]=(E[587:Cil.Cen. 12 V] [&] !E[588:Cil.Cen. 12 R]) ;
  14:  M[35:Gpo.Suj. 3 Abierto]=(AUS) ;
  15:  M[36:Gpo.Suj. 3 Cerrado]=(AUS) ;
  16:  M[37:Gpo.Suj. 4 Abierto]=(AUS) ;
  17:  M[38:Gpo.Suj. 4 Cerrado]=(AUS) ;
  18:  M[39:Gpo.Suj. 5 Abierto]=(AUS) ;
  19:  M[40:Gpo.Suj. 5 Cerrado]=(AUS) ;
  20:  M[41:Gpo.Suj. 6 Abierto]=(AUS) ;
  21:  M[42:Gpo.Suj. 6 Cerrado]=(AUS) ;
  22:  M[43:Gpo.Suj. 7 Abierto]=(AUS) ;
  23:  M[44:Gpo.Suj. 7 Cerrado]=(AUS) ;
  24:  M[45:Gpo.Suj. 8 Abierto]=(AUS) ;
  25:  M[46:Gpo.Suj. 8 Cerrado]=(AUS) ;
  26:  M[47:Gpo.Suj. 9 Abierto]=(AUS) ;
  27:  M[48:Gpo.Suj. 9 Cerrado]=(AUS) ;
  28:  M[49:Gpo.Suj.10 Abierto]=(AUS) ;
  29:  M[50:Gpo.Suj.10 Cerrado]=(AUS) ;
  30:  M[51:Gpo.Suj.11 Abierto]=(AUS) ;
  31:  M[52:Gpo.Suj.11 Cerrado]=(AUS) ;
  32:  M[53:Gpo.Suj.12 Abierto]=(AUS) ;
  33:  M[54:Gpo.Suj.12 Cerrado]=(AUS) ;
  34:  M[55:Gpo.Suj.13 Abierto]=(AUS) ;
  35:  M[56:Gpo.Suj.13 Cerrado]=(AUS) ;
  36:  M[57:Gpo.Suj.14 Abierto]=(AUS) ;
  37:  M[58:Gpo.Suj.14 Cerrado]=(AUS) ;
  38:  M[59:Gpo.Suj.15 Abierto]=(AUS) ;
  39:  M[60:Gpo.Suj.15 Cerrado]=(AUS) ;
  40:  M[61:Gpo.Suj.16 Abierto]=(AUS) ;
  41:  M[62:Gpo.Suj.16 Cerrado]=(AUS) ;
  42:  M[63:Ventosa 1 Conectada]=(AUS) ;
  43:  M[64:Ventosa 2 Conectada]=(AUS) ;
  44:  M[65:Ventosa 3 Conectada]=(AUS) ;
  45:  M[66:Ventosa 4 Conectada]=(AUS) ;
  46:  M[67:Ventosa 5 Conectada]=(AUS) ;
  47:  M[68:Ventosa 6 Conectada]=(AUS) ;
  48:  ! ;
  49:  !Maschinelle Sicherheiten ;
  50:  !mit Niederdruck ueberwachung ;
  51:  M[30:Seg. de Máquina]=(E[14:Seguridades de máquina] [&] E[24:Medios disponibles] [&] E[516:K1 Pres.Aire 6Bar OK] [&] E[524:K2 Pres.Aire 6Bar OK]) ;
  52:  ! ;
  53:  !Widerstandspunktschweissen ;
  54:  !Sicherheiten EZ1/SP1 ;
  55:  M[95:Seguridad SP1]=(E[705:SZ1 Preparado] [&] !E[706:SZ1 *Ahorro Energía] [&] E[713:SZ1 En Autom. (Control)] [&] E[714:SZ1 Referenciada (Pinza)] [&] ((!E[715:SZ1 Posicionam. Activo] [&] E[719:SZ1 Compensación Home]) [+] 
    :  A[715:SZ1 Lib. Posicionar]) [&] !E[773:SZ1 Pos.Final Inválida] [&] !E[779:SZ1 Falla Seguimiento] [&] A[716:SZ1 Pos. debe válida]) ;
  56:  !Flankenausw.der Fraeserumd.KF1 ;
  57:  M[97:KF1 Flanco Giro]=((E[718:SZ1 Fuerza alcanzada] [&] A[718:SZ1 Cerrar Pinza] [+] F[312:Fl.Aux KF Prueba RSK]) [&] E[834:KF1 Giro Fresador] [&] A[834:KF1 Girar M1] [&] !F[72:Fres. SP1 en KF2] [&] !F[73:Fres. SP1 en KF3] [&] (
    :  F[90:SP1 Lib.Fres.Rob. RSK] [+] F[92:SP1 Lib.Fres.Ped. RSK])) ;
  58:  !Sicherheiten EZ2/SP2 ;
  59:  M[102:Seguridad SP2]=(E[865:SZ2 Preparado] [&] !E[866:SZ2 *Ahorro Energía] [&] E[873:SZ2 En Autom. (Control)] [&] E[874:SZ2 Referenciada (Pinza)] [&] ((!E[875:SZ2 Posicionam. Activo] [&] E[879:SZ2 Compensación Home]) [+] 
    :  A[875:SZ2 Lib. Posicionar]) [&] !E[933:SZ2 Pos.Final Inválida] [&] !E[939:SZ2 Falla Seguimiento] [&] A[876:SZ2 Pos. debe válida]) ;
  60:  !Grundstellung KS2 ;
  61:  M[103:KS2 En Reposo]=(E[1002:KS2BE2R Reposo  Bascul.] [&] !E[1004:KS2SE1R*Reposo  Leva] [&] !E[1003:KS2BE2V Trabajo Bascul.] [&] E[1005:KS2SE1V*Trabajo Leva] [&] !A[875:SZ2 Lib. Posicionar] [&] (F[321:RSK En Paso Inicial] [+] (
    :  A[715:SZ1 Lib. Posicionar] [&] F[92:SP1 Lib.Fres.Ped. RSK]) [+] (A[1035:SZ3 Lib. Posicionar] [&] F[148:SP2 Lib.Fres.Ped. RSK]))) ;
  62:  !Flankenausw.der Fraeserumd.KF2 ;
  63:  M[104:KF2 Flanco Giro]=((E[878:SZ2 Fuerza alcanzada] [&] A[878:SZ2 Cerrar Pinza] [+] F[312:Fl.Aux KF Prueba RSK]) [&] E[994:KF2 Giro Fresador] [&] A[994:KF2 Girar M1] [&] F[148:SP2 Lib.Fres.Ped. RSK]) ;
  64:  ! ;
  65:  !EZ1/SP1/SZ1 Umdrehungen Startfr ;
  66:  i[2]=5    ;
  67:  !Umdrehungen Startfraesen Teil 2 ;
  68:  i[3]=5    ;
  69:  !Umdrehungen Nomalfraesen ;
  70:  i[4]=5    ;
  71:  !EZ1/SP1/SZ2 Umdrehungen Startfr ;
  72:  i[5]=6    ;
  73:  !Umdrehungen Startfraesen Teil 2 ;
  74:  i[6]=5    ;
  75:  !Umdrehungen Nomalfraesen ;
  76:  i[7]=7    ;
  77:  !min. Oeffnung stat. EZ/SP ;
  78:  !beim Fraesen ;
  79:  i[60]=600    ;
  80:  ! ;
  81:  !;Ausgleichswert EZ1/SP1 ;
  82:  i[197]=115    ;
  83:  !;Ausgleichswert EZ2/SP2 ;
  84:  i[198]=122    ;
  85:  !Kappenverschl. Verhaeltnis ;
  86:  !feste EK in % (Rob-EZ) ;
  87:  i[407]=65    ;
  88:  !Kappenverschl. Verhaeltnis ;
  89:  !feste EK in % (Stat-EZ2) ;
  90:  i[412]=65    ;
  91:   ;
  92:  !Kappenkompenstion bei ;
  93:  !Robotergefuehrter EZ1/SP1 ;
  94:  AUFRUF MOTN003    ;
  95:  !Kappenkompenstion bei ;
  96:  !stationaerer EZ2/SP2 ;
  97:  AUFRUF MOTN005    ;
  98:  ! ;
  99:  !Aufruf Makro57 ;
 100:  AUFRUF MAKRO057    ;
 101:  !Docking ;
 102:  AUFRUF MAKRO058    ;
/POS
/END
