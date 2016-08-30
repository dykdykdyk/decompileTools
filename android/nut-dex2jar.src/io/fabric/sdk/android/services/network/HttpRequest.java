package io.fabric.sdk.android.services.network;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.zip.GZIPInputStream;

public final class HttpRequest
{
  private static final String[] b = new String[0];
  private static h c = h.a;
  public final URL a;
  private HttpURLConnection d = null;
  private final String e;
  private k f;
  private boolean g;
  private boolean h = true;
  private boolean i = false;
  private int j = 8192;
  private String k;
  private int l;

  private HttpRequest(CharSequence paramCharSequence, String paramString)
    throws HttpRequest.HttpRequestException
  {
    try
    {
      this.a = new URL(paramCharSequence.toString());
      this.e = paramString;
      return;
    }
    catch (MalformedURLException paramCharSequence)
    {
    }
    throw new HttpRequest.HttpRequestException(paramCharSequence);
  }

  private HttpRequest a(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    return (HttpRequest)new e(this, paramInputStream, this.h, paramInputStream, paramOutputStream).call();
  }

  public static HttpRequest a(CharSequence paramCharSequence)
    throws HttpRequest.HttpRequestException
  {
    return new HttpRequest(paramCharSequence, "PUT");
  }

  public static HttpRequest a(CharSequence paramCharSequence, Map<?, ?> paramMap)
  {
    return new HttpRequest(c(c(paramCharSequence, paramMap)), "GET");
  }

  private HttpRequest a(String paramString1, String paramString2, String paramString3)
    throws IOException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("form-data; name=\"").append(paramString1);
    if (paramString2 != null)
      localStringBuilder.append("\"; filename=\"").append(paramString2);
    localStringBuilder.append('"');
    d("Content-Disposition", localStringBuilder.toString());
    if (paramString3 != null)
      d("Content-Type", paramString3);
    return d("\r\n");
  }

  public static HttpRequest b(CharSequence paramCharSequence)
    throws HttpRequest.HttpRequestException
  {
    return new HttpRequest(paramCharSequence, "DELETE");
  }

  public static HttpRequest b(CharSequence paramCharSequence, Map<?, ?> paramMap)
  {
    return new HttpRequest(c(c(paramCharSequence, paramMap)), "POST");
  }

  // ERROR //
  private static String c(CharSequence paramCharSequence)
    throws HttpRequest.HttpRequestException
  {
    // Byte code:
    //   0: new 55	java/net/URL
    //   3: dup
    //   4: aload_0
    //   5: invokeinterface 61 1 0
    //   10: invokespecial 64	java/net/URL:<init>	(Ljava/lang/String;)V
    //   13: astore_3
    //   14: aload_3
    //   15: invokevirtual 140	java/net/URL:getHost	()Ljava/lang/String;
    //   18: astore_2
    //   19: aload_3
    //   20: invokevirtual 144	java/net/URL:getPort	()I
    //   23: istore_1
    //   24: aload_2
    //   25: astore_0
    //   26: iload_1
    //   27: iconst_m1
    //   28: if_icmpeq +30 -> 58
    //   31: new 104	java/lang/StringBuilder
    //   34: dup
    //   35: invokespecial 105	java/lang/StringBuilder:<init>	()V
    //   38: aload_2
    //   39: invokevirtual 111	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: bipush 58
    //   44: invokevirtual 116	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   47: iload_1
    //   48: invokestatic 149	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   51: invokevirtual 111	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: astore_0
    //   58: new 151	java/net/URI
    //   61: dup
    //   62: aload_3
    //   63: invokevirtual 154	java/net/URL:getProtocol	()Ljava/lang/String;
    //   66: aload_0
    //   67: aload_3
    //   68: invokevirtual 157	java/net/URL:getPath	()Ljava/lang/String;
    //   71: aload_3
    //   72: invokevirtual 160	java/net/URL:getQuery	()Ljava/lang/String;
    //   75: aconst_null
    //   76: invokespecial 163	java/net/URI:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   79: invokevirtual 166	java/net/URI:toASCIIString	()Ljava/lang/String;
    //   82: astore_2
    //   83: aload_2
    //   84: bipush 63
    //   86: invokevirtual 170	java/lang/String:indexOf	(I)I
    //   89: istore_1
    //   90: aload_2
    //   91: astore_0
    //   92: iload_1
    //   93: ifle +54 -> 147
    //   96: aload_2
    //   97: astore_0
    //   98: iload_1
    //   99: iconst_1
    //   100: iadd
    //   101: aload_2
    //   102: invokevirtual 173	java/lang/String:length	()I
    //   105: if_icmpge +42 -> 147
    //   108: new 104	java/lang/StringBuilder
    //   111: dup
    //   112: invokespecial 105	java/lang/StringBuilder:<init>	()V
    //   115: aload_2
    //   116: iconst_0
    //   117: iload_1
    //   118: iconst_1
    //   119: iadd
    //   120: invokevirtual 177	java/lang/String:substring	(II)Ljava/lang/String;
    //   123: invokevirtual 111	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: aload_2
    //   127: iload_1
    //   128: iconst_1
    //   129: iadd
    //   130: invokevirtual 179	java/lang/String:substring	(I)Ljava/lang/String;
    //   133: ldc 181
    //   135: ldc 183
    //   137: invokevirtual 187	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   140: invokevirtual 111	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   146: astore_0
    //   147: aload_0
    //   148: areturn
    //   149: astore_0
    //   150: new 41	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException
    //   153: dup
    //   154: aload_0
    //   155: invokespecial 71	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException:<init>	(Ljava/io/IOException;)V
    //   158: athrow
    //   159: astore_0
    //   160: new 76	java/io/IOException
    //   163: dup
    //   164: ldc 189
    //   166: invokespecial 190	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   169: astore_2
    //   170: aload_2
    //   171: aload_0
    //   172: invokevirtual 194	java/io/IOException:initCause	(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    //   175: pop
    //   176: new 41	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException
    //   179: dup
    //   180: aload_2
    //   181: invokespecial 71	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException:<init>	(Ljava/io/IOException;)V
    //   184: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   0	14	149	java/io/IOException
    //   58	90	159	java/net/URISyntaxException
    //   98	147	159	java/net/URISyntaxException
  }

  private static String c(CharSequence paramCharSequence, Map<?, ?> paramMap)
  {
    Object localObject = paramCharSequence.toString();
    if ((paramMap == null) || (paramMap.isEmpty()))
      return localObject;
    paramCharSequence = new StringBuilder((String)localObject);
    if (((String)localObject).indexOf(':') + 2 == ((String)localObject).lastIndexOf('/'))
      paramCharSequence.append('/');
    int m = ((String)localObject).indexOf('?');
    int n = paramCharSequence.length() - 1;
    if (m == -1)
      paramCharSequence.append('?');
    while (true)
    {
      paramMap = paramMap.entrySet().iterator();
      localObject = (Map.Entry)paramMap.next();
      paramCharSequence.append(((Map.Entry)localObject).getKey().toString());
      paramCharSequence.append('=');
      localObject = ((Map.Entry)localObject).getValue();
      if (localObject != null)
        paramCharSequence.append(localObject);
      while (paramMap.hasNext())
      {
        paramCharSequence.append('&');
        localObject = (Map.Entry)paramMap.next();
        paramCharSequence.append(((Map.Entry)localObject).getKey().toString());
        paramCharSequence.append('=');
        localObject = ((Map.Entry)localObject).getValue();
        if (localObject != null)
          paramCharSequence.append(localObject);
      }
      if ((m < n) && (((String)localObject).charAt(n) != '&'))
        paramCharSequence.append('&');
    }
    return paramCharSequence.toString();
  }

  private static String c(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
      return paramString;
    return "UTF-8";
  }

  private static String c(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() == 0))
    {
      paramString1 = null;
      return paramString1;
    }
    int i1 = paramString1.length();
    int m = paramString1.indexOf(';') + 1;
    if ((m == 0) || (m == i1))
      return null;
    int n = paramString1.indexOf(';', m);
    if (n == -1)
      n = i1;
    while (true)
    {
      if (m < n)
      {
        int i2 = paramString1.indexOf('=', m);
        if ((i2 != -1) && (i2 < n) && (paramString2.equals(paramString1.substring(m, i2).trim())))
        {
          String str = paramString1.substring(i2 + 1, n).trim();
          m = str.length();
          if (m != 0)
          {
            paramString1 = str;
            if (m <= 2)
              break;
            paramString1 = str;
            if ('"' != str.charAt(0))
              break;
            paramString1 = str;
            if ('"' != str.charAt(m - 1))
              break;
            return str.substring(1, m - 1);
          }
        }
        n += 1;
        i2 = paramString1.indexOf(';', n);
        m = i2;
        if (i2 == -1)
          m = i1;
        i2 = m;
        m = n;
        n = i2;
        continue;
      }
      return null;
    }
  }

  private HttpRequest d(CharSequence paramCharSequence)
    throws HttpRequest.HttpRequestException
  {
    try
    {
      h();
      this.f.a(paramCharSequence.toString());
      return this;
    }
    catch (IOException paramCharSequence)
    {
    }
    throw new HttpRequest.HttpRequestException(paramCharSequence);
  }

  private HttpRequest d(String paramString1, String paramString2)
    throws HttpRequest.HttpRequestException
  {
    return d(paramString1).d(": ").d(paramString2).d("\r\n");
  }

  private String d(String paramString)
    throws HttpRequest.HttpRequestException
  {
    g();
    int m = a().getHeaderFieldInt("Content-Length", -1);
    ByteArrayOutputStream localByteArrayOutputStream;
    if (m > 0)
      localByteArrayOutputStream = new ByteArrayOutputStream(m);
    try
    {
      while (true)
      {
        a(new BufferedInputStream(e(), this.j), localByteArrayOutputStream);
        paramString = localByteArrayOutputStream.toString(c(paramString));
        return paramString;
        localByteArrayOutputStream = new ByteArrayOutputStream();
      }
    }
    catch (IOException paramString)
    {
    }
    throw new HttpRequest.HttpRequestException(paramString);
  }

  private HttpURLConnection d()
  {
    try
    {
      if (this.k != null);
      for (HttpURLConnection localHttpURLConnection = c.a(this.a, new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.k, this.l))); ; localHttpURLConnection = c.a(this.a))
      {
        localHttpURLConnection.setRequestMethod(this.e);
        return localHttpURLConnection;
      }
    }
    catch (IOException localIOException)
    {
      throw new HttpRequest.HttpRequestException(localIOException);
    }
  }

  private InputStream e()
    throws HttpRequest.HttpRequestException
  {
    if (b() < 400);
    while (true)
    {
      try
      {
        InputStream localInputStream1 = a().getInputStream();
        if ((this.i) && ("gzip".equals(a("Content-Encoding"))))
          break;
        return localInputStream1;
      }
      catch (IOException localIOException1)
      {
        throw new HttpRequest.HttpRequestException(localIOException1);
      }
      InputStream localInputStream2 = a().getErrorStream();
      Object localObject = localInputStream2;
      if (localInputStream2 == null)
        try
        {
          localObject = a().getInputStream();
        }
        catch (IOException localIOException2)
        {
          throw new HttpRequest.HttpRequestException(localIOException2);
        }
    }
    try
    {
      GZIPInputStream localGZIPInputStream = new GZIPInputStream(localIOException2);
      return localGZIPInputStream;
    }
    catch (IOException localIOException3)
    {
      throw new HttpRequest.HttpRequestException(localIOException3);
    }
  }

  private HttpRequest f()
    throws IOException
  {
    if (this.f == null)
      return this;
    if (this.g)
      this.f.a("\r\n--00content0boundary00--\r\n");
    if (this.h);
    try
    {
      this.f.close();
      while (true)
      {
        label41: this.f = null;
        return this;
        this.f.close();
      }
    }
    catch (IOException localIOException)
    {
      break label41;
    }
  }

  private HttpRequest g()
    throws HttpRequest.HttpRequestException
  {
    try
    {
      HttpRequest localHttpRequest = f();
      return localHttpRequest;
    }
    catch (IOException localIOException)
    {
      throw new HttpRequest.HttpRequestException(localIOException);
    }
  }

  private HttpRequest h()
    throws IOException
  {
    if (this.f != null)
      return this;
    a().setDoOutput(true);
    String str = c(a().getRequestProperty("Content-Type"), "charset");
    this.f = new k(a().getOutputStream(), str, this.j);
    return this;
  }

  private HttpRequest i()
    throws IOException
  {
    if (!this.g)
    {
      this.g = true;
      a("Content-Type", "multipart/form-data; boundary=00content0boundary00").h();
      this.f.a("--00content0boundary00\r\n");
      return this;
    }
    this.f.a("\r\n--00content0boundary00\r\n");
    return this;
  }

  public final HttpRequest a(String paramString, Number paramNumber)
    throws HttpRequest.HttpRequestException
  {
    if (paramNumber != null);
    for (paramNumber = paramNumber.toString(); ; paramNumber = null)
      return b(paramString, paramNumber);
  }

  public final HttpRequest a(String paramString1, String paramString2)
  {
    a().setRequestProperty(paramString1, paramString2);
    return this;
  }

  // ERROR //
  public final HttpRequest a(String paramString1, String paramString2, String paramString3, java.io.File paramFile)
    throws HttpRequest.HttpRequestException
  {
    // Byte code:
    //   0: new 285	java/io/BufferedInputStream
    //   3: dup
    //   4: new 389	java/io/FileInputStream
    //   7: dup
    //   8: aload 4
    //   10: invokespecial 392	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   13: invokespecial 393	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   16: astore 5
    //   18: aload 5
    //   20: astore 4
    //   22: aload_0
    //   23: aload_1
    //   24: aload_2
    //   25: aload_3
    //   26: aload 5
    //   28: invokevirtual 396	io/fabric/sdk/android/services/network/HttpRequest:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;
    //   31: astore_1
    //   32: aload 5
    //   34: invokevirtual 399	java/io/InputStream:close	()V
    //   37: aload_1
    //   38: areturn
    //   39: astore_1
    //   40: aconst_null
    //   41: astore 4
    //   43: new 41	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException
    //   46: dup
    //   47: aload_1
    //   48: invokespecial 71	io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException:<init>	(Ljava/io/IOException;)V
    //   51: athrow
    //   52: astore_1
    //   53: aload 4
    //   55: ifnull +8 -> 63
    //   58: aload 4
    //   60: invokevirtual 399	java/io/InputStream:close	()V
    //   63: aload_1
    //   64: athrow
    //   65: astore_2
    //   66: aload_1
    //   67: areturn
    //   68: astore_2
    //   69: goto -6 -> 63
    //   72: astore_1
    //   73: aconst_null
    //   74: astore 4
    //   76: goto -23 -> 53
    //   79: astore_1
    //   80: aload 5
    //   82: astore 4
    //   84: goto -41 -> 43
    //
    // Exception table:
    //   from	to	target	type
    //   0	18	39	java/io/IOException
    //   22	32	52	finally
    //   43	52	52	finally
    //   32	37	65	java/io/IOException
    //   58	63	68	java/io/IOException
    //   0	18	72	finally
    //   22	32	79	java/io/IOException
  }

  public final HttpRequest a(String paramString1, String paramString2, String paramString3, InputStream paramInputStream)
    throws HttpRequest.HttpRequestException
  {
    try
    {
      i();
      a(paramString1, paramString2, paramString3);
      a(paramInputStream, this.f);
      return this;
    }
    catch (IOException paramString1)
    {
    }
    throw new HttpRequest.HttpRequestException(paramString1);
  }

  public final String a(String paramString)
    throws HttpRequest.HttpRequestException
  {
    g();
    return a().getHeaderField(paramString);
  }

  public final HttpURLConnection a()
  {
    if (this.d == null)
      this.d = d();
    return this.d;
  }

  public final int b()
    throws HttpRequest.HttpRequestException
  {
    try
    {
      f();
      int m = a().getResponseCode();
      return m;
    }
    catch (IOException localIOException)
    {
      throw new HttpRequest.HttpRequestException(localIOException);
    }
  }

  public final HttpRequest b(String paramString1, String paramString2)
    throws HttpRequest.HttpRequestException
  {
    try
    {
      i();
      a(paramString1, null, null);
      this.f.a(paramString2);
      return this;
    }
    catch (IOException paramString1)
    {
    }
    throw new HttpRequest.HttpRequestException(paramString1);
  }

  public final String c()
    throws HttpRequest.HttpRequestException
  {
    return d(c(a("Content-Type"), "charset"));
  }

  public final String toString()
  {
    return a().getRequestMethod() + ' ' + a().getURL();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.network.HttpRequest
 * JD-Core Version:    0.6.2
 */