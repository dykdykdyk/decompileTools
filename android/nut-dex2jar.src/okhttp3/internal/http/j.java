package okhttp3.internal.http;

import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.o;

final class j extends f
{
  private long e;

  public j(e parame, long paramLong)
    throws IOException
  {
    super(parame, (byte)0);
    this.e = paramLong;
    if (this.e == 0L)
      a(true);
  }

  public final void close()
    throws IOException
  {
    if (this.b)
      return;
    if ((this.e != 0L) && (!o.a(this, TimeUnit.MILLISECONDS)))
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
    if (this.e == 0L)
      return -1L;
    paramLong = this.d.b.read(paramf, Math.min(this.e, paramLong));
    if (paramLong == -1L)
    {
      a(false);
      throw new ProtocolException("unexpected end of stream");
    }
    this.e -= paramLong;
    if (this.e == 0L)
      a(true);
    return paramLong;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.j
 * JD-Core Version:    0.6.2
 */