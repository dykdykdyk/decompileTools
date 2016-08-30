package okhttp3.internal.http;

import a.aa;
import a.ab;
import a.f;
import a.i;
import a.j;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.o;

public final class r
  implements aa
{
  boolean a;

  public r(p paramp, j paramj, a parama, i parami)
  {
  }

  public final void close()
    throws IOException
  {
    if ((!this.a) && (!o.a(this, TimeUnit.MILLISECONDS)))
      this.a = true;
    this.b.close();
  }

  public final long read(f paramf, long paramLong)
    throws IOException
  {
    try
    {
      paramLong = this.b.read(paramf, paramLong);
      if (paramLong == -1L)
      {
        if (!this.a)
        {
          this.a = true;
          this.d.close();
        }
        return -1L;
      }
    }
    catch (IOException paramf)
    {
      if (!this.a)
        this.a = true;
      throw paramf;
    }
    paramf.a(this.d.a(), paramf.b - paramLong, paramLong);
    this.d.q();
    return paramLong;
  }

  public final ab timeout()
  {
    return this.b.timeout();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.r
 * JD-Core Version:    0.6.2
 */