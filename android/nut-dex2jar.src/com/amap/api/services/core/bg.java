package com.amap.api.services.core;

import android.content.Context;
import android.os.Looper;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

abstract class bg
{
  private ar a;

  static bg a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 0:
      return new ba();
    case 1:
      return new bc();
    case 2:
    }
    return new ax();
  }

  private String a(Context paramContext, ar paramar)
  {
    return al.a(paramContext, paramar);
  }

  private String a(Context paramContext, String paramString)
  {
    try
    {
      paramContext = at.a(paramContext, paramString.getBytes("UTF-8"));
      return paramContext;
    }
    catch (UnsupportedEncodingException paramContext)
    {
      paramContext.printStackTrace();
      return null;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }

  private String a(String paramString1, String paramString2, String paramString3, int paramInt, String paramString4, String paramString5)
  {
    paramString1 = new StringBuffer();
    paramString1.append(paramString2).append(",\"timestamp\":\"");
    paramString1.append(paramString3);
    paramString1.append("\",\"et\":\"");
    paramString1.append(paramInt);
    paramString1.append("\",\"classname\":\"");
    paramString1.append(paramString4);
    paramString1.append("\",");
    paramString1.append("\"detail\":\"");
    paramString1.append(paramString5);
    paramString1.append("\"");
    return paramString1.toString();
  }

  private void a(bq parambq, String paramString1, String paramString2, int paramInt, boolean paramBoolean)
  {
    bs localbs = new bs();
    localbs.a(0);
    localbs.b(paramString1);
    localbs.a(paramString2);
    parambq.b(localbs, paramInt);
  }

  // ERROR //
  private boolean a(Context paramContext, String paramString1, String paramString2, String paramString3, bq parambq)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 14
    //   3: aconst_null
    //   4: astore 15
    //   6: aconst_null
    //   7: astore 13
    //   9: aconst_null
    //   10: astore 18
    //   12: aconst_null
    //   13: astore 16
    //   15: aconst_null
    //   16: astore 17
    //   18: aload 17
    //   20: astore 9
    //   22: aload 13
    //   24: astore 12
    //   26: aload 18
    //   28: astore 10
    //   30: aload 14
    //   32: astore 11
    //   34: aload 16
    //   36: astore 7
    //   38: aload 15
    //   40: astore 8
    //   42: new 98	java/lang/StringBuilder
    //   45: dup
    //   46: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   49: astore 19
    //   51: aload 17
    //   53: astore 9
    //   55: aload 13
    //   57: astore 12
    //   59: aload 18
    //   61: astore 10
    //   63: aload 14
    //   65: astore 11
    //   67: aload 16
    //   69: astore 7
    //   71: aload 15
    //   73: astore 8
    //   75: aload 19
    //   77: aload_1
    //   78: invokevirtual 105	android/content/Context:getFilesDir	()Ljava/io/File;
    //   81: invokevirtual 110	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   84: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: pop
    //   88: aload 17
    //   90: astore 9
    //   92: aload 13
    //   94: astore 12
    //   96: aload 18
    //   98: astore 10
    //   100: aload 14
    //   102: astore 11
    //   104: aload 16
    //   106: astore 7
    //   108: aload 15
    //   110: astore 8
    //   112: aload 19
    //   114: getstatic 118	com/amap/api/services/core/bd:a	Ljava/lang/String;
    //   117: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: pop
    //   121: aload 17
    //   123: astore 9
    //   125: aload 13
    //   127: astore 12
    //   129: aload 18
    //   131: astore 10
    //   133: aload 14
    //   135: astore 11
    //   137: aload 16
    //   139: astore 7
    //   141: aload 15
    //   143: astore 8
    //   145: aload 19
    //   147: aload_3
    //   148: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: pop
    //   152: aload 17
    //   154: astore 9
    //   156: aload 13
    //   158: astore 12
    //   160: aload 18
    //   162: astore 10
    //   164: aload 14
    //   166: astore 11
    //   168: aload 16
    //   170: astore 7
    //   172: aload 15
    //   174: astore 8
    //   176: new 107	java/io/File
    //   179: dup
    //   180: aload 19
    //   182: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   185: invokespecial 121	java/io/File:<init>	(Ljava/lang/String;)V
    //   188: astore_1
    //   189: aload 17
    //   191: astore 9
    //   193: aload 13
    //   195: astore 12
    //   197: aload 18
    //   199: astore 10
    //   201: aload 14
    //   203: astore 11
    //   205: aload 16
    //   207: astore 7
    //   209: aload 15
    //   211: astore 8
    //   213: aload_1
    //   214: invokevirtual 125	java/io/File:exists	()Z
    //   217: ifne +64 -> 281
    //   220: aload 17
    //   222: astore 9
    //   224: aload 13
    //   226: astore 12
    //   228: aload 18
    //   230: astore 10
    //   232: aload 14
    //   234: astore 11
    //   236: aload 16
    //   238: astore 7
    //   240: aload 15
    //   242: astore 8
    //   244: aload_1
    //   245: invokevirtual 128	java/io/File:mkdirs	()Z
    //   248: istore 6
    //   250: iload 6
    //   252: ifne +29 -> 281
    //   255: iconst_0
    //   256: ifeq +11 -> 267
    //   259: new 130	java/lang/NullPointerException
    //   262: dup
    //   263: invokespecial 131	java/lang/NullPointerException:<init>	()V
    //   266: athrow
    //   267: iconst_0
    //   268: ifeq +11 -> 279
    //   271: new 130	java/lang/NullPointerException
    //   274: dup
    //   275: invokespecial 131	java/lang/NullPointerException:<init>	()V
    //   278: athrow
    //   279: iconst_0
    //   280: ireturn
    //   281: aload 17
    //   283: astore 9
    //   285: aload 13
    //   287: astore 12
    //   289: aload 18
    //   291: astore 10
    //   293: aload 14
    //   295: astore 11
    //   297: aload 16
    //   299: astore 7
    //   301: aload 15
    //   303: astore 8
    //   305: aload_1
    //   306: iconst_1
    //   307: iconst_1
    //   308: ldc2_w 132
    //   311: invokestatic 138	com/amap/api/services/core/bz:a	(Ljava/io/File;IIJ)Lcom/amap/api/services/core/bz;
    //   314: astore_1
    //   315: aload_1
    //   316: astore 9
    //   318: aload 13
    //   320: astore 12
    //   322: aload_1
    //   323: astore 10
    //   325: aload 14
    //   327: astore 11
    //   329: aload_1
    //   330: astore 7
    //   332: aload 15
    //   334: astore 8
    //   336: aload_1
    //   337: aload_0
    //   338: aload 5
    //   340: invokevirtual 141	com/amap/api/services/core/bg:a	(Lcom/amap/api/services/core/bq;)Lcom/amap/api/services/core/cc;
    //   343: invokevirtual 144	com/amap/api/services/core/bz:a	(Lcom/amap/api/services/core/cc;)V
    //   346: aload_1
    //   347: astore 9
    //   349: aload 13
    //   351: astore 12
    //   353: aload_1
    //   354: astore 10
    //   356: aload 14
    //   358: astore 11
    //   360: aload_1
    //   361: astore 7
    //   363: aload 15
    //   365: astore 8
    //   367: aload_1
    //   368: aload_2
    //   369: invokevirtual 147	com/amap/api/services/core/bz:a	(Ljava/lang/String;)Lcom/amap/api/services/core/bz$b;
    //   372: astore_3
    //   373: aload_3
    //   374: ifnull +32 -> 406
    //   377: iconst_0
    //   378: ifeq +11 -> 389
    //   381: new 130	java/lang/NullPointerException
    //   384: dup
    //   385: invokespecial 131	java/lang/NullPointerException:<init>	()V
    //   388: athrow
    //   389: aload_1
    //   390: ifnull +14 -> 404
    //   393: aload_1
    //   394: invokevirtual 149	com/amap/api/services/core/bz:a	()Z
    //   397: ifne +7 -> 404
    //   400: aload_1
    //   401: invokevirtual 152	com/amap/api/services/core/bz:close	()V
    //   404: iconst_0
    //   405: ireturn
    //   406: aload_1
    //   407: astore 9
    //   409: aload 13
    //   411: astore 12
    //   413: aload_1
    //   414: astore 10
    //   416: aload 14
    //   418: astore 11
    //   420: aload_1
    //   421: astore 7
    //   423: aload 15
    //   425: astore 8
    //   427: aload 4
    //   429: ldc 33
    //   431: invokevirtual 39	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   434: astore_3
    //   435: aload_1
    //   436: astore 9
    //   438: aload 13
    //   440: astore 12
    //   442: aload_1
    //   443: astore 10
    //   445: aload 14
    //   447: astore 11
    //   449: aload_1
    //   450: astore 7
    //   452: aload 15
    //   454: astore 8
    //   456: aload_1
    //   457: aload_2
    //   458: invokevirtual 155	com/amap/api/services/core/bz:b	(Ljava/lang/String;)Lcom/amap/api/services/core/bz$a;
    //   461: astore 4
    //   463: aload_1
    //   464: astore 9
    //   466: aload 13
    //   468: astore 12
    //   470: aload_1
    //   471: astore 10
    //   473: aload 14
    //   475: astore 11
    //   477: aload_1
    //   478: astore 7
    //   480: aload 15
    //   482: astore 8
    //   484: aload 4
    //   486: iconst_0
    //   487: invokevirtual 160	com/amap/api/services/core/bz$a:a	(I)Ljava/io/OutputStream;
    //   490: astore_2
    //   491: aload_1
    //   492: astore 9
    //   494: aload_2
    //   495: astore 12
    //   497: aload_1
    //   498: astore 10
    //   500: aload_2
    //   501: astore 11
    //   503: aload_1
    //   504: astore 7
    //   506: aload_2
    //   507: astore 8
    //   509: aload_2
    //   510: aload_3
    //   511: invokevirtual 166	java/io/OutputStream:write	([B)V
    //   514: aload_1
    //   515: astore 9
    //   517: aload_2
    //   518: astore 12
    //   520: aload_1
    //   521: astore 10
    //   523: aload_2
    //   524: astore 11
    //   526: aload_1
    //   527: astore 7
    //   529: aload_2
    //   530: astore 8
    //   532: aload 4
    //   534: invokevirtual 168	com/amap/api/services/core/bz$a:a	()V
    //   537: aload_1
    //   538: astore 9
    //   540: aload_2
    //   541: astore 12
    //   543: aload_1
    //   544: astore 10
    //   546: aload_2
    //   547: astore 11
    //   549: aload_1
    //   550: astore 7
    //   552: aload_2
    //   553: astore 8
    //   555: aload_1
    //   556: invokevirtual 170	com/amap/api/services/core/bz:b	()V
    //   559: aload_2
    //   560: ifnull +7 -> 567
    //   563: aload_2
    //   564: invokevirtual 171	java/io/OutputStream:close	()V
    //   567: aload_1
    //   568: ifnull +14 -> 582
    //   571: aload_1
    //   572: invokevirtual 149	com/amap/api/services/core/bz:a	()Z
    //   575: ifne +7 -> 582
    //   578: aload_1
    //   579: invokevirtual 152	com/amap/api/services/core/bz:close	()V
    //   582: iconst_1
    //   583: ireturn
    //   584: astore_1
    //   585: aload 9
    //   587: astore 7
    //   589: aload 12
    //   591: astore 8
    //   593: aload_1
    //   594: invokevirtual 172	java/io/IOException:printStackTrace	()V
    //   597: aload 12
    //   599: ifnull +8 -> 607
    //   602: aload 12
    //   604: invokevirtual 171	java/io/OutputStream:close	()V
    //   607: aload 9
    //   609: ifnull +16 -> 625
    //   612: aload 9
    //   614: invokevirtual 149	com/amap/api/services/core/bz:a	()Z
    //   617: ifne +8 -> 625
    //   620: aload 9
    //   622: invokevirtual 152	com/amap/api/services/core/bz:close	()V
    //   625: iconst_0
    //   626: ireturn
    //   627: astore_1
    //   628: aload 10
    //   630: astore 7
    //   632: aload 11
    //   634: astore 8
    //   636: aload_1
    //   637: invokevirtual 48	java/lang/Throwable:printStackTrace	()V
    //   640: aload 11
    //   642: ifnull +8 -> 650
    //   645: aload 11
    //   647: invokevirtual 171	java/io/OutputStream:close	()V
    //   650: aload 10
    //   652: ifnull -27 -> 625
    //   655: aload 10
    //   657: invokevirtual 149	com/amap/api/services/core/bz:a	()Z
    //   660: ifne -35 -> 625
    //   663: aload 10
    //   665: invokevirtual 152	com/amap/api/services/core/bz:close	()V
    //   668: goto -43 -> 625
    //   671: astore_1
    //   672: aload_1
    //   673: invokevirtual 48	java/lang/Throwable:printStackTrace	()V
    //   676: goto -51 -> 625
    //   679: astore_1
    //   680: aload 8
    //   682: ifnull +8 -> 690
    //   685: aload 8
    //   687: invokevirtual 171	java/io/OutputStream:close	()V
    //   690: aload 7
    //   692: ifnull +16 -> 708
    //   695: aload 7
    //   697: invokevirtual 149	com/amap/api/services/core/bz:a	()Z
    //   700: ifne +8 -> 708
    //   703: aload 7
    //   705: invokevirtual 152	com/amap/api/services/core/bz:close	()V
    //   708: aload_1
    //   709: athrow
    //   710: astore_2
    //   711: aload_2
    //   712: invokevirtual 48	java/lang/Throwable:printStackTrace	()V
    //   715: goto -25 -> 690
    //   718: astore_2
    //   719: aload_2
    //   720: invokevirtual 48	java/lang/Throwable:printStackTrace	()V
    //   723: goto -15 -> 708
    //   726: astore_1
    //   727: aload_1
    //   728: invokevirtual 48	java/lang/Throwable:printStackTrace	()V
    //   731: goto -124 -> 607
    //   734: astore_1
    //   735: goto -63 -> 672
    //   738: astore_1
    //   739: aload_1
    //   740: invokevirtual 48	java/lang/Throwable:printStackTrace	()V
    //   743: goto -93 -> 650
    //   746: astore_1
    //   747: aload_1
    //   748: invokevirtual 48	java/lang/Throwable:printStackTrace	()V
    //   751: goto -484 -> 267
    //   754: astore_2
    //   755: aload_2
    //   756: invokevirtual 48	java/lang/Throwable:printStackTrace	()V
    //   759: goto -370 -> 389
    //   762: astore_1
    //   763: aload_1
    //   764: invokevirtual 48	java/lang/Throwable:printStackTrace	()V
    //   767: goto -363 -> 404
    //   770: astore_2
    //   771: aload_2
    //   772: invokevirtual 48	java/lang/Throwable:printStackTrace	()V
    //   775: goto -208 -> 567
    //   778: astore_1
    //   779: aload_1
    //   780: invokevirtual 48	java/lang/Throwable:printStackTrace	()V
    //   783: goto -201 -> 582
    //
    // Exception table:
    //   from	to	target	type
    //   42	51	584	java/io/IOException
    //   75	88	584	java/io/IOException
    //   112	121	584	java/io/IOException
    //   145	152	584	java/io/IOException
    //   176	189	584	java/io/IOException
    //   213	220	584	java/io/IOException
    //   244	250	584	java/io/IOException
    //   305	315	584	java/io/IOException
    //   336	346	584	java/io/IOException
    //   367	373	584	java/io/IOException
    //   427	435	584	java/io/IOException
    //   456	463	584	java/io/IOException
    //   484	491	584	java/io/IOException
    //   509	514	584	java/io/IOException
    //   532	537	584	java/io/IOException
    //   555	559	584	java/io/IOException
    //   42	51	627	java/lang/Throwable
    //   75	88	627	java/lang/Throwable
    //   112	121	627	java/lang/Throwable
    //   145	152	627	java/lang/Throwable
    //   176	189	627	java/lang/Throwable
    //   213	220	627	java/lang/Throwable
    //   244	250	627	java/lang/Throwable
    //   305	315	627	java/lang/Throwable
    //   336	346	627	java/lang/Throwable
    //   367	373	627	java/lang/Throwable
    //   427	435	627	java/lang/Throwable
    //   456	463	627	java/lang/Throwable
    //   484	491	627	java/lang/Throwable
    //   509	514	627	java/lang/Throwable
    //   532	537	627	java/lang/Throwable
    //   555	559	627	java/lang/Throwable
    //   663	668	671	java/lang/Throwable
    //   42	51	679	finally
    //   75	88	679	finally
    //   112	121	679	finally
    //   145	152	679	finally
    //   176	189	679	finally
    //   213	220	679	finally
    //   244	250	679	finally
    //   305	315	679	finally
    //   336	346	679	finally
    //   367	373	679	finally
    //   427	435	679	finally
    //   456	463	679	finally
    //   484	491	679	finally
    //   509	514	679	finally
    //   532	537	679	finally
    //   555	559	679	finally
    //   593	597	679	finally
    //   636	640	679	finally
    //   685	690	710	java/lang/Throwable
    //   703	708	718	java/lang/Throwable
    //   602	607	726	java/lang/Throwable
    //   620	625	734	java/lang/Throwable
    //   645	650	738	java/lang/Throwable
    //   259	267	746	java/lang/Throwable
    //   381	389	754	java/lang/Throwable
    //   400	404	762	java/lang/Throwable
    //   563	567	770	java/lang/Throwable
    //   578	582	778	java/lang/Throwable
  }

  private String b(Throwable paramThrowable)
  {
    return paramThrowable.toString();
  }

  // ERROR //
  private List<ar> b(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: invokestatic 181	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   5: astore 4
    //   7: aload 4
    //   9: monitorenter
    //   10: new 183	com/amap/api/services/core/bt
    //   13: dup
    //   14: aload_1
    //   15: iconst_0
    //   16: invokespecial 186	com/amap/api/services/core/bt:<init>	(Landroid/content/Context;Z)V
    //   19: invokevirtual 189	com/amap/api/services/core/bt:a	()Ljava/util/List;
    //   22: astore_1
    //   23: aload 4
    //   25: monitorexit
    //   26: aload_1
    //   27: areturn
    //   28: astore_3
    //   29: aload_2
    //   30: astore_1
    //   31: aload_1
    //   32: astore_2
    //   33: aload 4
    //   35: monitorexit
    //   36: aload_3
    //   37: athrow
    //   38: astore_2
    //   39: aload_2
    //   40: invokevirtual 48	java/lang/Throwable:printStackTrace	()V
    //   43: aload_1
    //   44: areturn
    //   45: astore_2
    //   46: aconst_null
    //   47: astore_1
    //   48: goto -9 -> 39
    //   51: astore_3
    //   52: goto -21 -> 31
    //
    // Exception table:
    //   from	to	target	type
    //   10	23	28	finally
    //   33	36	28	finally
    //   36	38	38	java/lang/Throwable
    //   2	10	45	java/lang/Throwable
    //   23	26	51	finally
  }

  private String c()
  {
    return bh.a(new Date().getTime());
  }

  private String c(Context paramContext)
  {
    return aj.a(paramContext);
  }

  protected abstract int a();

  protected abstract cc a(bq parambq);

  protected abstract String a(String paramString);

  protected String a(Throwable paramThrowable)
  {
    try
    {
      paramThrowable = bh.a(paramThrowable);
      return paramThrowable;
    }
    catch (Throwable paramThrowable)
    {
      paramThrowable.printStackTrace();
    }
    return null;
  }

  protected abstract String a(List<ar> paramList);

  void a(Context paramContext)
  {
    Object localObject1 = b(paramContext);
    if ((localObject1 == null) || (((List)localObject1).size() == 0));
    int i;
    do
    {
      do
      {
        return;
        localObject1 = a((List)localObject1);
      }
      while ((localObject1 == null) || ("".equals(localObject1)));
      ??? = c();
      str1 = a(paramContext, this.a);
      str2 = c(paramContext);
      i = a();
      ??? = a(str2, str1, (String)???, i, "ANR", (String)localObject1);
    }
    while ((??? == null) || ("".equals(???)));
    localObject1 = a((String)localObject1);
    String str1 = a(paramContext, (String)???);
    String str2 = b();
    synchronized (Looper.getMainLooper())
    {
      bq localbq = new bq(paramContext);
      boolean bool = a(paramContext, (String)localObject1, str2, str1, localbq);
      a(localbq, this.a.a(), (String)localObject1, i, bool);
      return;
    }
  }

  void a(Context paramContext, Throwable paramThrowable, String paramString1, String paramString2)
  {
    Object localObject1 = b(paramContext);
    label22: String str1;
    if ((localObject1 == null) || (((List)localObject1).size() == 0))
    {
      return;
    }
    else
    {
      do
        str1 = a(paramThrowable);
      while ((str1 == null) || ("".equals(str1)));
      localObject1 = ((List)localObject1).iterator();
    }
    while (true)
    {
      if (!((Iterator)localObject1).hasNext())
        break label22;
      ar localar = (ar)((Iterator)localObject1).next();
      if (!a(localar.f(), str1))
        break;
      a(localar);
      ??? = c();
      String str3 = a(paramContext, localar);
      String str4 = c(paramContext);
      Object localObject3 = b(paramThrowable);
      if ((localObject3 == null) || ("".equals(localObject3)))
        break label22;
      int i = a();
      StringBuilder localStringBuilder = new StringBuilder();
      if (paramString1 != null)
        localStringBuilder.append("class:").append(paramString1);
      if (paramString2 != null)
        localStringBuilder.append(" method:").append(paramString2).append("$<br/>");
      localStringBuilder.append(str1);
      String str2 = a(str1);
      ??? = a(str4, str3, (String)???, i, (String)localObject3, localStringBuilder.toString());
      if ((??? == null) || ("".equals(???)))
        break label22;
      str3 = a(paramContext, (String)???);
      str4 = b();
      synchronized (Looper.getMainLooper())
      {
        localObject3 = new bq(paramContext);
        boolean bool = a(paramContext, str2, str4, str3, (bq)localObject3);
        a((bq)localObject3, localar.a(), str2, i, bool);
      }
    }
  }

  protected void a(ar paramar)
  {
    this.a = paramar;
  }

  protected boolean a(String[] paramArrayOfString, String paramString)
  {
    if ((paramArrayOfString == null) || (paramString == null));
    while (true)
    {
      return false;
      try
      {
        int j = paramArrayOfString.length;
        int i = 0;
        while (i < j)
        {
          int k = paramString.indexOf(paramArrayOfString[i]);
          if (k != -1)
            return true;
          i += 1;
        }
      }
      catch (Throwable paramArrayOfString)
      {
        paramArrayOfString.printStackTrace();
      }
    }
    return false;
  }

  protected abstract String b();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.bg
 * JD-Core Version:    0.6.2
 */