package okhttp3.internal.http;

import a.ab;
import a.f;
import a.i;
import a.n;
import a.z;
import java.io.IOException;

final class g
  implements z
{
  private final n b = new n(this.a.c.timeout());
  private boolean c;

  private g(e parame)
  {
  }

  public final void a(f paramf, long paramLong)
    throws IOException
  {
    if (this.c)
      throw new IllegalStateException("closed");
    if (paramLong == 0L)
      return;
    this.a.c.i(paramLong);
    this.a.c.b("\r\n");
    this.a.c.a(paramf, paramLong);
    this.a.c.b("\r\n");
  }

  public final void close()
    throws IOException
  {
    try
    {
      boolean bool = this.c;
      if (bool);
      while (true)
      {
        return;
        this.c = true;
        this.a.c.b("0\r\n\r\n");
        e.a(this.b);
        this.a.d = 3;
      }
    }
    finally
    {
    }
  }

  public final void flush()
    throws IOException
  {
    try
    {
      boolean bool = this.c;
      if (bool);
      while (true)
      {
        return;
        this.a.c.flush();
      }
    }
    finally
    {
    }
  }

  public final ab timeout()
  {
    return this.b;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.g
 * JD-Core Version:    0.6.2
 */