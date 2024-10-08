/PROG  MAKRO081
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "EZ1SP1_KAPPENW.";
PROG_GR��E	= 2656;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GE�NDERT	= TAG 17-03-27  ZEIT 17:03:24;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 118;
SPEICHERGR.	= 2940;
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
   1:  !EZ1/SP1  Kappenwechsel ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 003 ;
   5:  !letzte  Aenderung  08.11.2016 LZ ;
   6:  !F118  =  Sammelstoerung  EZ1/SP1 ;
   7:  !F119  =  Sammelstoerung  SK1  an ;
   8:  A[129:SZ1 Proc. Activo]=(AN) ;
   9:  !EZ1/SP1 FzgTyp ruecksetzen ;
  10:  A[777:SZ1 Tipo Veh. W1]=(AUS) ;
  11:  A[778:SZ1 Tipo Veh. W2]=(AUS) ;
  12:  A[779:SZ1 Tipo Veh. W4]=(AUS) ;
  13:  A[780:SZ1 Tipo Veh. W8]=(AUS) ;
  14:  A[781:SZ1 Tipo Veh. W16]=(AUS) ;
  15:  A[782:SZ1 Tipo Veh. W32]=(AUS) ;
  16:  A[783:SZ1 Tipo Veh. W64]=(AUS) ;
  17:  A[784:SZ1 Tipo Veh. W128]=(AUS) ;
  18:  !SK1 FzgTyp ruecksetzen ;
  19:  A[817:SK1 Tipo Veh. W1]=(AUS) ;
  20:  A[818:SK1 Tipo Veh. W2]=(AUS) ;
  21:  A[819:SK1 Tipo Veh. W4]=(AUS) ;
  22:  A[820:SK1 Tipo Veh. W8]=(AUS) ;
  23:  A[821:SK1 Tipo Veh. W16]=(AUS) ;
  24:  A[822:SK1 Tipo Veh. W32]=(AUS) ;
  25:  A[823:SK1 Tipo Veh. W64]=(AUS) ;
  26:  A[824:SK1 Tipo Veh. W128]=(AUS) ;
  27:  WARTE    .20(sec) ;
  28:  !Abfrage Energiesparmodus ist AUS ;
  29:  TIMER[10]=((-2)) ;
  30:  WARTE (!E[706:SZ1 *Ahorro Energ�a] [+] (TIMER[10]>=0))    ;
  31:  F[118:SP1 Aver�a General (PZ1)]=(TIMER[10]>=0) ;
  32:  WARTE (!E[706:SZ1 *Ahorro Energ�a])    ;
  33:  F[118:SP1 Aver�a General (PZ1)]=(AUS) ;
  34:  TIMER[10]=((-2)) ;
  35:  WARTE (!E[784:SZ1 Aver�a General] [+] (TIMER[10]>=0))    ;
  36:  F[118:SP1 Aver�a General (PZ1)]=(TIMER[10]>=0) ;
  37:  F[303:Falla Reset SZ]=(F[118:SP1 Aver�a General (PZ1)] [&] !E[769:SZ1 Preaviso Pinza] [&] E[784:SZ1 Aver�a General]) ;
  38:  !EZ1/SP1 i.O. ;
  39:  WARTE (!E[784:SZ1 Aver�a General] [+] (E[769:SZ1 Preaviso Pinza] [&] E[784:SZ1 Aver�a General]) [+] (E[777:SZ1 Falla Desgaste Caps] [&] E[784:SZ1 Aver�a General]) [+] (E[778:SZ1 Falla Caps/Geometr.] [&] E[784:SZ1 Aver�a General]))
    :      ;
  40:  F[303:Falla Reset SZ]=(AUS) ;
  41:  F[118:SP1 Aver�a General (PZ1)]=(AUS) ;
  42:  A[715:SZ1 Lib. Posicionar]=(AN) ;
  43:  !Anwahl SZ ;
  44:  WENN (F[64:SZ1 en SP1(p/fresado)]),gA[3:SK1 Num.Prg.]=(1) ;
  45:  WENN (F[65:SZ2 en SP1(p/fresado)]),gA[3:SK1 Num.Prg.]=(2) ;
  46:  WENN (F[66:SZ3 en SP1(p/fresado)]),gA[3:SK1 Num.Prg.]=(3) ;
  47:  WENN (F[67:SZ4 en SP1(p/fresado)]),gA[3:SK1 Num.Prg.]=(4) ;
  48:  WARTE    .20(sec) ;
  49:  A[787:SK1 Conf.Cam.Caps]=(AN) ;
  50:  WARTE    .20(sec) ;
  51:  TIMER[10]=((-2)) ;
  52:  WARTE (((E[788:SK1 Fres.Inicial Req.] [&] !F[129:SP1 s/Fres.Incial]) [+] (!E[788:SK1 Fres.Inicial Req.] [&] F[129:SP1 s/Fres.Incial])) [+] (TIMER[10]>=0))    ;
  53:  F[119:SK1 Aver�a General (PZ1)]=(TIMER[10]>=0) ;
  54:  WARTE ((E[788:SK1 Fres.Inicial Req.] [&] !F[129:SP1 s/Fres.Incial]) [+] (!E[788:SK1 Fres.Inicial Req.] [&] F[129:SP1 s/Fres.Incial]))    ;
  55:  F[119:SK1 Aver�a General (PZ1)]=(AUS) ;
  56:  A[787:SK1 Conf.Cam.Caps]=(AUS) ;
  57:  A[755:SZ1 Caps Cambiadas]=(AN) ;
  58:  A[758:SZ1 Conf.Fres.Ini.]=(AN) ;
  59:  WARTE    .20(sec) ;
  60:  !Anwahl Programm EZ1/SP1 und SK1 ;
  61:  WENN (F[64:SZ1 en SP1(p/fresado)]),gA[1:SP1 Num.Prg.]=(21) ;
  62:  WENN (F[65:SZ2 en SP1(p/fresado)]),gA[1:SP1 Num.Prg.]=(22) ;
  63:  WENN (F[66:SZ3 en SP1(p/fresado)]),gA[1:SP1 Num.Prg.]=(23) ;
  64:  WENN (F[67:SZ4 en SP1(p/fresado)]),gA[1:SP1 Num.Prg.]=(24) ;
  65:  gA[2:SP1 Compensaci�n]=(0) ;
  66:  WENN (F[64:SZ1 en SP1(p/fresado)]),gA[3:SK1 Num.Prg.]=(21) ;
  67:  WENN (F[65:SZ2 en SP1(p/fresado)]),gA[3:SK1 Num.Prg.]=(22) ;
  68:  WENN (F[66:SZ3 en SP1(p/fresado)]),gA[3:SK1 Num.Prg.]=(23) ;
  69:  WENN (F[67:SZ4 en SP1(p/fresado)]),gA[3:SK1 Num.Prg.]=(24) ;
  70:  WARTE    .20(sec) ;
  71:  WARTE (E[23:Sin Sol.Acceso])    ;
  72:  A[23:Bloquear Rejas de Seg.]=(AN) ;
  73:  A[717:SZ1 Abrir Pinza]=(AUS) ;
  74:  A[718:SZ1 Cerrar Pinza]=(AN) ;
  75:  TIMER[10]=((-6)) ;
  76:  !Warte EZ1/SP1 geschlossen ;
  77:  WARTE (!E[717:SZ1 Pinza abierta] [&] E[718:SZ1 Fuerza alcanzada] [+] (TIMER[10]>=0))    ;
  78:  F[118:SP1 Aver�a General (PZ1)]=(TIMER[10]>=0) ;
  79:  A[23:Bloquear Rejas de Seg.]=(AUS) ;
  80:  WARTE (!E[717:SZ1 Pinza abierta] [&] E[718:SZ1 Fuerza alcanzada])    ;
  81:  F[118:SP1 Aver�a General (PZ1)]=(AUS) ;
  82:  A[718:SZ1 Cerrar Pinza]=(AUS) ;
  83:  WARTE    .10(sec) ;
  84:  A[717:SZ1 Abrir Pinza]=(AN) ;
  85:  TIMER[10]=((-2)) ;
  86:  !Warte EZ1/SP1 offen ;
  87:  WARTE ((E[717:SZ1 Pinza abierta] [&] !E[718:SZ1 Fuerza alcanzada] [&] E[719:SZ1 Compensaci�n Home]) [+] (TIMER[10]>=0))    ;
  88:  F[118:SP1 Aver�a General (PZ1)]=(TIMER[10]>=0) ;
  89:  WARTE (E[717:SZ1 Pinza abierta] [&] !E[718:SZ1 Fuerza alcanzada] [&] E[719:SZ1 Compensaci�n Home])    ;
  90:  F[118:SP1 Aver�a General (PZ1)]=(AUS) ;
  91:  A[717:SZ1 Abrir Pinza]=(AUS) ;
  92:  WARTE    .20(sec) ;
  93:  WARTE (E[23:Sin Sol.Acceso])    ;
  94:  A[23:Bloquear Rejas de Seg.]=(AN) ;
  95:  A[756:SZ1 Medic. Prefresado]=(AN) ;
  96:  TIMER[10]=((-10)) ;
  97:  !Warte Kappenwechsel i.O. ;
  98:  WARTE ((E[755:SZ1 Cam.CapsOK] [&] E[757:SZ1 Fin Medici�n] [&] !E[784:SZ1 Aver�a General]) [+] (TIMER[10]>=0))    ;
  99:  F[118:SP1 Aver�a General (PZ1)]=(TIMER[10]>=0) ;
 100:  A[23:Bloquear Rejas de Seg.]=(AUS) ;
 101:  !Fehler beim Messen ;
 102:  WARTE ((E[755:SZ1 Cam.CapsOK] [&] E[757:SZ1 Fin Medici�n] [&] !E[784:SZ1 Aver�a General]) [+] E[26:Conf.Repetir])    ;
 103:  F[85:SZ1 Falla Medici�n]=(E[26:Conf.Repetir]) ;
 104:  F[118:SP1 Aver�a General (PZ1)]=(AUS) ;
 105:  A[755:SZ1 Caps Cambiadas]=(AUS) ;
 106:  A[756:SZ1 Medic. Prefresado]=(AUS) ;
 107:  A[758:SZ1 Conf.Fres.Ini.]=(AUS) ;
 108:  !Kappengewechselt ;
 109:  F[77:SK1 Caps Cambiadas (PZ1)]=(!F[85:SZ1 Falla Medici�n]) ;
 110:  !Kappensetzen durchgefuehrt ;
 111:  F[286:Caps Asentadas]=(F[77:SK1 Caps Cambiadas (PZ1)]) ;
 112:  TIMER[10]=((-2)) ;
 113:  A[715:SZ1 Lib. Posicionar]=(AUS) ;
 114:  WARTE (!E[715:SZ1 Posicionam. Activo] [+] (TIMER[10]>=0))    ;
 115:  F[118:SP1 Aver�a General (PZ1)]=(TIMER[10]>=0) ;
 116:  WARTE (!E[715:SZ1 Posicionam. Activo])    ;
 117:  F[118:SP1 Aver�a General (PZ1)]=(AUS) ;
 118:  A[129:SZ1 Proc. Activo]=(AUS) ;
/POS
/END
