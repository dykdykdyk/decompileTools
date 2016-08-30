package com.nut.blehunter.ble;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class ae
{
  Map<String, Long> a = new HashMap();
  private long b = 7L;
  private int c = 5;
  private Map<String, Long> d = new HashMap();
  private Map<String, Boolean> e = new HashMap();
  private Map<String, List<Long>> f = new HashMap();

  private static List<Long> a(List<Long> paramList, long paramLong)
  {
    paramList.remove(0);
    paramList.add(Long.valueOf(paramLong));
    return paramList;
  }

  // ERROR //
  public final long a(String paramString, long paramLong)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 66	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +5 -> 9
    //   7: lconst_0
    //   8: lreturn
    //   9: new 68	java/util/ArrayList
    //   12: dup
    //   13: invokespecial 69	java/util/ArrayList:<init>	()V
    //   16: astore 17
    //   18: lconst_0
    //   19: lstore 13
    //   21: lconst_0
    //   22: lstore 7
    //   24: lload 7
    //   26: lstore 5
    //   28: lload 7
    //   30: lstore 9
    //   32: lload 13
    //   34: lstore 11
    //   36: aload_0
    //   37: getfield 33	com/nut/blehunter/ble/ae:a	Ljava/util/Map;
    //   40: aload_1
    //   41: invokeinterface 75 2 0
    //   46: ifnull +29 -> 75
    //   49: lload 7
    //   51: lstore 9
    //   53: lload 13
    //   55: lstore 11
    //   57: aload_0
    //   58: getfield 33	com/nut/blehunter/ble/ae:a	Ljava/util/Map;
    //   61: aload_1
    //   62: invokeinterface 75 2 0
    //   67: checkcast 47	java/lang/Long
    //   70: invokevirtual 79	java/lang/Long:longValue	()J
    //   73: lstore 5
    //   75: lload 13
    //   77: lstore 7
    //   79: lload 5
    //   81: lstore 9
    //   83: lload 13
    //   85: lstore 11
    //   87: aload_0
    //   88: getfield 31	com/nut/blehunter/ble/ae:d	Ljava/util/Map;
    //   91: aload_1
    //   92: invokeinterface 75 2 0
    //   97: ifnull +29 -> 126
    //   100: lload 5
    //   102: lstore 9
    //   104: lload 13
    //   106: lstore 11
    //   108: aload_0
    //   109: getfield 31	com/nut/blehunter/ble/ae:d	Ljava/util/Map;
    //   112: aload_1
    //   113: invokeinterface 75 2 0
    //   118: checkcast 47	java/lang/Long
    //   121: invokevirtual 79	java/lang/Long:longValue	()J
    //   124: lstore 7
    //   126: aload 17
    //   128: astore 16
    //   130: lload 5
    //   132: lstore 9
    //   134: lload 7
    //   136: lstore 11
    //   138: aload_0
    //   139: getfield 37	com/nut/blehunter/ble/ae:f	Ljava/util/Map;
    //   142: aload_1
    //   143: invokeinterface 75 2 0
    //   148: ifnull +26 -> 174
    //   151: lload 5
    //   153: lstore 9
    //   155: lload 7
    //   157: lstore 11
    //   159: aload_0
    //   160: getfield 37	com/nut/blehunter/ble/ae:f	Ljava/util/Map;
    //   163: aload_1
    //   164: invokeinterface 75 2 0
    //   169: checkcast 41	java/util/List
    //   172: astore 16
    //   174: aload_0
    //   175: getfield 35	com/nut/blehunter/ble/ae:e	Ljava/util/Map;
    //   178: aload_1
    //   179: invokeinterface 75 2 0
    //   184: ifnull +423 -> 607
    //   187: aload_0
    //   188: getfield 35	com/nut/blehunter/ble/ae:e	Ljava/util/Map;
    //   191: aload_1
    //   192: invokeinterface 75 2 0
    //   197: checkcast 81	java/lang/Boolean
    //   200: invokevirtual 85	java/lang/Boolean:booleanValue	()Z
    //   203: istore 15
    //   205: aload 16
    //   207: invokeinterface 89 1 0
    //   212: aload_0
    //   213: getfield 26	com/nut/blehunter/ble/ae:c	I
    //   216: if_icmpge +72 -> 288
    //   219: iconst_0
    //   220: istore 4
    //   222: iload 4
    //   224: aload_0
    //   225: getfield 26	com/nut/blehunter/ble/ae:c	I
    //   228: if_icmpge +44 -> 272
    //   231: aload 16
    //   233: lload_2
    //   234: invokestatic 51	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   237: invokeinterface 55 2 0
    //   242: pop
    //   243: iload 4
    //   245: iconst_1
    //   246: iadd
    //   247: istore 4
    //   249: goto -27 -> 222
    //   252: astore 16
    //   254: aload 17
    //   256: astore 16
    //   258: lload 11
    //   260: lstore 7
    //   262: lload 9
    //   264: lstore 5
    //   266: iconst_0
    //   267: istore 15
    //   269: goto -64 -> 205
    //   272: aload_0
    //   273: getfield 37	com/nut/blehunter/ble/ae:f	Ljava/util/Map;
    //   276: aload_1
    //   277: aload 16
    //   279: invokeinterface 93 3 0
    //   284: pop
    //   285: lload 5
    //   287: lreturn
    //   288: iload 15
    //   290: ifeq +159 -> 449
    //   293: lload_2
    //   294: lload 7
    //   296: lcmp
    //   297: ifge +11 -> 308
    //   300: lload 7
    //   302: lload 5
    //   304: lcmp
    //   305: ifgt +18 -> 323
    //   308: lload_2
    //   309: lload 7
    //   311: lcmp
    //   312: ifle +118 -> 430
    //   315: lload 7
    //   317: lload 5
    //   319: lcmp
    //   320: ifge +110 -> 430
    //   323: lload 5
    //   325: lload_2
    //   326: lsub
    //   327: invokestatic 99	java/lang/Math:abs	(J)J
    //   330: aload_0
    //   331: getfield 24	com/nut/blehunter/ble/ae:b	J
    //   334: lcmp
    //   335: ifge +89 -> 424
    //   338: aload 16
    //   340: lload_2
    //   341: invokestatic 101	com/nut/blehunter/ble/ae:a	(Ljava/util/List;J)Ljava/util/List;
    //   344: astore 16
    //   346: iconst_0
    //   347: istore 15
    //   349: aload 16
    //   351: invokeinterface 89 1 0
    //   356: iconst_5
    //   357: if_icmpeq +127 -> 484
    //   360: lconst_0
    //   361: lstore_2
    //   362: aload_0
    //   363: getfield 33	com/nut/blehunter/ble/ae:a	Ljava/util/Map;
    //   366: aload_1
    //   367: lload_2
    //   368: invokestatic 51	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   371: invokeinterface 93 3 0
    //   376: pop
    //   377: aload_0
    //   378: getfield 31	com/nut/blehunter/ble/ae:d	Ljava/util/Map;
    //   381: aload_1
    //   382: lload 7
    //   384: invokestatic 51	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   387: invokeinterface 93 3 0
    //   392: pop
    //   393: aload_0
    //   394: getfield 37	com/nut/blehunter/ble/ae:f	Ljava/util/Map;
    //   397: aload_1
    //   398: aload 16
    //   400: invokeinterface 93 3 0
    //   405: pop
    //   406: aload_0
    //   407: getfield 35	com/nut/blehunter/ble/ae:e	Ljava/util/Map;
    //   410: aload_1
    //   411: iload 15
    //   413: invokestatic 104	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   416: invokeinterface 93 3 0
    //   421: pop
    //   422: lload_2
    //   423: lreturn
    //   424: lload_2
    //   425: lstore 7
    //   427: goto -78 -> 349
    //   430: aload 16
    //   432: lload 7
    //   434: invokestatic 101	com/nut/blehunter/ble/ae:a	(Ljava/util/List;J)Ljava/util/List;
    //   437: lload_2
    //   438: invokestatic 101	com/nut/blehunter/ble/ae:a	(Ljava/util/List;J)Ljava/util/List;
    //   441: astore 16
    //   443: iconst_0
    //   444: istore 15
    //   446: goto -97 -> 349
    //   449: lload 5
    //   451: lload_2
    //   452: lsub
    //   453: invokestatic 99	java/lang/Math:abs	(J)J
    //   456: aload_0
    //   457: getfield 24	com/nut/blehunter/ble/ae:b	J
    //   460: lcmp
    //   461: ifge +14 -> 475
    //   464: aload 16
    //   466: lload_2
    //   467: invokestatic 101	com/nut/blehunter/ble/ae:a	(Ljava/util/List;J)Ljava/util/List;
    //   470: astore 16
    //   472: goto -123 -> 349
    //   475: iconst_1
    //   476: istore 15
    //   478: lload_2
    //   479: lstore 7
    //   481: goto -132 -> 349
    //   484: aload 16
    //   486: iconst_0
    //   487: invokeinterface 106 2 0
    //   492: checkcast 47	java/lang/Long
    //   495: invokevirtual 79	java/lang/Long:longValue	()J
    //   498: ldc2_w 107
    //   501: lmul
    //   502: ldc2_w 109
    //   505: ldiv
    //   506: aload 16
    //   508: iconst_1
    //   509: invokeinterface 106 2 0
    //   514: checkcast 47	java/lang/Long
    //   517: invokevirtual 79	java/lang/Long:longValue	()J
    //   520: ldc2_w 111
    //   523: lmul
    //   524: ldc2_w 109
    //   527: ldiv
    //   528: ladd
    //   529: aload 16
    //   531: iconst_2
    //   532: invokeinterface 106 2 0
    //   537: checkcast 47	java/lang/Long
    //   540: invokevirtual 79	java/lang/Long:longValue	()J
    //   543: ldc2_w 113
    //   546: lmul
    //   547: ldc2_w 109
    //   550: ldiv
    //   551: ladd
    //   552: aload 16
    //   554: iconst_3
    //   555: invokeinterface 106 2 0
    //   560: checkcast 47	java/lang/Long
    //   563: invokevirtual 79	java/lang/Long:longValue	()J
    //   566: ldc2_w 115
    //   569: lmul
    //   570: ldc2_w 109
    //   573: ldiv
    //   574: ladd
    //   575: aload 16
    //   577: iconst_4
    //   578: invokeinterface 106 2 0
    //   583: checkcast 47	java/lang/Long
    //   586: invokevirtual 79	java/lang/Long:longValue	()J
    //   589: ldc2_w 117
    //   592: lmul
    //   593: ldc2_w 109
    //   596: ldiv
    //   597: ladd
    //   598: lstore_2
    //   599: goto -237 -> 362
    //   602: astore 17
    //   604: goto -338 -> 266
    //   607: iconst_0
    //   608: istore 15
    //   610: goto -405 -> 205
    //
    // Exception table:
    //   from	to	target	type
    //   36	49	252	java/lang/Exception
    //   57	75	252	java/lang/Exception
    //   87	100	252	java/lang/Exception
    //   108	126	252	java/lang/Exception
    //   138	151	252	java/lang/Exception
    //   159	174	252	java/lang/Exception
    //   174	205	602	java/lang/Exception
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.ae
 * JD-Core Version:    0.6.2
 */