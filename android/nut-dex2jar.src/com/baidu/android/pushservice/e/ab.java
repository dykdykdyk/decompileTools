package com.baidu.android.pushservice.e;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Build.VERSION;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.g;
import com.baidu.android.pushservice.j;
import com.baidu.android.pushservice.j.d;
import com.baidu.android.pushservice.j.f;
import com.baidu.android.pushservice.util.i;
import com.baidu.android.pushservice.util.l;
import com.baidu.android.pushservice.util.m;
import java.util.HashMap;
import org.json.JSONObject;

public class ab
  implements Runnable
{
  private Context a;
  private int b = 5;
  private int c = 0;
  private boolean d = false;
  private boolean e = true;

  public ab(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
  }

  // ERROR //
  private boolean b()
  {
    // Byte code:
    //   0: invokestatic 46	com/baidu/android/pushservice/h:d	()Ljava/lang/String;
    //   3: astore 4
    //   5: aload 4
    //   7: astore_3
    //   8: aload_0
    //   9: getfield 23	com/baidu/android/pushservice/e/ab:c	I
    //   12: iconst_2
    //   13: if_icmple +80 -> 93
    //   16: aload_0
    //   17: getfield 35	com/baidu/android/pushservice/e/ab:a	Landroid/content/Context;
    //   20: aload_0
    //   21: getfield 27	com/baidu/android/pushservice/e/ab:e	Z
    //   24: invokestatic 49	com/baidu/android/pushservice/h:b	(Landroid/content/Context;Z)Ljava/lang/String;
    //   27: astore 5
    //   29: ldc 51
    //   31: new 53	java/lang/StringBuilder
    //   34: dup
    //   35: ldc 55
    //   37: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   40: aload 5
    //   42: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   48: invokestatic 70	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   51: aload_0
    //   52: iconst_0
    //   53: putfield 27	com/baidu/android/pushservice/e/ab:e	Z
    //   56: aload 4
    //   58: astore_3
    //   59: aload 5
    //   61: invokestatic 76	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   64: ifne +29 -> 93
    //   67: aload 4
    //   69: invokestatic 78	com/baidu/android/pushservice/h:a	()Ljava/lang/String;
    //   72: new 53	java/lang/StringBuilder
    //   75: dup
    //   76: ldc 80
    //   78: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   81: aload 5
    //   83: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   89: invokevirtual 86	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   92: astore_3
    //   93: ldc 51
    //   95: new 53	java/lang/StringBuilder
    //   98: dup
    //   99: ldc 88
    //   101: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   104: aload_3
    //   105: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   111: invokestatic 70	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   114: aload_3
    //   115: ldc 90
    //   117: aload_0
    //   118: invokespecial 93	com/baidu/android/pushservice/e/ab:c	()Ljava/util/HashMap;
    //   121: invokestatic 98	com/baidu/android/pushservice/f/c:a	(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/baidu/android/pushservice/f/b;
    //   124: astore_3
    //   125: aload_3
    //   126: invokevirtual 103	com/baidu/android/pushservice/f/b:b	()I
    //   129: istore_1
    //   130: aload_3
    //   131: invokevirtual 106	com/baidu/android/pushservice/f/b:a	()Ljava/io/InputStream;
    //   134: astore_3
    //   135: iload_1
    //   136: sipush 200
    //   139: if_icmpne +254 -> 393
    //   142: aload_3
    //   143: astore 4
    //   145: aload_3
    //   146: invokestatic 111	com/baidu/android/pushservice/i/a/b:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   149: astore 6
    //   151: aload_3
    //   152: astore 4
    //   154: ldc 51
    //   156: new 53	java/lang/StringBuilder
    //   159: dup
    //   160: ldc 113
    //   162: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   165: aload 6
    //   167: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   173: invokestatic 115	com/baidu/android/pushservice/h/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   176: aload_3
    //   177: astore 4
    //   179: new 117	org/json/JSONObject
    //   182: dup
    //   183: aload 6
    //   185: invokespecial 118	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   188: ldc 120
    //   190: invokevirtual 124	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   193: astore 5
    //   195: aload 5
    //   197: ifnull +166 -> 363
    //   200: aload_3
    //   201: astore 4
    //   203: aload 5
    //   205: ldc 126
    //   207: invokevirtual 130	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   210: astore 6
    //   212: aload_3
    //   213: astore 4
    //   215: aload 5
    //   217: ldc 132
    //   219: invokevirtual 130	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   222: astore 7
    //   224: aload_3
    //   225: astore 4
    //   227: aload 5
    //   229: ldc 134
    //   231: invokevirtual 130	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   234: astore 5
    //   236: aload_3
    //   237: astore 4
    //   239: ldc 51
    //   241: new 53	java/lang/StringBuilder
    //   244: dup
    //   245: ldc 136
    //   247: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   250: aload 6
    //   252: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   258: invokestatic 115	com/baidu/android/pushservice/h/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   261: aload_3
    //   262: astore 4
    //   264: ldc 51
    //   266: new 53	java/lang/StringBuilder
    //   269: dup
    //   270: ldc 138
    //   272: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   275: aload 7
    //   277: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   280: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   283: invokestatic 115	com/baidu/android/pushservice/h/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   286: aload_3
    //   287: astore 4
    //   289: ldc 51
    //   291: new 53	java/lang/StringBuilder
    //   294: dup
    //   295: ldc 140
    //   297: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   300: aload 5
    //   302: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   305: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   308: invokestatic 115	com/baidu/android/pushservice/h/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   311: aload_3
    //   312: astore 4
    //   314: aload_0
    //   315: getfield 35	com/baidu/android/pushservice/e/ab:a	Landroid/content/Context;
    //   318: invokestatic 145	com/baidu/android/pushservice/j:a	(Landroid/content/Context;)Lcom/baidu/android/pushservice/j;
    //   321: aload 6
    //   323: aload 7
    //   325: invokevirtual 147	com/baidu/android/pushservice/j:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   328: iconst_1
    //   329: istore_2
    //   330: aload_3
    //   331: astore 4
    //   333: aload_0
    //   334: iconst_0
    //   335: putfield 23	com/baidu/android/pushservice/e/ab:c	I
    //   338: aload_3
    //   339: ifnonnull +117 -> 456
    //   342: aload_3
    //   343: astore 4
    //   345: aload_0
    //   346: iconst_1
    //   347: putfield 25	com/baidu/android/pushservice/e/ab:d	Z
    //   350: iconst_1
    //   351: anewarray 149	java/io/Closeable
    //   354: dup
    //   355: iconst_0
    //   356: aload_3
    //   357: aastore
    //   358: invokestatic 152	com/baidu/android/pushservice/f/c:a	([Ljava/io/Closeable;)V
    //   361: iload_2
    //   362: ireturn
    //   363: aload_3
    //   364: astore 4
    //   366: ldc 51
    //   368: new 53	java/lang/StringBuilder
    //   371: dup
    //   372: ldc 154
    //   374: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   377: aload 6
    //   379: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   382: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   385: invokestatic 115	com/baidu/android/pushservice/h/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   388: iconst_0
    //   389: istore_2
    //   390: goto -60 -> 330
    //   393: aload_3
    //   394: astore 4
    //   396: aload_3
    //   397: invokestatic 111	com/baidu/android/pushservice/i/a/b:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   400: astore 5
    //   402: aload_3
    //   403: astore 4
    //   405: ldc 51
    //   407: new 53	java/lang/StringBuilder
    //   410: dup
    //   411: ldc 156
    //   413: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   416: iload_1
    //   417: invokevirtual 159	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   420: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   423: invokestatic 115	com/baidu/android/pushservice/h/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   426: aload_3
    //   427: astore 4
    //   429: ldc 51
    //   431: new 53	java/lang/StringBuilder
    //   434: dup
    //   435: ldc 113
    //   437: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   440: aload 5
    //   442: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   445: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   448: invokestatic 115	com/baidu/android/pushservice/h/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   451: iconst_0
    //   452: istore_2
    //   453: goto -123 -> 330
    //   456: aload_3
    //   457: astore 4
    //   459: aload_0
    //   460: iconst_0
    //   461: putfield 25	com/baidu/android/pushservice/e/ab:d	Z
    //   464: goto -114 -> 350
    //   467: astore 5
    //   469: aload_3
    //   470: astore 4
    //   472: ldc 51
    //   474: new 53	java/lang/StringBuilder
    //   477: dup
    //   478: ldc 161
    //   480: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   483: aload 5
    //   485: invokevirtual 164	java/io/IOException:getMessage	()Ljava/lang/String;
    //   488: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   491: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   494: invokestatic 166	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   497: aload_3
    //   498: astore 4
    //   500: ldc 51
    //   502: ldc 168
    //   504: invokestatic 115	com/baidu/android/pushservice/h/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   507: aload_3
    //   508: astore 4
    //   510: aload_0
    //   511: iconst_1
    //   512: putfield 25	com/baidu/android/pushservice/e/ab:d	Z
    //   515: iconst_1
    //   516: anewarray 149	java/io/Closeable
    //   519: dup
    //   520: iconst_0
    //   521: aload_3
    //   522: aastore
    //   523: invokestatic 152	com/baidu/android/pushservice/f/c:a	([Ljava/io/Closeable;)V
    //   526: iload_2
    //   527: ireturn
    //   528: astore 5
    //   530: aconst_null
    //   531: astore_3
    //   532: iconst_0
    //   533: istore_2
    //   534: aload_3
    //   535: astore 4
    //   537: ldc 51
    //   539: new 53	java/lang/StringBuilder
    //   542: dup
    //   543: ldc 170
    //   545: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   548: aload 5
    //   550: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   553: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   556: invokestatic 166	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   559: aload_3
    //   560: astore 4
    //   562: aload_0
    //   563: iconst_0
    //   564: putfield 25	com/baidu/android/pushservice/e/ab:d	Z
    //   567: iconst_1
    //   568: anewarray 149	java/io/Closeable
    //   571: dup
    //   572: iconst_0
    //   573: aload_3
    //   574: aastore
    //   575: invokestatic 152	com/baidu/android/pushservice/f/c:a	([Ljava/io/Closeable;)V
    //   578: iload_2
    //   579: ireturn
    //   580: astore_3
    //   581: aconst_null
    //   582: astore 4
    //   584: iconst_1
    //   585: anewarray 149	java/io/Closeable
    //   588: dup
    //   589: iconst_0
    //   590: aload 4
    //   592: aastore
    //   593: invokestatic 152	com/baidu/android/pushservice/f/c:a	([Ljava/io/Closeable;)V
    //   596: aload_3
    //   597: athrow
    //   598: astore_3
    //   599: goto -15 -> 584
    //   602: astore 5
    //   604: iconst_0
    //   605: istore_2
    //   606: goto -72 -> 534
    //   609: astore 5
    //   611: goto -77 -> 534
    //   614: astore 5
    //   616: aconst_null
    //   617: astore_3
    //   618: iconst_0
    //   619: istore_2
    //   620: goto -151 -> 469
    //   623: astore 5
    //   625: iconst_0
    //   626: istore_2
    //   627: goto -158 -> 469
    //
    // Exception table:
    //   from	to	target	type
    //   333	338	467	java/io/IOException
    //   345	350	467	java/io/IOException
    //   459	464	467	java/io/IOException
    //   114	135	528	java/lang/Exception
    //   114	135	580	finally
    //   145	151	598	finally
    //   154	176	598	finally
    //   179	195	598	finally
    //   203	212	598	finally
    //   215	224	598	finally
    //   227	236	598	finally
    //   239	261	598	finally
    //   264	286	598	finally
    //   289	311	598	finally
    //   314	328	598	finally
    //   333	338	598	finally
    //   345	350	598	finally
    //   366	388	598	finally
    //   396	402	598	finally
    //   405	426	598	finally
    //   429	451	598	finally
    //   459	464	598	finally
    //   472	497	598	finally
    //   500	507	598	finally
    //   510	515	598	finally
    //   537	559	598	finally
    //   562	567	598	finally
    //   145	151	602	java/lang/Exception
    //   154	176	602	java/lang/Exception
    //   179	195	602	java/lang/Exception
    //   203	212	602	java/lang/Exception
    //   215	224	602	java/lang/Exception
    //   227	236	602	java/lang/Exception
    //   239	261	602	java/lang/Exception
    //   264	286	602	java/lang/Exception
    //   289	311	602	java/lang/Exception
    //   314	328	602	java/lang/Exception
    //   366	388	602	java/lang/Exception
    //   396	402	602	java/lang/Exception
    //   405	426	602	java/lang/Exception
    //   429	451	602	java/lang/Exception
    //   333	338	609	java/lang/Exception
    //   345	350	609	java/lang/Exception
    //   459	464	609	java/lang/Exception
    //   114	135	614	java/io/IOException
    //   145	151	623	java/io/IOException
    //   154	176	623	java/io/IOException
    //   179	195	623	java/io/IOException
    //   203	212	623	java/io/IOException
    //   215	224	623	java/io/IOException
    //   227	236	623	java/io/IOException
    //   239	261	623	java/io/IOException
    //   264	286	623	java/io/IOException
    //   289	311	623	java/io/IOException
    //   314	328	623	java/io/IOException
    //   366	388	623	java/io/IOException
    //   396	402	623	java/io/IOException
    //   405	426	623	java/io/IOException
    //   429	451	623	java/io/IOException
  }

  private HashMap<String, String> c()
    throws Exception
  {
    int j = 1;
    HashMap localHashMap = new HashMap();
    localHashMap.put("method", "token");
    b.b(localHashMap);
    localHashMap.put("device_type", "3");
    localHashMap.put("rsa_device_id", com.baidu.android.pushservice.j.b.a(f.c(d.a(this.a).getBytes(), "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC/7VlVn9LIrZ71PL2RZMbK/Yxc\r\ndb046w/cXVylxS7ouPY06namZUFVhdbUnNRJzmGUZlzs3jUbvMO3l+4c9cw/n9aQ\r\nrm/brgaRDeZbeSrQYRZv60xzJIimuFFxsRM+ku6/dAyYmXiQXlRbgvFQ0MsVng4j\r\nv+cXhtTis2Kbwb8mQwIDAQAB\r\n"), "utf-8"));
    localHashMap.put("device_name", Build.MODEL);
    int i = i.b(this.a, "com.baidu.android.pushservice.PushManager.LOGIN_TYPE", -1);
    Object localObject = i.a(this.a, "com.baidu.android.pushservice.PushManager.LONGIN_VALUE");
    if (i == 2)
    {
      localHashMap.put("rsa_bduss", PushConstants.a(i.a(this.a, "com.baidu.android.pushservice.PushManager.BDUSS")));
      localHashMap.put("appid", localObject);
      localObject = new JSONObject();
      ((JSONObject)localObject).put("api_level", Build.VERSION.SDK_INT);
      int[] arrayOfInt = m.b(this.a);
      ((JSONObject)localObject).put("screen_height", arrayOfInt[0]);
      ((JSONObject)localObject).put("screen_width", arrayOfInt[1]);
      ((JSONObject)localObject).put("model", Build.MODEL);
      if (!m.a(this.a))
        break label328;
      i = 1;
      label203: ((JSONObject)localObject).put("isroot", i);
      if (!m.e(this.a, this.a.getPackageName()))
        break label333;
    }
    label328: label333: for (i = j; ; i = 0)
    {
      ((JSONObject)localObject).put("is_baidu_app", i);
      ((JSONObject)localObject).put("push_sdk_version", com.baidu.android.pushservice.a.a());
      localHashMap.put("info", ((JSONObject)localObject).toString());
      com.baidu.android.pushservice.h.a.c("TokenRequester", "TOKEN param -- " + b.a(localHashMap));
      return localHashMap;
      if (i == 1)
      {
        localHashMap.put("rsa_access_token", PushConstants.a((String)localObject));
        break;
      }
      localHashMap.put("apikey", localObject);
      break;
      i = 0;
      break label203;
    }
  }

  private void d()
  {
    this.c += 1;
    if (this.c < this.b)
    {
      int i = (1 << this.c - 1) * 5 * 1000;
      com.baidu.android.pushservice.h.a.b("TokenRequester", "schedule retry-- retry times: " + this.c + "time delay: " + i);
      long l = i;
      try
      {
        Thread.sleep(l);
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        com.baidu.android.pushservice.h.a.e("TokenRequester", "error : " + localInterruptedException.getMessage());
        return;
      }
    }
    com.baidu.android.pushservice.h.a.b("TokenRequester", "hava reconnect " + this.b + " times, all failed.");
    this.d = false;
  }

  protected void a()
  {
    boolean bool;
    do
    {
      bool = b();
      if (this.d)
        d();
    }
    while ((this.b > 0) && (this.d));
    com.baidu.android.pushservice.h.a.b("TokenRequester", "RequestTokenThread connectResult: " + bool);
    if (!bool)
      m.i(this.a);
    do
    {
      return;
      b.a(this.a);
    }
    while (g.a == null);
    com.baidu.android.pushservice.h.a.b("TokenRequester", "TokenRequester start PushService after Request finish.");
    l.a(this.a, new Intent());
  }

  public void a(int paramInt)
  {
    this.b = paramInt;
  }

  public void run()
  {
    a();
    synchronized (j.a(this.a))
    {
      j.a(this.a).a(true);
      j.a(this.a).notifyAll();
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.ab
 * JD-Core Version:    0.6.2
 */