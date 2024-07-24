/PROG  UP999
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "PURGA DE GRASA";
PROG_SIZE	= 1178;
CREATE		= DATE 21-04-01  TIME 18:56:14;
MODIFIED	= DATE 21-04-01  TIME 19:01:14;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 11;
MEMORY_SIZE	= 1638;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,1,1,*;
CONTROL_CODE	= 00000000 00000000;
/APPL

CORNER_SPEED_HEADER;
  ENABLE_CORNER_SPEED   : FALSE;
/MN
   1:  LBL[1] ;
   2:J P[1] 100% CNT100    ;
   3:J P[2] 100% CNT100    ;
   4:J P[3] 100% CNT100    ;
   5:J P[4] 100% CNT100    ;
   6:J P[5] 100% CNT100    ;
   7:J P[6] 100% CNT100    ;
   8:J P[7] 100% CNT100    ;
   9:J P[8] 100% CNT100    ;
  10:J P[9] 100% CNT100    ;
  11:  JMP LBL[1] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   484.085  mm,	Y =   550.533  mm,	Z =  1117.755  mm,
	W =   145.478 deg,	P =     5.074 deg,	R =    98.086 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -35.927  mm,	Y =   732.211  mm,	Z =  1117.755  mm,
	W =   145.478 deg,	P =     5.074 deg,	R =   142.220 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.100  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   730.450  mm,	Y =    62.187  mm,	Z =  1117.755  mm,
	W =   145.478 deg,	P =     5.074 deg,	R =    54.277 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.100  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1898.221  mm,	Y =  -799.840  mm,	Z =  2382.547  mm,
	W =   -25.216 deg,	P =     4.538 deg,	R =    43.054 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.100  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2102.703  mm,	Y =  -780.540  mm,	Z =  2093.813  mm,
	W =   -24.600 deg,	P =     7.705 deg,	R =    70.134 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.100  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F D T, 0, 0, 0',
	X =  2129.344  mm,	Y = -1068.655  mm,	Z =  2167.196  mm,
	W =   -43.158 deg,	P =     2.617 deg,	R =    27.359 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.100  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2333.692  mm,	Y = -1233.000  mm,	Z =  1060.636  mm,
	W =    12.758 deg,	P =    21.397 deg,	R =    40.131 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.100  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1967.054  mm,	Y =  -826.677  mm,	Z =   979.629  mm,
	W =   110.494 deg,	P =    -4.477 deg,	R =    42.829 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.300  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   101.200  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   451.879  mm,	Y =   577.287  mm,	Z =  1117.737  mm,
	W =   145.481 deg,	P =     5.074 deg,	R =   101.360 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.007  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
