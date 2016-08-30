package okhttp3.internal.http;

import a.j;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.o;

final class h extends f
{
  private long e = -1L;
  private boolean f = true;
  private final p g;

  h(e parame, p paramp)
    throws IOException
  {
    super(parame, (byte)0);
    this.g = paramp;
  }

  public final void close()
    throws IOException
  {
    if (this.b)
      return;
    if ((this.f) && (!o.a(this, TimeUnit.MILLISECONDS)))
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
    if (!this.f);
    do
    {
      return -1L;
      if ((this.e != 0L) && (this.e != -1L))
        break;
      if (this.e != -1L)
        this.d.b.n();
      try
      {
        this.e = this.d.b.k();
        String str = this.d.b.n().trim();
        if ((this.e < 0L) || ((!str.isEmpty()) && (!str.startsWith(";"))))
          throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.e + str + "\"");
      }
      catch (NumberFormatException paramf)
      {
        throw new ProtocolException(paramf.getMessage());
      }
      if (this.e == 0L)
      {
        this.f = false;
        this.g.a(this.d.e());
        a(true);
      }
    }
    while (!this.f);
    paramLong = this.d.b.read(paramf, Math.min(paramLong, this.e));
    if (paramLong == -1L)
    {
      a(false);
      throw new ProtocolException("unexpected end of stream");
    }
    this.e -= paramLong;
    return paramLong;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.h
 * JD-Core Version:    0.6.2
 */