package okhttp3;

import a.i;
import a.k;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import okhttp3.internal.o;

public abstract class av
{
  public static av create(ai paramai, k paramk)
  {
    return new aw(paramai, paramk);
  }

  public static av create(ai paramai, File paramFile)
  {
    if (paramFile == null)
      throw new NullPointerException("content == null");
    return new ay(paramai, paramFile);
  }

  public static av create(ai paramai, String paramString)
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
    return create(localai, paramString.getBytes((Charset)localObject));
  }

  public static av create(ai paramai, byte[] paramArrayOfByte)
  {
    return create(paramai, paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public static av create(ai paramai, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte == null)
      throw new NullPointerException("content == null");
    o.a(paramArrayOfByte.length, paramInt1, paramInt2);
    return new ax(paramai, paramInt2, paramArrayOfByte, paramInt1);
  }

  public long contentLength()
    throws IOException
  {
    return -1L;
  }

  public abstract ai contentType();

  public abstract void writeTo(i parami)
    throws IOException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.av
 * JD-Core Version:    0.6.2
 */