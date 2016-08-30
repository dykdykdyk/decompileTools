package okhttp3.internal.http;

import a.j;
import java.io.IOException;

final class k extends f
{
  private boolean e;

  private k(e parame)
  {
    super(parame, (byte)0);
  }

  public final void close()
    throws IOException
  {
    if (this.b)
      return;
    if (!this.e)
      a(false);
    this.b = true;
  }

  public final long read(a.f paramf, long paramLong)
    throws IOException
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    if (this.b)
      throw new IllegalStateException("closed");
    if (this.e)
      return -1L;
    paramLong = this.d.b.read(paramf, paramLong);
    if (paramLong == -1L)
    {
      this.e = true;
      a(true);
      return -1L;
    }
    return paramLong;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.k
 * JD-Core Version:    0.6.2
 */