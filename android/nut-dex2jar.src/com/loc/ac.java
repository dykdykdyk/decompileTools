package com.loc;

import android.os.Build.VERSION;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;

public final class ac
{
  volatile boolean a = false;
  long b = -1L;
  long c = 0L;
  private int d;
  private int e;
  private boolean f;
  private SSLContext g;
  private Proxy h;
  private HostnameVerifier i = new af(this);

  ac(int paramInt1, int paramInt2, Proxy paramProxy)
  {
    this(paramInt1, paramInt2, paramProxy, false);
  }

  ac(int paramInt1, int paramInt2, Proxy paramProxy, boolean paramBoolean)
  {
    this.d = paramInt1;
    this.e = paramInt2;
    this.h = paramProxy;
    this.f = paramBoolean;
    if (paramBoolean);
    try
    {
      paramProxy = SSLContext.getInstance("TLS");
      paramProxy.init(null, null, null);
      this.g = paramProxy;
      return;
    }
    catch (NoSuchAlgorithmException paramProxy)
    {
      paramProxy.printStackTrace();
      return;
    }
    catch (Throwable paramProxy)
    {
      paramProxy.printStackTrace();
    }
  }

  // ERROR //
  private static ae a(HttpURLConnection paramHttpURLConnection)
    throws l, IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: aload_0
    //   6: invokevirtual 85	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   9: astore 7
    //   11: aload_0
    //   12: invokevirtual 89	java/net/HttpURLConnection:getResponseCode	()I
    //   15: istore_1
    //   16: iload_1
    //   17: sipush 200
    //   20: if_icmpeq +99 -> 119
    //   23: new 75	com/loc/l
    //   26: dup
    //   27: new 91	java/lang/StringBuilder
    //   30: dup
    //   31: ldc 93
    //   33: invokespecial 96	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: invokevirtual 100	java/net/HttpURLConnection:getResponseMessage	()Ljava/lang/String;
    //   40: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: ldc 106
    //   45: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: iload_1
    //   49: invokevirtual 109	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   52: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: invokespecial 113	com/loc/l:<init>	(Ljava/lang/String;)V
    //   58: athrow
    //   59: astore_2
    //   60: aconst_null
    //   61: astore_3
    //   62: aconst_null
    //   63: astore 5
    //   65: aconst_null
    //   66: astore 6
    //   68: aload_2
    //   69: athrow
    //   70: astore_2
    //   71: aload 6
    //   73: ifnull +8 -> 81
    //   76: aload 6
    //   78: invokevirtual 118	java/io/ByteArrayOutputStream:close	()V
    //   81: aload 5
    //   83: ifnull +8 -> 91
    //   86: aload 5
    //   88: invokevirtual 121	java/io/InputStream:close	()V
    //   91: aload 4
    //   93: ifnull +8 -> 101
    //   96: aload 4
    //   98: invokevirtual 124	java/io/PushbackInputStream:close	()V
    //   101: aload_3
    //   102: ifnull +7 -> 109
    //   105: aload_3
    //   106: invokevirtual 121	java/io/InputStream:close	()V
    //   109: aload_0
    //   110: ifnull +7 -> 117
    //   113: aload_0
    //   114: invokevirtual 127	java/net/HttpURLConnection:disconnect	()V
    //   117: aload_2
    //   118: athrow
    //   119: new 115	java/io/ByteArrayOutputStream
    //   122: dup
    //   123: invokespecial 128	java/io/ByteArrayOutputStream:<init>	()V
    //   126: astore 6
    //   128: aload_0
    //   129: invokevirtual 132	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   132: astore 5
    //   134: new 123	java/io/PushbackInputStream
    //   137: dup
    //   138: aload 5
    //   140: iconst_2
    //   141: invokespecial 135	java/io/PushbackInputStream:<init>	(Ljava/io/InputStream;I)V
    //   144: astore_2
    //   145: iconst_2
    //   146: newarray byte
    //   148: astore_3
    //   149: aload_2
    //   150: aload_3
    //   151: invokevirtual 139	java/io/PushbackInputStream:read	([B)I
    //   154: pop
    //   155: aload_2
    //   156: aload_3
    //   157: invokevirtual 143	java/io/PushbackInputStream:unread	([B)V
    //   160: aload_3
    //   161: iconst_0
    //   162: baload
    //   163: bipush 31
    //   165: if_icmpne +370 -> 535
    //   168: aload_3
    //   169: iconst_1
    //   170: baload
    //   171: bipush 139
    //   173: if_icmpne +362 -> 535
    //   176: new 145	java/util/zip/GZIPInputStream
    //   179: dup
    //   180: aload_2
    //   181: invokespecial 148	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   184: astore_3
    //   185: sipush 1024
    //   188: newarray byte
    //   190: astore 4
    //   192: aload_3
    //   193: aload 4
    //   195: invokevirtual 149	java/io/InputStream:read	([B)I
    //   198: istore_1
    //   199: iload_1
    //   200: iconst_m1
    //   201: if_icmpeq +15 -> 216
    //   204: aload 6
    //   206: aload 4
    //   208: iconst_0
    //   209: iload_1
    //   210: invokevirtual 153	java/io/ByteArrayOutputStream:write	([BII)V
    //   213: goto -21 -> 192
    //   216: new 155	com/loc/ae
    //   219: dup
    //   220: invokespecial 156	com/loc/ae:<init>	()V
    //   223: astore 4
    //   225: aload 4
    //   227: aload 6
    //   229: invokevirtual 160	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   232: putfield 163	com/loc/ae:a	[B
    //   235: aload 4
    //   237: aload 7
    //   239: putfield 166	com/loc/ae:b	Ljava/util/Map;
    //   242: aload 6
    //   244: ifnull +8 -> 252
    //   247: aload 6
    //   249: invokevirtual 118	java/io/ByteArrayOutputStream:close	()V
    //   252: aload 5
    //   254: ifnull +8 -> 262
    //   257: aload 5
    //   259: invokevirtual 121	java/io/InputStream:close	()V
    //   262: aload_2
    //   263: ifnull +7 -> 270
    //   266: aload_2
    //   267: invokevirtual 124	java/io/PushbackInputStream:close	()V
    //   270: aload_3
    //   271: ifnull +7 -> 278
    //   274: aload_3
    //   275: invokevirtual 121	java/io/InputStream:close	()V
    //   278: aload_0
    //   279: ifnull +7 -> 286
    //   282: aload_0
    //   283: invokevirtual 127	java/net/HttpURLConnection:disconnect	()V
    //   286: aload 4
    //   288: areturn
    //   289: astore 6
    //   291: aload 6
    //   293: invokevirtual 72	java/lang/Throwable:printStackTrace	()V
    //   296: aload 6
    //   298: invokevirtual 167	java/io/IOException:printStackTrace	()V
    //   301: goto -220 -> 81
    //   304: astore 5
    //   306: aload 5
    //   308: invokevirtual 72	java/lang/Throwable:printStackTrace	()V
    //   311: aload 5
    //   313: invokevirtual 168	java/lang/Exception:printStackTrace	()V
    //   316: goto -225 -> 91
    //   319: astore 4
    //   321: aload 4
    //   323: invokevirtual 72	java/lang/Throwable:printStackTrace	()V
    //   326: aload 4
    //   328: invokevirtual 168	java/lang/Exception:printStackTrace	()V
    //   331: goto -230 -> 101
    //   334: astore_3
    //   335: aload_3
    //   336: invokevirtual 72	java/lang/Throwable:printStackTrace	()V
    //   339: aload_3
    //   340: invokevirtual 168	java/lang/Exception:printStackTrace	()V
    //   343: goto -234 -> 109
    //   346: astore_0
    //   347: aload_0
    //   348: invokevirtual 72	java/lang/Throwable:printStackTrace	()V
    //   351: aload_0
    //   352: invokevirtual 72	java/lang/Throwable:printStackTrace	()V
    //   355: goto -238 -> 117
    //   358: astore 6
    //   360: aload 6
    //   362: invokevirtual 72	java/lang/Throwable:printStackTrace	()V
    //   365: aload 6
    //   367: invokevirtual 167	java/io/IOException:printStackTrace	()V
    //   370: goto -118 -> 252
    //   373: astore 5
    //   375: aload 5
    //   377: invokevirtual 72	java/lang/Throwable:printStackTrace	()V
    //   380: aload 5
    //   382: invokevirtual 168	java/lang/Exception:printStackTrace	()V
    //   385: goto -123 -> 262
    //   388: astore_2
    //   389: aload_2
    //   390: invokevirtual 72	java/lang/Throwable:printStackTrace	()V
    //   393: aload_2
    //   394: invokevirtual 168	java/lang/Exception:printStackTrace	()V
    //   397: goto -127 -> 270
    //   400: astore_2
    //   401: aload_2
    //   402: invokevirtual 72	java/lang/Throwable:printStackTrace	()V
    //   405: aload_2
    //   406: invokevirtual 168	java/lang/Exception:printStackTrace	()V
    //   409: goto -131 -> 278
    //   412: astore_0
    //   413: aload_0
    //   414: invokevirtual 72	java/lang/Throwable:printStackTrace	()V
    //   417: aload_0
    //   418: invokevirtual 72	java/lang/Throwable:printStackTrace	()V
    //   421: aload 4
    //   423: areturn
    //   424: astore_2
    //   425: aconst_null
    //   426: astore 7
    //   428: aconst_null
    //   429: astore 5
    //   431: aconst_null
    //   432: astore 6
    //   434: aload_3
    //   435: astore 4
    //   437: aload 7
    //   439: astore_3
    //   440: goto -369 -> 71
    //   443: astore_2
    //   444: aconst_null
    //   445: astore 7
    //   447: aconst_null
    //   448: astore 5
    //   450: aload_3
    //   451: astore 4
    //   453: aload 7
    //   455: astore_3
    //   456: goto -385 -> 71
    //   459: astore_2
    //   460: aconst_null
    //   461: astore 7
    //   463: aload_3
    //   464: astore 4
    //   466: aload 7
    //   468: astore_3
    //   469: goto -398 -> 71
    //   472: astore 7
    //   474: aconst_null
    //   475: astore_3
    //   476: aload_2
    //   477: astore 4
    //   479: aload 7
    //   481: astore_2
    //   482: goto -411 -> 71
    //   485: astore 7
    //   487: aload_2
    //   488: astore 4
    //   490: aload 7
    //   492: astore_2
    //   493: goto -422 -> 71
    //   496: astore_2
    //   497: aconst_null
    //   498: astore_3
    //   499: aconst_null
    //   500: astore 5
    //   502: goto -434 -> 68
    //   505: astore_2
    //   506: aconst_null
    //   507: astore_3
    //   508: goto -440 -> 68
    //   511: astore 7
    //   513: aconst_null
    //   514: astore_3
    //   515: aload_2
    //   516: astore 4
    //   518: aload 7
    //   520: astore_2
    //   521: goto -453 -> 68
    //   524: astore 7
    //   526: aload_2
    //   527: astore 4
    //   529: aload 7
    //   531: astore_2
    //   532: goto -464 -> 68
    //   535: aload_2
    //   536: astore_3
    //   537: goto -352 -> 185
    //
    // Exception table:
    //   from	to	target	type
    //   5	16	59	java/io/IOException
    //   23	59	59	java/io/IOException
    //   119	128	59	java/io/IOException
    //   68	70	70	finally
    //   76	81	289	java/io/IOException
    //   86	91	304	java/lang/Exception
    //   96	101	319	java/lang/Exception
    //   105	109	334	java/lang/Exception
    //   113	117	346	java/lang/Throwable
    //   247	252	358	java/io/IOException
    //   257	262	373	java/lang/Exception
    //   266	270	388	java/lang/Exception
    //   274	278	400	java/lang/Exception
    //   282	286	412	java/lang/Throwable
    //   5	16	424	finally
    //   23	59	424	finally
    //   119	128	424	finally
    //   128	134	443	finally
    //   134	145	459	finally
    //   145	160	472	finally
    //   176	185	472	finally
    //   185	192	485	finally
    //   192	199	485	finally
    //   204	213	485	finally
    //   216	242	485	finally
    //   128	134	496	java/io/IOException
    //   134	145	505	java/io/IOException
    //   145	160	511	java/io/IOException
    //   176	185	511	java/io/IOException
    //   185	192	524	java/io/IOException
    //   192	199	524	java/io/IOException
    //   204	213	524	java/io/IOException
    //   216	242	524	java/io/IOException
  }

  static String a(Map<String, String> paramMap)
  {
    if (paramMap != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        paramMap = (Map.Entry)localIterator.next();
        String str2 = (String)paramMap.getKey();
        String str1 = (String)paramMap.getValue();
        paramMap = str1;
        if (str1 == null)
          paramMap = "";
        if (localStringBuilder.length() > 0)
          localStringBuilder.append("&");
        localStringBuilder.append(URLEncoder.encode(str2));
        localStringBuilder.append("=");
        localStringBuilder.append(URLEncoder.encode(paramMap));
      }
      return localStringBuilder.toString();
    }
    return null;
  }

  private void a(Map<String, String> paramMap, HttpURLConnection paramHttpURLConnection)
  {
    if (paramMap != null)
    {
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        paramHttpURLConnection.addRequestProperty(str, (String)paramMap.get(str));
      }
    }
    try
    {
      paramHttpURLConnection.addRequestProperty("csid", UUID.randomUUID().toString().replaceAll("-", "").toLowerCase());
      paramHttpURLConnection.setConnectTimeout(this.d);
      paramHttpURLConnection.setReadTimeout(this.e);
      return;
    }
    catch (Throwable paramMap)
    {
      while (true)
        paramMap.printStackTrace();
    }
  }

  final ae a(String paramString, Map<String, String> paramMap, byte[] paramArrayOfByte)
    throws l
  {
    try
    {
      paramString = a(paramString, paramMap, true);
      if ((paramArrayOfByte != null) && (paramArrayOfByte.length > 0))
      {
        paramMap = new DataOutputStream(paramString.getOutputStream());
        paramMap.write(paramArrayOfByte);
        paramMap.close();
      }
      paramString.connect();
      paramString = a(paramString);
      return paramString;
    }
    catch (ConnectException paramString)
    {
      paramString.printStackTrace();
      throw new l("http连接失败 - ConnectionException");
    }
    catch (MalformedURLException paramString)
    {
      paramString.printStackTrace();
      throw new l("url异常 - MalformedURLException");
    }
    catch (UnknownHostException paramString)
    {
      paramString.printStackTrace();
      throw new l("未知主机 - UnKnowHostException");
    }
    catch (SocketException paramString)
    {
      paramString.printStackTrace();
      throw new l("socket 连接异常 - SocketException");
    }
    catch (SocketTimeoutException paramString)
    {
      paramString.printStackTrace();
      throw new l("socket 连接超时 - SocketTimeoutException");
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
      throw new l("IO 操作异常 - IOException");
    }
    catch (Throwable paramString)
    {
      paramString.printStackTrace();
    }
    throw new l("未知的错误");
  }

  final HttpURLConnection a(String paramString, Map<String, String> paramMap, boolean paramBoolean)
    throws IOException
  {
    eh.a();
    paramString = new URL(paramString);
    if (this.h != null)
    {
      paramString = paramString.openConnection(this.h);
      if (!this.f)
        break label134;
      paramString = (HttpsURLConnection)paramString;
      ((HttpsURLConnection)paramString).setSSLSocketFactory(this.g.getSocketFactory());
      ((HttpsURLConnection)paramString).setHostnameVerifier(this.i);
    }
    while (true)
    {
      if ((Build.VERSION.SDK != null) && (Build.VERSION.SDK_INT > 13))
        paramString.setRequestProperty("Connection", "close");
      a(paramMap, paramString);
      if (!paramBoolean)
        break label142;
      paramString.setRequestMethod("POST");
      paramString.setUseCaches(false);
      paramString.setDoInput(true);
      paramString.setDoOutput(true);
      return paramString;
      paramString = (HttpURLConnection)paramString.openConnection();
      break;
      label134: paramString = (HttpURLConnection)paramString;
    }
    label142: paramString.setRequestMethod("GET");
    paramString.setDoInput(true);
    return paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.ac
 * JD-Core Version:    0.6.2
 */