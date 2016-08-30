package com.amap.api.services.core;

import android.content.Context;
import android.os.Looper;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.List;

abstract class be
{
  private bz a;

  protected be(Context paramContext)
  {
    try
    {
      this.a = a(paramContext, a());
      return;
    }
    catch (Throwable paramContext)
    {
      av.a(paramContext, "LogProcessor", "LogUpDateProcessor");
      paramContext.printStackTrace();
    }
  }

  public static be a(Context paramContext, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 0:
      return new az(paramContext);
    case 1:
      return new bb(paramContext);
    case 2:
    }
    return new aw(paramContext);
  }

  private bz a(Context paramContext, String paramString)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramContext.getFilesDir().getAbsolutePath());
      localStringBuilder.append(bd.a);
      localStringBuilder.append(paramString);
      paramContext = new File(localStringBuilder.toString());
      if ((!paramContext.exists()) && (!paramContext.mkdirs()))
        return null;
      paramContext = bz.a(paramContext, 1, 1, 20480L);
      return paramContext;
    }
    catch (IOException paramContext)
    {
      av.a(paramContext, "LogProcessor", "initDiskLru");
      paramContext.printStackTrace();
      return null;
    }
    catch (Throwable paramContext)
    {
      av.a(paramContext, "LogProcessor", "initDiskLru");
      paramContext.printStackTrace();
    }
    return null;
  }

  private String a(List<bs> paramList, Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{\"pinfo\":\"").append(c(paramContext)).append("\",\"els\":[");
    paramList = paramList.iterator();
    int i = 1;
    if (paramList.hasNext())
    {
      paramContext = (bs)paramList.next();
      String str = c(paramContext.b());
      int j = i;
      if (str != null)
      {
        j = i;
        if (!"".equals(str))
        {
          paramContext = str + "||" + paramContext.d();
          if (i == 0)
            break label149;
          i = 0;
        }
      }
      while (true)
      {
        localStringBuilder.append("{\"log\":\"").append(paramContext).append("\"}");
        j = i;
        i = j;
        break;
        label149: localStringBuilder.append(",");
      }
    }
    if (i != 0)
      return null;
    localStringBuilder.append("]}");
    return localStringBuilder.toString();
  }

  private void a(bq parambq, int paramInt)
  {
    try
    {
      a(parambq.a(2, paramInt), parambq, paramInt);
      return;
    }
    catch (Throwable parambq)
    {
      av.a(parambq, "LogProcessor", "processDeleteFail");
      parambq.printStackTrace();
    }
  }

  private void a(List<bs> paramList, bq parambq, int paramInt)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        bs localbs = (bs)paramList.next();
        if (a(localbs.b()))
        {
          parambq.a(localbs.b(), paramInt);
        }
        else
        {
          localbs.a(2);
          parambq.a(localbs, localbs.a());
        }
      }
    }
  }

  private boolean a(String paramString)
  {
    if (this.a == null)
      return false;
    try
    {
      boolean bool = this.a.c(paramString);
      return bool;
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
    }
    return false;
  }

  // ERROR //
  private int b(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc 192
    //   3: invokevirtual 196	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   6: invokestatic 201	com/amap/api/services/core/as:b	([B)[B
    //   9: astore_3
    //   10: aload_3
    //   11: astore_1
    //   12: new 203	com/amap/api/services/core/bf
    //   15: dup
    //   16: aload_1
    //   17: invokespecial 206	com/amap/api/services/core/bf:<init>	([B)V
    //   20: astore_1
    //   21: iconst_0
    //   22: invokestatic 211	com/amap/api/services/core/ci:a	(Z)Lcom/amap/api/services/core/ci;
    //   25: aload_1
    //   26: invokevirtual 214	com/amap/api/services/core/ci:b	(Lcom/amap/api/services/core/cj;)[B
    //   29: astore_3
    //   30: aload_3
    //   31: ifnonnull +17 -> 48
    //   34: iconst_0
    //   35: ireturn
    //   36: astore_3
    //   37: aload_1
    //   38: invokevirtual 217	java/lang/String:getBytes	()[B
    //   41: invokestatic 201	com/amap/api/services/core/as:b	([B)[B
    //   44: astore_1
    //   45: goto -33 -> 12
    //   48: new 129	java/lang/String
    //   51: dup
    //   52: aload_3
    //   53: ldc 192
    //   55: invokespecial 220	java/lang/String:<init>	([BLjava/lang/String;)V
    //   58: astore_1
    //   59: new 222	org/json/JSONObject
    //   62: dup
    //   63: aload_1
    //   64: invokespecial 223	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   67: astore_1
    //   68: aload_1
    //   69: ldc 225
    //   71: invokevirtual 228	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   74: ifeq +55 -> 129
    //   77: aload_1
    //   78: ldc 225
    //   80: invokevirtual 231	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   83: istore_2
    //   84: iload_2
    //   85: ireturn
    //   86: astore_1
    //   87: new 129	java/lang/String
    //   90: dup
    //   91: aload_3
    //   92: invokespecial 232	java/lang/String:<init>	([B)V
    //   95: astore_1
    //   96: goto -37 -> 59
    //   99: astore_1
    //   100: aload_1
    //   101: ldc 23
    //   103: ldc 234
    //   105: invokestatic 30	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   108: aload_1
    //   109: invokevirtual 235	com/amap/api/services/core/ai:printStackTrace	()V
    //   112: iconst_0
    //   113: ireturn
    //   114: astore_1
    //   115: aload_1
    //   116: ldc 23
    //   118: ldc 234
    //   120: invokestatic 30	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   123: aload_1
    //   124: invokevirtual 236	org/json/JSONException:printStackTrace	()V
    //   127: iconst_0
    //   128: ireturn
    //   129: iconst_0
    //   130: istore_2
    //   131: goto -47 -> 84
    //
    // Exception table:
    //   from	to	target	type
    //   0	10	36	java/io/UnsupportedEncodingException
    //   48	59	86	java/io/UnsupportedEncodingException
    //   21	30	99	com/amap/api/services/core/ai
    //   48	59	99	com/amap/api/services/core/ai
    //   59	84	99	com/amap/api/services/core/ai
    //   87	96	99	com/amap/api/services/core/ai
    //   115	127	99	com/amap/api/services/core/ai
    //   59	84	114	org/json/JSONException
  }

  private String c(Context paramContext)
  {
    try
    {
      String str = at.a(paramContext);
      if ("".equals(str))
        return null;
      paramContext = al.b(paramContext, str.getBytes("UTF-8"));
      return paramContext;
    }
    catch (UnsupportedEncodingException paramContext)
    {
      av.a(paramContext, "LogProcessor", "getPublicInfo");
      paramContext.printStackTrace();
      return null;
    }
    catch (Throwable paramContext)
    {
      av.a(paramContext, "LogProcessor", "getPublicInfo");
      paramContext.printStackTrace();
    }
    return null;
  }

  // ERROR //
  private String c(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aload_0
    //   4: getfield 21	com/amap/api/services/core/be:a	Lcom/amap/api/services/core/bz;
    //   7: ifnonnull +5 -> 12
    //   10: aconst_null
    //   11: areturn
    //   12: aload_0
    //   13: getfield 21	com/amap/api/services/core/be:a	Lcom/amap/api/services/core/bz;
    //   16: aload_1
    //   17: invokevirtual 251	com/amap/api/services/core/bz:a	(Ljava/lang/String;)Lcom/amap/api/services/core/bz$b;
    //   20: astore_1
    //   21: aload 7
    //   23: astore_3
    //   24: aload_1
    //   25: ifnull +423 -> 448
    //   28: aload_1
    //   29: iconst_0
    //   30: invokevirtual 256	com/amap/api/services/core/bz$b:a	(I)Ljava/io/InputStream;
    //   33: astore_1
    //   34: new 258	java/io/ByteArrayOutputStream
    //   37: dup
    //   38: invokespecial 259	java/io/ByteArrayOutputStream:<init>	()V
    //   41: astore 5
    //   43: aload 5
    //   45: astore 4
    //   47: aload_1
    //   48: astore_3
    //   49: sipush 1024
    //   52: newarray byte
    //   54: astore 6
    //   56: aload 5
    //   58: astore 4
    //   60: aload_1
    //   61: astore_3
    //   62: aload_1
    //   63: aload 6
    //   65: invokevirtual 265	java/io/InputStream:read	([B)I
    //   68: istore_2
    //   69: iload_2
    //   70: iconst_m1
    //   71: if_icmpeq +89 -> 160
    //   74: aload 5
    //   76: astore 4
    //   78: aload_1
    //   79: astore_3
    //   80: aload 5
    //   82: aload 6
    //   84: iconst_0
    //   85: iload_2
    //   86: invokevirtual 269	java/io/ByteArrayOutputStream:write	([BII)V
    //   89: goto -33 -> 56
    //   92: astore 6
    //   94: aload 5
    //   96: astore 4
    //   98: aload_1
    //   99: astore_3
    //   100: aload 6
    //   102: ldc 23
    //   104: ldc_w 271
    //   107: invokestatic 30	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   110: aload 5
    //   112: astore 4
    //   114: aload_1
    //   115: astore_3
    //   116: aload 6
    //   118: invokevirtual 93	java/io/IOException:printStackTrace	()V
    //   121: aload 5
    //   123: ifnull +8 -> 131
    //   126: aload 5
    //   128: invokevirtual 274	java/io/ByteArrayOutputStream:close	()V
    //   131: aload 7
    //   133: astore_3
    //   134: aload_1
    //   135: ifnull +313 -> 448
    //   138: aload_1
    //   139: invokevirtual 275	java/io/InputStream:close	()V
    //   142: aconst_null
    //   143: areturn
    //   144: astore_1
    //   145: aload_1
    //   146: ldc 23
    //   148: ldc_w 277
    //   151: invokestatic 30	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   154: aload_1
    //   155: invokevirtual 93	java/io/IOException:printStackTrace	()V
    //   158: aconst_null
    //   159: areturn
    //   160: aload 5
    //   162: astore 4
    //   164: aload_1
    //   165: astore_3
    //   166: aload 5
    //   168: ldc_w 279
    //   171: invokevirtual 281	java/io/ByteArrayOutputStream:toString	(Ljava/lang/String;)Ljava/lang/String;
    //   174: astore 6
    //   176: aload 6
    //   178: astore 4
    //   180: aload 5
    //   182: invokevirtual 274	java/io/ByteArrayOutputStream:close	()V
    //   185: aload 4
    //   187: astore_3
    //   188: aload_1
    //   189: ifnull +259 -> 448
    //   192: aload_1
    //   193: invokevirtual 275	java/io/InputStream:close	()V
    //   196: aload 4
    //   198: areturn
    //   199: astore_1
    //   200: aload_1
    //   201: ldc 23
    //   203: ldc_w 277
    //   206: invokestatic 30	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   209: aload_1
    //   210: invokevirtual 93	java/io/IOException:printStackTrace	()V
    //   213: aload 4
    //   215: areturn
    //   216: astore_3
    //   217: aload_3
    //   218: ldc 23
    //   220: ldc_w 283
    //   223: invokestatic 30	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   226: aload_3
    //   227: invokevirtual 93	java/io/IOException:printStackTrace	()V
    //   230: goto -45 -> 185
    //   233: astore_3
    //   234: aload_3
    //   235: ldc 23
    //   237: ldc_w 283
    //   240: invokestatic 30	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   243: aload_3
    //   244: invokevirtual 93	java/io/IOException:printStackTrace	()V
    //   247: goto -116 -> 131
    //   250: astore 6
    //   252: aconst_null
    //   253: astore 5
    //   255: aconst_null
    //   256: astore_1
    //   257: aload 5
    //   259: astore 4
    //   261: aload_1
    //   262: astore_3
    //   263: aload 6
    //   265: ldc 23
    //   267: ldc_w 271
    //   270: invokestatic 30	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   273: aload 5
    //   275: astore 4
    //   277: aload_1
    //   278: astore_3
    //   279: aload 6
    //   281: invokevirtual 33	java/lang/Throwable:printStackTrace	()V
    //   284: aload 5
    //   286: ifnull +8 -> 294
    //   289: aload 5
    //   291: invokevirtual 274	java/io/ByteArrayOutputStream:close	()V
    //   294: aload 7
    //   296: astore_3
    //   297: aload_1
    //   298: ifnull +150 -> 448
    //   301: aload_1
    //   302: invokevirtual 275	java/io/InputStream:close	()V
    //   305: aconst_null
    //   306: areturn
    //   307: astore_1
    //   308: aload_1
    //   309: ldc 23
    //   311: ldc_w 277
    //   314: invokestatic 30	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   317: aload_1
    //   318: invokevirtual 93	java/io/IOException:printStackTrace	()V
    //   321: aconst_null
    //   322: areturn
    //   323: astore_3
    //   324: aload_3
    //   325: ldc 23
    //   327: ldc_w 283
    //   330: invokestatic 30	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   333: aload_3
    //   334: invokevirtual 93	java/io/IOException:printStackTrace	()V
    //   337: goto -43 -> 294
    //   340: astore 5
    //   342: aconst_null
    //   343: astore 4
    //   345: aconst_null
    //   346: astore_1
    //   347: aload 4
    //   349: ifnull +8 -> 357
    //   352: aload 4
    //   354: invokevirtual 274	java/io/ByteArrayOutputStream:close	()V
    //   357: aload_1
    //   358: ifnull +7 -> 365
    //   361: aload_1
    //   362: invokevirtual 275	java/io/InputStream:close	()V
    //   365: aload 5
    //   367: athrow
    //   368: astore_3
    //   369: aload_3
    //   370: ldc 23
    //   372: ldc_w 283
    //   375: invokestatic 30	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   378: aload_3
    //   379: invokevirtual 93	java/io/IOException:printStackTrace	()V
    //   382: goto -25 -> 357
    //   385: astore_1
    //   386: aload_1
    //   387: ldc 23
    //   389: ldc_w 277
    //   392: invokestatic 30	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   395: aload_1
    //   396: invokevirtual 93	java/io/IOException:printStackTrace	()V
    //   399: goto -34 -> 365
    //   402: astore 5
    //   404: aconst_null
    //   405: astore 4
    //   407: goto -60 -> 347
    //   410: astore 5
    //   412: aload_3
    //   413: astore_1
    //   414: goto -67 -> 347
    //   417: astore 6
    //   419: aconst_null
    //   420: astore 5
    //   422: goto -165 -> 257
    //   425: astore 6
    //   427: goto -170 -> 257
    //   430: astore 6
    //   432: aconst_null
    //   433: astore 5
    //   435: aconst_null
    //   436: astore_1
    //   437: goto -343 -> 94
    //   440: astore 6
    //   442: aconst_null
    //   443: astore 5
    //   445: goto -351 -> 94
    //   448: aload_3
    //   449: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   49	56	92	java/io/IOException
    //   62	69	92	java/io/IOException
    //   80	89	92	java/io/IOException
    //   166	176	92	java/io/IOException
    //   138	142	144	java/io/IOException
    //   192	196	199	java/io/IOException
    //   180	185	216	java/io/IOException
    //   126	131	233	java/io/IOException
    //   3	10	250	java/lang/Throwable
    //   12	21	250	java/lang/Throwable
    //   28	34	250	java/lang/Throwable
    //   301	305	307	java/io/IOException
    //   289	294	323	java/io/IOException
    //   3	10	340	finally
    //   12	21	340	finally
    //   28	34	340	finally
    //   352	357	368	java/io/IOException
    //   361	365	385	java/io/IOException
    //   34	43	402	finally
    //   49	56	410	finally
    //   62	69	410	finally
    //   80	89	410	finally
    //   100	110	410	finally
    //   116	121	410	finally
    //   166	176	410	finally
    //   263	273	410	finally
    //   279	284	410	finally
    //   34	43	417	java/lang/Throwable
    //   49	56	425	java/lang/Throwable
    //   62	69	425	java/lang/Throwable
    //   80	89	425	java/lang/Throwable
    //   166	176	425	java/lang/Throwable
    //   3	10	430	java/io/IOException
    //   12	21	430	java/io/IOException
    //   28	34	430	java/io/IOException
    //   34	43	440	java/io/IOException
  }

  protected abstract String a();

  protected abstract boolean a(Context paramContext);

  protected abstract int b();

  void b(Context paramContext)
  {
    bq localbq;
    List localList;
    try
    {
      if (!a(paramContext))
        return;
      synchronized (Looper.getMainLooper())
      {
        localbq = new bq(paramContext);
        a(localbq, b());
        localList = localbq.a(0, b());
        if ((localList == null) || (localList.size() == 0))
          return;
      }
    }
    catch (Throwable paramContext)
    {
      av.a(paramContext, "LogProcessor", "processUpdateLog");
      paramContext.printStackTrace();
      return;
    }
    paramContext = a(localList, paramContext);
    if (paramContext == null)
      return;
    if (b(paramContext) == 1)
      a(localList, localbq, b());
  }

  void c()
  {
    if ((this.a != null) && (!this.a.a()));
    try
    {
      this.a.close();
      return;
    }
    catch (IOException localIOException)
    {
      av.a(localIOException, "LogProcessor", "closeDiskLru");
      localIOException.printStackTrace();
      return;
    }
    catch (Throwable localThrowable)
    {
      av.a(localThrowable, "LogProcessor", "closeDiskLru");
      localThrowable.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.be
 * JD-Core Version:    0.6.2
 */