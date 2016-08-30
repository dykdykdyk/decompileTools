package okhttp3;

import a.ad;
import a.f;
import a.j;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import okhttp3.internal.o;

public abstract class bb
  implements Closeable
{
  private Reader reader;

  private Charset charset()
  {
    ai localai = contentType();
    if (localai != null)
    {
      Charset localCharset = o.c;
      if (localai.b != null)
        localCharset = Charset.forName(localai.b);
      return localCharset;
    }
    return o.c;
  }

  public static bb create(ai paramai, long paramLong, j paramj)
  {
    if (paramj == null)
      throw new NullPointerException("source == null");
    return new bc(paramai, paramLong, paramj);
  }

  public static bb create(ai paramai, String paramString)
  {
    Object localObject = o.c;
    ai localai = paramai;
    if (paramai != null)
    {
      Charset localCharset = paramai.a();
      localObject = localCharset;
      localai = paramai;
      if (localCharset == null)
      {
        localObject = o.c;
        localai = ai.a(paramai + "; charset=utf-8");
      }
    }
    paramai = new f();
    int i = paramString.length();
    if (paramString == null)
      throw new IllegalArgumentException("string == null");
    if (i < 0)
      throw new IllegalArgumentException("endIndex < beginIndex: " + i + " < 0");
    if (i > paramString.length())
      throw new IllegalArgumentException("endIndex > string.length: " + i + " > " + paramString.length());
    if (localObject == null)
      throw new IllegalArgumentException("charset == null");
    if (((Charset)localObject).equals(ad.a));
    for (paramai = paramai.a(paramString); ; paramai = paramai.b(paramString, 0, paramString.length))
    {
      return create(localai, paramai.b, paramai);
      paramString = paramString.substring(0, i).getBytes((Charset)localObject);
    }
  }

  public static bb create(ai paramai, byte[] paramArrayOfByte)
  {
    f localf = new f().a(paramArrayOfByte);
    return create(paramai, paramArrayOfByte.length, localf);
  }

  public final InputStream byteStream()
  {
    return source().d();
  }

  public final byte[] bytes()
    throws IOException
  {
    long l = contentLength();
    if (l > 2147483647L)
      throw new IOException("Cannot buffer entire body for content length: " + l);
    j localj = source();
    try
    {
      byte[] arrayOfByte1 = localj.o();
      o.a(localj);
      if ((l != -1L) && (l != arrayOfByte1.length))
        throw new IOException("Content-Length and stream length disagree");
    }
    finally
    {
      o.a(localj);
    }
    return arrayOfByte2;
  }

  public final Reader charStream()
  {
    Object localObject = this.reader;
    if (localObject != null)
      return localObject;
    localObject = new InputStreamReader(byteStream(), charset());
    this.reader = ((Reader)localObject);
    return localObject;
  }

  public void close()
  {
    o.a(source());
  }

  public abstract long contentLength();

  public abstract ai contentType();

  public abstract j source();

  public final String string()
    throws IOException
  {
    return new String(bytes(), charset().name());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.bb
 * JD-Core Version:    0.6.2
 */