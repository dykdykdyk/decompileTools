package com.amap.api.services.core;

import android.content.Context;
import android.os.Build.VERSION;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;

public class aq
{
  private static String a()
  {
    try
    {
      String str1 = android.net.Proxy.getDefaultHost();
      String str2 = str1;
      if (str1 == null)
        str2 = "null";
      return str2;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        ay.a(localThrowable, "ProxyUtil", "getDefHost");
        Object localObject = null;
      }
    }
  }

  public static java.net.Proxy a(Context paramContext)
  {
    try
    {
      if (Build.VERSION.SDK_INT >= 11)
        return a(paramContext, new URI("http://restapi.amap.com"));
      paramContext = b(paramContext);
      return paramContext;
    }
    catch (URISyntaxException paramContext)
    {
      ay.a(paramContext, "ProxyUtil", "getProxy");
      return null;
    }
    catch (Throwable paramContext)
    {
      ay.a(paramContext, "ProxyUtil", "getProxy");
    }
    return null;
  }

  private static java.net.Proxy a(Context paramContext, URI paramURI)
  {
    if (an.m(paramContext) == 0)
      try
      {
        paramContext = ProxySelector.getDefault().select(paramURI);
        if ((paramContext == null) || (paramContext.isEmpty()))
          break label72;
        paramContext = (java.net.Proxy)paramContext.get(0);
        if (paramContext != null)
        {
          paramURI = paramContext.type();
          Proxy.Type localType = Proxy.Type.DIRECT;
          if (paramURI != localType);
        }
        else
        {
          paramContext = null;
        }
        return paramContext;
      }
      catch (Throwable paramContext)
      {
        ay.a(paramContext, "ProxyUtil", "getProxySelectorCfg");
      }
    else
      return null;
    label72: return null;
  }

  private static boolean a(String paramString, int paramInt)
  {
    return (paramString != null) && (paramString.length() > 0) && (paramInt != -1);
  }

  private static int b()
  {
    try
    {
      int i = android.net.Proxy.getDefaultPort();
      return i;
    }
    catch (Throwable localThrowable)
    {
      ay.a(localThrowable, "ProxyUtil", "getDefPort");
    }
    return -1;
  }

  // ERROR //
  private static java.net.Proxy b(Context paramContext)
  {
    // Byte code:
    //   0: bipush 80
    //   2: istore_3
    //   3: iconst_0
    //   4: istore 4
    //   6: iconst_m1
    //   7: istore_2
    //   8: aload_0
    //   9: invokestatic 59	com/amap/api/services/core/an:m	(Landroid/content/Context;)I
    //   12: ifne +563 -> 575
    //   15: ldc 109
    //   17: invokestatic 115	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   20: astore 6
    //   22: aload_0
    //   23: invokevirtual 121	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   26: astore 7
    //   28: aload 7
    //   30: aload 6
    //   32: aconst_null
    //   33: aconst_null
    //   34: aconst_null
    //   35: aconst_null
    //   36: invokevirtual 127	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   39: astore 6
    //   41: aload 6
    //   43: ifnull +670 -> 713
    //   46: aload 6
    //   48: astore 7
    //   50: aload 6
    //   52: invokeinterface 132 1 0
    //   57: ifeq +656 -> 713
    //   60: aload 6
    //   62: astore 7
    //   64: aload 6
    //   66: aload 6
    //   68: ldc 134
    //   70: invokeinterface 138 2 0
    //   75: invokeinterface 142 2 0
    //   80: astore 9
    //   82: aload 9
    //   84: astore 8
    //   86: aload 9
    //   88: ifnull +17 -> 105
    //   91: aload 6
    //   93: astore 7
    //   95: aload 9
    //   97: getstatic 148	java/util/Locale:US	Ljava/util/Locale;
    //   100: invokevirtual 152	java/lang/String:toLowerCase	(Ljava/util/Locale;)Ljava/lang/String;
    //   103: astore 8
    //   105: aload 8
    //   107: ifnull +128 -> 235
    //   110: aload 6
    //   112: astore 7
    //   114: aload 8
    //   116: ldc 154
    //   118: invokevirtual 158	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   121: ifeq +114 -> 235
    //   124: aload 6
    //   126: astore 7
    //   128: invokestatic 160	com/amap/api/services/core/aq:a	()Ljava/lang/String;
    //   131: astore 8
    //   133: aload 6
    //   135: astore 7
    //   137: invokestatic 162	com/amap/api/services/core/aq:b	()I
    //   140: istore_1
    //   141: aload 6
    //   143: astore 7
    //   145: aload 8
    //   147: invokestatic 166	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   150: ifne +573 -> 723
    //   153: aload 6
    //   155: astore 7
    //   157: aload 8
    //   159: ldc 20
    //   161: invokevirtual 170	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   164: istore 5
    //   166: iload 5
    //   168: ifne +555 -> 723
    //   171: iconst_1
    //   172: istore_2
    //   173: aload 8
    //   175: astore_0
    //   176: iload_2
    //   177: ifne +543 -> 720
    //   180: ldc 172
    //   182: astore_0
    //   183: iload_1
    //   184: istore_2
    //   185: iload_1
    //   186: iconst_m1
    //   187: if_icmpne +6 -> 193
    //   190: bipush 80
    //   192: istore_2
    //   193: iload_2
    //   194: istore_1
    //   195: aload 6
    //   197: ifnull +10 -> 207
    //   200: aload 6
    //   202: invokeinterface 175 1 0
    //   207: iload_1
    //   208: istore_2
    //   209: aload_0
    //   210: iload_2
    //   211: invokestatic 177	com/amap/api/services/core/aq:a	(Ljava/lang/String;I)Z
    //   214: ifeq +361 -> 575
    //   217: new 81	java/net/Proxy
    //   220: dup
    //   221: getstatic 180	java/net/Proxy$Type:HTTP	Ljava/net/Proxy$Type;
    //   224: aload_0
    //   225: iload_2
    //   226: invokestatic 186	java/net/InetSocketAddress:createUnresolved	(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    //   229: invokespecial 189	java/net/Proxy:<init>	(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    //   232: astore_0
    //   233: aload_0
    //   234: areturn
    //   235: aload 8
    //   237: ifnull +476 -> 713
    //   240: aload 6
    //   242: astore 7
    //   244: aload 8
    //   246: ldc 191
    //   248: invokevirtual 158	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   251: ifeq +462 -> 713
    //   254: aload 6
    //   256: astore 7
    //   258: invokestatic 160	com/amap/api/services/core/aq:a	()Ljava/lang/String;
    //   261: astore 8
    //   263: aload 6
    //   265: astore 7
    //   267: invokestatic 162	com/amap/api/services/core/aq:b	()I
    //   270: istore_1
    //   271: aload 6
    //   273: astore 7
    //   275: aload 8
    //   277: invokestatic 166	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   280: ifne +426 -> 706
    //   283: aload 6
    //   285: astore 7
    //   287: aload 8
    //   289: ldc 20
    //   291: invokevirtual 170	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   294: istore 5
    //   296: iload 5
    //   298: ifne +408 -> 706
    //   301: iconst_1
    //   302: istore_2
    //   303: aload 8
    //   305: astore_0
    //   306: iload_2
    //   307: ifne +396 -> 703
    //   310: ldc 193
    //   312: astore_0
    //   313: iload_1
    //   314: iconst_m1
    //   315: if_icmpne +385 -> 700
    //   318: bipush 80
    //   320: istore_1
    //   321: goto -126 -> 195
    //   324: astore 7
    //   326: aconst_null
    //   327: astore 6
    //   329: iconst_m1
    //   330: istore_1
    //   331: aload 7
    //   333: ldc 22
    //   335: ldc 195
    //   337: invokestatic 29	com/amap/api/services/core/ay:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   340: aload_0
    //   341: invokestatic 199	com/amap/api/services/core/an:o	(Landroid/content/Context;)Ljava/lang/String;
    //   344: astore_0
    //   345: aload_0
    //   346: ifnull +338 -> 684
    //   349: aload_0
    //   350: getstatic 148	java/util/Locale:US	Ljava/util/Locale;
    //   353: invokevirtual 152	java/lang/String:toLowerCase	(Ljava/util/Locale;)Ljava/lang/String;
    //   356: astore 7
    //   358: invokestatic 160	com/amap/api/services/core/aq:a	()Ljava/lang/String;
    //   361: astore_0
    //   362: invokestatic 162	com/amap/api/services/core/aq:b	()I
    //   365: istore_1
    //   366: aload 7
    //   368: ldc 154
    //   370: invokevirtual 202	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   373: iconst_m1
    //   374: if_icmpeq +52 -> 426
    //   377: aload_0
    //   378: invokestatic 166	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   381: ifne +311 -> 692
    //   384: aload_0
    //   385: ldc 20
    //   387: invokevirtual 170	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   390: ifne +302 -> 692
    //   393: iconst_1
    //   394: istore_2
    //   395: iload_2
    //   396: ifne +6 -> 402
    //   399: ldc 172
    //   401: astore_0
    //   402: iload_1
    //   403: iconst_m1
    //   404: if_icmpne +285 -> 689
    //   407: iload_3
    //   408: istore_1
    //   409: aload 6
    //   411: ifnull +10 -> 421
    //   414: aload 6
    //   416: invokeinterface 175 1 0
    //   421: iload_1
    //   422: istore_2
    //   423: goto -214 -> 209
    //   426: aload 7
    //   428: ldc 191
    //   430: invokevirtual 202	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   433: iconst_m1
    //   434: if_icmpeq +250 -> 684
    //   437: aload_0
    //   438: invokestatic 166	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   441: ifne +236 -> 677
    //   444: aload_0
    //   445: ldc 20
    //   447: invokevirtual 170	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   450: ifne +227 -> 677
    //   453: iconst_1
    //   454: istore_2
    //   455: iload_3
    //   456: istore_1
    //   457: iload_2
    //   458: ifne -49 -> 409
    //   461: ldc 172
    //   463: astore_0
    //   464: iload_3
    //   465: istore_1
    //   466: goto -57 -> 409
    //   469: astore_0
    //   470: aconst_null
    //   471: astore 6
    //   473: iload_2
    //   474: istore_1
    //   475: aconst_null
    //   476: astore 8
    //   478: aload 6
    //   480: astore 7
    //   482: aload_0
    //   483: ldc 22
    //   485: ldc 204
    //   487: invokestatic 29	com/amap/api/services/core/ay:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   490: aload 6
    //   492: astore 7
    //   494: aload_0
    //   495: invokevirtual 207	java/lang/Throwable:printStackTrace	()V
    //   498: aload 8
    //   500: astore_0
    //   501: iload_1
    //   502: istore_2
    //   503: aload 6
    //   505: ifnull -296 -> 209
    //   508: aload 6
    //   510: invokeinterface 175 1 0
    //   515: aload 8
    //   517: astore_0
    //   518: iload_1
    //   519: istore_2
    //   520: goto -311 -> 209
    //   523: astore_0
    //   524: aload_0
    //   525: ldc 22
    //   527: ldc 209
    //   529: invokestatic 29	com/amap/api/services/core/ay:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   532: aload_0
    //   533: invokevirtual 207	java/lang/Throwable:printStackTrace	()V
    //   536: aload 8
    //   538: astore_0
    //   539: iload_1
    //   540: istore_2
    //   541: goto -332 -> 209
    //   544: astore_0
    //   545: aconst_null
    //   546: astore 7
    //   548: aload 7
    //   550: ifnull +10 -> 560
    //   553: aload 7
    //   555: invokeinterface 175 1 0
    //   560: aload_0
    //   561: athrow
    //   562: astore_0
    //   563: aload_0
    //   564: ldc 22
    //   566: ldc 209
    //   568: invokestatic 29	com/amap/api/services/core/ay:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   571: aload_0
    //   572: invokevirtual 207	java/lang/Throwable:printStackTrace	()V
    //   575: aconst_null
    //   576: areturn
    //   577: astore 6
    //   579: aload 6
    //   581: ldc 22
    //   583: ldc 209
    //   585: invokestatic 29	com/amap/api/services/core/ay:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   588: aload 6
    //   590: invokevirtual 207	java/lang/Throwable:printStackTrace	()V
    //   593: goto -33 -> 560
    //   596: astore 6
    //   598: aload 6
    //   600: ldc 22
    //   602: ldc 209
    //   604: invokestatic 29	com/amap/api/services/core/ay:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   607: aload 6
    //   609: invokevirtual 207	java/lang/Throwable:printStackTrace	()V
    //   612: goto -191 -> 421
    //   615: astore 6
    //   617: aload 6
    //   619: ldc 22
    //   621: ldc 209
    //   623: invokestatic 29	com/amap/api/services/core/ay:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   626: aload 6
    //   628: invokevirtual 207	java/lang/Throwable:printStackTrace	()V
    //   631: goto -424 -> 207
    //   634: astore_0
    //   635: goto -87 -> 548
    //   638: astore_0
    //   639: aload 6
    //   641: astore 7
    //   643: goto -95 -> 548
    //   646: astore_0
    //   647: iload_2
    //   648: istore_1
    //   649: goto -174 -> 475
    //   652: astore_0
    //   653: goto -178 -> 475
    //   656: astore_0
    //   657: goto -182 -> 475
    //   660: astore 7
    //   662: iconst_m1
    //   663: istore_1
    //   664: goto -333 -> 331
    //   667: astore 7
    //   669: goto -338 -> 331
    //   672: astore 7
    //   674: goto -343 -> 331
    //   677: iconst_0
    //   678: istore_2
    //   679: aconst_null
    //   680: astore_0
    //   681: goto -226 -> 455
    //   684: aconst_null
    //   685: astore_0
    //   686: goto -277 -> 409
    //   689: goto -280 -> 409
    //   692: aconst_null
    //   693: astore_0
    //   694: iload 4
    //   696: istore_2
    //   697: goto -302 -> 395
    //   700: goto -505 -> 195
    //   703: goto -390 -> 313
    //   706: iconst_0
    //   707: istore_2
    //   708: aconst_null
    //   709: astore_0
    //   710: goto -404 -> 306
    //   713: aconst_null
    //   714: astore_0
    //   715: iload_2
    //   716: istore_1
    //   717: goto -522 -> 195
    //   720: goto -537 -> 183
    //   723: iconst_0
    //   724: istore_2
    //   725: aconst_null
    //   726: astore_0
    //   727: goto -551 -> 176
    //
    // Exception table:
    //   from	to	target	type
    //   28	41	324	java/lang/SecurityException
    //   28	41	469	java/lang/Throwable
    //   508	515	523	java/lang/Throwable
    //   28	41	544	finally
    //   209	233	562	java/lang/Throwable
    //   553	560	577	java/lang/Throwable
    //   414	421	596	java/lang/Throwable
    //   200	207	615	java/lang/Throwable
    //   50	60	634	finally
    //   64	82	634	finally
    //   95	105	634	finally
    //   114	124	634	finally
    //   128	133	634	finally
    //   137	141	634	finally
    //   145	153	634	finally
    //   157	166	634	finally
    //   244	254	634	finally
    //   258	263	634	finally
    //   267	271	634	finally
    //   275	283	634	finally
    //   287	296	634	finally
    //   482	490	634	finally
    //   494	498	634	finally
    //   331	345	638	finally
    //   349	393	638	finally
    //   426	453	638	finally
    //   50	60	646	java/lang/Throwable
    //   64	82	646	java/lang/Throwable
    //   95	105	646	java/lang/Throwable
    //   114	124	646	java/lang/Throwable
    //   128	133	646	java/lang/Throwable
    //   137	141	646	java/lang/Throwable
    //   244	254	646	java/lang/Throwable
    //   258	263	646	java/lang/Throwable
    //   267	271	646	java/lang/Throwable
    //   145	153	652	java/lang/Throwable
    //   157	166	652	java/lang/Throwable
    //   275	283	656	java/lang/Throwable
    //   287	296	656	java/lang/Throwable
    //   50	60	660	java/lang/SecurityException
    //   64	82	660	java/lang/SecurityException
    //   95	105	660	java/lang/SecurityException
    //   114	124	660	java/lang/SecurityException
    //   128	133	660	java/lang/SecurityException
    //   137	141	660	java/lang/SecurityException
    //   244	254	660	java/lang/SecurityException
    //   258	263	660	java/lang/SecurityException
    //   267	271	660	java/lang/SecurityException
    //   145	153	667	java/lang/SecurityException
    //   157	166	667	java/lang/SecurityException
    //   275	283	672	java/lang/SecurityException
    //   287	296	672	java/lang/SecurityException
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.aq
 * JD-Core Version:    0.6.2
 */