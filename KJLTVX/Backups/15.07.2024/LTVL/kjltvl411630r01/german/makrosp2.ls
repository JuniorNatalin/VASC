/PROG  MAKROSP2
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "MAKROSP2_BASIC";
PROG_GRÖßE	= 1230;
ERSTELL		= TAG 11-01-11  ZEIT 07:00:00;
GEÄNDERT	= TAG 17-03-27  ZEIT 18:30:46;
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
  10:  F[745]=(gE[31]>=i[60]) ;
  11:  F[746]=(gE[32]>=i[60]) ;
  12:  F[747]=(gE[33]>=i[60]) ;
  13:  !EZ1/SP1 Kraftvorgabe ;
  14:  gA[22]=(gE[22]) ;
  15:  !EZ2/SP2 Kraftvorgabe ;
  16:  WENN (!F[285]),gA[23]=(gE[23]) ;
  17:  WENN (F[285]),gA[23]=(gE[22]) ;
  18:  !EZ3/SP3 Kraftvorgabe ;
  19:  gA[24]=(gE[24]) ;
  20:  !KS1 Ruhestellung schwenken ;
  21:  F[821]=(A[3969] [&] E[844] [&] !F[822]) ;
  22:  !KS1 Arbeitsstellung schwenken ;
  23:  F[822]=(A[3972] [&] E[845] [&] !F[821]) ;
  24:  !KS1 schwenken ;
  25:  A[842]=((F[821] [+] F[822]) [&] (E[835] [+] !F[564]) [&] F[745]) ;
  26:  !KS2 in Ruhestellung schwenken ;
  27:  F[823]=(A[3970] [&] E[1004] [&] !F[824]) ;
  28:  !KS2 in Arbeitsstellung schwenken ;
  29:  F[824]=(A[3973] [&] E[1005] [&] !F[823]) ;
  30:  !KS2 schwenken ;
  31:  A[1002]=((F[823] [+] F[824]) [&] (E[995] [+] !F[564]) [&] F[746]) ;
  32:  !KS3 in Ruhestellung schwenken ;
  33:  F[825]=(A[3971] [&] E[1164] [&] !F[826]) ;
  34:  !KS3 in Arbeitsstellung schwenken ;
  35:  F[826]=(A[3974] [&] E[1165] [&] !F[825]) ;
  36:  !KS3 schwenken ;
  37:  A[1162]=((F[825] [+] F[826]) [&] (E[1155] [+] !F[564]) [&] F[747]) ;
/POS
/END
