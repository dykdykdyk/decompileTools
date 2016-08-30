package okhttp3;

import java.net.InetSocketAddress;
import java.net.Proxy;

public final class bd
{
  public final a a;
  public final Proxy b;
  public final InetSocketAddress c;

  public bd(a parama, Proxy paramProxy, InetSocketAddress paramInetSocketAddress)
  {
    if (parama == null)
      throw new NullPointerException("address == null");
    if (paramProxy == null)
      throw new NullPointerException("proxy == null");
    if (paramInetSocketAddress == null)
      throw new NullPointerException("inetSocketAddress == null");
    this.a = parama;
    this.b = paramProxy;
    this.c = paramInetSocketAddress;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof bd))
    {
      paramObject = (bd)paramObject;
      bool1 = bool2;
      if (this.a.equals(paramObject.a))
      {
        bool1 = bool2;
        if (this.b.equals(paramObject.b))
        {
          bool1 = bool2;
          if (this.c.equals(paramObject.c))
            bool1 = true;
        }
      }
    }
    return bool1;
  }

  public final int hashCode()
  {
    return ((this.a.hashCode() + 527) * 31 + this.b.hashCode()) * 31 + this.c.hashCode();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.bd
 * JD-Core Version:    0.6.2
 */