package com.sina.weibo.sdk.net;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.text.TextUtils;
import com.sina.weibo.sdk.d.p;
import com.sina.weibo.sdk.exception.WeiboException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

public class HttpManager
{
  private static final String a;
  private static final String b;
  private static final String c;
  private static SSLSocketFactory d;

  static
  {
    System.loadLibrary("weibosdkcore");
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 1;
    if (i >= 12)
    {
      a = localStringBuffer.toString();
      b = "--" + a;
      c = "--" + a + "--";
      return;
    }
    long l = System.currentTimeMillis() + i;
    if (l % 3L == 0L)
      localStringBuffer.append((char)(int)l % '\t');
    while (true)
    {
      i += 1;
      break;
      if (l % 3L == 1L)
        localStringBuffer.append((char)(int)(l % 26L + 65L));
      else
        localStringBuffer.append((char)(int)(l % 26L + 97L));
    }
  }

  public static String a(Context paramContext, String paramString1, String paramString2, k paramk)
    throws WeiboException
  {
    paramContext = a(c(paramContext, paramString1, paramString2, paramk));
    com.sina.weibo.sdk.d.i.a("HttpManager", "Response : " + paramContext);
    return paramContext;
  }

  // ERROR //
  public static String a(String paramString1, String paramString2, String paramString3)
    throws WeiboException
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: new 90	java/io/File
    //   6: dup
    //   7: aload_1
    //   8: invokespecial 91	java/io/File:<init>	(Ljava/lang/String;)V
    //   11: astore 8
    //   13: aload 8
    //   15: invokevirtual 95	java/io/File:exists	()Z
    //   18: ifne +9 -> 27
    //   21: aload 8
    //   23: invokevirtual 98	java/io/File:mkdirs	()Z
    //   26: pop
    //   27: new 90	java/io/File
    //   30: dup
    //   31: aload 8
    //   33: aload_2
    //   34: invokespecial 101	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   37: astore 9
    //   39: aload 9
    //   41: invokevirtual 95	java/io/File:exists	()Z
    //   44: ifeq +14 -> 58
    //   47: aload 9
    //   49: invokevirtual 104	java/io/File:getPath	()Ljava/lang/String;
    //   52: astore_0
    //   53: ldc 2
    //   55: monitorexit
    //   56: aload_0
    //   57: areturn
    //   58: aload_0
    //   59: invokestatic 110	android/webkit/URLUtil:isValidUrl	(Ljava/lang/String;)Z
    //   62: ifne +9 -> 71
    //   65: ldc 112
    //   67: astore_0
    //   68: goto -15 -> 53
    //   71: invokestatic 115	com/sina/weibo/sdk/net/HttpManager:a	()Lorg/apache/http/client/HttpClient;
    //   74: astore 8
    //   76: new 90	java/io/File
    //   79: dup
    //   80: aload_1
    //   81: new 33	java/lang/StringBuilder
    //   84: dup
    //   85: aload_2
    //   86: invokestatic 121	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   89: invokespecial 37	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   92: ldc 123
    //   94: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   100: invokespecial 125	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   103: astore_1
    //   104: aload_1
    //   105: invokevirtual 95	java/io/File:exists	()Z
    //   108: ifeq +271 -> 379
    //   111: aload_1
    //   112: invokevirtual 128	java/io/File:length	()J
    //   115: lstore 4
    //   117: new 130	org/apache/http/client/methods/HttpGet
    //   120: dup
    //   121: aload_0
    //   122: invokespecial 131	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   125: astore_0
    //   126: aload_0
    //   127: ldc 133
    //   129: new 33	java/lang/StringBuilder
    //   132: dup
    //   133: ldc 135
    //   135: invokespecial 37	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   138: lload 4
    //   140: invokevirtual 138	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   143: ldc 140
    //   145: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   151: invokevirtual 143	org/apache/http/client/methods/HttpGet:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   154: aload 8
    //   156: aload_0
    //   157: invokeinterface 149 2 0
    //   162: astore_0
    //   163: aload_0
    //   164: invokeinterface 155 1 0
    //   169: invokeinterface 161 1 0
    //   174: istore_3
    //   175: iload_3
    //   176: sipush 206
    //   179: if_icmpne +211 -> 390
    //   182: aload_0
    //   183: ldc 163
    //   185: invokeinterface 167 2 0
    //   190: astore_2
    //   191: aload_2
    //   192: ifnull +411 -> 603
    //   195: aload_2
    //   196: arraylength
    //   197: ifeq +406 -> 603
    //   200: aload_2
    //   201: iconst_0
    //   202: aaload
    //   203: invokeinterface 172 1 0
    //   208: astore_2
    //   209: aload_2
    //   210: aload_2
    //   211: bipush 47
    //   213: invokevirtual 176	java/lang/String:indexOf	(I)I
    //   216: iconst_1
    //   217: iadd
    //   218: invokevirtual 180	java/lang/String:substring	(I)Ljava/lang/String;
    //   221: invokestatic 186	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   224: lstore 6
    //   226: aload_0
    //   227: invokeinterface 190 1 0
    //   232: astore_2
    //   233: aload_0
    //   234: ldc 192
    //   236: invokeinterface 196 2 0
    //   241: astore_0
    //   242: aload_0
    //   243: ifnull +251 -> 494
    //   246: aload_0
    //   247: invokeinterface 172 1 0
    //   252: invokevirtual 199	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   255: ldc 201
    //   257: invokevirtual 204	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   260: iflt +234 -> 494
    //   263: new 206	java/util/zip/GZIPInputStream
    //   266: dup
    //   267: aload_2
    //   268: invokeinterface 212 1 0
    //   273: invokespecial 215	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   276: astore_0
    //   277: new 217	java/io/RandomAccessFile
    //   280: dup
    //   281: aload_1
    //   282: ldc 219
    //   284: invokespecial 220	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   287: astore_2
    //   288: aload_2
    //   289: lload 4
    //   291: invokevirtual 224	java/io/RandomAccessFile:seek	(J)V
    //   294: sipush 1024
    //   297: newarray byte
    //   299: astore 10
    //   301: aload_0
    //   302: aload 10
    //   304: invokevirtual 230	java/io/InputStream:read	([B)I
    //   307: istore_3
    //   308: iload_3
    //   309: iconst_m1
    //   310: if_icmpne +194 -> 504
    //   313: aload_2
    //   314: invokevirtual 233	java/io/RandomAccessFile:close	()V
    //   317: aload_0
    //   318: invokevirtual 234	java/io/InputStream:close	()V
    //   321: lload 6
    //   323: lconst_0
    //   324: lcmp
    //   325: ifeq +13 -> 338
    //   328: aload_1
    //   329: invokevirtual 128	java/io/File:length	()J
    //   332: lload 6
    //   334: lcmp
    //   335: ifge +213 -> 548
    //   338: aload_1
    //   339: invokevirtual 237	java/io/File:delete	()Z
    //   342: pop
    //   343: aload 8
    //   345: invokeinterface 241 1 0
    //   350: invokeinterface 246 1 0
    //   355: aload 8
    //   357: invokeinterface 241 1 0
    //   362: ldc2_w 247
    //   365: getstatic 254	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   368: invokeinterface 258 4 0
    //   373: ldc 112
    //   375: astore_0
    //   376: goto -323 -> 53
    //   379: aload_1
    //   380: invokevirtual 261	java/io/File:createNewFile	()Z
    //   383: pop
    //   384: lconst_0
    //   385: lstore 4
    //   387: goto -270 -> 117
    //   390: iload_3
    //   391: sipush 200
    //   394: if_icmpne +38 -> 432
    //   397: aload_0
    //   398: ldc_w 263
    //   401: invokeinterface 196 2 0
    //   406: astore_2
    //   407: aload_2
    //   408: ifnull +186 -> 594
    //   411: aload_2
    //   412: invokeinterface 172 1 0
    //   417: invokestatic 268	java/lang/Integer:valueOf	(Ljava/lang/String;)Ljava/lang/Integer;
    //   420: invokevirtual 271	java/lang/Integer:intValue	()I
    //   423: i2l
    //   424: lstore 6
    //   426: lconst_0
    //   427: lstore 4
    //   429: goto -203 -> 226
    //   432: new 273	com/sina/weibo/sdk/exception/WeiboHttpException
    //   435: dup
    //   436: aload_0
    //   437: invokestatic 75	com/sina/weibo/sdk/net/HttpManager:a	(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    //   440: iload_3
    //   441: invokespecial 276	com/sina/weibo/sdk/exception/WeiboHttpException:<init>	(Ljava/lang/String;I)V
    //   444: athrow
    //   445: astore_0
    //   446: aload_0
    //   447: invokevirtual 279	java/io/IOException:printStackTrace	()V
    //   450: aload_1
    //   451: invokevirtual 237	java/io/File:delete	()Z
    //   454: pop
    //   455: aload 8
    //   457: invokeinterface 241 1 0
    //   462: invokeinterface 246 1 0
    //   467: aload 8
    //   469: invokeinterface 241 1 0
    //   474: ldc2_w 247
    //   477: getstatic 254	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   480: invokeinterface 258 4 0
    //   485: goto -112 -> 373
    //   488: astore_0
    //   489: ldc 2
    //   491: monitorexit
    //   492: aload_0
    //   493: athrow
    //   494: aload_2
    //   495: invokeinterface 212 1 0
    //   500: astore_0
    //   501: goto -224 -> 277
    //   504: aload_2
    //   505: aload 10
    //   507: iconst_0
    //   508: iload_3
    //   509: invokevirtual 283	java/io/RandomAccessFile:write	([BII)V
    //   512: goto -211 -> 301
    //   515: astore_0
    //   516: aload 8
    //   518: invokeinterface 241 1 0
    //   523: invokeinterface 246 1 0
    //   528: aload 8
    //   530: invokeinterface 241 1 0
    //   535: ldc2_w 247
    //   538: getstatic 254	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   541: invokeinterface 258 4 0
    //   546: aload_0
    //   547: athrow
    //   548: aload_1
    //   549: aload 9
    //   551: invokevirtual 287	java/io/File:renameTo	(Ljava/io/File;)Z
    //   554: pop
    //   555: aload 9
    //   557: invokevirtual 104	java/io/File:getPath	()Ljava/lang/String;
    //   560: astore_0
    //   561: aload 8
    //   563: invokeinterface 241 1 0
    //   568: invokeinterface 246 1 0
    //   573: aload 8
    //   575: invokeinterface 241 1 0
    //   580: ldc2_w 247
    //   583: getstatic 254	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   586: invokeinterface 258 4 0
    //   591: goto -538 -> 53
    //   594: lconst_0
    //   595: lstore 4
    //   597: lconst_0
    //   598: lstore 6
    //   600: goto -374 -> 226
    //   603: lconst_0
    //   604: lstore 6
    //   606: goto -380 -> 226
    //
    // Exception table:
    //   from	to	target	type
    //   104	117	445	java/io/IOException
    //   117	175	445	java/io/IOException
    //   182	191	445	java/io/IOException
    //   195	226	445	java/io/IOException
    //   226	242	445	java/io/IOException
    //   246	277	445	java/io/IOException
    //   277	301	445	java/io/IOException
    //   301	308	445	java/io/IOException
    //   313	321	445	java/io/IOException
    //   328	338	445	java/io/IOException
    //   338	343	445	java/io/IOException
    //   379	384	445	java/io/IOException
    //   397	407	445	java/io/IOException
    //   411	426	445	java/io/IOException
    //   432	445	445	java/io/IOException
    //   494	501	445	java/io/IOException
    //   504	512	445	java/io/IOException
    //   548	561	445	java/io/IOException
    //   3	27	488	finally
    //   27	53	488	finally
    //   58	65	488	finally
    //   71	104	488	finally
    //   343	373	488	finally
    //   455	485	488	finally
    //   516	548	488	finally
    //   561	591	488	finally
    //   104	117	515	finally
    //   117	175	515	finally
    //   182	191	515	finally
    //   195	226	515	finally
    //   226	242	515	finally
    //   246	277	515	finally
    //   277	301	515	finally
    //   301	308	515	finally
    //   313	321	515	finally
    //   328	338	515	finally
    //   338	343	515	finally
    //   379	384	515	finally
    //   397	407	515	finally
    //   411	426	515	finally
    //   432	445	515	finally
    //   446	455	515	finally
    //   494	501	515	finally
    //   504	512	515	finally
    //   548	561	515	finally
  }

  // ERROR //
  private static String a(org.apache.http.HttpResponse paramHttpResponse)
    throws WeiboException
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: aload_0
    //   7: invokeinterface 190 1 0
    //   12: astore_2
    //   13: new 289	java/io/ByteArrayOutputStream
    //   16: dup
    //   17: invokespecial 290	java/io/ByteArrayOutputStream:<init>	()V
    //   20: astore 5
    //   22: aload_2
    //   23: invokeinterface 212 1 0
    //   28: astore_3
    //   29: aload_3
    //   30: astore 4
    //   32: aload_3
    //   33: astore_2
    //   34: aload_0
    //   35: ldc 192
    //   37: invokeinterface 196 2 0
    //   42: astore 6
    //   44: aload_3
    //   45: astore_0
    //   46: aload 6
    //   48: ifnull +42 -> 90
    //   51: aload_3
    //   52: astore_0
    //   53: aload_3
    //   54: astore 4
    //   56: aload_3
    //   57: astore_2
    //   58: aload 6
    //   60: invokeinterface 172 1 0
    //   65: invokevirtual 199	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   68: ldc 201
    //   70: invokevirtual 204	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   73: iflt +17 -> 90
    //   76: aload_3
    //   77: astore 4
    //   79: aload_3
    //   80: astore_2
    //   81: new 206	java/util/zip/GZIPInputStream
    //   84: dup
    //   85: aload_3
    //   86: invokespecial 215	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   89: astore_0
    //   90: aload_0
    //   91: astore 4
    //   93: aload_0
    //   94: astore_2
    //   95: sipush 8192
    //   98: newarray byte
    //   100: astore_3
    //   101: aload_0
    //   102: astore 4
    //   104: aload_0
    //   105: astore_2
    //   106: aload_0
    //   107: aload_3
    //   108: invokevirtual 230	java/io/InputStream:read	([B)I
    //   111: istore_1
    //   112: iload_1
    //   113: iconst_m1
    //   114: if_icmpne +73 -> 187
    //   117: aload_0
    //   118: astore 4
    //   120: aload_0
    //   121: astore_2
    //   122: new 117	java/lang/String
    //   125: dup
    //   126: aload 5
    //   128: invokevirtual 294	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   131: ldc_w 296
    //   134: invokespecial 299	java/lang/String:<init>	([BLjava/lang/String;)V
    //   137: astore_3
    //   138: aload_0
    //   139: astore 4
    //   141: aload_0
    //   142: astore_2
    //   143: ldc 77
    //   145: new 33	java/lang/StringBuilder
    //   148: dup
    //   149: ldc_w 301
    //   152: invokespecial 37	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   155: aload_3
    //   156: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   162: invokestatic 84	com/sina/weibo/sdk/d/i:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   165: aload_0
    //   166: ifnull +7 -> 173
    //   169: aload_0
    //   170: invokevirtual 234	java/io/InputStream:close	()V
    //   173: aload 5
    //   175: invokevirtual 302	java/io/ByteArrayOutputStream:close	()V
    //   178: aload_3
    //   179: areturn
    //   180: astore_0
    //   181: aload_0
    //   182: invokevirtual 279	java/io/IOException:printStackTrace	()V
    //   185: aload_3
    //   186: areturn
    //   187: aload_0
    //   188: astore 4
    //   190: aload_0
    //   191: astore_2
    //   192: aload 5
    //   194: aload_3
    //   195: iconst_0
    //   196: iload_1
    //   197: invokevirtual 303	java/io/ByteArrayOutputStream:write	([BII)V
    //   200: goto -99 -> 101
    //   203: astore_0
    //   204: aload 4
    //   206: astore_2
    //   207: new 69	com/sina/weibo/sdk/exception/WeiboException
    //   210: dup
    //   211: aload_0
    //   212: invokespecial 306	com/sina/weibo/sdk/exception/WeiboException:<init>	(Ljava/lang/Throwable;)V
    //   215: athrow
    //   216: astore_0
    //   217: aload_2
    //   218: ifnull +7 -> 225
    //   221: aload_2
    //   222: invokevirtual 234	java/io/InputStream:close	()V
    //   225: aload 5
    //   227: invokevirtual 302	java/io/ByteArrayOutputStream:close	()V
    //   230: aload_0
    //   231: athrow
    //   232: astore_0
    //   233: aload_0
    //   234: invokevirtual 279	java/io/IOException:printStackTrace	()V
    //   237: goto -64 -> 173
    //   240: astore_2
    //   241: aload_2
    //   242: invokevirtual 279	java/io/IOException:printStackTrace	()V
    //   245: goto -20 -> 225
    //   248: astore_2
    //   249: aload_2
    //   250: invokevirtual 279	java/io/IOException:printStackTrace	()V
    //   253: goto -23 -> 230
    //   256: astore_0
    //   257: aconst_null
    //   258: astore_2
    //   259: goto -42 -> 217
    //   262: astore_0
    //   263: aconst_null
    //   264: astore_2
    //   265: goto -58 -> 207
    //
    // Exception table:
    //   from	to	target	type
    //   173	178	180	java/io/IOException
    //   34	44	203	java/io/IOException
    //   58	76	203	java/io/IOException
    //   81	90	203	java/io/IOException
    //   95	101	203	java/io/IOException
    //   106	112	203	java/io/IOException
    //   122	138	203	java/io/IOException
    //   143	165	203	java/io/IOException
    //   192	200	203	java/io/IOException
    //   34	44	216	finally
    //   58	76	216	finally
    //   81	90	216	finally
    //   95	101	216	finally
    //   106	112	216	finally
    //   122	138	216	finally
    //   143	165	216	finally
    //   192	200	216	finally
    //   207	216	216	finally
    //   169	173	232	java/io/IOException
    //   221	225	240	java/io/IOException
    //   225	230	248	java/io/IOException
    //   22	29	256	finally
    //   22	29	262	java/io/IOException
  }

  private static Certificate a(String paramString)
    throws CertificateException, IOException
  {
    Object localObject1 = CertificateFactory.getInstance("X.509");
    paramString = HttpManager.class.getResourceAsStream(paramString);
    try
    {
      localObject1 = ((CertificateFactory)localObject1).generateCertificate(paramString);
      return localObject1;
    }
    finally
    {
      if (paramString != null)
        paramString.close();
    }
  }

  private static HttpClient a()
  {
    try
    {
      Object localObject1 = new BasicHttpParams();
      HttpProtocolParams.setVersion((HttpParams)localObject1, HttpVersion.HTTP_1_1);
      HttpProtocolParams.setContentCharset((HttpParams)localObject1, "UTF-8");
      Object localObject2 = new SchemeRegistry();
      ((SchemeRegistry)localObject2).register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
      ((SchemeRegistry)localObject2).register(new Scheme("https", b(), 443));
      localObject2 = new ThreadSafeClientConnManager((HttpParams)localObject1, (SchemeRegistry)localObject2);
      HttpConnectionParams.setConnectionTimeout((HttpParams)localObject1, 25000);
      HttpConnectionParams.setSoTimeout((HttpParams)localObject1, 20000);
      localObject1 = new DefaultHttpClient((ClientConnectionManager)localObject2, (HttpParams)localObject1);
      return localObject1;
    }
    catch (Exception localException)
    {
    }
    return new DefaultHttpClient();
  }

  private static void a(Context paramContext, k paramk)
  {
    Object localObject2 = "";
    if (!TextUtils.isEmpty(paramk.b))
    {
      localObject1 = p.b(paramContext, paramk.b);
      localObject2 = localObject1;
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        paramk.a("aid", (String)localObject1);
        localObject2 = localObject1;
      }
    }
    String str = String.valueOf(System.currentTimeMillis() / 1000L);
    paramk.a("oauth_timestamp", str);
    Object localObject1 = paramk.a("access_token");
    Object localObject3 = paramk.a("refresh_token");
    Object localObject4 = paramk.a("phone");
    if ((localObject1 != null) && ((localObject1 instanceof String)))
      localObject1 = (String)localObject1;
    while (true)
    {
      localObject3 = paramk.b;
      localObject4 = new StringBuilder("");
      if (!TextUtils.isEmpty((CharSequence)localObject2))
        ((StringBuilder)localObject4).append((String)localObject2);
      if (!TextUtils.isEmpty((CharSequence)localObject1))
        ((StringBuilder)localObject4).append((String)localObject1);
      if (!TextUtils.isEmpty((CharSequence)localObject3))
        ((StringBuilder)localObject4).append((String)localObject3);
      paramk.a("oauth_sign", calcOauthSignNative(paramContext, ((StringBuilder)localObject4).toString(), str));
      return;
      if ((localObject3 != null) && ((localObject3 instanceof String)))
        localObject1 = (String)localObject3;
      else if ((localObject4 != null) && ((localObject4 instanceof String)))
        localObject1 = (String)localObject4;
      else
        localObject1 = "";
    }
  }

  private static void a(OutputStream paramOutputStream, k paramk)
    throws WeiboException
  {
    while (true)
    {
      Object localObject1;
      StringBuilder localStringBuilder;
      try
      {
        localObject1 = paramk.a.keySet();
        localObject2 = ((Set)localObject1).iterator();
        if (!((Iterator)localObject2).hasNext())
        {
          localObject1 = ((Set)localObject1).iterator();
          if (!((Iterator)localObject1).hasNext())
            paramOutputStream.write(("\r\n" + c).getBytes());
        }
        else
        {
          localObject3 = (String)((Iterator)localObject2).next();
          if (!(paramk.a((String)localObject3) instanceof String))
            continue;
          localStringBuilder = new StringBuilder(100);
          localStringBuilder.setLength(0);
          localStringBuilder.append(b).append("\r\n");
          localStringBuilder.append("content-disposition: form-data; name=\"").append((String)localObject3).append("\"\r\n\r\n");
          localStringBuilder.append(paramk.a((String)localObject3)).append("\r\n");
          paramOutputStream.write(localStringBuilder.toString().getBytes());
          continue;
        }
      }
      catch (IOException paramOutputStream)
      {
        throw new WeiboException(paramOutputStream);
      }
      Object localObject2 = (String)((Iterator)localObject1).next();
      Object localObject3 = paramk.a((String)localObject2);
      if ((localObject3 instanceof Bitmap))
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append(b).append("\r\n");
        localStringBuilder.append("content-disposition: form-data; name=\"").append((String)localObject2).append("\"; filename=\"file\"\r\n");
        localStringBuilder.append("Content-Type: application/octet-stream; charset=utf-8\r\n\r\n");
        paramOutputStream.write(localStringBuilder.toString().getBytes());
        localObject2 = (Bitmap)localObject3;
        localObject3 = new ByteArrayOutputStream();
        ((Bitmap)localObject2).compress(Bitmap.CompressFormat.PNG, 100, (OutputStream)localObject3);
        paramOutputStream.write(((ByteArrayOutputStream)localObject3).toByteArray());
        paramOutputStream.write("\r\n".getBytes());
      }
      else if ((localObject3 instanceof ByteArrayOutputStream))
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append(b).append("\r\n");
        localStringBuilder.append("content-disposition: form-data; name=\"").append((String)localObject2).append("\"; filename=\"file\"\r\n");
        localStringBuilder.append("Content-Type: application/octet-stream; charset=utf-8\r\n\r\n");
        paramOutputStream.write(localStringBuilder.toString().getBytes());
        localObject2 = (ByteArrayOutputStream)localObject3;
        paramOutputStream.write(((ByteArrayOutputStream)localObject2).toByteArray());
        paramOutputStream.write("\r\n".getBytes());
        ((ByteArrayOutputStream)localObject2).close();
      }
    }
  }

  private static void a(HttpClient paramHttpClient)
  {
    if (paramHttpClient != null);
    try
    {
      paramHttpClient.getConnectionManager().closeExpiredConnections();
      return;
    }
    catch (Exception paramHttpClient)
    {
    }
  }

  // ERROR //
  public static String b(Context paramContext, String paramString1, String paramString2, k paramk)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 5
    //   6: aconst_null
    //   7: astore 7
    //   9: aload 5
    //   11: astore 4
    //   13: new 501	com/sina/weibo/sdk/net/e
    //   16: dup
    //   17: invokespecial 502	com/sina/weibo/sdk/net/e:<init>	()V
    //   20: astore 8
    //   22: aload 5
    //   24: astore 4
    //   26: invokestatic 115	com/sina/weibo/sdk/net/HttpManager:a	()Lorg/apache/http/client/HttpClient;
    //   29: checkcast 389	org/apache/http/impl/client/DefaultHttpClient
    //   32: astore 5
    //   34: aload 5
    //   36: aload 8
    //   38: invokevirtual 506	org/apache/http/impl/client/DefaultHttpClient:setRedirectHandler	(Lorg/apache/http/client/RedirectHandler;)V
    //   41: aload_0
    //   42: aload_3
    //   43: invokestatic 508	com/sina/weibo/sdk/net/HttpManager:a	(Landroid/content/Context;Lcom/sina/weibo/sdk/net/k;)V
    //   46: aload 5
    //   48: invokevirtual 512	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   51: ldc_w 514
    //   54: invokestatic 519	com/sina/weibo/sdk/net/f:a	()Lorg/apache/http/HttpHost;
    //   57: invokeinterface 525 3 0
    //   62: pop
    //   63: aload_2
    //   64: ldc_w 527
    //   67: invokevirtual 531	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   70: ifeq +71 -> 141
    //   73: new 130	org/apache/http/client/methods/HttpGet
    //   76: dup
    //   77: new 33	java/lang/StringBuilder
    //   80: dup
    //   81: aload_1
    //   82: invokestatic 121	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   85: invokespecial 37	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   88: ldc_w 533
    //   91: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: aload_3
    //   95: invokevirtual 535	com/sina/weibo/sdk/net/k:a	()Ljava/lang/String;
    //   98: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   104: invokespecial 131	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   107: astore_3
    //   108: aload_3
    //   109: ldc_w 537
    //   112: aload_0
    //   113: invokestatic 542	com/sina/weibo/sdk/d/k:a	(Landroid/content/Context;)Ljava/lang/String;
    //   116: invokeinterface 545 3 0
    //   121: aload 5
    //   123: aload_3
    //   124: invokevirtual 546	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   127: pop
    //   128: aload 8
    //   130: getfield 549	com/sina/weibo/sdk/net/d:b	Ljava/lang/String;
    //   133: astore_0
    //   134: aload 5
    //   136: invokestatic 551	com/sina/weibo/sdk/net/HttpManager:a	(Lorg/apache/http/client/HttpClient;)V
    //   139: aload_0
    //   140: areturn
    //   141: aload 7
    //   143: astore_3
    //   144: aload_2
    //   145: ldc_w 553
    //   148: invokevirtual 531	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   151: ifeq -43 -> 108
    //   154: new 555	org/apache/http/client/methods/HttpPost
    //   157: dup
    //   158: aload_1
    //   159: invokespecial 556	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   162: astore_3
    //   163: goto -55 -> 108
    //   166: astore_0
    //   167: aload 5
    //   169: astore 4
    //   171: new 69	com/sina/weibo/sdk/exception/WeiboException
    //   174: dup
    //   175: aload_0
    //   176: invokespecial 306	com/sina/weibo/sdk/exception/WeiboException:<init>	(Ljava/lang/Throwable;)V
    //   179: athrow
    //   180: astore_0
    //   181: aload 4
    //   183: invokestatic 551	com/sina/weibo/sdk/net/HttpManager:a	(Lorg/apache/http/client/HttpClient;)V
    //   186: aload_0
    //   187: athrow
    //   188: astore_0
    //   189: aload 5
    //   191: astore 4
    //   193: goto -12 -> 181
    //   196: astore_0
    //   197: aload 6
    //   199: astore 4
    //   201: goto -30 -> 171
    //
    // Exception table:
    //   from	to	target	type
    //   34	108	166	java/io/IOException
    //   108	134	166	java/io/IOException
    //   144	163	166	java/io/IOException
    //   13	22	180	finally
    //   26	34	180	finally
    //   171	180	180	finally
    //   34	108	188	finally
    //   108	134	188	finally
    //   144	163	188	finally
    //   13	22	196	java/io/IOException
    //   26	34	196	java/io/IOException
  }

  private static SSLSocketFactory b()
  {
    if (d == null);
    try
    {
      KeyStore localKeyStore = KeyStore.getInstance(KeyStore.getDefaultType());
      localKeyStore.load(null, null);
      Certificate localCertificate1 = a("cacert_cn.cer");
      Certificate localCertificate2 = a("cacert_com.cer");
      localKeyStore.setCertificateEntry("cnca", localCertificate1);
      localKeyStore.setCertificateEntry("comca", localCertificate2);
      d = new i(localKeyStore);
      com.sina.weibo.sdk.d.i.a("HttpManager", "getSSLSocketFactory noraml !!!!!");
      return d;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        d = SSLSocketFactory.getSocketFactory();
        com.sina.weibo.sdk.d.i.a("HttpManager", "getSSLSocketFactory error default !!!!!");
      }
    }
  }

  // ERROR //
  private static org.apache.http.HttpResponse c(Context paramContext, String paramString1, String paramString2, k paramk)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 9
    //   3: aconst_null
    //   4: astore 5
    //   6: aconst_null
    //   7: astore 6
    //   9: aconst_null
    //   10: astore 10
    //   12: aconst_null
    //   13: astore 8
    //   15: invokestatic 115	com/sina/weibo/sdk/net/HttpManager:a	()Lorg/apache/http/client/HttpClient;
    //   18: astore 7
    //   20: aload 7
    //   22: astore 5
    //   24: aload 9
    //   26: astore 6
    //   28: aload 10
    //   30: astore 7
    //   32: aload 5
    //   34: invokeinterface 599 1 0
    //   39: ldc_w 514
    //   42: invokestatic 519	com/sina/weibo/sdk/net/f:a	()Lorg/apache/http/HttpHost;
    //   45: invokeinterface 525 3 0
    //   50: pop
    //   51: aload 9
    //   53: astore 6
    //   55: aload 10
    //   57: astore 7
    //   59: aload_0
    //   60: aload_3
    //   61: invokestatic 508	com/sina/weibo/sdk/net/HttpManager:a	(Landroid/content/Context;Lcom/sina/weibo/sdk/net/k;)V
    //   64: aload 9
    //   66: astore 6
    //   68: aload 10
    //   70: astore 7
    //   72: aload_2
    //   73: ldc_w 527
    //   76: invokevirtual 531	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   79: ifeq +194 -> 273
    //   82: aload 9
    //   84: astore 6
    //   86: aload 10
    //   88: astore 7
    //   90: new 33	java/lang/StringBuilder
    //   93: dup
    //   94: aload_1
    //   95: invokestatic 121	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   98: invokespecial 37	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   101: ldc_w 533
    //   104: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: aload_3
    //   108: invokevirtual 535	com/sina/weibo/sdk/net/k:a	()Ljava/lang/String;
    //   111: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   117: astore_1
    //   118: aload 9
    //   120: astore 6
    //   122: aload 10
    //   124: astore 7
    //   126: new 130	org/apache/http/client/methods/HttpGet
    //   129: dup
    //   130: aload_1
    //   131: invokespecial 131	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   134: astore_0
    //   135: aload 9
    //   137: astore 6
    //   139: aload 10
    //   141: astore 7
    //   143: ldc 77
    //   145: new 33	java/lang/StringBuilder
    //   148: dup
    //   149: ldc_w 601
    //   152: invokespecial 37	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   155: aload_1
    //   156: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   162: invokestatic 84	com/sina/weibo/sdk/d/i:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   165: aload 8
    //   167: astore_1
    //   168: aload_1
    //   169: astore 6
    //   171: aload_1
    //   172: astore 7
    //   174: aload 5
    //   176: aload_0
    //   177: invokeinterface 149 2 0
    //   182: astore_0
    //   183: aload_1
    //   184: astore 6
    //   186: aload_1
    //   187: astore 7
    //   189: aload_0
    //   190: invokeinterface 155 1 0
    //   195: invokeinterface 161 1 0
    //   200: istore 4
    //   202: iload 4
    //   204: sipush 200
    //   207: if_icmpeq +391 -> 598
    //   210: aload_1
    //   211: astore 6
    //   213: aload_1
    //   214: astore 7
    //   216: new 273	com/sina/weibo/sdk/exception/WeiboHttpException
    //   219: dup
    //   220: aload_0
    //   221: invokestatic 75	com/sina/weibo/sdk/net/HttpManager:a	(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    //   224: iload 4
    //   226: invokespecial 276	com/sina/weibo/sdk/exception/WeiboHttpException:<init>	(Ljava/lang/String;I)V
    //   229: athrow
    //   230: astore_2
    //   231: aload 5
    //   233: astore_1
    //   234: aload 6
    //   236: astore_0
    //   237: aload_2
    //   238: invokevirtual 279	java/io/IOException:printStackTrace	()V
    //   241: new 69	com/sina/weibo/sdk/exception/WeiboException
    //   244: dup
    //   245: aload_2
    //   246: invokespecial 306	com/sina/weibo/sdk/exception/WeiboException:<init>	(Ljava/lang/Throwable;)V
    //   249: athrow
    //   250: astore_2
    //   251: aload_1
    //   252: astore 5
    //   254: aload_0
    //   255: astore_1
    //   256: aload_2
    //   257: astore_0
    //   258: aload_1
    //   259: ifnull +7 -> 266
    //   262: aload_1
    //   263: invokevirtual 302	java/io/ByteArrayOutputStream:close	()V
    //   266: aload 5
    //   268: invokestatic 551	com/sina/weibo/sdk/net/HttpManager:a	(Lorg/apache/http/client/HttpClient;)V
    //   271: aload_0
    //   272: athrow
    //   273: aload 9
    //   275: astore 6
    //   277: aload 10
    //   279: astore 7
    //   281: aload_2
    //   282: ldc_w 553
    //   285: invokevirtual 531	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   288: ifeq +262 -> 550
    //   291: aload 9
    //   293: astore 6
    //   295: aload 10
    //   297: astore 7
    //   299: ldc 77
    //   301: new 33	java/lang/StringBuilder
    //   304: dup
    //   305: ldc_w 603
    //   308: invokespecial 37	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   311: aload_1
    //   312: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   315: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   318: invokestatic 84	com/sina/weibo/sdk/d/i:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   321: aload 9
    //   323: astore 6
    //   325: aload 10
    //   327: astore 7
    //   329: new 555	org/apache/http/client/methods/HttpPost
    //   332: dup
    //   333: aload_1
    //   334: invokespecial 556	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   337: astore_1
    //   338: aload 9
    //   340: astore 6
    //   342: aload 10
    //   344: astore 7
    //   346: new 289	java/io/ByteArrayOutputStream
    //   349: dup
    //   350: invokespecial 290	java/io/ByteArrayOutputStream:<init>	()V
    //   353: astore_0
    //   354: aload_3
    //   355: invokevirtual 605	com/sina/weibo/sdk/net/k:b	()Z
    //   358: ifeq +58 -> 416
    //   361: aload_1
    //   362: ldc_w 607
    //   365: new 33	java/lang/StringBuilder
    //   368: dup
    //   369: ldc_w 609
    //   372: invokespecial 37	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   375: getstatic 31	com/sina/weibo/sdk/net/HttpManager:a	Ljava/lang/String;
    //   378: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   381: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   384: invokevirtual 610	org/apache/http/client/methods/HttpPost:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   387: aload_0
    //   388: aload_3
    //   389: invokestatic 612	com/sina/weibo/sdk/net/HttpManager:a	(Ljava/io/OutputStream;Lcom/sina/weibo/sdk/net/k;)V
    //   392: aload_1
    //   393: new 614	org/apache/http/entity/ByteArrayEntity
    //   396: dup
    //   397: aload_0
    //   398: invokevirtual 294	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   401: invokespecial 616	org/apache/http/entity/ByteArrayEntity:<init>	([B)V
    //   404: invokevirtual 620	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   407: aload_0
    //   408: astore_2
    //   409: aload_1
    //   410: astore_0
    //   411: aload_2
    //   412: astore_1
    //   413: goto -245 -> 168
    //   416: aload_3
    //   417: ldc_w 622
    //   420: invokevirtual 423	com/sina/weibo/sdk/net/k:a	(Ljava/lang/String;)Ljava/lang/Object;
    //   423: astore_2
    //   424: aload_2
    //   425: ifnull +104 -> 529
    //   428: aload_2
    //   429: instanceof 117
    //   432: ifeq +97 -> 529
    //   435: aload_3
    //   436: getfield 437	com/sina/weibo/sdk/net/k:a	Ljava/util/LinkedHashMap;
    //   439: ldc_w 622
    //   442: invokevirtual 625	java/util/LinkedHashMap:containsKey	(Ljava/lang/Object;)Z
    //   445: ifeq +32 -> 477
    //   448: aload_3
    //   449: getfield 437	com/sina/weibo/sdk/net/k:a	Ljava/util/LinkedHashMap;
    //   452: ldc_w 622
    //   455: invokevirtual 629	java/util/LinkedHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   458: pop
    //   459: aload_3
    //   460: getfield 437	com/sina/weibo/sdk/net/k:a	Ljava/util/LinkedHashMap;
    //   463: aload_3
    //   464: getfield 437	com/sina/weibo/sdk/net/k:a	Ljava/util/LinkedHashMap;
    //   467: ldc_w 622
    //   470: invokevirtual 632	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   473: invokevirtual 629	java/util/LinkedHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   476: pop
    //   477: aload_1
    //   478: ldc_w 607
    //   481: aload_2
    //   482: checkcast 117	java/lang/String
    //   485: invokevirtual 610	org/apache/http/client/methods/HttpPost:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   488: aload_3
    //   489: invokevirtual 535	com/sina/weibo/sdk/net/k:a	()Ljava/lang/String;
    //   492: astore_2
    //   493: ldc 77
    //   495: new 33	java/lang/StringBuilder
    //   498: dup
    //   499: ldc_w 634
    //   502: invokespecial 37	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   505: aload_2
    //   506: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   509: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   512: invokestatic 84	com/sina/weibo/sdk/d/i:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   515: aload_0
    //   516: aload_2
    //   517: ldc_w 296
    //   520: invokevirtual 637	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   523: invokevirtual 638	java/io/ByteArrayOutputStream:write	([B)V
    //   526: goto -134 -> 392
    //   529: aload_1
    //   530: ldc_w 607
    //   533: ldc_w 640
    //   536: invokevirtual 610	org/apache/http/client/methods/HttpPost:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   539: goto -51 -> 488
    //   542: astore_2
    //   543: aload_0
    //   544: astore_1
    //   545: aload_2
    //   546: astore_0
    //   547: goto -289 -> 258
    //   550: aload 9
    //   552: astore 6
    //   554: aload 10
    //   556: astore 7
    //   558: aload_2
    //   559: ldc_w 642
    //   562: invokevirtual 531	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   565: ifeq +75 -> 640
    //   568: aload 9
    //   570: astore 6
    //   572: aload 10
    //   574: astore 7
    //   576: new 644	org/apache/http/client/methods/HttpDelete
    //   579: dup
    //   580: aload_1
    //   581: invokespecial 645	org/apache/http/client/methods/HttpDelete:<init>	(Ljava/lang/String;)V
    //   584: astore_0
    //   585: aload 8
    //   587: astore_1
    //   588: goto -420 -> 168
    //   591: astore_0
    //   592: aload 7
    //   594: astore_1
    //   595: goto -337 -> 258
    //   598: aload_1
    //   599: ifnull +7 -> 606
    //   602: aload_1
    //   603: invokevirtual 302	java/io/ByteArrayOutputStream:close	()V
    //   606: aload 5
    //   608: invokestatic 551	com/sina/weibo/sdk/net/HttpManager:a	(Lorg/apache/http/client/HttpClient;)V
    //   611: aload_0
    //   612: areturn
    //   613: astore_1
    //   614: goto -348 -> 266
    //   617: astore_1
    //   618: goto -12 -> 606
    //   621: astore_0
    //   622: aconst_null
    //   623: astore 5
    //   625: aload 6
    //   627: astore_1
    //   628: goto -370 -> 258
    //   631: astore_2
    //   632: aconst_null
    //   633: astore_1
    //   634: aload 5
    //   636: astore_0
    //   637: goto -400 -> 237
    //   640: aconst_null
    //   641: astore_0
    //   642: aload 8
    //   644: astore_1
    //   645: goto -477 -> 168
    //   648: astore_2
    //   649: aload 5
    //   651: astore_1
    //   652: goto -415 -> 237
    //
    // Exception table:
    //   from	to	target	type
    //   32	51	230	java/io/IOException
    //   59	64	230	java/io/IOException
    //   72	82	230	java/io/IOException
    //   90	118	230	java/io/IOException
    //   126	135	230	java/io/IOException
    //   143	165	230	java/io/IOException
    //   174	183	230	java/io/IOException
    //   189	202	230	java/io/IOException
    //   216	230	230	java/io/IOException
    //   281	291	230	java/io/IOException
    //   299	321	230	java/io/IOException
    //   329	338	230	java/io/IOException
    //   346	354	230	java/io/IOException
    //   558	568	230	java/io/IOException
    //   576	585	230	java/io/IOException
    //   237	250	250	finally
    //   354	392	542	finally
    //   392	407	542	finally
    //   416	424	542	finally
    //   428	477	542	finally
    //   477	488	542	finally
    //   488	526	542	finally
    //   529	539	542	finally
    //   32	51	591	finally
    //   59	64	591	finally
    //   72	82	591	finally
    //   90	118	591	finally
    //   126	135	591	finally
    //   143	165	591	finally
    //   174	183	591	finally
    //   189	202	591	finally
    //   216	230	591	finally
    //   281	291	591	finally
    //   299	321	591	finally
    //   329	338	591	finally
    //   346	354	591	finally
    //   558	568	591	finally
    //   576	585	591	finally
    //   262	266	613	java/io/IOException
    //   602	606	617	java/io/IOException
    //   15	20	621	finally
    //   15	20	631	java/io/IOException
    //   354	392	648	java/io/IOException
    //   392	407	648	java/io/IOException
    //   416	424	648	java/io/IOException
    //   428	477	648	java/io/IOException
    //   477	488	648	java/io/IOException
    //   488	526	648	java/io/IOException
    //   529	539	648	java/io/IOException
  }

  private static native String calcOauthSignNative(Context paramContext, String paramString1, String paramString2);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.net.HttpManager
 * JD-Core Version:    0.6.2
 */