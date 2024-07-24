/PROG  MAKROSP2
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "MAKROSP2_BASIC";
PROG_GRÖßE	= 1230;
ERSTELL		= TAG 11-01-11  ZEIT 07:00:00;
GEÄNDERT	= TAG 17-03-27  ZEIT 17:04:12;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 37;
SPEICHERGR.	= 1582;
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
   1:  !MAKROSP2 BASIC ;
   2:  !SK Druckvorgabe ;
   3:  !KS schwenken ;
   4:  !KS24 ;
   5:  !Version: 02 ;
   6:  !Stand: 000 ;
   7:  !letzte  Aenderung  01.09.2015 LZ ;
   8:  !Hilfszeit MakroSPS F[992] ;
   9:  !Mindest-Zangenoeffnungsmass ;
  10:  F[745:SP1 Apert. OK]=(gE[31:Pos. Eje Ext.1 Act.]>=i[60]) ;
  11:  F[746:SP2 Apert. OK]=(gE[32:Pos. Eje Ext.2 Act.]>=i[60]) ;
  12:  F[747:SP3 Apert. OK]=(gE[33:Pos. Eje Ext.3 Act.]>=i[60]) ;
  13:  !EZ1/SP1 Kraftvorgabe ;
  14:  gA[22:SP1 Presión Debe]=(gE[22:SK1 Presión]) ;
  15:  !EZ2/SP2 Kraftvorgabe ;
  16:  WENN (!F[285:2SZ en SK1]),gA[23:SP2 Presión Debe]=(gE[23:SK2 Presión]) ;
  17:  WENN (F[285:2SZ en SK1]),gA[23:SP2 Presión Debe]=(gE[22:SK1 Presión]) ;
  18:  !EZ3/SP3 Kraftvorgabe ;
  19:  gA[24:SP3 Presión Debe]=(gE[24:SK3 Presión]) ;
  20:  !KS1 Ruhestellung schwenken ;
  21:  F[821:KS1 Aux.Pos.Reposo]=(A[3969:Mover KS1 Reposo(ZF/RSK)] [&] E[844:KS1SE1R*Reposo  Leva] [&] !F[822:KS1 Aux.Pos.Trabajo]) ;
  22:  !KS1 Arbeitsstellung schwenken ;
  23:  F[822:KS1 Aux.Pos.Trabajo]=(A[3972:Mover KS1 Trab. (ZF/RSK)] [&] E[845:KS1SE1V*Trabajo Leva] [&] !F[821:KS1 Aux.Pos.Reposo]) ;
  24:  !KS1 schwenken ;
  25:  A[842:KS1 Girar M1]=((F[821:KS1 Aux.Pos.Reposo] [+] F[822:KS1 Aux.Pos.Trabajo]) [&] (E[835:KS1 Uni.Des.Adelante] [+] !F[564:c/Comp.Por Robot]) [&] F[745:SP1 Apert. OK]) ;
  26:  !KS2 in Ruhestellung schwenken ;
  27:  F[823:KS2 Aux.Pos.Reposo]=(A[3970:Mover KS2 Reposo(ZF/RSK)] [&] E[1004:KS2SE1R*Reposo  Leva] [&] !F[824:KS2 Aux.Pos.Trabajo]) ;
  28:  !KS2 in Arbeitsstellung schwenken ;
  29:  F[824:KS2 Aux.Pos.Trabajo]=(A[3973:Mover KS2 Trab. (ZF/RSK)] [&] E[1005:KS2SE1V*Trabajo Leva] [&] !F[823:KS2 Aux.Pos.Reposo]) ;
  30:  !KS2 schwenken ;
  31:  A[1002:KS2 Girar M1]=((F[823:KS2 Aux.Pos.Reposo] [+] F[824:KS2 Aux.Pos.Trabajo]) [&] (E[995:KS2 Uni.Des.Adelante] [+] !F[564:c/Comp.Por Robot]) [&] F[746:SP2 Apert. OK]) ;
  32:  !KS3 in Ruhestellung schwenken ;
  33:  F[825:KS3 Aux.Pos.Reposo]=(A[3971:Mover KS3 Reposo(ZF/RSK)] [&] E[1164:KS3SE1R*Reposo  Leva] [&] !F[826:KS3 Aux.Pos.Trabajo]) ;
  34:  !KS3 in Arbeitsstellung schwenken ;
  35:  F[826:KS3 Aux.Pos.Trabajo]=(A[3974:Mover KS3 Trab. (ZF/RSK)] [&] E[1165:KS3SE1V*Trabajo Leva] [&] !F[825:KS3 Aux.Pos.Reposo]) ;
  36:  !KS3 schwenken ;
  37:  A[1162:KS3 Girar M1]=((F[825:KS3 Aux.Pos.Reposo] [+] F[826:KS3 Aux.Pos.Trabajo]) [&] (E[1155:KS3 Uni.Des.Adelante] [+] !F[564:c/Comp.Por Robot]) [&] F[747:SP3 Apert. OK]) ;
/POS
/END
