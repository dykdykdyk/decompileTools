package okhttp3.internal.http;

import a.ab;
import a.f;
import a.n;
import a.z;
import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.internal.o;

final class i
  implements z
{
  private final n b = new n(this.a.c.timeout());
  private boolean c;
  private long d;

  private i(e parame, long paramLong)
  {
    this.d = paramLong;
  }

  public final void a(f paramf, long paramLong)
    throws IOException
  {
    if (this.c)
      throw new IllegalStateException("closed");
    o.a(paramf.b, 0L, paramLong);
    if (paramLong > this.d)
      throw new ProtocolException("expected " + this.d + " bytes but received " + paramLong);
    this.a.c.a(paramf, paramLong);
    this.d -= paramLong;
  }

  public final void close()
    throws IOException
  {
    if (this.c)
      return;
    this.c = true;
    if (this.d > 0L)
      throw new ProtocolException("unexpected end of stream");
    e.a(this.b);
    this.a.d = 3;
  }

  public final void flush()
    throws IOException
  {
    if (this.c)
      return;
    this.a.c.flush();
  }

  public final ab timeout()
  {
    return this.b;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.i
 * JD-Core Version:    0.6.2
 */