package okhttp3.internal;

import java.io.IOException;
import java.net.UnknownServiceException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
import okhttp3.q;

public final class a
{
  public boolean a;
  public boolean b;
  private final List<q> c;
  private int d = 0;

  public a(List<q> paramList)
  {
    this.c = paramList;
  }

  private boolean b(SSLSocket paramSSLSocket)
  {
    int i = this.d;
    while (i < this.c.size())
    {
      if (((q)this.c.get(i)).a(paramSSLSocket))
        return true;
      i += 1;
    }
    return false;
  }

  public final q a(SSLSocket paramSSLSocket)
    throws IOException
  {
    int i = this.d;
    int j = this.c.size();
    q localq;
    if (i < j)
    {
      localq = (q)this.c.get(i);
      if (localq.a(paramSSLSocket))
        this.d = (i + 1);
    }
    while (true)
    {
      if (localq == null)
      {
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.b + ", modes=" + this.c + ", supported protocols=" + Arrays.toString(paramSSLSocket.getEnabledProtocols()));
        i += 1;
        break;
      }
      this.a = b(paramSSLSocket);
      f.b.a(localq, paramSSLSocket, this.b);
      return localq;
      localq = null;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a
 * JD-Core Version:    0.6.2
 */