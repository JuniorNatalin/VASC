/PROG  MAKROSP1
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "MAKROSP1_BASIC";
PROG_GRÖßE	= 4192;
ERSTELL		= TAG 10-06-15  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-03-27  ZEIT 17:04:12;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 119;
SPEICHERGR.	= 4604;
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
   1:  !MAKROSP1 BASIC ;
   2:  !KS24 ;
   3:  !Version: 011 ;
   4:  !Stand: 007 ;
   5:  !letzte  Aenderung  31.08.2016 LZ ;
   6:  !Hilfszeit 1 MakroSPS F[992] ;
   7:  !Hilfszeit 1 MakroSPS F[992] ;
   8:  !Hilfsflags fuer Medien ;
   9:  F[127:SP1 Flujo Agua OK]=((E[513:K1 Flujo Agua OK] [&] !F[291:c/Ctrl.Min/Max Agua]) [+] (E[514:K1 Flujo MIN Agua OK] [&] E[515:K1 Flujo MAX Agua OK] [&] !F[291:c/Ctrl.Min/Max Agua]) [+] (E[514:K1 Flujo MIN Agua OK] [&] 
    :  A[12:Automático] [&] F[291:c/Ctrl.Min/Max Agua]) [+] (E[515:K1 Flujo MAX Agua OK] [&] A[12:Automático] [&] F[291:c/Ctrl.Min/Max Agua])) ;
  10:  F[162:SP2 Flujo Agua OK]=((E[521:K2 Flujo Agua OK] [&] !F[291:c/Ctrl.Min/Max Agua]) [+] (E[522:K2 Flujo MIN Agua OK] [&] E[523:K2 Flujo MAX Agua OK] [&] !F[291:c/Ctrl.Min/Max Agua]) [+] (E[522:K2 Flujo MIN Agua OK] [&] 
    :  A[12:Automático] [&] F[291:c/Ctrl.Min/Max Agua]) [+] (E[523:K2 Flujo MAX Agua OK] [&] A[12:Automático] [&] F[291:c/Ctrl.Min/Max Agua])) ;
  11:  F[198:SP3 Flujo Agua OK]=((E[529:K3 Flujo Agua OK] [&] !F[291:c/Ctrl.Min/Max Agua]) [+] (E[530:K3 Flujo MIN Agua OK] [&] E[531:K3 Flujo MAX Agua OK] [&] !F[291:c/Ctrl.Min/Max Agua]) [+] (E[530:K3 Flujo MIN Agua OK] [&] 
    :  A[12:Automático] [&] F[291:c/Ctrl.Min/Max Agua]) [+] (E[531:K3 Flujo MAX Agua OK] [&] A[12:Automático] [&] F[291:c/Ctrl.Min/Max Agua])) ;
  12:  !Reset Motorsteuermodul KF1 ;
  13:  A[833:KF1 Reset Falla]=((F[992:Aux.Tiempo 1 de Makro] [&] E[840:KF1 Q20 ON Guardamotor] [&] A[10:Lib. Accionamientos]) [+] (E[840:KF1 Q20 ON Guardamotor] [&] E[26:Conf.Repetir])) ;
  14:  !Reset Motorsteuermodul KS1 ;
  15:  A[841:KS1 Reset Falla]=((F[992:Aux.Tiempo 1 de Makro] [&] E[848:KS1 Q21 ON Guardamotor] [&] A[10:Lib. Accionamientos]) [+] (E[848:KS1 Q21 ON Guardamotor] [&] E[26:Conf.Repetir])) ;
  16:  !Reset Motorsteuermodul ZS1 ;
  17:  A[849:ZS1 Reservado]=((F[992:Aux.Tiempo 1 de Makro] [&] E[856:ZS1 Reservado] [&] A[10:Lib. Accionamientos]) [+] (E[856:ZS1 Reservado] [&] E[26:Conf.Repetir])) ;
  18:  !Reset Motorsteuermodul KF2 ;
  19:  A[993:KF2 Reset Falla]=((F[992:Aux.Tiempo 1 de Makro] [&] E[1000:KF2 Q20 ON Guardamotor] [&] A[10:Lib. Accionamientos]) [+] (E[1000:KF2 Q20 ON Guardamotor] [&] E[26:Conf.Repetir])) ;
  20:  !Reset Motorsteuermodul KS2 ;
  21:  A[1001:KS2 Reset Falla]=((F[992:Aux.Tiempo 1 de Makro] [&] E[1008:KS2 Reservado] [&] A[10:Lib. Accionamientos]) [+] (E[1008:KS2 Reservado] [&] E[26:Conf.Repetir])) ;
  22:  !Reset Motorsteuermodul ZS2 ;
  23:  A[1009:ZS2 Reservado]=((F[992:Aux.Tiempo 1 de Makro] [&] E[1016:ZS2 Reservado] [&] A[10:Lib. Accionamientos]) [+] (E[1016:ZS2 Reservado] [&] E[26:Conf.Repetir])) ;
  24:  !Reset Motorsteuermodul KF3 ;
  25:  A[1153:KF3 Reset Falla]=((F[992:Aux.Tiempo 1 de Makro] [&] E[1160:KF3 Q20 ON Guardamotor] [&] A[10:Lib. Accionamientos]) [+] (E[1160:KF3 Q20 ON Guardamotor] [&] E[26:Conf.Repetir])) ;
  26:  !Reset Motorsteuermodul KS3 ;
  27:  A[1161:KS3 Reset Falla]=((F[992:Aux.Tiempo 1 de Makro] [&] E[1168:KS3 Q21 ON Guardamotor] [&] A[10:Lib. Accionamientos]) [+] (E[1168:KS3 Q21 ON Guardamotor] [&] E[26:Conf.Repetir])) ;
  28:  !Reset Motorsteuermodul ZS2 ;
  29:  A[1169:ZS3 Reservado]=((F[992:Aux.Tiempo 1 de Makro] [&] E[1176:ZS3 Reservado] [&] A[10:Lib. Accionamientos]) [+] (E[1176:ZS3 Reservado] [&] E[26:Conf.Repetir])) ;
  30:  !EZ1/SP1 ;
  31:  A[705:SZ1 Reset Falla]=((E[26:Conf.Repetir] [&] E[784:SZ1 Avería General]) [+] ((E[27:Conf.Continuar] [+] F[303:Falla Reset SZ]) [&] E[784:SZ1 Avería General])) ;
  32:  !EZ2/SP2 ;
  33:  A[865:SZ2 Reset Falla]=((E[26:Conf.Repetir] [&] E[944:SZ2 Avería General]) [+] ((E[27:Conf.Continuar] [+] F[303:Falla Reset SZ]) [&] E[944:SZ2 Avería General])) ;
  34:  !EZ3/SP3 ;
  35:  A[1025:SZ3 Reset Falla]=((E[26:Conf.Repetir] [&] E[1104:SZ3 Avería General]) [+] ((E[27:Conf.Continuar] [+] F[303:Falla Reset SZ]) [&] E[1104:SZ3 Avería General])) ;
  36:  WENN (F[830:c/Kombi WPS1 (Control)]),SPRUNG LABEL[1] ;
  37:  !SK1 ;
  38:  A[788:SK1 Reset Falla]=(E[26:Conf.Repetir]) ;
  39:  A[789:SK1 Res.FallaSolComplet]=(E[27:Conf.Continuar] [&] E[805:SK1 NOK Soldadura]) ;
  40:  A[791:SK1 Prueba s/Pza]=(E[15:Prueba de funcionamiento]) ;
  41:  A[792:SK1 c/Corriente]=(!E[145:SK1 Sin Soldadura] [&] !F[284:Reset Fres/Cont (POT)]) ;
  42:  F[80:SK1 Mem. Fin Sold.]=((E[804:SK1 OK Soldadura] [&] !E[806:SK1 Lim.Excedido en Sec.] [&] !E[775:SZ1 Mov. c/Dificultad] [&] E[785:SK1 Fin Soldadura]) [+] (E[785:SK1 Fin Soldadura] [&] E[15:Prueba de funcionamiento]) [+] (
    :  F[80:SK1 Mem. Fin Sold.] [&] A[785:SK1 Iniciar Soldadura])) ;
  43:  !SK2 ;
  44:  A[948:SK2 Reset Falla]=(E[26:Conf.Repetir]) ;
  45:  A[949:SK2 Res.FallaSolComplet]=(E[27:Conf.Continuar] [&] E[965:SK2 NOK Soldadura]) ;
  46:  A[951:SK2 Prueba s/Pza]=(E[15:Prueba de funcionamiento]) ;
  47:  A[952:SK2 c/Corriente]=(!E[177:SK2 Sin Soldadura] [&] !F[284:Reset Fres/Cont (POT)]) ;
  48:  F[140:SK2 Mem. Fin Sold]=((E[964:SK2 OK Soldadura] [&] !E[966:SK2 Lim.Excedido en Sec.] [&] !E[935:SZ2 Mov. c/Dificultad] [&] E[945:SK2 Fin Soldadura]) [+] (E[945:SK2 Fin Soldadura] [&] E[15:Prueba de funcionamiento]) [+] (
    :  F[140:SK2 Mem. Fin Sold] [&] A[945:SK2 Iniciar Soldadura])) ;
  49:  !SK3 ;
  50:  A[1108:SK3 Reset Falla]=(E[26:Conf.Repetir]) ;
  51:  A[1109:SK3 Res.FallaSolComplet]=(E[27:Conf.Continuar] [&] E[1125:SK3 NOK Soldadura]) ;
  52:  A[1111:SK3 Prueba s/Pza]=(E[15:Prueba de funcionamiento]) ;
  53:  A[1112:SK3 c/Corriente]=(!E[209:Reservado] [&] !F[284:Reset Fres/Cont (POT)]) ;
  54:  F[176:SK3 Mem. Fin Sold]=((E[1124:SK3 OK Soldadura] [&] !E[1126:SK3 Lim.Excedido en Sec.] [&] !E[1095:SZ3 Mov. c/Dificultad] [&] E[1105:SK3 Fin Soldadura]) [+] (E[1105:SK3 Fin Soldadura] [&] E[15:Prueba de funcionamiento]) [+] (
    :  F[176:SK3 Mem. Fin Sold] [&] A[1105:SK3 Iniciar Soldadura])) ;
  55:  LABEL[1] ;
  56:  WENN (!F[830:c/Kombi WPS1 (Control)]),SPRUNG LABEL[2] ;
  57:  !KE1 ;
  58:  A[705:SZ1 Reset Falla]=(E[26:Conf.Repetir]) ;
  59:  A[730:SZ1 Val. Compen. W2]=(!E[130:SZ1 Sel.Fresar] [&] !F[284:Reset Fres/Cont (POT)]) ;
  60:  !FK von Kombi 1 abspeichern ;
  61:  F[833:Mem.FinSold.WPS1(Kombi)]=((E[787:SK1 Con.Fres>0] [&] !E[789:SK1 Req.Fresar] [&] !E[775:SZ1 Mov. c/Dificultad] [&] E[719:SZ1 Compensación Home]) [+] (E[719:SZ1 Compensación Home] [&] E[15:Prueba de funcionamiento]) [+] (
    :  F[833:Mem.FinSold.WPS1(Kombi)] [&] A[718:SZ1 Cerrar Pinza])) ;
  62:  !KE2 ;
  63:  A[865:SZ2 Reset Falla]=(E[26:Conf.Repetir]) ;
  64:  A[890:SZ2 Val. Compen. W2]=(!E[162:SZ2 Sel.Fresar] [&] !F[284:Reset Fres/Cont (POT)]) ;
  65:  !FK von Kombi 2 abspeichern ;
  66:  F[834:Mem.FinSold.WPS2(Kombi)]=((E[947:SK2 Con.Fres>0] [&] !E[949:SK2 Req.Fresar] [&] !E[935:SZ2 Mov. c/Dificultad] [&] E[879:SZ2 Compensación Home]) [+] (E[879:SZ2 Compensación Home] [&] E[15:Prueba de funcionamiento]) [+] (
    :  F[834:Mem.FinSold.WPS2(Kombi)] [&] A[878:SZ2 Cerrar Pinza])) ;
  67:  !KE3 ;
  68:  A[1025:SZ3 Reset Falla]=(E[26:Conf.Repetir]) ;
  69:  A[1050:SZ3 Val. Compen. W2]=(!E[194:Reservado] [&] !F[284:Reset Fres/Cont (POT)]) ;
  70:  !FK von Kombi 3 abspeichern ;
  71:  F[835:Mem.FinSold.WPS3(Kombi)]=((E[1107:SK3 Con.Fres>0] [&] !E[1109:SK3 Req.Fresar] [&] !E[1095:SZ3 Mov. c/Dificultad] [&] E[1039:SZ3 Compensación Home]) [+] (E[1039:SZ3 Compensación Home] [&] E[15:Prueba de funcionamiento]) [+] (
    :  F[835:Mem.FinSold.WPS3(Kombi)] [&] A[1038:SZ3 Cerrar Pinza])) ;
  72:  LABEL[2] ;
  73:  !BZ1 ;
  74:  !DO[1702]=((!DI[1697] OR !DI[1699 ;
  75:  !BZ2 ;
  76:  !DO[1750]=((!DI[1745] OR !DI[1747 ;
  77:  !MS1 ;
  78:  A[1857:MS1 Lib. Proceso]=(AN) ;
  79:  A[1858:MS1 Reset Falla]=(!E[1858:MS1 Sin Fallas] [&] (E[26:Conf.Repetir] [+] E[27:Conf.Continuar] [+] (F[992:Aux.Tiempo 1 de Makro] [&] A[4060:PERI_RDY/Puede Arrancar]))) ;
  80:  F[570:MS1 Act.Arco Eléctrico]=(A[9:Listo Para Funcionar] [&] A[4060:PERI_RDY/Puede Arrancar] [&] E[1857:MS1 Preparado] [&] E[1874:MS1 Apag.Antorcha OK] [&] (F[960:FB Realizado (TC_ONLINE)] [+] (F[597:MS Falla Ignición] [&] !
    :  E[128:Lib.Garra2 Online]))) ;
  81:  A[1859:MS1 Inic.Proceso]=((A[12:Automático] [&] E[12:Equipo automático (K26)] [&] F[570:MS1 Act.Arco Eléctrico] [&] F[571:MS1 Aux.Eje.Eléc.ON] [&] (E[1859:MS1 Arco Establecido] [+] !E[26:Conf.Repetir])) [+] (E[211:Reservado] [&] 
    :  F[570:MS1 Act.Arco Eléctrico] [&] F[571:MS1 Aux.Eje.Eléc.ON])) ;
  82:  !MS2 ;
  83:  A[1889:MS2 Lib. Proceso]=(AN) ;
  84:  A[1890:MS2 Reset Falla]=(!E[1890:MS2 Sin Fallas] [&] (E[26:Conf.Repetir] [+] E[27:Conf.Continuar] [+] (F[992:Aux.Tiempo 1 de Makro] [&] A[4060:PERI_RDY/Puede Arrancar]))) ;
  85:  F[579:MS2 Act.Arco Eléctrico]=(A[9:Listo Para Funcionar] [&] A[4060:PERI_RDY/Puede Arrancar] [&] E[1889:MS2 Preparado] [&] E[1906:MS2 Apag.Antorcha OK] [&] (F[960:FB Realizado (TC_ONLINE)] [+] (F[597:MS Falla Ignición] [&] !
    :  E[128:Lib.Garra2 Online]))) ;
  86:  A[1891:MS2 Inic.Proceso]=((A[12:Automático] [&] E[12:Equipo automático (K26)] [&] F[579:MS2 Act.Arco Eléctrico] [&] F[580:MS2 Aux.Eje.Eléc.ON] [&] (E[1891:MS2 Arco Establecido] [+] !E[26:Conf.Repetir])) [+] (E[203:Reservado] [&] 
    :  F[579:MS2 Act.Arco Eléctrico] [&] F[580:MS2 Aux.Eje.Eléc.ON])) ;
  87:  !KL1 ;
  88:  A[1527:KL1 Lib.Funcionamiento]=(A[10:Lib. Accionamientos] [+] E[1568:KL1 Sistema 2K]) ;
  89:  A[1528:KL1 Robot en Automático]=(A[12:Automático]) ;
  90:  F[339:KL1 Accion.OFF-Reactiv.]=((A[1529:KL1 Iniciar Proc.] [+] A[1535:KL1 Purgar] [+] (E[9:Iniciar Secuencia] [&] !E[15:Prueba de funcionamiento] [&] !F[336:KL1 s/Reactivación])) [&] (!E[1551:KL1 Temp. OK] [&] 
    :  A[10:Lib. Accionamientos])) ;
  91:  A[1547:KL1 Reset Tempor. Bomba]=(((F[339:KL1 Accion.OFF-Reactiv.] [&] F[992:Aux.Tiempo 1 de Makro]) [+] F[337:KL1 Calef/Bomba Reactiv.] [+] E[168:SZ2 Reservado] [+] E[9:Iniciar Secuencia]) [&] F[542:c/KL1 (Sello)]) ;
  92:  A[1550:KL1 Reset Calefacción]=(((F[339:KL1 Accion.OFF-Reactiv.] [&] F[992:Aux.Tiempo 1 de Makro]) [+] F[337:KL1 Calef/Bomba Reactiv.] [+] E[168:SZ2 Reservado] [+] E[9:Iniciar Secuencia]) [&] F[542:c/KL1 (Sello)] [&] !
    :  E[15:Prueba de funcionamiento]) ;
  93:  !KL2 ;
  94:  A[1591:KL2 Lib.Funcionamiento]=(A[10:Lib. Accionamientos] [+] E[1632:KL2 Sistema 2K]) ;
  95:  A[1592:KL2 Robot en Automático]=(A[12:Automático]) ;
  96:  F[360:KL2 Accion.OFF-Reactiv.]=((A[1593:KL2 Iniciar Proc.] [+] A[1599:KL2 Purgar] [+] (E[9:Iniciar Secuencia] [&] !E[15:Prueba de funcionamiento] [&] !F[357:KL2 s/Reactivación])) [&] (!E[1615:KL2 Temp. OK] [&] 
    :  A[10:Lib. Accionamientos])) ;
  97:  A[1611:KL2 Reset Tempor. Bomba]=(((F[360:KL2 Accion.OFF-Reactiv.] [&] F[992:Aux.Tiempo 1 de Makro]) [+] F[358:KL2 Calef/Bomba Reactiv.] [+] E[184:SK2 Reservado] [+] E[9:Iniciar Secuencia]) [&] F[543:c/KL2 (Sello)]) ;
  98:  A[1614:KL2 Reset Calefacción]=(((F[360:KL2 Accion.OFF-Reactiv.] [&] F[992:Aux.Tiempo 1 de Makro]) [+] F[358:KL2 Calef/Bomba Reactiv.] [+] E[184:SK2 Reservado] [+] E[9:Iniciar Secuencia]) [&] F[543:c/KL2 (Sello)] [&] !
    :  E[15:Prueba de funcionamiento]) ;
  99:  !KL3 ;
 100:  A[1655:KL3 Lib.Funcionamiento]=(A[10:Lib. Accionamientos] [+] E[1696:KL3 Sistema 2K]) ;
 101:  A[1656:KL3 Robot en Automático]=(A[12:Automático]) ;
 102:  F[381:KL3 Accion.OFF-Reactiv.]=((A[1657:KL3 Iniciar Proc.] [+] A[1663:KL3 Purgar] [+] (E[9:Iniciar Secuencia] [&] !E[15:Prueba de funcionamiento] [&] !F[378:KL3 s/Reactivación])) [&] (!E[1679:KL3 Temp. OK] [&] 
    :  A[10:Lib. Accionamientos])) ;
 103:  A[1675:KL3 Reset Tempor. Bomba]=(((F[381:KL3 Accion.OFF-Reactiv.] [&] F[992:Aux.Tiempo 1 de Makro]) [+] F[379:KL3 Calef/Bomba Reactiv.] [+] E[200:Reservado] [+] E[9:Iniciar Secuencia]) [&] F[544:c/KL3 (Sello)]) ;
 104:  A[1678:KL3 Reset Calefacción]=(((F[381:KL3 Accion.OFF-Reactiv.] [&] F[992:Aux.Tiempo 1 de Makro]) [+] F[379:KL3 Calef/Bomba Reactiv.] [+] E[200:Reservado] [+] E[9:Iniciar Secuencia]) [&] F[544:c/KL3 (Sello)] [&] !
    :  E[15:Prueba de funcionamiento]) ;
 105:  !CZ1 Servo / CZ1 Pneum. ;
 106:  A[1345:CZ1 Reservado]=((E[26:Conf.Repetir] [+] E[27:Conf.Continuar] [+] F[489:CZ Reset Fallas]) [&] ((E[1424:CZ1 Reservado] [&] F[538:c/CZ1 Eléc.(Un.Ensamb)] [&] !F[539:c/CZ1 Hidr.(Un.Ensamb)]) [+] (!F[538:c/CZ1 Eléc.(Un.Ensamb)] 
    :  [&] F[539:c/CZ1 Hidr.(Un.Ensamb)] [&] E[1368:CZ1 Reservado]))) ;
 107:  !CZ2 Servo / CZ2 Pneum. ;
 108:  A[1425:CZ2 Reservado]=((E[26:Conf.Repetir] [+] E[27:Conf.Continuar] [+] F[489:CZ Reset Fallas]) [&] ((E[1504:CZ2 Reservado] [&] F[540:c/CZ2 Eléc.(Un.Ensamb)] [&] !F[541:c/CZ2 Hidr.(Un.Ensamb)]) [+] (!F[540:c/CZ2 Eléc.(Un.Ensamb)] 
    :  [&] F[541:c/CZ2 Hidr.(Un.Ensamb)] [&] E[1448:CZ2 Reservado]))) ;
 109:  !NZ1 Servo / NZ1 Hydr. ;
 110:  A[1185:NZ1 Reset Falla]=((E[26:Conf.Repetir] [+] E[27:Conf.Continuar] [+] F[489:CZ Reset Fallas]) [&] ((E[1264:NZ1 Avería General] [&] F[534:c/NZ1 Eléc.(Remaches)] [&] !F[535:c/NZ1 Hidr.(Remaches)]) [+] (!
    :  F[534:c/NZ1 Eléc.(Remaches)] [&] F[535:c/NZ1 Hidr.(Remaches)] [&] E[1216:NZ1 Cód.Err.W32768]))) ;
 111:  !NZ2 Servo / NZ2 Hydr. ;
 112:  A[1265:NZ2 Reservado]=((E[26:Conf.Repetir] [+] E[27:Conf.Continuar] [+] F[489:CZ Reset Fallas]) [&] ((E[1344:NZ2 Reservado] [&] F[536:c/NZ2 Eléc.(Remaches)] [&] !F[537:c/NZ2 Hidr.(Remaches)]) [+] (!F[536:c/NZ2 Eléc.(Remaches)] [&] 
    :  F[537:c/NZ2 Hidr.(Remaches)] [&] E[1296:NZ2 Reservado]))) ;
 113:  !Ohne Prozess in Single Step ;
 114:  F[525:s/Proceso en Step/T1]=(F[525:s/Proceso en Step/T1] [&] A[11:Manual/A Pasos]) ;
 115:  !Roboter in Single Step ;
 116:  F[985:Rob. En Step]=(A[11:Manual/A Pasos]) ;
 117:  !Online Freigabe Roboter ;
 118:  A[127:Lib.Garra1 Online]=(M[128:Lib.Online Rob.1]) ;
 119:  A[128:Lib.Garra2 Online]=(M[129:Lib.Online Rob.2]) ;
/POS
/END
