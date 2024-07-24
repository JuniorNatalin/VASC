/PROG  MAKRO083
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "MESSENDE_ROB_SZ";
PROG_GRÖßE	= 1844;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-03-27  ZEIT 17:03:26;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 74;
SPEICHERGR.	= 2184;
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
   1:  !EZ1/SP1  Messen  Ende  Roboter ;
   2:  !KS24 ;
   3:  !Version: 02 ;
   4:  !Stand: 002 ;
   5:  !letzte  Aenderung  11.03.2015 DB ;
   6:  !F118  =  Sammelstoerung  EZ1/SP1 ;
   7:  !EZ1/SP1 FzgTyp ruecksetzen ;
   8:  A[777:SZ1 Tipo Veh. W1]=(AUS) ;
   9:  A[778:SZ1 Tipo Veh. W2]=(AUS) ;
  10:  A[779:SZ1 Tipo Veh. W4]=(AUS) ;
  11:  A[780:SZ1 Tipo Veh. W8]=(AUS) ;
  12:  A[781:SZ1 Tipo Veh. W16]=(AUS) ;
  13:  A[782:SZ1 Tipo Veh. W32]=(AUS) ;
  14:  A[783:SZ1 Tipo Veh. W64]=(AUS) ;
  15:  A[784:SZ1 Tipo Veh. W128]=(AUS) ;
  16:  !SK1 FzgTyp ruecksetzen ;
  17:  A[817:SK1 Tipo Veh. W1]=(AUS) ;
  18:  A[818:SK1 Tipo Veh. W2]=(AUS) ;
  19:  A[819:SK1 Tipo Veh. W4]=(AUS) ;
  20:  A[820:SK1 Tipo Veh. W8]=(AUS) ;
  21:  A[821:SK1 Tipo Veh. W16]=(AUS) ;
  22:  A[822:SK1 Tipo Veh. W32]=(AUS) ;
  23:  A[823:SK1 Tipo Veh. W64]=(AUS) ;
  24:  A[824:SK1 Tipo Veh. W128]=(AUS) ;
  25:  WARTE    .20(sec) ;
  26:  !Abfrage Energiesparmodus ist AUS ;
  27:  TIMER[10]=((-2)) ;
  28:  WARTE (!E[706:SZ1 *Ahorro Energía] [+] (TIMER[10]>=0))    ;
  29:  F[118:SP1 Avería General (PZ1)]=(TIMER[10]>=0) ;
  30:  WARTE (!E[706:SZ1 *Ahorro Energía])    ;
  31:  F[118:SP1 Avería General (PZ1)]=(AUS) ;
  32:  TIMER[10]=((-6)) ;
  33:  !Warte Messen beendet ;
  34:  WARTE (E[757:SZ1 Fin Medición] [+] (TIMER[10]>=0))    ;
  35:  F[118:SP1 Avería General (PZ1)]=(TIMER[10]>=0) ;
  36:  WARTE (E[757:SZ1 Fin Medición] [+] E[26:Conf.Repetir])    ;
  37:  F[118:SP1 Avería General (PZ1)]=(AUS) ;
  38:  F[85:SZ1 Falla Medición]=(E[776:SZ1 Fresado no OK] [+] E[26:Conf.Repetir]) ;
  39:  A[757:SZ1 Medic. Posfresado]=(AUS) ;
  40:  !EZ in Schleppfehlertoleranz ;
  41:  F[742:SP1 Pos. OK]=((gE[31:Pos. Eje Ext.1 Act.]>=(gA[31:Pos. Eje Ext.1 Debe]-140)) [&] (gE[31:Pos. Eje Ext.1 Act.]<=(gA[31:Pos. Eje Ext.1 Debe]+140))) ;
  42:  A[717:SZ1 Abrir Pinza]=(!F[742:SP1 Pos. OK]) ;
  43:  WARTE (!F[742:SP1 Pos. OK] [&] !E[717:SZ1 Pinza abierta] [+] F[742:SP1 Pos. OK] [+] (TIMER[10]>=0))    ;
  44:  F[118:SP1 Avería General (PZ1)]=(TIMER[10]>=0) ;
  45:  WARTE (!F[742:SP1 Pos. OK] [&] !E[717:SZ1 Pinza abierta] [+] F[742:SP1 Pos. OK])    ;
  46:  F[118:SP1 Avería General (PZ1)]=(AUS) ;
  47:  WARTE (!F[742:SP1 Pos. OK] [&] E[717:SZ1 Pinza abierta] [+] F[742:SP1 Pos. OK] [+] (TIMER[10]>=0))    ;
  48:  F[118:SP1 Avería General (PZ1)]=(TIMER[10]>=0) ;
  49:  WARTE (!F[742:SP1 Pos. OK] [&] E[717:SZ1 Pinza abierta] [+] F[742:SP1 Pos. OK])    ;
  50:  F[118:SP1 Avería General (PZ1)]=(AUS) ;
  51:  A[717:SZ1 Abrir Pinza]=(AUS) ;
  52:  !Fehler Kappenverschleiss ;
  53:  F[86:SZ1 Falla Desg.AlFresar]=((E[736:SZ1 Desgaste-EK W128] [&] !F[692:c/Preaviso de Desgaste]) [+] (E[735:SZ1 Desgaste-EK W64] [&] E[734:SZ1 Desgaste-EK W32] [&] E[732:SZ1 Desgaste-EK W8]) [+] E[777:SZ1 Falla Desgaste Caps]) ;
  54:  F[298:NoRepetirSoldNOK]=(F[85:SZ1 Falla Medición] [&] !F[86:SZ1 Falla Desg.AlFresar]) ;
  55:  A[717:SZ1 Abrir Pinza]=(!E[717:SZ1 Pinza abierta]) ;
  56:  TIMER[10]=((-2)) ;
  57:  !EZ1/SP1 i.O. ;
  58:  WARTE ((E[717:SZ1 Pinza abierta] [&] !E[784:SZ1 Avería General]) [+] (E[717:SZ1 Pinza abierta] [&] F[298:NoRepetirSoldNOK]) [+] (E[717:SZ1 Pinza abierta] [&] F[86:SZ1 Falla Desg.AlFresar]) [+] (TIMER[10]>=0))    ;
  59:  F[118:SP1 Avería General (PZ1)]=(TIMER[10]>=0) ;
  60:  WARTE ((E[717:SZ1 Pinza abierta] [&] !E[784:SZ1 Avería General]) [+] (E[717:SZ1 Pinza abierta] [&] F[298:NoRepetirSoldNOK]) [+] (E[717:SZ1 Pinza abierta] [&] F[86:SZ1 Falla Desg.AlFresar]))    ;
  61:  F[118:SP1 Avería General (PZ1)]=(AUS) ;
  62:  A[717:SZ1 Abrir Pinza]=(AUS) ;
  63:  A[758:SZ1 Conf.Fres.Ini.]=(AUS) ;
  64:  A[759:SZ1 Conf.Fres.Cicl.]=(AUS) ;
  65:  A[715:SZ1 Lib. Posicionar]=(AUS) ;
  66:  TIMER[10]=((-2)) ;
  67:  WARTE (!E[715:SZ1 Posicionam. Activo] [+] (TIMER[10]>=0))    ;
  68:  F[118:SP1 Avería General (PZ1)]=(TIMER[10]>=0) ;
  69:  WARTE (!E[715:SZ1 Posicionam. Activo])    ;
  70:  F[118:SP1 Avería General (PZ1)]=(AUS) ;
  71:  !PR Robotergefuehrte EZ/SP ;
  72:  AUFRUF MOTN003    ;
  73:  A[116:Fresador Activo(Proceso)]=(AUS) ;
  74:  A[130:SZ1 en Fresador]=(AUS) ;
/POS
/END
