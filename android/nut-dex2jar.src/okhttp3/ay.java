package okhttp3;

import a.aa;
import a.i;
import a.q;
import java.io.File;
import java.io.IOException;
import okhttp3.internal.o;

final class ay extends av
{
  ay(ai paramai, File paramFile)
  {
  }

  public final long contentLength()
  {
    return this.b.length();
  }

  public final ai contentType()
  {
    return this.a;
  }

  public final void writeTo(i parami)
    throws IOException
  {
    Object localObject = null;
    try
    {
      aa localaa = q.a(this.b);
      localObject = localaa;
      parami.a(localaa);
      return;
    }
    finally
    {
      o.a(localObject);
    }
    throw parami;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.ay
 * JD-Core Version:    0.6.2
 */