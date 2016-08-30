package u.aly;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import com.umeng.analytics.a;
import com.umeng.analytics.q;
import java.net.URLEncoder;

public final class r
{
  p a;
  private String b;
  private String c = "10.0.0.172";
  private int d = 80;
  private Context e;

  public r(Context paramContext)
  {
    this.e = paramContext;
    this.b = a(paramContext);
  }

  private static String a(Context paramContext)
  {
    StringBuffer localStringBuffer1 = new StringBuffer();
    localStringBuffer1.append("Android");
    localStringBuffer1.append("/");
    localStringBuffer1.append("6.0.1");
    localStringBuffer1.append(" ");
    try
    {
      StringBuffer localStringBuffer2 = new StringBuffer();
      localStringBuffer2.append(cr.s(paramContext));
      localStringBuffer2.append("/");
      localStringBuffer2.append(cr.b(paramContext));
      localStringBuffer2.append(" ");
      localStringBuffer2.append(Build.MODEL);
      localStringBuffer2.append("/");
      localStringBuffer2.append(Build.VERSION.RELEASE);
      localStringBuffer2.append(" ");
      localStringBuffer2.append(cs.a(a.a(paramContext)));
      localStringBuffer1.append(URLEncoder.encode(localStringBuffer2.toString(), "UTF-8"));
      return localStringBuffer1.toString();
    }
    catch (Exception paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
  }

  private boolean a()
  {
    if (this.e.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", this.e.getPackageName()) != 0)
      return false;
    try
    {
      Object localObject = (ConnectivityManager)this.e.getSystemService("connectivity");
      if (!cr.a(this.e, "android.permission.ACCESS_NETWORK_STATE"))
        return false;
      localObject = ((ConnectivityManager)localObject).getActiveNetworkInfo();
      if ((localObject != null) && (((NetworkInfo)localObject).getType() != 1))
      {
        localObject = ((NetworkInfo)localObject).getExtraInfo();
        if (localObject != null)
          if ((!((String)localObject).equals("cmwap")) && (!((String)localObject).equals("3gwap")))
          {
            boolean bool = ((String)localObject).equals("uniwap");
            if (!bool);
          }
          else
          {
            return true;
          }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  // ERROR //
  private byte[] a(byte[] paramArrayOfByte, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 146	u/aly/r:a	Lu/aly/p;
    //   4: ifnull +12 -> 16
    //   7: aload_0
    //   8: getfield 146	u/aly/r:a	Lu/aly/p;
    //   11: invokeinterface 150 1 0
    //   16: aload_0
    //   17: invokespecial 152	u/aly/r:a	()Z
    //   20: ifeq +382 -> 402
    //   23: new 154	java/net/Proxy
    //   26: dup
    //   27: getstatic 160	java/net/Proxy$Type:HTTP	Ljava/net/Proxy$Type;
    //   30: new 162	java/net/InetSocketAddress
    //   33: dup
    //   34: aload_0
    //   35: getfield 22	u/aly/r:c	Ljava/lang/String;
    //   38: aload_0
    //   39: getfield 24	u/aly/r:d	I
    //   42: invokespecial 165	java/net/InetSocketAddress:<init>	(Ljava/lang/String;I)V
    //   45: invokespecial 168	java/net/Proxy:<init>	(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    //   48: astore 5
    //   50: new 170	java/net/URL
    //   53: dup
    //   54: aload_2
    //   55: invokespecial 173	java/net/URL:<init>	(Ljava/lang/String;)V
    //   58: aload 5
    //   60: invokevirtual 177	java/net/URL:openConnection	(Ljava/net/Proxy;)Ljava/net/URLConnection;
    //   63: checkcast 179	java/net/HttpURLConnection
    //   66: astore 5
    //   68: aload 5
    //   70: astore 6
    //   72: aload 5
    //   74: ldc 181
    //   76: invokestatic 187	java/lang/System:currentTimeMillis	()J
    //   79: invokestatic 191	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   82: invokevirtual 195	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   85: aload 5
    //   87: astore 6
    //   89: aload 5
    //   91: ldc 197
    //   93: aload_0
    //   94: getfield 31	u/aly/r:b	Ljava/lang/String;
    //   97: invokevirtual 195	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   100: aload 5
    //   102: astore 6
    //   104: aload 5
    //   106: ldc 199
    //   108: ldc 201
    //   110: invokevirtual 195	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   113: aload 5
    //   115: astore 6
    //   117: aload 5
    //   119: ldc 203
    //   121: ldc 201
    //   123: invokevirtual 195	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   126: aload 5
    //   128: astore 6
    //   130: aload 5
    //   132: sipush 10000
    //   135: invokevirtual 207	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   138: aload 5
    //   140: astore 6
    //   142: aload 5
    //   144: sipush 30000
    //   147: invokevirtual 210	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   150: aload 5
    //   152: astore 6
    //   154: aload 5
    //   156: ldc 212
    //   158: invokevirtual 215	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   161: aload 5
    //   163: astore 6
    //   165: aload 5
    //   167: iconst_1
    //   168: invokevirtual 219	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   171: aload 5
    //   173: astore 6
    //   175: aload 5
    //   177: iconst_1
    //   178: invokevirtual 222	java/net/HttpURLConnection:setDoInput	(Z)V
    //   181: aload 5
    //   183: astore 6
    //   185: aload 5
    //   187: iconst_0
    //   188: invokevirtual 225	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   191: aload 5
    //   193: astore 6
    //   195: getstatic 228	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   198: invokestatic 234	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   201: bipush 8
    //   203: if_icmpge +15 -> 218
    //   206: aload 5
    //   208: astore 6
    //   210: ldc 236
    //   212: ldc 238
    //   214: invokestatic 241	java/lang/System:setProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   217: pop
    //   218: aload 5
    //   220: astore 6
    //   222: aload 5
    //   224: invokevirtual 245	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   227: astore 7
    //   229: aload 5
    //   231: astore 6
    //   233: aload 7
    //   235: aload_1
    //   236: invokevirtual 251	java/io/OutputStream:write	([B)V
    //   239: aload 5
    //   241: astore 6
    //   243: aload 7
    //   245: invokevirtual 254	java/io/OutputStream:flush	()V
    //   248: aload 5
    //   250: astore 6
    //   252: aload 7
    //   254: invokevirtual 257	java/io/OutputStream:close	()V
    //   257: aload 5
    //   259: astore 6
    //   261: aload_0
    //   262: getfield 146	u/aly/r:a	Lu/aly/p;
    //   265: ifnull +16 -> 281
    //   268: aload 5
    //   270: astore 6
    //   272: aload_0
    //   273: getfield 146	u/aly/r:a	Lu/aly/p;
    //   276: invokeinterface 259 1 0
    //   281: aload 5
    //   283: astore 6
    //   285: aload 5
    //   287: invokevirtual 262	java/net/HttpURLConnection:getResponseCode	()I
    //   290: istore 4
    //   292: aload 5
    //   294: astore 6
    //   296: aload 5
    //   298: ldc 203
    //   300: invokevirtual 265	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   303: astore_1
    //   304: aload 5
    //   306: astore 6
    //   308: aload_1
    //   309: invokestatic 271	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   312: ifne +187 -> 499
    //   315: aload 5
    //   317: astore 6
    //   319: aload_1
    //   320: ldc_w 273
    //   323: invokevirtual 277	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   326: ifeq +173 -> 499
    //   329: iconst_1
    //   330: istore_3
    //   331: iload 4
    //   333: sipush 200
    //   336: if_icmpne +124 -> 460
    //   339: iload_3
    //   340: ifeq +120 -> 460
    //   343: aload 5
    //   345: astore 6
    //   347: new 279	java/lang/StringBuilder
    //   350: dup
    //   351: ldc_w 281
    //   354: invokespecial 282	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   357: aload_2
    //   358: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   361: invokevirtual 286	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   364: invokestatic 290	u/aly/ct:b	(Ljava/lang/String;)V
    //   367: aload 5
    //   369: astore 6
    //   371: aload 5
    //   373: invokevirtual 294	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   376: astore_1
    //   377: aload_1
    //   378: invokestatic 297	u/aly/cs:b	(Ljava/io/InputStream;)[B
    //   381: astore_2
    //   382: aload 5
    //   384: astore 6
    //   386: aload_1
    //   387: invokestatic 300	u/aly/cs:c	(Ljava/io/InputStream;)V
    //   390: aload 5
    //   392: ifnull +8 -> 400
    //   395: aload 5
    //   397: invokevirtual 303	java/net/HttpURLConnection:disconnect	()V
    //   400: aload_2
    //   401: areturn
    //   402: new 170	java/net/URL
    //   405: dup
    //   406: aload_2
    //   407: invokespecial 173	java/net/URL:<init>	(Ljava/lang/String;)V
    //   410: invokevirtual 306	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   413: checkcast 179	java/net/HttpURLConnection
    //   416: astore 5
    //   418: goto -350 -> 68
    //   421: astore_2
    //   422: aload 5
    //   424: astore 6
    //   426: aload_1
    //   427: invokestatic 300	u/aly/cs:c	(Ljava/io/InputStream;)V
    //   430: aload 5
    //   432: astore 6
    //   434: aload_2
    //   435: athrow
    //   436: astore_1
    //   437: aload 5
    //   439: astore 6
    //   441: ldc_w 308
    //   444: aload_1
    //   445: invokestatic 311	u/aly/ct:b	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   448: aload 5
    //   450: ifnull +8 -> 458
    //   453: aload 5
    //   455: invokevirtual 303	java/net/HttpURLConnection:disconnect	()V
    //   458: aconst_null
    //   459: areturn
    //   460: aload 5
    //   462: ifnull +8 -> 470
    //   465: aload 5
    //   467: invokevirtual 303	java/net/HttpURLConnection:disconnect	()V
    //   470: aconst_null
    //   471: areturn
    //   472: astore_1
    //   473: aconst_null
    //   474: astore 6
    //   476: aload 6
    //   478: ifnull +8 -> 486
    //   481: aload 6
    //   483: invokevirtual 303	java/net/HttpURLConnection:disconnect	()V
    //   486: aload_1
    //   487: athrow
    //   488: astore_1
    //   489: goto -13 -> 476
    //   492: astore_1
    //   493: aconst_null
    //   494: astore 5
    //   496: goto -59 -> 437
    //   499: iconst_0
    //   500: istore_3
    //   501: goto -170 -> 331
    //
    // Exception table:
    //   from	to	target	type
    //   377	382	421	finally
    //   72	85	436	java/lang/Exception
    //   89	100	436	java/lang/Exception
    //   104	113	436	java/lang/Exception
    //   117	126	436	java/lang/Exception
    //   130	138	436	java/lang/Exception
    //   142	150	436	java/lang/Exception
    //   154	161	436	java/lang/Exception
    //   165	171	436	java/lang/Exception
    //   175	181	436	java/lang/Exception
    //   185	191	436	java/lang/Exception
    //   195	206	436	java/lang/Exception
    //   210	218	436	java/lang/Exception
    //   222	229	436	java/lang/Exception
    //   233	239	436	java/lang/Exception
    //   243	248	436	java/lang/Exception
    //   252	257	436	java/lang/Exception
    //   261	268	436	java/lang/Exception
    //   272	281	436	java/lang/Exception
    //   285	292	436	java/lang/Exception
    //   296	304	436	java/lang/Exception
    //   308	315	436	java/lang/Exception
    //   319	329	436	java/lang/Exception
    //   347	367	436	java/lang/Exception
    //   371	377	436	java/lang/Exception
    //   386	390	436	java/lang/Exception
    //   426	430	436	java/lang/Exception
    //   434	436	436	java/lang/Exception
    //   0	16	472	finally
    //   16	68	472	finally
    //   402	418	472	finally
    //   72	85	488	finally
    //   89	100	488	finally
    //   104	113	488	finally
    //   117	126	488	finally
    //   130	138	488	finally
    //   142	150	488	finally
    //   154	161	488	finally
    //   165	171	488	finally
    //   175	181	488	finally
    //   185	191	488	finally
    //   195	206	488	finally
    //   210	218	488	finally
    //   222	229	488	finally
    //   233	239	488	finally
    //   243	248	488	finally
    //   252	257	488	finally
    //   261	268	488	finally
    //   272	281	488	finally
    //   285	292	488	finally
    //   296	304	488	finally
    //   308	315	488	finally
    //   319	329	488	finally
    //   347	367	488	finally
    //   371	377	488	finally
    //   386	390	488	finally
    //   426	430	488	finally
    //   434	436	488	finally
    //   441	448	488	finally
    //   0	16	492	java/lang/Exception
    //   16	68	492	java/lang/Exception
    //   402	418	492	java/lang/Exception
  }

  public final byte[] a(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte1 = null;
    int i = 0;
    while (true)
    {
      byte[] arrayOfByte2 = arrayOfByte1;
      if (i < q.d.length)
      {
        arrayOfByte1 = a(paramArrayOfByte, q.d[i]);
        if (arrayOfByte1 == null)
          break label55;
        arrayOfByte2 = arrayOfByte1;
        if (this.a != null)
        {
          this.a.c();
          arrayOfByte2 = arrayOfByte1;
        }
      }
      return arrayOfByte2;
      label55: if (this.a != null)
        this.a.d();
      i += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.r
 * JD-Core Version:    0.6.2
 */