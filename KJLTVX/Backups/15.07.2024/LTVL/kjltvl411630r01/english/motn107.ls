/PROG  MOTN107
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Teilesp.Stapel07";
PROG_SIZE	= 15842;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-27  TIME 18:31:02;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 717;
MEMORY_SIZE	= 16170;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  !Vorbesetzung Teilespeicher PR ;
   2:  !Stapel 7 Fachnr.: 1 - 70 ;
   3:  !Anwender ab Zeile 150 ;
   4:  !KS24 ;
   5:  !Version: 01 ;
   6:  !Stand: 001 ;
   7:  !letzte  Aenderung  06.02.2015 LZ ;
   8:  UNLOCK PREG ;
   9:  !PR 101 -170 Initialisieren ;
  10:  PR[101]=LPOS    ;
  11:  PR[102]=LPOS    ;
  12:  PR[103]=LPOS    ;
  13:  PR[104]=LPOS    ;
  14:  PR[105]=LPOS    ;
  15:  PR[106]=LPOS    ;
  16:  PR[107]=LPOS    ;
  17:  PR[108]=LPOS    ;
  18:  PR[109]=LPOS    ;
  19:  PR[110]=LPOS    ;
  20:  PR[111]=LPOS    ;
  21:  PR[112]=LPOS    ;
  22:  PR[113]=LPOS    ;
  23:  PR[114]=LPOS    ;
  24:  PR[115]=LPOS    ;
  25:  PR[116]=LPOS    ;
  26:  PR[117]=LPOS    ;
  27:  PR[118]=LPOS    ;
  28:  PR[119]=LPOS    ;
  29:  PR[120]=LPOS    ;
  30:  PR[121]=LPOS    ;
  31:  PR[122]=LPOS    ;
  32:  PR[123]=LPOS    ;
  33:  PR[124]=LPOS    ;
  34:  PR[125]=LPOS    ;
  35:  PR[126]=LPOS    ;
  36:  PR[127]=LPOS    ;
  37:  PR[128]=LPOS    ;
  38:  PR[129]=LPOS    ;
  39:  PR[130]=LPOS    ;
  40:  PR[131]=LPOS    ;
  41:  PR[132]=LPOS    ;
  42:  PR[133]=LPOS    ;
  43:  PR[134]=LPOS    ;
  44:  PR[135]=LPOS    ;
  45:  PR[136]=LPOS    ;
  46:  PR[137]=LPOS    ;
  47:  PR[138]=LPOS    ;
  48:  PR[139]=LPOS    ;
  49:  PR[140]=LPOS    ;
  50:  PR[141]=LPOS    ;
  51:  PR[142]=LPOS    ;
  52:  PR[143]=LPOS    ;
  53:  PR[144]=LPOS    ;
  54:  PR[145]=LPOS    ;
  55:  PR[146]=LPOS    ;
  56:  PR[147]=LPOS    ;
  57:  PR[148]=LPOS    ;
  58:  PR[149]=LPOS    ;
  59:  PR[150]=LPOS    ;
  60:  PR[151]=LPOS    ;
  61:  PR[152]=LPOS    ;
  62:  PR[153]=LPOS    ;
  63:  PR[154]=LPOS    ;
  64:  PR[155]=LPOS    ;
  65:  PR[156]=LPOS    ;
  66:  PR[157]=LPOS    ;
  67:  PR[158]=LPOS    ;
  68:  PR[159]=LPOS    ;
  69:  PR[160]=LPOS    ;
  70:  PR[161]=LPOS    ;
  71:  PR[162]=LPOS    ;
  72:  PR[163]=LPOS    ;
  73:  PR[164]=LPOS    ;
  74:  PR[165]=LPOS    ;
  75:  PR[166]=LPOS    ;
  76:  PR[167]=LPOS    ;
  77:  PR[168]=LPOS    ;
  78:  PR[169]=LPOS    ;
  79:  PR[170]=LPOS    ;
  80:  !PR 101 - 170 Ruecksetzen ;
  81:  CALL PRNULL(101) ;
  82:  CALL PRNULL(102) ;
  83:  CALL PRNULL(103) ;
  84:  CALL PRNULL(104) ;
  85:  CALL PRNULL(105) ;
  86:  CALL PRNULL(106) ;
  87:  CALL PRNULL(107) ;
  88:  CALL PRNULL(108) ;
  89:  CALL PRNULL(109) ;
  90:  CALL PRNULL(110) ;
  91:  CALL PRNULL(111) ;
  92:  CALL PRNULL(112) ;
  93:  CALL PRNULL(113) ;
  94:  CALL PRNULL(114) ;
  95:  CALL PRNULL(115) ;
  96:  CALL PRNULL(116) ;
  97:  CALL PRNULL(117) ;
  98:  CALL PRNULL(118) ;
  99:  CALL PRNULL(119) ;
 100:  CALL PRNULL(120) ;
 101:  CALL PRNULL(121) ;
 102:  CALL PRNULL(122) ;
 103:  CALL PRNULL(123) ;
 104:  CALL PRNULL(124) ;
 105:  CALL PRNULL(125) ;
 106:  CALL PRNULL(126) ;
 107:  CALL PRNULL(127) ;
 108:  CALL PRNULL(128) ;
 109:  CALL PRNULL(129) ;
 110:  CALL PRNULL(130) ;
 111:  CALL PRNULL(131) ;
 112:  CALL PRNULL(132) ;
 113:  CALL PRNULL(133) ;
 114:  CALL PRNULL(134) ;
 115:  CALL PRNULL(135) ;
 116:  CALL PRNULL(136) ;
 117:  CALL PRNULL(137) ;
 118:  CALL PRNULL(138) ;
 119:  CALL PRNULL(139) ;
 120:  CALL PRNULL(140) ;
 121:  CALL PRNULL(141) ;
 122:  CALL PRNULL(142) ;
 123:  CALL PRNULL(143) ;
 124:  CALL PRNULL(144) ;
 125:  CALL PRNULL(145) ;
 126:  CALL PRNULL(146) ;
 127:  CALL PRNULL(147) ;
 128:  CALL PRNULL(148) ;
 129:  CALL PRNULL(149) ;
 130:  CALL PRNULL(150) ;
 131:  CALL PRNULL(151) ;
 132:  CALL PRNULL(152) ;
 133:  CALL PRNULL(153) ;
 134:  CALL PRNULL(154) ;
 135:  CALL PRNULL(155) ;
 136:  CALL PRNULL(156) ;
 137:  CALL PRNULL(157) ;
 138:  CALL PRNULL(158) ;
 139:  CALL PRNULL(159) ;
 140:  CALL PRNULL(160) ;
 141:  CALL PRNULL(161) ;
 142:  CALL PRNULL(162) ;
 143:  CALL PRNULL(163) ;
 144:  CALL PRNULL(164) ;
 145:  CALL PRNULL(165) ;
 146:  CALL PRNULL(166) ;
 147:  CALL PRNULL(167) ;
 148:  CALL PRNULL(168) ;
 149:  CALL PRNULL(169) ;
 150:  CALL PRNULL(170) ;
 151:   ;
 152:  !************************ ;
 153:  !*     Anwenderteil     * ;
 154:  !************************ ;
 155:   ;
 156:  !PR Fach 1 - 70 vorbesetzen ;
 157:   ;
 158:  !PR 101 - Fach 1 Master Null ;
 159:  !Setze X-Wert ;
 160:  PR[GP1:101,1]=(0) ;
 161:  !Setze Y-Wert ;
 162:  PR[GP1:101,2]=(0) ;
 163:  !Setze Z-Wert ;
 164:  PR[GP1:101,3]=(0) ;
 165:   ;
 166:  !PR 102 - Fach 2 vorbesetzen ;
 167:  !Setze X-Wert ;
 168:  PR[GP1:102,1]=(0) ;
 169:  !Setze Y-Wert ;
 170:  PR[GP1:102,2]=(0) ;
 171:  !Setze Z-Wert ;
 172:  PR[GP1:102,3]=(0) ;
 173:   ;
 174:  !PR 103 - Fach 3 vorbesetzen ;
 175:  !Setze X-Wert ;
 176:  PR[GP1:103,1]=(0) ;
 177:  !Setze Y-Wert ;
 178:  PR[GP1:103,2]=(0) ;
 179:  !Setze Z-Wert ;
 180:  PR[GP1:103,3]=(0) ;
 181:   ;
 182:  !PR 104 - Fach 4 vorbesetzen ;
 183:  !Setze X-Wert ;
 184:  PR[GP1:104,1]=(0) ;
 185:  !Setze Y-Wert ;
 186:  PR[GP1:104,2]=(0) ;
 187:  !Setze Z-Wert ;
 188:  PR[GP1:104,3]=(0) ;
 189:   ;
 190:  !PR 105 - Fach 5 vorbesetzen ;
 191:  !Setze X-Wert ;
 192:  PR[GP1:105,1]=(0) ;
 193:  !Setze Y-Wert ;
 194:  PR[GP1:105,2]=(0) ;
 195:  !Setze Z-Wert ;
 196:  PR[GP1:105,3]=(0) ;
 197:   ;
 198:  !PR 106 - Fach 6 vorbesetzen ;
 199:  !Setze X-Wert ;
 200:  PR[GP1:106,1]=(0) ;
 201:  !Setze Y-Wert ;
 202:  PR[GP1:106,2]=(0) ;
 203:  !Setze Z-Wert ;
 204:  PR[GP1:106,3]=(0) ;
 205:   ;
 206:  !PR 107 - Fach 7 vorbesetzen ;
 207:  !Setze X-Wert ;
 208:  PR[GP1:107,1]=(0) ;
 209:  !Setze Y-Wert ;
 210:  PR[GP1:107,2]=(0) ;
 211:  !Setze Z-Wert ;
 212:  PR[GP1:107,3]=(0) ;
 213:   ;
 214:  !PR 108 - Fach 8 vorbesetzen ;
 215:  !Setze X-Wert ;
 216:  PR[GP1:108,1]=(0) ;
 217:  !Setze Y-Wert ;
 218:  PR[GP1:108,2]=(0) ;
 219:  !Setze Z-Wert ;
 220:  PR[GP1:108,3]=(0) ;
 221:   ;
 222:  !PR 109 - Fach 9 vorbesetzen ;
 223:  !Setze X-Wert ;
 224:  PR[GP1:109,1]=(0) ;
 225:  !Setze Y-Wert ;
 226:  PR[GP1:109,2]=(0) ;
 227:  !Setze Z-Wert ;
 228:  PR[GP1:109,3]=(0) ;
 229:   ;
 230:  !PR 110 - Fach 10 vorbesetzen ;
 231:  !Setze X-Wert ;
 232:  PR[GP1:110,1]=(0) ;
 233:  !Setze Y-Wert ;
 234:  PR[GP1:110,2]=(0) ;
 235:  !Setze Z-Wert ;
 236:  PR[GP1:110,3]=(0) ;
 237:   ;
 238:  !PR 111 - Fach 11 vorbesetzen ;
 239:  !Setze X-Wert ;
 240:  PR[GP1:111,1]=(0) ;
 241:  !Setze Y-Wert ;
 242:  PR[GP1:111,2]=(0) ;
 243:  !Setze Z-Wert ;
 244:  PR[GP1:111,3]=(0) ;
 245:   ;
 246:  !PR 112 - Fach 12 vorbesetzen ;
 247:  !Setze X-Wert ;
 248:  PR[GP1:112,1]=(0) ;
 249:  !Setze Y-Wert ;
 250:  PR[GP1:112,2]=(0) ;
 251:  !Setze Z-Wert ;
 252:  PR[GP1:112,3]=(0) ;
 253:   ;
 254:  !PR 113 - Fach 13 vorbesetzen ;
 255:  !Setze X-Wert ;
 256:  PR[GP1:113,1]=(0) ;
 257:  !Setze Y-Wert ;
 258:  PR[GP1:113,2]=(0) ;
 259:  !Setze Z-Wert ;
 260:  PR[GP1:113,3]=(0) ;
 261:   ;
 262:  !PR 114 - Fach 14 vorbesetzen ;
 263:  !Setze X-Wert ;
 264:  PR[GP1:114,1]=(0) ;
 265:  !Setze Y-Wert ;
 266:  PR[GP1:114,2]=(0) ;
 267:  !Setze Z-Wert ;
 268:  PR[GP1:114,3]=(0) ;
 269:   ;
 270:  !PR 115 - Fach 15 vorbesetzen ;
 271:  !Setze X-Wert ;
 272:  PR[GP1:115,1]=(0) ;
 273:  !Setze Y-Wert ;
 274:  PR[GP1:115,2]=(0) ;
 275:  !Setze Z-Wert ;
 276:  PR[GP1:115,3]=(0) ;
 277:   ;
 278:  !PR 116 - Fach 16 vorbesetzen ;
 279:  !Setze X-Wert ;
 280:  PR[GP1:116,1]=(0) ;
 281:  !Setze Y-Wert ;
 282:  PR[GP1:116,2]=(0) ;
 283:  !Setze Z-Wert ;
 284:  PR[GP1:116,3]=(0) ;
 285:   ;
 286:  !PR 117 - Fach 17 vorbesetzen ;
 287:  !Setze X-Wert ;
 288:  PR[GP1:117,1]=(0) ;
 289:  !Setze Y-Wert ;
 290:  PR[GP1:117,2]=(0) ;
 291:  !Setze Z-Wert ;
 292:  PR[GP1:117,3]=(0) ;
 293:   ;
 294:  !PR 118 - Fach 18 vorbesetzen ;
 295:  !Setze X-Wert ;
 296:  PR[GP1:118,1]=(0) ;
 297:  !Setze Y-Wert ;
 298:  PR[GP1:118,2]=(0) ;
 299:  !Setze Z-Wert ;
 300:  PR[GP1:118,3]=(0) ;
 301:   ;
 302:  !PR 119 - Fach 9 vorbesetzen ;
 303:  !Setze X-Wert ;
 304:  PR[GP1:119,1]=(0) ;
 305:  !Setze Y-Wert ;
 306:  PR[GP1:119,2]=(0) ;
 307:  !Setze Z-Wert ;
 308:  PR[GP1:119,3]=(0) ;
 309:   ;
 310:  !PR 120 - Fach 20 vorbesetzen ;
 311:  !Setze X-Wert ;
 312:  PR[GP1:120,1]=(0) ;
 313:  !Setze Y-Wert ;
 314:  PR[GP1:120,2]=(0) ;
 315:  !Setze Z-Wert ;
 316:  PR[GP1:120,3]=(0) ;
 317:   ;
 318:  !PR 121 - Fach 21 vorbesetzen ;
 319:  !Setze X-Wert ;
 320:  PR[GP1:121,1]=(0) ;
 321:  !Setze Y-Wert ;
 322:  PR[GP1:121,2]=(0) ;
 323:  !Setze Z-Wert ;
 324:  PR[GP1:121,3]=(0) ;
 325:   ;
 326:  !PR 122 - Fach 22 vorbesetzen ;
 327:  !Setze X-Wert ;
 328:  PR[GP1:122,1]=(0) ;
 329:  !Setze Y-Wert ;
 330:  PR[GP1:122,2]=(0) ;
 331:  !Setze Z-Wert ;
 332:  PR[GP1:122,3]=(0) ;
 333:   ;
 334:  !PR 123 - Fach 23 vorbesetzen ;
 335:  !Setze X-Wert ;
 336:  PR[GP1:123,1]=(0) ;
 337:  !Setze Y-Wert ;
 338:  PR[GP1:123,2]=(0) ;
 339:  !Setze Z-Wert ;
 340:  PR[GP1:123,3]=(0) ;
 341:   ;
 342:  !PR 124 - Fach 24 vorbesetzen ;
 343:  !Setze X-Wert ;
 344:  PR[GP1:124,1]=(0) ;
 345:  !Setze Y-Wert ;
 346:  PR[GP1:124,2]=(0) ;
 347:  !Setze Z-Wert ;
 348:  PR[GP1:124,3]=(0) ;
 349:   ;
 350:  !PR 125 - Fach 25 vorbesetzen ;
 351:  !Setze X-Wert ;
 352:  PR[GP1:125,1]=(0) ;
 353:  !Setze Y-Wert ;
 354:  PR[GP1:125,2]=(0) ;
 355:  !Setze Z-Wert ;
 356:  PR[GP1:125,3]=(0) ;
 357:   ;
 358:  !PR 126 - Fach 26 vorbesetzen ;
 359:  !Setze X-Wert ;
 360:  PR[GP1:126,1]=(0) ;
 361:  !Setze Y-Wert ;
 362:  PR[GP1:126,2]=(0) ;
 363:  !Setze Z-Wert ;
 364:  PR[GP1:126,3]=(0) ;
 365:   ;
 366:  !PR 127 - Fach 27 vorbesetzen ;
 367:  !Setze X-Wert ;
 368:  PR[GP1:127,1]=(0) ;
 369:  !Setze Y-Wert ;
 370:  PR[GP1:127,2]=(0) ;
 371:  !Setze Z-Wert ;
 372:  PR[GP1:127,3]=(0) ;
 373:   ;
 374:  !PR 128 - Fach 28 vorbesetzen ;
 375:  !Setze X-Wert ;
 376:  PR[GP1:128,1]=(0) ;
 377:  !Setze Y-Wert ;
 378:  PR[GP1:128,2]=(0) ;
 379:  !Setze Z-Wert ;
 380:  PR[GP1:128,3]=(0) ;
 381:   ;
 382:  !PR 129 - Fach 29 vorbesetzen ;
 383:  !Setze X-Wert ;
 384:  PR[GP1:129,1]=(0) ;
 385:  !Setze Y-Wert ;
 386:  PR[GP1:129,2]=(0) ;
 387:  !Setze Z-Wert ;
 388:  PR[GP1:129,3]=(0) ;
 389:   ;
 390:  !PR 130 - Fach 30 vorbesetzen ;
 391:  !Setze X-Wert ;
 392:  PR[GP1:130,1]=(0) ;
 393:  !Setze Y-Wert ;
 394:  PR[GP1:130,2]=(0) ;
 395:  !Setze Z-Wert ;
 396:  PR[GP1:130,3]=(0) ;
 397:   ;
 398:  !PR 131 - Fach 31 vorbesetzen ;
 399:  !Setze X-Wert ;
 400:  PR[GP1:131,1]=(0) ;
 401:  !Setze Y-Wert ;
 402:  PR[GP1:131,2]=(0) ;
 403:  !Setze Z-Wert ;
 404:  PR[GP1:131,3]=(0) ;
 405:   ;
 406:  !PR 132 - Fach 32 vorbesetzen ;
 407:  !Setze X-Wert ;
 408:  PR[GP1:132,1]=(0) ;
 409:  !Setze Y-Wert ;
 410:  PR[GP1:132,2]=(0) ;
 411:  !Setze Z-Wert ;
 412:  PR[GP1:132,3]=(0) ;
 413:   ;
 414:  !PR 133 - Fach 33 vorbesetzen ;
 415:  !Setze X-Wert ;
 416:  PR[GP1:133,1]=(0) ;
 417:  !Setze Y-Wert ;
 418:  PR[GP1:133,2]=(0) ;
 419:  !Setze Z-Wert ;
 420:  PR[GP1:133,3]=(0) ;
 421:   ;
 422:  !PR 134 - Fach 34 vorbesetzen ;
 423:  !Setze X-Wert ;
 424:  PR[GP1:134,1]=(0) ;
 425:  !Setze Y-Wert ;
 426:  PR[GP1:134,2]=(0) ;
 427:  !Setze Z-Wert ;
 428:  PR[GP1:134,3]=(0) ;
 429:   ;
 430:  !PR 135 - Fach 35 vorbesetzen ;
 431:  !Setze X-Wert ;
 432:  PR[GP1:135,1]=(0) ;
 433:  !Setze Y-Wert ;
 434:  PR[GP1:135,2]=(0) ;
 435:  !Setze Z-Wert ;
 436:  PR[GP1:135,3]=(0) ;
 437:   ;
 438:  !PR 136 - Fach 36 vorbesetzen ;
 439:  !Setze X-Wert ;
 440:  PR[GP1:136,1]=(0) ;
 441:  !Setze Y-Wert ;
 442:  PR[GP1:136,2]=(0) ;
 443:  !Setze Z-Wert ;
 444:  PR[GP1:136,3]=(0) ;
 445:   ;
 446:  !PR 137 - Fach 37 vorbesetzen ;
 447:  !Setze X-Wert ;
 448:  PR[GP1:137,1]=(0) ;
 449:  !Setze Y-Wert ;
 450:  PR[GP1:137,2]=(0) ;
 451:  !Setze Z-Wert ;
 452:  PR[GP1:137,3]=(0) ;
 453:   ;
 454:  !PR 138 - Fach 38 vorbesetzen ;
 455:  !Setze X-Wert ;
 456:  PR[GP1:138,1]=(0) ;
 457:  !Setze Y-Wert ;
 458:  PR[GP1:138,2]=(0) ;
 459:  !Setze Z-Wert ;
 460:  PR[GP1:138,3]=(0) ;
 461:   ;
 462:  !PR 139 - Fach 39 vorbesetzen ;
 463:  !Setze X-Wert ;
 464:  PR[GP1:139,1]=(0) ;
 465:  !Setze Y-Wert ;
 466:  PR[GP1:139,2]=(0) ;
 467:  !Setze Z-Wert ;
 468:  PR[GP1:139,3]=(0) ;
 469:   ;
 470:  !PR 140 - Fach 40 vorbesetzen ;
 471:  !Setze X-Wert ;
 472:  PR[GP1:140,1]=(0) ;
 473:  !Setze Y-Wert ;
 474:  PR[GP1:140,2]=(0) ;
 475:  !Setze Z-Wert ;
 476:  PR[GP1:140,3]=(0) ;
 477:   ;
 478:  !PR 141 - Fach 41 vorbesetzen ;
 479:  !Setze X-Wert ;
 480:  PR[GP1:141,1]=(0) ;
 481:  !Setze Y-Wert ;
 482:  PR[GP1:141,2]=(0) ;
 483:  !Setze Z-Wert ;
 484:  PR[GP1:141,3]=(0) ;
 485:   ;
 486:  !PR 142 - Fach 42 vorbesetzen ;
 487:  !Setze X-Wert ;
 488:  PR[GP1:142,1]=(0) ;
 489:  !Setze Y-Wert ;
 490:  PR[GP1:142,2]=(0) ;
 491:  !Setze Z-Wert ;
 492:  PR[GP1:142,3]=(0) ;
 493:   ;
 494:  !PR 143 - Fach 43 vorbesetzen ;
 495:  !Setze X-Wert ;
 496:  PR[GP1:143,1]=(0) ;
 497:  !Setze Y-Wert ;
 498:  PR[GP1:143,2]=(0) ;
 499:  !Setze Z-Wert ;
 500:  PR[GP1:143,3]=(0) ;
 501:   ;
 502:  !PR 144 - Fach 44 vorbesetzen ;
 503:  !Setze X-Wert ;
 504:  PR[GP1:144,1]=(0) ;
 505:  !Setze Y-Wert ;
 506:  PR[GP1:144,2]=(0) ;
 507:  !Setze Z-Wert ;
 508:  PR[GP1:144,3]=(0) ;
 509:   ;
 510:  !PR 145 - Fach 45 vorbesetzen ;
 511:  !Setze X-Wert ;
 512:  PR[GP1:145,1]=(0) ;
 513:  !Setze Y-Wert ;
 514:  PR[GP1:145,2]=(0) ;
 515:  !Setze Z-Wert ;
 516:  PR[GP1:145,3]=(0) ;
 517:   ;
 518:  !PR 146 - Fach 46 vorbesetzen ;
 519:  !Setze X-Wert ;
 520:  PR[GP1:146,1]=(0) ;
 521:  !Setze Y-Wert ;
 522:  PR[GP1:146,2]=(0) ;
 523:  !Setze Z-Wert ;
 524:  PR[GP1:146,3]=(0) ;
 525:   ;
 526:  !PR 147 - Fach 47 vorbesetzen ;
 527:  !Setze X-Wert ;
 528:  PR[GP1:147,1]=(0) ;
 529:  !Setze Y-Wert ;
 530:  PR[GP1:147,2]=(0) ;
 531:  !Setze Z-Wert ;
 532:  PR[GP1:147,3]=(0) ;
 533:   ;
 534:  !PR 148 - Fach 48 vorbesetzen ;
 535:  !Setze X-Wert ;
 536:  PR[GP1:148,1]=(0) ;
 537:  !Setze Y-Wert ;
 538:  PR[GP1:148,2]=(0) ;
 539:  !Setze Z-Wert ;
 540:  PR[GP1:148,3]=(0) ;
 541:   ;
 542:  !PR 149 - Fach 49 vorbesetzen ;
 543:  !Setze X-Wert ;
 544:  PR[GP1:149,1]=(0) ;
 545:  !Setze Y-Wert ;
 546:  PR[GP1:149,2]=(0) ;
 547:  !Setze Z-Wert ;
 548:  PR[GP1:149,3]=(0) ;
 549:   ;
 550:  !PR 150 - Fach 50 vorbesetzen ;
 551:  !Setze X-Wert ;
 552:  PR[GP1:150,1]=(0) ;
 553:  !Setze Y-Wert ;
 554:  PR[GP1:150,2]=(0) ;
 555:  !Setze Z-Wert ;
 556:  PR[GP1:150,3]=(0) ;
 557:   ;
 558:  !PR 151 - Fach 51 vorbesetzen ;
 559:  !Setze X-Wert ;
 560:  PR[GP1:151,1]=(0) ;
 561:  !Setze Y-Wert ;
 562:  PR[GP1:151,2]=(0) ;
 563:  !Setze Z-Wert ;
 564:  PR[GP1:151,3]=(0) ;
 565:   ;
 566:  !PR 152 - Fach 52 vorbesetzen ;
 567:  !Setze X-Wert ;
 568:  PR[GP1:152,1]=(0) ;
 569:  !Setze Y-Wert ;
 570:  PR[GP1:152,2]=(0) ;
 571:  !Setze Z-Wert ;
 572:  PR[GP1:152,3]=(0) ;
 573:   ;
 574:  !PR 153 - Fach 53 vorbesetzen ;
 575:  !Setze X-Wert ;
 576:  PR[GP1:153,1]=(0) ;
 577:  !Setze Y-Wert ;
 578:  PR[GP1:153,2]=(0) ;
 579:  !Setze Z-Wert ;
 580:  PR[GP1:153,3]=(0) ;
 581:   ;
 582:  !PR 154 - Fach 54 vorbesetzen ;
 583:  !Setze X-Wert ;
 584:  PR[GP1:154,1]=(0) ;
 585:  !Setze Y-Wert ;
 586:  PR[GP1:154,2]=(0) ;
 587:  !Setze Z-Wert ;
 588:  PR[GP1:154,3]=(0) ;
 589:   ;
 590:  !PR 155 - Fach 55 vorbesetzen ;
 591:  !Setze X-Wert ;
 592:  PR[GP1:155,1]=(0) ;
 593:  !Setze Y-Wert ;
 594:  PR[GP1:155,2]=(0) ;
 595:  !Setze Z-Wert ;
 596:  PR[GP1:155,3]=(0) ;
 597:   ;
 598:  !PR 156 - Fach 56 vorbesetzen ;
 599:  !Setze X-Wert ;
 600:  PR[GP1:156,1]=(0) ;
 601:  !Setze Y-Wert ;
 602:  PR[GP1:156,2]=(0) ;
 603:  !Setze Z-Wert ;
 604:  PR[GP1:156,3]=(0) ;
 605:   ;
 606:  !PR 157 - Fach 57 vorbesetzen ;
 607:  !Setze X-Wert ;
 608:  PR[GP1:157,1]=(0) ;
 609:  !Setze Y-Wert ;
 610:  PR[GP1:157,2]=(0) ;
 611:  !Setze Z-Wert ;
 612:  PR[GP1:157,3]=(0) ;
 613:   ;
 614:  !PR 158 - Fach 58 vorbesetzen ;
 615:  !Setze X-Wert ;
 616:  PR[GP1:158,1]=(0) ;
 617:  !Setze Y-Wert ;
 618:  PR[GP1:158,2]=(0) ;
 619:  !Setze Z-Wert ;
 620:  PR[GP1:158,3]=(0) ;
 621:   ;
 622:  !PR 159 - Fach 59 vorbesetzen ;
 623:  !Setze X-Wert ;
 624:  PR[GP1:159,1]=(0) ;
 625:  !Setze Y-Wert ;
 626:  PR[GP1:159,2]=(0) ;
 627:  !Setze Z-Wert ;
 628:  PR[GP1:159,3]=(0) ;
 629:   ;
 630:  !PR 160 - Fach 60 vorbesetzen ;
 631:  !Setze X-Wert ;
 632:  PR[GP1:160,1]=(0) ;
 633:  !Setze Y-Wert ;
 634:  PR[GP1:160,2]=(0) ;
 635:  !Setze Z-Wert ;
 636:  PR[GP1:160,3]=(0) ;
 637:   ;
 638:  !PR 161 - Fach 61 vorbesetzen ;
 639:  !Setze X-Wert ;
 640:  PR[GP1:161,1]=(0) ;
 641:  !Setze Y-Wert ;
 642:  PR[GP1:161,2]=(0) ;
 643:  !Setze Z-Wert ;
 644:  PR[GP1:161,3]=(0) ;
 645:   ;
 646:  !PR 162 - Fach 62 vorbesetzen ;
 647:  !Setze X-Wert ;
 648:  PR[GP1:162,1]=(0) ;
 649:  !Setze Y-Wert ;
 650:  PR[GP1:162,2]=(0) ;
 651:  !Setze Z-Wert ;
 652:  PR[GP1:162,3]=(0) ;
 653:   ;
 654:  !PR 163 - Fach 63 vorbesetzen ;
 655:  !Setze X-Wert ;
 656:  PR[GP1:163,1]=(0) ;
 657:  !Setze Y-Wert ;
 658:  PR[GP1:163,2]=(0) ;
 659:  !Setze Z-Wert ;
 660:  PR[GP1:163,3]=(0) ;
 661:   ;
 662:  !PR 164 - Fach 64 vorbesetzen ;
 663:  !Setze X-Wert ;
 664:  PR[GP1:164,1]=(0) ;
 665:  !Setze Y-Wert ;
 666:  PR[GP1:164,2]=(0) ;
 667:  !Setze Z-Wert ;
 668:  PR[GP1:164,3]=(0) ;
 669:   ;
 670:  !PR 165 - Fach 65 vorbesetzen ;
 671:  !Setze X-Wert ;
 672:  PR[GP1:165,1]=(0) ;
 673:  !Setze Y-Wert ;
 674:  PR[GP1:165,2]=(0) ;
 675:  !Setze Z-Wert ;
 676:  PR[GP1:165,3]=(0) ;
 677:   ;
 678:  !PR 166 - Fach 66 vorbesetzen ;
 679:  !Setze X-Wert ;
 680:  PR[GP1:166,1]=(0) ;
 681:  !Setze Y-Wert ;
 682:  PR[GP1:166,2]=(0) ;
 683:  !Setze Z-Wert ;
 684:  PR[GP1:166,3]=(0) ;
 685:   ;
 686:  !PR 167 - Fach 67 vorbesetzen ;
 687:  !Setze X-Wert ;
 688:  PR[GP1:167,1]=(0) ;
 689:  !Setze Y-Wert ;
 690:  PR[GP1:167,2]=(0) ;
 691:  !Setze Z-Wert ;
 692:  PR[GP1:167,3]=(0) ;
 693:   ;
 694:  !PR 168 - Fach 68 vorbesetzen ;
 695:  !Setze X-Wert ;
 696:  PR[GP1:168,1]=(0) ;
 697:  !Setze Y-Wert ;
 698:  PR[GP1:168,2]=(0) ;
 699:  !Setze Z-Wert ;
 700:  PR[GP1:168,3]=(0) ;
 701:   ;
 702:  !PR 169 - Fach 69 vorbesetzen ;
 703:  !Setze X-Wert ;
 704:  PR[GP1:169,1]=(0) ;
 705:  !Setze Y-Wert ;
 706:  PR[GP1:169,2]=(0) ;
 707:  !Setze Z-Wert ;
 708:  PR[GP1:169,3]=(0) ;
 709:   ;
 710:  !PR 170 - Fach 70 vorbesetzen ;
 711:  !Setze X-Wert ;
 712:  PR[GP1:170,1]=(0) ;
 713:  !Setze Y-Wert ;
 714:  PR[GP1:170,2]=(0) ;
 715:  !Setze Z-Wert ;
 716:  PR[GP1:170,3]=(0) ;
 717:   ;
/POS
/END
