package okhttp3.internal.a;

import java.io.IOException;
import java.net.SocketTimeoutException;

final class w extends a.a
{
  w(t paramt)
  {
  }

  protected final IOException a(IOException paramIOException)
  {
    SocketTimeoutException localSocketTimeoutException = new SocketTimeoutException("timeout");
    if (paramIOException != null)
      localSocketTimeoutException.initCause(paramIOException);
    return localSocketTimeoutException;
  }

  protected final void a()
  {
    this.a.b(a.l);
  }

  public final void b()
    throws IOException
  {
    if (j_())
      throw a(null);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.w
 * JD-Core Version:    0.6.2
 */