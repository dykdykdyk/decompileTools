package okhttp3.internal.http;

import a.ab;
import a.f;
import a.z;
import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.internal.o;

public final class y
  implements z
{
  public final f a = new f();
  private boolean b;
  private final int c;

  public y()
  {
    this(-1);
  }

  public y(int paramInt)
  {
    this.c = paramInt;
  }

  public final void a(f paramf, long paramLong)
    throws IOException
  {
    if (this.b)
      throw new IllegalStateException("closed");
    o.a(paramf.b, 0L, paramLong);
    if ((this.c != -1) && (this.a.b > this.c - paramLong))
      throw new ProtocolException("exceeded content-length limit of " + this.c + " bytes");
    this.a.a(paramf, paramLong);
  }

  public final void a(z paramz)
    throws IOException
  {
    f localf = new f();
    this.a.a(localf, 0L, this.a.b);
    paramz.a(localf, localf.b);
  }

  public final void close()
    throws IOException
  {
    if (this.b);
    do
    {
      return;
      this.b = true;
    }
    while (this.a.b >= this.c);
    throw new ProtocolException("content-length promised " + this.c + " bytes, but received " + this.a.b);
  }

  public final void flush()
    throws IOException
  {
  }

  public final ab timeout()
  {
    return ab.b;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.y
 * JD-Core Version:    0.6.2
 */