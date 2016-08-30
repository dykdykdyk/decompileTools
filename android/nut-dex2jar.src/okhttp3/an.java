package okhttp3;

import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import javax.net.ssl.SSLSocket;
import okhttp3.internal.b.c;
import okhttp3.internal.f;
import okhttp3.internal.g;
import okhttp3.internal.http.ab;
import okhttp3.internal.n;

final class an extends f
{
  public final c a(o paramo, a parama, ab paramab)
  {
    if ((!o.g) && (!Thread.holdsLock(paramo)))
      throw new AssertionError();
    paramo = paramo.d.iterator();
    while (paramo.hasNext())
    {
      c localc = (c)paramo.next();
      if ((localc.k.size() < localc.j) && (parama.equals(localc.b.a)) && (!localc.l))
      {
        paramab.a(localc);
        return localc;
      }
    }
    return null;
  }

  public final g a(am paramam)
  {
    if (paramam.i != null)
      return paramam.i.a;
    return paramam.j;
  }

  public final n a(o paramo)
  {
    return paramo.e;
  }

  public final void a(ac paramac, String paramString)
  {
    int i = paramString.indexOf(":", 1);
    if (i != -1)
    {
      paramac.b(paramString.substring(0, i), paramString.substring(i + 1));
      return;
    }
    if (paramString.startsWith(":"))
    {
      paramac.b("", paramString.substring(1));
      return;
    }
    paramac.b("", paramString);
  }

  public final void a(q paramq, SSLSocket paramSSLSocket, boolean paramBoolean)
  {
    String[] arrayOfString1;
    if (paramq.f != null)
    {
      arrayOfString1 = (String[])okhttp3.internal.o.a(String.class, paramq.f, paramSSLSocket.getEnabledCipherSuites());
      if (paramq.g == null)
        break label145;
    }
    label145: for (String[] arrayOfString2 = (String[])okhttp3.internal.o.a(String.class, paramq.g, paramSSLSocket.getEnabledProtocols()); ; arrayOfString2 = paramSSLSocket.getEnabledProtocols())
    {
      String[] arrayOfString3 = arrayOfString1;
      if (paramBoolean)
      {
        arrayOfString3 = arrayOfString1;
        if (okhttp3.internal.o.a(paramSSLSocket.getSupportedCipherSuites(), "TLS_FALLBACK_SCSV"))
          arrayOfString3 = okhttp3.internal.o.b(arrayOfString1, "TLS_FALLBACK_SCSV");
      }
      paramq = new r(paramq).a(arrayOfString3).b(arrayOfString2).b();
      if (paramq.g != null)
        paramSSLSocket.setEnabledProtocols(paramq.g);
      if (paramq.f != null)
        paramSSLSocket.setEnabledCipherSuites(paramq.f);
      return;
      arrayOfString1 = paramSSLSocket.getEnabledCipherSuites();
      break;
    }
  }

  public final boolean a(o paramo, c paramc)
  {
    if ((!o.g) && (!Thread.holdsLock(paramo)))
      throw new AssertionError();
    if ((paramc.l) || (paramo.b == 0))
    {
      paramo.d.remove(paramc);
      return true;
    }
    paramo.notifyAll();
    return false;
  }

  public final void b(o paramo, c paramc)
  {
    if ((!o.g) && (!Thread.holdsLock(paramo)))
      throw new AssertionError();
    if (!paramo.f)
    {
      paramo.f = true;
      o.a.execute(paramo.c);
    }
    paramo.d.add(paramc);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.an
 * JD-Core Version:    0.6.2
 */