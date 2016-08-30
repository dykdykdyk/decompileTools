package com.amap.api.mapcore2d;

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

public class ey
{
  private static ez a;
  private int b;
  private int c;
  private boolean d;
  private SSLContext e;
  private Proxy f;
  private volatile boolean g = false;
  private long h = -1L;
  private long i = 0L;
  private HostnameVerifier j = new fe(this);

  ey(int paramInt1, int paramInt2, Proxy paramProxy, boolean paramBoolean)
  {
    this.b = paramInt1;
    this.c = paramInt2;
    this.f = paramProxy;
    this.d = paramBoolean;
    if (paramBoolean);
    try
    {
      paramProxy = SSLContext.getInstance("TLS");
      paramProxy.init(null, null, null);
      this.e = paramProxy;
      return;
    }
    catch (NoSuchAlgorithmException paramProxy)
    {
      dq.a(paramProxy, "HttpUrlUtil", "HttpUrlUtil");
      return;
    }
    catch (Throwable paramProxy)
    {
      dq.a(paramProxy, "HttpUtil", "HttpUtil");
    }
  }

  // ERROR //
  private fd a(HttpURLConnection paramHttpURLConnection)
    throws da, IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: aload_1
    //   7: invokevirtual 90	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   10: astore 8
    //   12: aload_1
    //   13: invokevirtual 94	java/net/HttpURLConnection:getResponseCode	()I
    //   16: istore_2
    //   17: iload_2
    //   18: sipush 200
    //   21: if_icmpeq +102 -> 123
    //   24: new 80	com/amap/api/mapcore2d/da
    //   27: dup
    //   28: new 96	java/lang/StringBuilder
    //   31: dup
    //   32: ldc 98
    //   34: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   37: aload_1
    //   38: invokevirtual 105	java/net/HttpURLConnection:getResponseMessage	()Ljava/lang/String;
    //   41: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: ldc 111
    //   46: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: iload_2
    //   50: invokevirtual 114	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   53: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   56: invokespecial 118	com/amap/api/mapcore2d/da:<init>	(Ljava/lang/String;)V
    //   59: athrow
    //   60: astore_3
    //   61: aconst_null
    //   62: astore 4
    //   64: aconst_null
    //   65: astore 6
    //   67: aconst_null
    //   68: astore 7
    //   70: aload_3
    //   71: athrow
    //   72: astore_3
    //   73: aload 7
    //   75: ifnull +8 -> 83
    //   78: aload 7
    //   80: invokevirtual 123	java/io/ByteArrayOutputStream:close	()V
    //   83: aload 6
    //   85: ifnull +8 -> 93
    //   88: aload 6
    //   90: invokevirtual 126	java/io/InputStream:close	()V
    //   93: aload 5
    //   95: ifnull +8 -> 103
    //   98: aload 5
    //   100: invokevirtual 129	java/io/PushbackInputStream:close	()V
    //   103: aload 4
    //   105: ifnull +8 -> 113
    //   108: aload 4
    //   110: invokevirtual 126	java/io/InputStream:close	()V
    //   113: aload_1
    //   114: ifnull +7 -> 121
    //   117: aload_1
    //   118: invokevirtual 132	java/net/HttpURLConnection:disconnect	()V
    //   121: aload_3
    //   122: athrow
    //   123: new 120	java/io/ByteArrayOutputStream
    //   126: dup
    //   127: invokespecial 133	java/io/ByteArrayOutputStream:<init>	()V
    //   130: astore 7
    //   132: aload_1
    //   133: invokevirtual 137	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   136: astore 6
    //   138: new 128	java/io/PushbackInputStream
    //   141: dup
    //   142: aload 6
    //   144: iconst_2
    //   145: invokespecial 140	java/io/PushbackInputStream:<init>	(Ljava/io/InputStream;I)V
    //   148: astore_3
    //   149: iconst_2
    //   150: newarray byte
    //   152: astore 4
    //   154: aload_3
    //   155: aload 4
    //   157: invokevirtual 144	java/io/PushbackInputStream:read	([B)I
    //   160: pop
    //   161: aload_3
    //   162: aload 4
    //   164: invokevirtual 148	java/io/PushbackInputStream:unread	([B)V
    //   167: aload 4
    //   169: iconst_0
    //   170: baload
    //   171: bipush 31
    //   173: if_icmpne +442 -> 615
    //   176: aload 4
    //   178: iconst_1
    //   179: baload
    //   180: bipush 139
    //   182: if_icmpne +433 -> 615
    //   185: new 150	java/util/zip/GZIPInputStream
    //   188: dup
    //   189: aload_3
    //   190: invokespecial 153	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   193: astore 4
    //   195: sipush 1024
    //   198: newarray byte
    //   200: astore 5
    //   202: aload 4
    //   204: aload 5
    //   206: invokevirtual 154	java/io/InputStream:read	([B)I
    //   209: istore_2
    //   210: iload_2
    //   211: iconst_m1
    //   212: if_icmpeq +15 -> 227
    //   215: aload 7
    //   217: aload 5
    //   219: iconst_0
    //   220: iload_2
    //   221: invokevirtual 158	java/io/ByteArrayOutputStream:write	([BII)V
    //   224: goto -22 -> 202
    //   227: getstatic 160	com/amap/api/mapcore2d/ey:a	Lcom/amap/api/mapcore2d/ez;
    //   230: ifnull +11 -> 241
    //   233: getstatic 160	com/amap/api/mapcore2d/ey:a	Lcom/amap/api/mapcore2d/ez;
    //   236: invokeinterface 164 1 0
    //   241: new 166	com/amap/api/mapcore2d/fd
    //   244: dup
    //   245: invokespecial 167	com/amap/api/mapcore2d/fd:<init>	()V
    //   248: astore 5
    //   250: aload 5
    //   252: aload 7
    //   254: invokevirtual 171	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   257: putfield 174	com/amap/api/mapcore2d/fd:a	[B
    //   260: aload 5
    //   262: aload 8
    //   264: putfield 177	com/amap/api/mapcore2d/fd:b	Ljava/util/Map;
    //   267: aload 7
    //   269: ifnull +8 -> 277
    //   272: aload 7
    //   274: invokevirtual 123	java/io/ByteArrayOutputStream:close	()V
    //   277: aload 6
    //   279: ifnull +8 -> 287
    //   282: aload 6
    //   284: invokevirtual 126	java/io/InputStream:close	()V
    //   287: aload_3
    //   288: ifnull +7 -> 295
    //   291: aload_3
    //   292: invokevirtual 129	java/io/PushbackInputStream:close	()V
    //   295: aload 4
    //   297: ifnull +8 -> 305
    //   300: aload 4
    //   302: invokevirtual 126	java/io/InputStream:close	()V
    //   305: aload_1
    //   306: ifnull +7 -> 313
    //   309: aload_1
    //   310: invokevirtual 132	java/net/HttpURLConnection:disconnect	()V
    //   313: aload 5
    //   315: areturn
    //   316: astore 7
    //   318: aload 7
    //   320: ldc 69
    //   322: ldc 179
    //   324: invokestatic 74	com/amap/api/mapcore2d/dq:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   327: aload 7
    //   329: invokevirtual 182	java/io/IOException:printStackTrace	()V
    //   332: goto -249 -> 83
    //   335: astore 6
    //   337: aload 6
    //   339: ldc 69
    //   341: ldc 179
    //   343: invokestatic 74	com/amap/api/mapcore2d/dq:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   346: aload 6
    //   348: invokevirtual 183	java/lang/Exception:printStackTrace	()V
    //   351: goto -258 -> 93
    //   354: astore 5
    //   356: aload 5
    //   358: ldc 69
    //   360: ldc 179
    //   362: invokestatic 74	com/amap/api/mapcore2d/dq:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   365: aload 5
    //   367: invokevirtual 183	java/lang/Exception:printStackTrace	()V
    //   370: goto -267 -> 103
    //   373: astore 4
    //   375: aload 4
    //   377: ldc 69
    //   379: ldc 179
    //   381: invokestatic 74	com/amap/api/mapcore2d/dq:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   384: aload 4
    //   386: invokevirtual 183	java/lang/Exception:printStackTrace	()V
    //   389: goto -276 -> 113
    //   392: astore_1
    //   393: aload_1
    //   394: ldc 69
    //   396: ldc 179
    //   398: invokestatic 74	com/amap/api/mapcore2d/dq:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   401: aload_1
    //   402: invokevirtual 184	java/lang/Throwable:printStackTrace	()V
    //   405: goto -284 -> 121
    //   408: astore 7
    //   410: aload 7
    //   412: ldc 69
    //   414: ldc 179
    //   416: invokestatic 74	com/amap/api/mapcore2d/dq:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   419: aload 7
    //   421: invokevirtual 182	java/io/IOException:printStackTrace	()V
    //   424: goto -147 -> 277
    //   427: astore 6
    //   429: aload 6
    //   431: ldc 69
    //   433: ldc 179
    //   435: invokestatic 74	com/amap/api/mapcore2d/dq:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   438: aload 6
    //   440: invokevirtual 183	java/lang/Exception:printStackTrace	()V
    //   443: goto -156 -> 287
    //   446: astore_3
    //   447: aload_3
    //   448: ldc 69
    //   450: ldc 179
    //   452: invokestatic 74	com/amap/api/mapcore2d/dq:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   455: aload_3
    //   456: invokevirtual 183	java/lang/Exception:printStackTrace	()V
    //   459: goto -164 -> 295
    //   462: astore_3
    //   463: aload_3
    //   464: ldc 69
    //   466: ldc 179
    //   468: invokestatic 74	com/amap/api/mapcore2d/dq:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   471: aload_3
    //   472: invokevirtual 183	java/lang/Exception:printStackTrace	()V
    //   475: goto -170 -> 305
    //   478: astore_1
    //   479: aload_1
    //   480: ldc 69
    //   482: ldc 179
    //   484: invokestatic 74	com/amap/api/mapcore2d/dq:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   487: aload_1
    //   488: invokevirtual 184	java/lang/Throwable:printStackTrace	()V
    //   491: aload 5
    //   493: areturn
    //   494: astore_3
    //   495: aconst_null
    //   496: astore 8
    //   498: aconst_null
    //   499: astore 6
    //   501: aconst_null
    //   502: astore 7
    //   504: aload 4
    //   506: astore 5
    //   508: aload 8
    //   510: astore 4
    //   512: goto -439 -> 73
    //   515: astore_3
    //   516: aconst_null
    //   517: astore 8
    //   519: aconst_null
    //   520: astore 6
    //   522: aload 4
    //   524: astore 5
    //   526: aload 8
    //   528: astore 4
    //   530: goto -457 -> 73
    //   533: astore_3
    //   534: aconst_null
    //   535: astore 8
    //   537: aload 4
    //   539: astore 5
    //   541: aload 8
    //   543: astore 4
    //   545: goto -472 -> 73
    //   548: astore 8
    //   550: aconst_null
    //   551: astore 4
    //   553: aload_3
    //   554: astore 5
    //   556: aload 8
    //   558: astore_3
    //   559: goto -486 -> 73
    //   562: astore 8
    //   564: aload_3
    //   565: astore 5
    //   567: aload 8
    //   569: astore_3
    //   570: goto -497 -> 73
    //   573: astore_3
    //   574: aconst_null
    //   575: astore 4
    //   577: aconst_null
    //   578: astore 6
    //   580: goto -510 -> 70
    //   583: astore_3
    //   584: aconst_null
    //   585: astore 4
    //   587: goto -517 -> 70
    //   590: astore 8
    //   592: aconst_null
    //   593: astore 4
    //   595: aload_3
    //   596: astore 5
    //   598: aload 8
    //   600: astore_3
    //   601: goto -531 -> 70
    //   604: astore 8
    //   606: aload_3
    //   607: astore 5
    //   609: aload 8
    //   611: astore_3
    //   612: goto -542 -> 70
    //   615: aload_3
    //   616: astore 4
    //   618: goto -423 -> 195
    //
    // Exception table:
    //   from	to	target	type
    //   6	17	60	java/io/IOException
    //   24	60	60	java/io/IOException
    //   123	132	60	java/io/IOException
    //   70	72	72	finally
    //   78	83	316	java/io/IOException
    //   88	93	335	java/lang/Exception
    //   98	103	354	java/lang/Exception
    //   108	113	373	java/lang/Exception
    //   117	121	392	java/lang/Throwable
    //   272	277	408	java/io/IOException
    //   282	287	427	java/lang/Exception
    //   291	295	446	java/lang/Exception
    //   300	305	462	java/lang/Exception
    //   309	313	478	java/lang/Throwable
    //   6	17	494	finally
    //   24	60	494	finally
    //   123	132	494	finally
    //   132	138	515	finally
    //   138	149	533	finally
    //   149	167	548	finally
    //   185	195	548	finally
    //   195	202	562	finally
    //   202	210	562	finally
    //   215	224	562	finally
    //   227	241	562	finally
    //   241	267	562	finally
    //   132	138	573	java/io/IOException
    //   138	149	583	java/io/IOException
    //   149	167	590	java/io/IOException
    //   185	195	590	java/io/IOException
    //   195	202	604	java/io/IOException
    //   202	210	604	java/io/IOException
    //   215	224	604	java/io/IOException
    //   227	241	604	java/io/IOException
    //   241	267	604	java/io/IOException
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

  public static void a(ez paramez)
  {
    a = paramez;
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
      paramHttpURLConnection.setConnectTimeout(this.b);
      paramHttpURLConnection.setReadTimeout(this.c);
      return;
    }
    catch (Throwable paramMap)
    {
      while (true)
        dq.a(paramMap, "HttpUrlUtil", "addHeaders");
    }
  }

  fd a(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2)
    throws da
  {
    try
    {
      paramMap2 = a(paramMap2);
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append(paramString);
      if (paramMap2 != null)
        localStringBuffer.append("?").append(paramMap2);
      paramString = a(localStringBuffer.toString(), paramMap1, false);
      paramString.connect();
      paramString = a(paramString);
      return paramString;
    }
    catch (ConnectException paramString)
    {
      throw new da("http连接失败 - ConnectionException");
    }
    catch (MalformedURLException paramString)
    {
      throw new da("url异常 - MalformedURLException");
    }
    catch (UnknownHostException paramString)
    {
      throw new da("未知主机 - UnKnowHostException");
    }
    catch (SocketException paramString)
    {
      throw new da("socket 连接异常 - SocketException");
    }
    catch (SocketTimeoutException paramString)
    {
      throw new da("socket 连接超时 - SocketTimeoutException");
    }
    catch (IOException paramString)
    {
      throw new da("IO 操作异常 - IOException");
    }
    catch (Throwable paramString)
    {
      paramString.printStackTrace();
    }
    throw new da("未知的错误");
  }

  fd a(String paramString, Map<String, String> paramMap, byte[] paramArrayOfByte)
    throws da
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
      throw new da("http连接失败 - ConnectionException");
    }
    catch (MalformedURLException paramString)
    {
      paramString.printStackTrace();
      throw new da("url异常 - MalformedURLException");
    }
    catch (UnknownHostException paramString)
    {
      paramString.printStackTrace();
      throw new da("未知主机 - UnKnowHostException");
    }
    catch (SocketException paramString)
    {
      paramString.printStackTrace();
      throw new da("socket 连接异常 - SocketException");
    }
    catch (SocketTimeoutException paramString)
    {
      paramString.printStackTrace();
      throw new da("socket 连接超时 - SocketTimeoutException");
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
      throw new da("IO 操作异常 - IOException");
    }
    catch (Throwable paramString)
    {
      dq.a(paramString, "HttpUrlUtil", "makePostReqeust");
    }
    throw new da("未知的错误");
  }

  HttpURLConnection a(String paramString, Map<String, String> paramMap, boolean paramBoolean)
    throws IOException
  {
    de.a();
    paramString = new URL(paramString);
    if (this.f != null)
    {
      paramString = paramString.openConnection(this.f);
      if (!this.d)
        break label134;
      paramString = (HttpsURLConnection)paramString;
      ((HttpsURLConnection)paramString).setSSLSocketFactory(this.e.getSocketFactory());
      ((HttpsURLConnection)paramString).setHostnameVerifier(this.j);
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
 * Qualified Name:     com.amap.api.mapcore2d.ey
 * JD-Core Version:    0.6.2
 */