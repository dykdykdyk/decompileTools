package com.crashlytics.android.b;

import io.fabric.sdk.android.o;
import io.fabric.sdk.android.services.b.a;
import io.fabric.sdk.android.services.network.d;
import io.fabric.sdk.android.services.network.l;

final class g extends a
{
  private final i c;

  public g(o paramo, String paramString1, String paramString2, l paraml, i parami)
  {
    super(paramo, paramString1, paramString2, paraml, d.a);
    this.c = parami;
  }

  // ERROR //
  public final h a(String paramString1, String paramString2, f paramf)
  {
    // Byte code:
    //   0: new 25	java/util/HashMap
    //   3: dup
    //   4: invokespecial 28	java/util/HashMap:<init>	()V
    //   7: astore 6
    //   9: aload 6
    //   11: ldc 30
    //   13: aload_3
    //   14: getfield 35	com/crashlytics/android/b/f:a	Ljava/lang/String;
    //   17: invokeinterface 41 3 0
    //   22: pop
    //   23: aload 6
    //   25: ldc 43
    //   27: aload_3
    //   28: getfield 46	com/crashlytics/android/b/f:b	Ljava/lang/String;
    //   31: invokeinterface 41 3 0
    //   36: pop
    //   37: aload 6
    //   39: ldc 48
    //   41: aload_3
    //   42: getfield 50	com/crashlytics/android/b/f:c	Ljava/lang/String;
    //   45: invokeinterface 41 3 0
    //   50: pop
    //   51: aload 6
    //   53: ldc 52
    //   55: ldc 54
    //   57: invokeinterface 41 3 0
    //   62: pop
    //   63: aload_0
    //   64: aload 6
    //   66: invokevirtual 57	com/crashlytics/android/b/g:a	(Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;
    //   69: astore 5
    //   71: aload 5
    //   73: astore_3
    //   74: aload 5
    //   76: ldc 59
    //   78: ldc 61
    //   80: invokevirtual 66	io/fabric/sdk/android/services/network/HttpRequest:a	(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    //   83: ldc 68
    //   85: new 70	java/lang/StringBuilder
    //   88: dup
    //   89: ldc 72
    //   91: invokespecial 75	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   94: aload_0
    //   95: getfield 78	com/crashlytics/android/b/g:b	Lio/fabric/sdk/android/o;
    //   98: invokevirtual 83	io/fabric/sdk/android/o:a	()Ljava/lang/String;
    //   101: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   107: invokevirtual 66	io/fabric/sdk/android/services/network/HttpRequest:a	(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    //   110: ldc 92
    //   112: ldc 94
    //   114: invokevirtual 66	io/fabric/sdk/android/services/network/HttpRequest:a	(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    //   117: ldc 96
    //   119: ldc 98
    //   121: invokevirtual 66	io/fabric/sdk/android/services/network/HttpRequest:a	(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    //   124: ldc 100
    //   126: aload_0
    //   127: getfield 78	com/crashlytics/android/b/g:b	Lio/fabric/sdk/android/o;
    //   130: invokevirtual 83	io/fabric/sdk/android/o:a	()Ljava/lang/String;
    //   133: invokevirtual 66	io/fabric/sdk/android/services/network/HttpRequest:a	(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    //   136: ldc 102
    //   138: aload_1
    //   139: invokevirtual 66	io/fabric/sdk/android/services/network/HttpRequest:a	(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    //   142: ldc 104
    //   144: new 70	java/lang/StringBuilder
    //   147: dup
    //   148: ldc 106
    //   150: invokespecial 75	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   153: aload_2
    //   154: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   160: invokevirtual 66	io/fabric/sdk/android/services/network/HttpRequest:a	(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    //   163: astore_1
    //   164: invokestatic 111	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   167: ldc 113
    //   169: new 70	java/lang/StringBuilder
    //   172: dup
    //   173: ldc 115
    //   175: invokespecial 75	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   178: aload_0
    //   179: getfield 116	io/fabric/sdk/android/services/b/a:a	Ljava/lang/String;
    //   182: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   188: invokeinterface 121 3 0
    //   193: invokestatic 111	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   196: ldc 113
    //   198: new 70	java/lang/StringBuilder
    //   201: dup
    //   202: ldc 123
    //   204: invokespecial 75	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   207: aload 6
    //   209: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   212: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: invokeinterface 121 3 0
    //   220: sipush 200
    //   223: aload_1
    //   224: invokevirtual 129	io/fabric/sdk/android/services/network/HttpRequest:b	()I
    //   227: if_icmpne +134 -> 361
    //   230: iconst_1
    //   231: istore 4
    //   233: iload 4
    //   235: ifeq +132 -> 367
    //   238: invokestatic 111	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   241: ldc 113
    //   243: ldc 131
    //   245: invokeinterface 121 3 0
    //   250: new 133	org/json/JSONObject
    //   253: dup
    //   254: aload_1
    //   255: invokevirtual 135	io/fabric/sdk/android/services/network/HttpRequest:c	()Ljava/lang/String;
    //   258: invokespecial 136	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   261: astore_2
    //   262: aload_2
    //   263: ldc 138
    //   265: aconst_null
    //   266: invokevirtual 142	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   269: astore_3
    //   270: aload_2
    //   271: ldc 144
    //   273: aconst_null
    //   274: invokevirtual 142	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   277: astore 5
    //   279: aload_2
    //   280: ldc 30
    //   282: aconst_null
    //   283: invokevirtual 142	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   286: astore 6
    //   288: new 146	com/crashlytics/android/b/h
    //   291: dup
    //   292: aload_3
    //   293: aload 5
    //   295: aload_2
    //   296: ldc 43
    //   298: aconst_null
    //   299: invokevirtual 142	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   302: aload 6
    //   304: aload_2
    //   305: ldc 148
    //   307: aconst_null
    //   308: invokevirtual 142	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   311: aload_2
    //   312: ldc 150
    //   314: aconst_null
    //   315: invokevirtual 142	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   318: invokespecial 153	com/crashlytics/android/b/h:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   321: astore_2
    //   322: aload_1
    //   323: ifnull +36 -> 359
    //   326: aload_1
    //   327: ldc 155
    //   329: invokevirtual 158	io/fabric/sdk/android/services/network/HttpRequest:a	(Ljava/lang/String;)Ljava/lang/String;
    //   332: astore_1
    //   333: invokestatic 111	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   336: ldc 160
    //   338: new 70	java/lang/StringBuilder
    //   341: dup
    //   342: ldc 162
    //   344: invokespecial 75	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   347: aload_1
    //   348: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   351: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   354: invokeinterface 121 3 0
    //   359: aload_2
    //   360: areturn
    //   361: iconst_0
    //   362: istore 4
    //   364: goto -131 -> 233
    //   367: invokestatic 111	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   370: ldc 113
    //   372: new 70	java/lang/StringBuilder
    //   375: dup
    //   376: ldc 164
    //   378: invokespecial 75	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   381: aload_1
    //   382: invokevirtual 129	io/fabric/sdk/android/services/network/HttpRequest:b	()I
    //   385: invokevirtual 167	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   388: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   391: invokeinterface 170 3 0
    //   396: aload_1
    //   397: ifnull +36 -> 433
    //   400: aload_1
    //   401: ldc 155
    //   403: invokevirtual 158	io/fabric/sdk/android/services/network/HttpRequest:a	(Ljava/lang/String;)Ljava/lang/String;
    //   406: astore_1
    //   407: invokestatic 111	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   410: ldc 160
    //   412: new 70	java/lang/StringBuilder
    //   415: dup
    //   416: ldc 162
    //   418: invokespecial 75	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   421: aload_1
    //   422: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   425: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   428: invokeinterface 121 3 0
    //   433: aconst_null
    //   434: areturn
    //   435: astore_2
    //   436: aconst_null
    //   437: astore_1
    //   438: aload_1
    //   439: astore_3
    //   440: invokestatic 111	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   443: ldc 113
    //   445: new 70	java/lang/StringBuilder
    //   448: dup
    //   449: ldc 172
    //   451: invokespecial 75	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   454: aload_0
    //   455: getfield 116	io/fabric/sdk/android/services/b/a:a	Ljava/lang/String;
    //   458: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   461: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   464: aload_2
    //   465: invokeinterface 175 4 0
    //   470: aload_1
    //   471: ifnull -38 -> 433
    //   474: aload_1
    //   475: ldc 155
    //   477: invokevirtual 158	io/fabric/sdk/android/services/network/HttpRequest:a	(Ljava/lang/String;)Ljava/lang/String;
    //   480: astore_1
    //   481: invokestatic 111	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   484: ldc 160
    //   486: new 70	java/lang/StringBuilder
    //   489: dup
    //   490: ldc 162
    //   492: invokespecial 75	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   495: aload_1
    //   496: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   499: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   502: invokeinterface 121 3 0
    //   507: goto -74 -> 433
    //   510: astore_2
    //   511: aconst_null
    //   512: astore_1
    //   513: aload_1
    //   514: ifnull +36 -> 550
    //   517: aload_1
    //   518: ldc 155
    //   520: invokevirtual 158	io/fabric/sdk/android/services/network/HttpRequest:a	(Ljava/lang/String;)Ljava/lang/String;
    //   523: astore_1
    //   524: invokestatic 111	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   527: ldc 160
    //   529: new 70	java/lang/StringBuilder
    //   532: dup
    //   533: ldc 162
    //   535: invokespecial 75	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   538: aload_1
    //   539: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   542: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   545: invokeinterface 121 3 0
    //   550: aload_2
    //   551: athrow
    //   552: astore_2
    //   553: aload_3
    //   554: astore_1
    //   555: goto -42 -> 513
    //   558: astore_2
    //   559: goto -46 -> 513
    //   562: astore_2
    //   563: aload 5
    //   565: astore_1
    //   566: goto -128 -> 438
    //   569: astore_2
    //   570: goto -132 -> 438
    //
    // Exception table:
    //   from	to	target	type
    //   0	71	435	java/lang/Exception
    //   0	71	510	finally
    //   74	164	552	finally
    //   440	470	552	finally
    //   164	230	558	finally
    //   238	322	558	finally
    //   367	396	558	finally
    //   74	164	562	java/lang/Exception
    //   164	230	569	java/lang/Exception
    //   238	322	569	java/lang/Exception
    //   367	396	569	java/lang/Exception
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.b.g
 * JD-Core Version:    0.6.2
 */