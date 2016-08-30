package okhttp3.internal.http;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import okhttp3.a;
import okhttp3.ad;
import okhttp3.bd;
import okhttp3.internal.n;
import okhttp3.w;

public final class z
{
  final a a;
  final n b;
  private Proxy c;
  private InetSocketAddress d;
  private List<Proxy> e = Collections.emptyList();
  private int f;
  private List<InetSocketAddress> g = Collections.emptyList();
  private int h;
  private final List<bd> i = new ArrayList();

  public z(a parama, n paramn)
  {
    this.a = parama;
    this.b = paramn;
    paramn = parama.a;
    parama = parama.h;
    if (parama != null)
      this.e = Collections.singletonList(parama);
    while (true)
    {
      this.f = 0;
      return;
      this.e = new ArrayList();
      parama = this.a.g.select(paramn.a());
      if (parama != null)
        this.e.addAll(parama);
      this.e.removeAll(Collections.singleton(Proxy.NO_PROXY));
      this.e.add(Proxy.NO_PROXY);
    }
  }

  private void a(Proxy paramProxy)
    throws IOException
  {
    this.g = new ArrayList();
    Object localObject;
    int j;
    if ((paramProxy.type() == Proxy.Type.DIRECT) || (paramProxy.type() == Proxy.Type.SOCKS))
    {
      localObject = this.a.a.b;
      j = this.a.a.c;
      if ((j <= 0) || (j > 65535))
        throw new SocketException("No route to " + (String)localObject + ":" + j + "; port is out of range");
    }
    else
    {
      localObject = paramProxy.address();
      if (!(localObject instanceof InetSocketAddress))
        throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + localObject.getClass());
      InetSocketAddress localInetSocketAddress = (InetSocketAddress)localObject;
      localObject = localInetSocketAddress.getAddress();
      if (localObject == null);
      for (localObject = localInetSocketAddress.getHostName(); ; localObject = ((InetAddress)localObject).getHostAddress())
      {
        j = localInetSocketAddress.getPort();
        break;
      }
    }
    if (paramProxy.type() == Proxy.Type.SOCKS)
      this.g.add(InetSocketAddress.createUnresolved((String)localObject, j));
    while (true)
    {
      this.h = 0;
      return;
      paramProxy = this.a.b.a((String)localObject);
      int m = paramProxy.size();
      int k = 0;
      while (k < m)
      {
        localObject = (InetAddress)paramProxy.get(k);
        this.g.add(new InetSocketAddress((InetAddress)localObject, j));
        k += 1;
      }
    }
  }

  public final bd a()
    throws IOException
  {
    while (true)
    {
      Object localObject;
      if (!c())
        if (!b())
        {
          if (!d())
            throw new NoSuchElementException();
          localObject = (bd)this.i.remove(0);
        }
      bd localbd;
      do
      {
        return localObject;
        if (!b())
          throw new SocketException("No route to " + this.a.a.b + "; exhausted proxy configurations: " + this.e);
        localObject = this.e;
        int j = this.f;
        this.f = (j + 1);
        localObject = (Proxy)((List)localObject).get(j);
        a((Proxy)localObject);
        this.c = ((Proxy)localObject);
        if (!c())
          throw new SocketException("No route to " + this.a.a.b + "; exhausted inet socket addresses: " + this.g);
        localObject = this.g;
        j = this.h;
        this.h = (j + 1);
        this.d = ((InetSocketAddress)((List)localObject).get(j));
        localbd = new bd(this.a, this.c, this.d);
        localObject = localbd;
      }
      while (!this.b.c(localbd));
      this.i.add(localbd);
    }
  }

  final boolean b()
  {
    return this.f < this.e.size();
  }

  final boolean c()
  {
    return this.h < this.g.size();
  }

  final boolean d()
  {
    return !this.i.isEmpty();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.z
 * JD-Core Version:    0.6.2
 */