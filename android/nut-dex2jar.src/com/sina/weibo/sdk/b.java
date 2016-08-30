package com.sina.weibo.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;

public class b
{
  private static final String a = b.class.getName();
  private static final Uri b = Uri.parse("content://com.sina.weibo.sdkProvider/query/package");
  private static b c;
  private Context d;

  private b(Context paramContext)
  {
    this.d = paramContext.getApplicationContext();
  }

  public static b a(Context paramContext)
  {
    try
    {
      if (c == null)
        c = new b(paramContext);
      paramContext = c;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  // ERROR //
  private c a(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 65	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: aload_0
    //   10: getfield 45	com/sina/weibo/sdk/b:d	Landroid/content/Context;
    //   13: aload_1
    //   14: iconst_2
    //   15: invokevirtual 69	android/content/Context:createPackageContext	(Ljava/lang/String;I)Landroid/content/Context;
    //   18: astore 4
    //   20: sipush 4096
    //   23: newarray byte
    //   25: astore 6
    //   27: aload 4
    //   29: invokevirtual 73	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   32: ldc 75
    //   34: invokevirtual 81	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   37: astore 5
    //   39: aload 5
    //   41: astore 4
    //   43: new 83	java/lang/StringBuilder
    //   46: dup
    //   47: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   50: astore 7
    //   52: aload 5
    //   54: astore 4
    //   56: aload 5
    //   58: aload 6
    //   60: iconst_0
    //   61: sipush 4096
    //   64: invokevirtual 90	java/io/InputStream:read	([BII)I
    //   67: istore_2
    //   68: iload_2
    //   69: iconst_m1
    //   70: if_icmpne +60 -> 130
    //   73: aload 5
    //   75: astore 4
    //   77: aload 7
    //   79: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   82: invokestatic 65	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   85: ifne +20 -> 105
    //   88: aload 5
    //   90: astore 4
    //   92: aload_0
    //   93: getfield 45	com/sina/weibo/sdk/b:d	Landroid/content/Context;
    //   96: aload_1
    //   97: invokestatic 98	com/sina/weibo/sdk/a:a	(Landroid/content/Context;Ljava/lang/String;)Z
    //   100: istore_3
    //   101: iload_3
    //   102: ifne +92 -> 194
    //   105: aload 5
    //   107: ifnull -100 -> 7
    //   110: aload 5
    //   112: invokevirtual 101	java/io/InputStream:close	()V
    //   115: aconst_null
    //   116: areturn
    //   117: astore_1
    //   118: getstatic 22	com/sina/weibo/sdk/b:a	Ljava/lang/String;
    //   121: aload_1
    //   122: invokevirtual 104	java/io/IOException:getMessage	()Ljava/lang/String;
    //   125: invokestatic 109	com/sina/weibo/sdk/d/i:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   128: aconst_null
    //   129: areturn
    //   130: aload 5
    //   132: astore 4
    //   134: aload 7
    //   136: new 111	java/lang/String
    //   139: dup
    //   140: aload 6
    //   142: iconst_0
    //   143: iload_2
    //   144: invokespecial 114	java/lang/String:<init>	([BII)V
    //   147: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: pop
    //   151: goto -99 -> 52
    //   154: astore_1
    //   155: aload 5
    //   157: astore 4
    //   159: getstatic 22	com/sina/weibo/sdk/b:a	Ljava/lang/String;
    //   162: aload_1
    //   163: invokevirtual 119	android/content/pm/PackageManager$NameNotFoundException:getMessage	()Ljava/lang/String;
    //   166: invokestatic 109	com/sina/weibo/sdk/d/i:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   169: aload 5
    //   171: ifnull -164 -> 7
    //   174: aload 5
    //   176: invokevirtual 101	java/io/InputStream:close	()V
    //   179: aconst_null
    //   180: areturn
    //   181: astore_1
    //   182: getstatic 22	com/sina/weibo/sdk/b:a	Ljava/lang/String;
    //   185: aload_1
    //   186: invokevirtual 104	java/io/IOException:getMessage	()Ljava/lang/String;
    //   189: invokestatic 109	com/sina/weibo/sdk/d/i:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   192: aconst_null
    //   193: areturn
    //   194: aload 5
    //   196: astore 4
    //   198: new 121	org/json/JSONObject
    //   201: dup
    //   202: aload 7
    //   204: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   207: invokespecial 124	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   210: ldc 126
    //   212: iconst_m1
    //   213: invokevirtual 130	org/json/JSONObject:optInt	(Ljava/lang/String;I)I
    //   216: istore_2
    //   217: aload 5
    //   219: astore 4
    //   221: new 132	com/sina/weibo/sdk/c
    //   224: dup
    //   225: invokespecial 133	com/sina/weibo/sdk/c:<init>	()V
    //   228: astore 6
    //   230: aload 5
    //   232: astore 4
    //   234: aload 6
    //   236: aload_1
    //   237: putfield 134	com/sina/weibo/sdk/c:a	Ljava/lang/String;
    //   240: aload 5
    //   242: astore 4
    //   244: aload 6
    //   246: iload_2
    //   247: putfield 137	com/sina/weibo/sdk/c:b	I
    //   250: aload 5
    //   252: ifnull +8 -> 260
    //   255: aload 5
    //   257: invokevirtual 101	java/io/InputStream:close	()V
    //   260: aload 6
    //   262: areturn
    //   263: astore_1
    //   264: getstatic 22	com/sina/weibo/sdk/b:a	Ljava/lang/String;
    //   267: aload_1
    //   268: invokevirtual 104	java/io/IOException:getMessage	()Ljava/lang/String;
    //   271: invokestatic 109	com/sina/weibo/sdk/d/i:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   274: goto -14 -> 260
    //   277: astore_1
    //   278: aconst_null
    //   279: astore 5
    //   281: aload 5
    //   283: astore 4
    //   285: getstatic 22	com/sina/weibo/sdk/b:a	Ljava/lang/String;
    //   288: aload_1
    //   289: invokevirtual 104	java/io/IOException:getMessage	()Ljava/lang/String;
    //   292: invokestatic 109	com/sina/weibo/sdk/d/i:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   295: aload 5
    //   297: ifnull -290 -> 7
    //   300: aload 5
    //   302: invokevirtual 101	java/io/InputStream:close	()V
    //   305: aconst_null
    //   306: areturn
    //   307: astore_1
    //   308: getstatic 22	com/sina/weibo/sdk/b:a	Ljava/lang/String;
    //   311: aload_1
    //   312: invokevirtual 104	java/io/IOException:getMessage	()Ljava/lang/String;
    //   315: invokestatic 109	com/sina/weibo/sdk/d/i:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   318: aconst_null
    //   319: areturn
    //   320: astore_1
    //   321: aconst_null
    //   322: astore 5
    //   324: aload 5
    //   326: astore 4
    //   328: getstatic 22	com/sina/weibo/sdk/b:a	Ljava/lang/String;
    //   331: aload_1
    //   332: invokevirtual 138	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   335: invokestatic 109	com/sina/weibo/sdk/d/i:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   338: aload 5
    //   340: ifnull -333 -> 7
    //   343: aload 5
    //   345: invokevirtual 101	java/io/InputStream:close	()V
    //   348: aconst_null
    //   349: areturn
    //   350: astore_1
    //   351: getstatic 22	com/sina/weibo/sdk/b:a	Ljava/lang/String;
    //   354: aload_1
    //   355: invokevirtual 104	java/io/IOException:getMessage	()Ljava/lang/String;
    //   358: invokestatic 109	com/sina/weibo/sdk/d/i:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   361: aconst_null
    //   362: areturn
    //   363: astore_1
    //   364: aconst_null
    //   365: astore 5
    //   367: aload 5
    //   369: astore 4
    //   371: getstatic 22	com/sina/weibo/sdk/b:a	Ljava/lang/String;
    //   374: aload_1
    //   375: invokevirtual 139	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   378: invokestatic 109	com/sina/weibo/sdk/d/i:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   381: aload 5
    //   383: ifnull -376 -> 7
    //   386: aload 5
    //   388: invokevirtual 101	java/io/InputStream:close	()V
    //   391: aconst_null
    //   392: areturn
    //   393: astore_1
    //   394: getstatic 22	com/sina/weibo/sdk/b:a	Ljava/lang/String;
    //   397: aload_1
    //   398: invokevirtual 104	java/io/IOException:getMessage	()Ljava/lang/String;
    //   401: invokestatic 109	com/sina/weibo/sdk/d/i:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   404: aconst_null
    //   405: areturn
    //   406: astore_1
    //   407: aconst_null
    //   408: astore 4
    //   410: aload 4
    //   412: ifnull +8 -> 420
    //   415: aload 4
    //   417: invokevirtual 101	java/io/InputStream:close	()V
    //   420: aload_1
    //   421: athrow
    //   422: astore 4
    //   424: getstatic 22	com/sina/weibo/sdk/b:a	Ljava/lang/String;
    //   427: aload 4
    //   429: invokevirtual 104	java/io/IOException:getMessage	()Ljava/lang/String;
    //   432: invokestatic 109	com/sina/weibo/sdk/d/i:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   435: goto -15 -> 420
    //   438: astore_1
    //   439: goto -29 -> 410
    //   442: astore_1
    //   443: goto -76 -> 367
    //   446: astore_1
    //   447: goto -123 -> 324
    //   450: astore_1
    //   451: goto -170 -> 281
    //   454: astore_1
    //   455: aconst_null
    //   456: astore 5
    //   458: goto -303 -> 155
    //
    // Exception table:
    //   from	to	target	type
    //   110	115	117	java/io/IOException
    //   43	52	154	android/content/pm/PackageManager$NameNotFoundException
    //   56	68	154	android/content/pm/PackageManager$NameNotFoundException
    //   77	88	154	android/content/pm/PackageManager$NameNotFoundException
    //   92	101	154	android/content/pm/PackageManager$NameNotFoundException
    //   134	151	154	android/content/pm/PackageManager$NameNotFoundException
    //   198	217	154	android/content/pm/PackageManager$NameNotFoundException
    //   221	230	154	android/content/pm/PackageManager$NameNotFoundException
    //   234	240	154	android/content/pm/PackageManager$NameNotFoundException
    //   244	250	154	android/content/pm/PackageManager$NameNotFoundException
    //   174	179	181	java/io/IOException
    //   255	260	263	java/io/IOException
    //   9	39	277	java/io/IOException
    //   300	305	307	java/io/IOException
    //   9	39	320	org/json/JSONException
    //   343	348	350	java/io/IOException
    //   9	39	363	java/lang/Exception
    //   386	391	393	java/io/IOException
    //   9	39	406	finally
    //   415	420	422	java/io/IOException
    //   43	52	438	finally
    //   56	68	438	finally
    //   77	88	438	finally
    //   92	101	438	finally
    //   134	151	438	finally
    //   159	169	438	finally
    //   198	217	438	finally
    //   221	230	438	finally
    //   234	240	438	finally
    //   244	250	438	finally
    //   285	295	438	finally
    //   328	338	438	finally
    //   371	381	438	finally
    //   43	52	442	java/lang/Exception
    //   56	68	442	java/lang/Exception
    //   77	88	442	java/lang/Exception
    //   92	101	442	java/lang/Exception
    //   134	151	442	java/lang/Exception
    //   198	217	442	java/lang/Exception
    //   221	230	442	java/lang/Exception
    //   234	240	442	java/lang/Exception
    //   244	250	442	java/lang/Exception
    //   43	52	446	org/json/JSONException
    //   56	68	446	org/json/JSONException
    //   77	88	446	org/json/JSONException
    //   92	101	446	org/json/JSONException
    //   134	151	446	org/json/JSONException
    //   198	217	446	org/json/JSONException
    //   221	230	446	org/json/JSONException
    //   234	240	446	org/json/JSONException
    //   244	250	446	org/json/JSONException
    //   43	52	450	java/io/IOException
    //   56	68	450	java/io/IOException
    //   77	88	450	java/io/IOException
    //   92	101	450	java/io/IOException
    //   134	151	450	java/io/IOException
    //   198	217	450	java/io/IOException
    //   221	230	450	java/io/IOException
    //   234	240	450	java/io/IOException
    //   244	250	450	java/io/IOException
    //   9	39	454	android/content/pm/PackageManager$NameNotFoundException
  }

  // ERROR //
  private static c b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 146	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore_3
    //   5: aload_3
    //   6: getstatic 32	com/sina/weibo/sdk/b:b	Landroid/net/Uri;
    //   9: aconst_null
    //   10: aconst_null
    //   11: aconst_null
    //   12: aconst_null
    //   13: invokevirtual 152	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   16: astore 4
    //   18: aload 4
    //   20: ifnonnull +19 -> 39
    //   23: aload 4
    //   25: ifnull +10 -> 35
    //   28: aload 4
    //   30: invokeinterface 155 1 0
    //   35: aconst_null
    //   36: astore_0
    //   37: aload_0
    //   38: areturn
    //   39: aload 4
    //   41: astore_3
    //   42: aload 4
    //   44: ldc 126
    //   46: invokeinterface 159 2 0
    //   51: istore_1
    //   52: aload 4
    //   54: astore_3
    //   55: aload 4
    //   57: ldc 161
    //   59: invokeinterface 159 2 0
    //   64: istore_2
    //   65: aload 4
    //   67: astore_3
    //   68: aload 4
    //   70: invokeinterface 165 1 0
    //   75: ifeq +171 -> 246
    //   78: aload 4
    //   80: astore_3
    //   81: aload 4
    //   83: iload_1
    //   84: invokeinterface 169 2 0
    //   89: astore 5
    //   91: aload 4
    //   93: astore_3
    //   94: aload 5
    //   96: invokestatic 174	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   99: istore_1
    //   100: aload 4
    //   102: astore_3
    //   103: aload 4
    //   105: iload_2
    //   106: invokeinterface 169 2 0
    //   111: astore 6
    //   113: aload 4
    //   115: astore_3
    //   116: aload 6
    //   118: invokestatic 65	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   121: ifne +125 -> 246
    //   124: aload 4
    //   126: astore_3
    //   127: aload_0
    //   128: aload 6
    //   130: invokestatic 98	com/sina/weibo/sdk/a:a	(Landroid/content/Context;Ljava/lang/String;)Z
    //   133: ifeq +113 -> 246
    //   136: aload 4
    //   138: astore_3
    //   139: new 132	com/sina/weibo/sdk/c
    //   142: dup
    //   143: invokespecial 133	com/sina/weibo/sdk/c:<init>	()V
    //   146: astore 5
    //   148: aload 4
    //   150: astore_3
    //   151: aload 5
    //   153: aload 6
    //   155: putfield 134	com/sina/weibo/sdk/c:a	Ljava/lang/String;
    //   158: aload 4
    //   160: astore_3
    //   161: aload 5
    //   163: iload_1
    //   164: putfield 137	com/sina/weibo/sdk/c:b	I
    //   167: aload 5
    //   169: astore_0
    //   170: aload 4
    //   172: ifnull -135 -> 37
    //   175: aload 4
    //   177: invokeinterface 155 1 0
    //   182: aload 5
    //   184: areturn
    //   185: astore 5
    //   187: aload 4
    //   189: astore_3
    //   190: aload 5
    //   192: invokevirtual 177	java/lang/NumberFormatException:printStackTrace	()V
    //   195: iconst_m1
    //   196: istore_1
    //   197: goto -97 -> 100
    //   200: astore_0
    //   201: aconst_null
    //   202: astore 4
    //   204: aload 4
    //   206: astore_3
    //   207: getstatic 22	com/sina/weibo/sdk/b:a	Ljava/lang/String;
    //   210: aload_0
    //   211: invokevirtual 139	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   214: invokestatic 109	com/sina/weibo/sdk/d/i:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   217: aload 4
    //   219: ifnull +10 -> 229
    //   222: aload 4
    //   224: invokeinterface 155 1 0
    //   229: aconst_null
    //   230: areturn
    //   231: astore_0
    //   232: aconst_null
    //   233: astore_3
    //   234: aload_3
    //   235: ifnull +9 -> 244
    //   238: aload_3
    //   239: invokeinterface 155 1 0
    //   244: aload_0
    //   245: athrow
    //   246: aload 4
    //   248: ifnull -19 -> 229
    //   251: aload 4
    //   253: invokeinterface 155 1 0
    //   258: goto -29 -> 229
    //   261: astore_0
    //   262: goto -28 -> 234
    //   265: astore_0
    //   266: goto -62 -> 204
    //
    // Exception table:
    //   from	to	target	type
    //   94	100	185	java/lang/NumberFormatException
    //   5	18	200	java/lang/Exception
    //   5	18	231	finally
    //   42	52	261	finally
    //   55	65	261	finally
    //   68	78	261	finally
    //   81	91	261	finally
    //   94	100	261	finally
    //   103	113	261	finally
    //   116	124	261	finally
    //   127	136	261	finally
    //   139	148	261	finally
    //   151	158	261	finally
    //   161	167	261	finally
    //   190	195	261	finally
    //   207	217	261	finally
    //   42	52	265	java/lang/Exception
    //   55	65	265	java/lang/Exception
    //   68	78	265	java/lang/Exception
    //   81	91	265	java/lang/Exception
    //   94	100	265	java/lang/Exception
    //   103	113	265	java/lang/Exception
    //   116	124	265	java/lang/Exception
    //   127	136	265	java/lang/Exception
    //   139	148	265	java/lang/Exception
    //   151	158	265	java/lang/Exception
    //   161	167	265	java/lang/Exception
    //   190	195	265	java/lang/Exception
  }

  public final c a()
  {
    int j = 1;
    while (true)
    {
      c localc;
      int i;
      try
      {
        Object localObject1 = this.d;
        localc = b((Context)localObject1);
        Object localObject4 = new Intent("com.sina.weibo.action.sdkidentity");
        ((Intent)localObject4).addCategory("android.intent.category.DEFAULT");
        localObject1 = ((Context)localObject1).getPackageManager().queryIntentServices((Intent)localObject4, 0);
        if (localObject1 != null)
        {
          if (((List)localObject1).isEmpty())
          {
            break label270;
            if ((i != 0) && (j != 0))
            {
              i = localc.b;
              j = ((c)localObject1).b;
              if (i >= j)
                localObject1 = localc;
              return localObject1;
            }
          }
          else
          {
            Iterator localIterator = ((List)localObject1).iterator();
            localObject1 = null;
            if (!localIterator.hasNext())
              break label273;
            localObject4 = (ResolveInfo)localIterator.next();
            if ((((ResolveInfo)localObject4).serviceInfo == null) || (((ResolveInfo)localObject4).serviceInfo.applicationInfo == null) || (TextUtils.isEmpty(((ResolveInfo)localObject4).serviceInfo.applicationInfo.packageName)))
              continue;
            localObject4 = a(((ResolveInfo)localObject4).serviceInfo.applicationInfo.packageName);
            if (localObject4 == null)
              continue;
            if (localObject1 == null)
            {
              localObject1 = localObject4;
              continue;
            }
            i = ((c)localObject1).b;
            int k = ((c)localObject4).b;
            if (i >= k)
              continue;
            localObject1 = localObject4;
            continue;
            i = 0;
            break label280;
            j = 0;
            continue;
          }
          if (i != 0)
          {
            localObject1 = localc;
            continue;
          }
          if (j != 0)
            continue;
          localObject1 = null;
          continue;
        }
      }
      finally
      {
      }
      label270: Object localObject3 = null;
      label273: if (localc != null)
      {
        i = 1;
        label280: if (localObject3 == null);
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.b
 * JD-Core Version:    0.6.2
 */