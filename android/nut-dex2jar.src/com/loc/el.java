package com.loc;

import android.content.Context;
import android.os.Build.VERSION;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;

public final class el
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
        localThrowable.printStackTrace();
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
      paramContext.printStackTrace();
      return null;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }

  private static java.net.Proxy a(Context paramContext, URI paramURI)
  {
    if (eh.h(paramContext) == 0)
      try
      {
        paramContext = ProxySelector.getDefault().select(paramURI);
        if ((paramContext == null) || (paramContext.isEmpty()))
          break label68;
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
        paramContext.printStackTrace();
      }
    else
      return null;
    label68: return null;
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
      localThrowable.printStackTrace();
    }
    return -1;
  }

  // ERROR //
  private static java.net.Proxy b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 49	com/loc/eh:h	(Landroid/content/Context;)I
    //   4: ifne +666 -> 670
    //   7: ldc 89
    //   9: invokestatic 95	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   12: astore 4
    //   14: aload_0
    //   15: invokevirtual 101	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   18: astore 5
    //   20: aload 5
    //   22: aload 4
    //   24: aconst_null
    //   25: aconst_null
    //   26: aconst_null
    //   27: aconst_null
    //   28: invokevirtual 107	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   31: astore 4
    //   33: aload 4
    //   35: ifnull +720 -> 755
    //   38: aload 4
    //   40: astore 5
    //   42: aload 4
    //   44: invokeinterface 112 1 0
    //   49: ifeq +706 -> 755
    //   52: aload 4
    //   54: astore 5
    //   56: aload 4
    //   58: aload 4
    //   60: ldc 114
    //   62: invokeinterface 118 2 0
    //   67: invokeinterface 122 2 0
    //   72: astore 7
    //   74: aload 7
    //   76: astore 6
    //   78: aload 7
    //   80: ifnull +17 -> 97
    //   83: aload 4
    //   85: astore 5
    //   87: aload 7
    //   89: getstatic 128	java/util/Locale:US	Ljava/util/Locale;
    //   92: invokevirtual 134	java/lang/String:toLowerCase	(Ljava/util/Locale;)Ljava/lang/String;
    //   95: astore 6
    //   97: aload 6
    //   99: ifnull +149 -> 248
    //   102: aload 4
    //   104: astore 5
    //   106: aload 6
    //   108: ldc 136
    //   110: invokevirtual 140	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   113: ifeq +135 -> 248
    //   116: aload 4
    //   118: astore 5
    //   120: invokestatic 142	com/loc/el:a	()Ljava/lang/String;
    //   123: astore 6
    //   125: aload 4
    //   127: astore 5
    //   129: invokestatic 144	com/loc/el:b	()I
    //   132: istore_1
    //   133: aload 4
    //   135: astore 5
    //   137: aload 6
    //   139: invokestatic 148	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   142: ifne +620 -> 762
    //   145: aload 4
    //   147: astore 5
    //   149: aload 6
    //   151: ldc 15
    //   153: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   156: istore_3
    //   157: iload_3
    //   158: ifne +604 -> 762
    //   161: iconst_1
    //   162: istore_2
    //   163: aload 6
    //   165: astore_0
    //   166: iload_2
    //   167: ifne +6 -> 173
    //   170: ldc 154
    //   172: astore_0
    //   173: iload_1
    //   174: istore_2
    //   175: iload_1
    //   176: iconst_m1
    //   177: if_icmpne +6 -> 183
    //   180: bipush 80
    //   182: istore_2
    //   183: iload_2
    //   184: istore_1
    //   185: aload_0
    //   186: astore 5
    //   188: aload 4
    //   190: ifnull +15 -> 205
    //   193: aload 4
    //   195: invokeinterface 157 1 0
    //   200: aload_0
    //   201: astore 5
    //   203: iload_2
    //   204: istore_1
    //   205: aload 5
    //   207: ifnull +449 -> 656
    //   210: aload 5
    //   212: invokevirtual 160	java/lang/String:length	()I
    //   215: ifle +441 -> 656
    //   218: iload_1
    //   219: iconst_m1
    //   220: if_icmpeq +436 -> 656
    //   223: iconst_1
    //   224: istore_2
    //   225: iload_2
    //   226: ifeq +444 -> 670
    //   229: new 71	java/net/Proxy
    //   232: dup
    //   233: getstatic 163	java/net/Proxy$Type:HTTP	Ljava/net/Proxy$Type;
    //   236: aload 5
    //   238: iload_1
    //   239: invokestatic 169	java/net/InetSocketAddress:createUnresolved	(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    //   242: invokespecial 172	java/net/Proxy:<init>	(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    //   245: astore_0
    //   246: aload_0
    //   247: areturn
    //   248: aload 6
    //   250: ifnull +505 -> 755
    //   253: aload 4
    //   255: astore 5
    //   257: aload 6
    //   259: ldc 174
    //   261: invokevirtual 140	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   264: ifeq +491 -> 755
    //   267: aload 4
    //   269: astore 5
    //   271: invokestatic 142	com/loc/el:a	()Ljava/lang/String;
    //   274: astore 6
    //   276: aload 4
    //   278: astore 5
    //   280: invokestatic 144	com/loc/el:b	()I
    //   283: istore_1
    //   284: aload 4
    //   286: astore 5
    //   288: aload 6
    //   290: invokestatic 148	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   293: ifne +454 -> 747
    //   296: aload 4
    //   298: astore 5
    //   300: aload 6
    //   302: ldc 15
    //   304: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   307: istore_3
    //   308: iload_3
    //   309: ifne +438 -> 747
    //   312: iconst_1
    //   313: istore_2
    //   314: aload 6
    //   316: astore 5
    //   318: iload_2
    //   319: ifne +7 -> 326
    //   322: ldc 176
    //   324: astore 5
    //   326: iload_1
    //   327: istore_2
    //   328: aload 5
    //   330: astore_0
    //   331: iload_1
    //   332: iconst_m1
    //   333: if_icmpne -150 -> 183
    //   336: bipush 80
    //   338: istore_2
    //   339: aload 5
    //   341: astore_0
    //   342: goto -159 -> 183
    //   345: astore 4
    //   347: aload 4
    //   349: invokevirtual 19	java/lang/Throwable:printStackTrace	()V
    //   352: aload 4
    //   354: invokevirtual 19	java/lang/Throwable:printStackTrace	()V
    //   357: iload_2
    //   358: istore_1
    //   359: aload_0
    //   360: astore 5
    //   362: goto -157 -> 205
    //   365: astore 5
    //   367: aconst_null
    //   368: astore 4
    //   370: iconst_m1
    //   371: istore_1
    //   372: aconst_null
    //   373: astore 7
    //   375: aconst_null
    //   376: astore 6
    //   378: aload 5
    //   380: invokevirtual 19	java/lang/Throwable:printStackTrace	()V
    //   383: aload_0
    //   384: invokestatic 180	com/loc/eh:j	(Landroid/content/Context;)Ljava/lang/String;
    //   387: astore_0
    //   388: aload_0
    //   389: ifnull +352 -> 741
    //   392: aload_0
    //   393: getstatic 128	java/util/Locale:US	Ljava/util/Locale;
    //   396: invokevirtual 134	java/lang/String:toLowerCase	(Ljava/util/Locale;)Ljava/lang/String;
    //   399: astore 8
    //   401: invokestatic 142	com/loc/el:a	()Ljava/lang/String;
    //   404: astore 5
    //   406: invokestatic 144	com/loc/el:b	()I
    //   409: istore_2
    //   410: aload 8
    //   412: ldc 136
    //   414: invokevirtual 183	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   417: iconst_m1
    //   418: if_icmpeq +65 -> 483
    //   421: aload 5
    //   423: invokestatic 148	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   426: ifne +306 -> 732
    //   429: aload 5
    //   431: ldc 15
    //   433: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   436: ifne +296 -> 732
    //   439: iconst_1
    //   440: istore_1
    //   441: iload_1
    //   442: ifne +7 -> 449
    //   445: ldc 154
    //   447: astore 5
    //   449: iload_2
    //   450: istore_1
    //   451: aload 5
    //   453: astore_0
    //   454: iload_2
    //   455: iconst_m1
    //   456: if_icmpne +9 -> 465
    //   459: bipush 80
    //   461: istore_1
    //   462: aload 5
    //   464: astore_0
    //   465: aload 4
    //   467: ifnull +252 -> 719
    //   470: aload 4
    //   472: invokeinterface 157 1 0
    //   477: aload_0
    //   478: astore 5
    //   480: goto -275 -> 205
    //   483: iload_2
    //   484: istore_1
    //   485: aload 7
    //   487: astore_0
    //   488: aload 8
    //   490: ldc 174
    //   492: invokevirtual 183	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   495: iconst_m1
    //   496: if_icmpeq -31 -> 465
    //   499: aload 5
    //   501: invokestatic 148	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   504: ifne +221 -> 725
    //   507: aload 5
    //   509: ldc 15
    //   511: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   514: ifne +211 -> 725
    //   517: aload 5
    //   519: astore_0
    //   520: iconst_1
    //   521: istore_1
    //   522: iload_1
    //   523: ifne +6 -> 529
    //   526: ldc 154
    //   528: astore_0
    //   529: bipush 80
    //   531: istore_1
    //   532: goto -67 -> 465
    //   535: astore 4
    //   537: aload 4
    //   539: invokevirtual 19	java/lang/Throwable:printStackTrace	()V
    //   542: aload 4
    //   544: invokevirtual 19	java/lang/Throwable:printStackTrace	()V
    //   547: aload_0
    //   548: astore 5
    //   550: goto -345 -> 205
    //   553: astore_0
    //   554: aconst_null
    //   555: astore 4
    //   557: iconst_m1
    //   558: istore_2
    //   559: aconst_null
    //   560: astore 6
    //   562: aload 4
    //   564: astore 5
    //   566: aload_0
    //   567: invokevirtual 19	java/lang/Throwable:printStackTrace	()V
    //   570: aload 4
    //   572: astore 5
    //   574: aload_0
    //   575: invokevirtual 19	java/lang/Throwable:printStackTrace	()V
    //   578: iload_2
    //   579: istore_1
    //   580: aload 6
    //   582: astore 5
    //   584: aload 4
    //   586: ifnull -381 -> 205
    //   589: aload 4
    //   591: invokeinterface 157 1 0
    //   596: iload_2
    //   597: istore_1
    //   598: aload 6
    //   600: astore 5
    //   602: goto -397 -> 205
    //   605: astore_0
    //   606: aload_0
    //   607: invokevirtual 19	java/lang/Throwable:printStackTrace	()V
    //   610: aload_0
    //   611: invokevirtual 19	java/lang/Throwable:printStackTrace	()V
    //   614: iload_2
    //   615: istore_1
    //   616: aload 6
    //   618: astore 5
    //   620: goto -415 -> 205
    //   623: astore_0
    //   624: aconst_null
    //   625: astore 5
    //   627: aload 5
    //   629: ifnull +10 -> 639
    //   632: aload 5
    //   634: invokeinterface 157 1 0
    //   639: aload_0
    //   640: athrow
    //   641: astore 4
    //   643: aload 4
    //   645: invokevirtual 19	java/lang/Throwable:printStackTrace	()V
    //   648: aload 4
    //   650: invokevirtual 19	java/lang/Throwable:printStackTrace	()V
    //   653: goto -14 -> 639
    //   656: iconst_0
    //   657: istore_2
    //   658: goto -433 -> 225
    //   661: astore_0
    //   662: aload_0
    //   663: invokevirtual 19	java/lang/Throwable:printStackTrace	()V
    //   666: aload_0
    //   667: invokevirtual 19	java/lang/Throwable:printStackTrace	()V
    //   670: aconst_null
    //   671: areturn
    //   672: astore_0
    //   673: goto -46 -> 627
    //   676: astore_0
    //   677: aload 4
    //   679: astore 5
    //   681: goto -54 -> 627
    //   684: astore_0
    //   685: iconst_m1
    //   686: istore_2
    //   687: goto -128 -> 559
    //   690: astore_0
    //   691: iload_1
    //   692: istore_2
    //   693: goto -134 -> 559
    //   696: astore_0
    //   697: iload_1
    //   698: istore_2
    //   699: goto -140 -> 559
    //   702: astore 5
    //   704: iconst_m1
    //   705: istore_1
    //   706: goto -334 -> 372
    //   709: astore 5
    //   711: goto -339 -> 372
    //   714: astore 5
    //   716: goto -344 -> 372
    //   719: aload_0
    //   720: astore 5
    //   722: goto -517 -> 205
    //   725: iconst_0
    //   726: istore_1
    //   727: aconst_null
    //   728: astore_0
    //   729: goto -207 -> 522
    //   732: iconst_0
    //   733: istore_1
    //   734: aload 6
    //   736: astore 5
    //   738: goto -297 -> 441
    //   741: aload 7
    //   743: astore_0
    //   744: goto -279 -> 465
    //   747: iconst_0
    //   748: istore_2
    //   749: aconst_null
    //   750: astore 5
    //   752: goto -434 -> 318
    //   755: iconst_m1
    //   756: istore_2
    //   757: aconst_null
    //   758: astore_0
    //   759: goto -576 -> 183
    //   762: iconst_0
    //   763: istore_2
    //   764: aconst_null
    //   765: astore_0
    //   766: goto -600 -> 166
    //
    // Exception table:
    //   from	to	target	type
    //   193	200	345	java/lang/Throwable
    //   20	33	365	java/lang/SecurityException
    //   470	477	535	java/lang/Throwable
    //   20	33	553	java/lang/Throwable
    //   589	596	605	java/lang/Throwable
    //   20	33	623	finally
    //   632	639	641	java/lang/Throwable
    //   210	218	661	java/lang/Throwable
    //   229	246	661	java/lang/Throwable
    //   42	52	672	finally
    //   56	74	672	finally
    //   87	97	672	finally
    //   106	116	672	finally
    //   120	125	672	finally
    //   129	133	672	finally
    //   137	145	672	finally
    //   149	157	672	finally
    //   257	267	672	finally
    //   271	276	672	finally
    //   280	284	672	finally
    //   288	296	672	finally
    //   300	308	672	finally
    //   566	570	672	finally
    //   574	578	672	finally
    //   378	388	676	finally
    //   392	439	676	finally
    //   488	517	676	finally
    //   42	52	684	java/lang/Throwable
    //   56	74	684	java/lang/Throwable
    //   87	97	684	java/lang/Throwable
    //   106	116	684	java/lang/Throwable
    //   120	125	684	java/lang/Throwable
    //   129	133	684	java/lang/Throwable
    //   257	267	684	java/lang/Throwable
    //   271	276	684	java/lang/Throwable
    //   280	284	684	java/lang/Throwable
    //   137	145	690	java/lang/Throwable
    //   149	157	690	java/lang/Throwable
    //   288	296	696	java/lang/Throwable
    //   300	308	696	java/lang/Throwable
    //   42	52	702	java/lang/SecurityException
    //   56	74	702	java/lang/SecurityException
    //   87	97	702	java/lang/SecurityException
    //   106	116	702	java/lang/SecurityException
    //   120	125	702	java/lang/SecurityException
    //   129	133	702	java/lang/SecurityException
    //   257	267	702	java/lang/SecurityException
    //   271	276	702	java/lang/SecurityException
    //   280	284	702	java/lang/SecurityException
    //   137	145	709	java/lang/SecurityException
    //   149	157	709	java/lang/SecurityException
    //   288	296	714	java/lang/SecurityException
    //   300	308	714	java/lang/SecurityException
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.el
 * JD-Core Version:    0.6.2
 */