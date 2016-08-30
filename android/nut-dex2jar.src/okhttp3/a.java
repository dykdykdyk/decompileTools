package okhttp3;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.internal.o;

public final class a
{
  public final ad a;
  public final w b;
  public final SocketFactory c;
  public final b d;
  public final List<ap> e;
  public final List<q> f;
  public final ProxySelector g;
  public final Proxy h;
  public final SSLSocketFactory i;
  public final HostnameVerifier j;
  public final j k;

  public a(String paramString, int paramInt, w paramw, SocketFactory paramSocketFactory, SSLSocketFactory paramSSLSocketFactory, HostnameVerifier paramHostnameVerifier, j paramj, b paramb, Proxy paramProxy, List<ap> paramList, List<q> paramList1, ProxySelector paramProxySelector)
  {
    ae localae = new ae();
    if (paramSSLSocketFactory != null)
    {
      str = "https";
      if (!str.equalsIgnoreCase("http"))
        break label60;
      localae.a = "http";
    }
    while (true)
      if (paramString == null)
      {
        throw new IllegalArgumentException("host == null");
        str = "http";
        break;
        label60: if (str.equalsIgnoreCase("https"))
          localae.a = "https";
        else
          throw new IllegalArgumentException("unexpected scheme: " + str);
      }
    String str = ae.a(paramString, 0, paramString.length());
    if (str == null)
      throw new IllegalArgumentException("unexpected host: " + paramString);
    localae.d = str;
    if ((paramInt <= 0) || (paramInt > 65535))
      throw new IllegalArgumentException("unexpected port: " + paramInt);
    localae.e = paramInt;
    this.a = localae.b();
    if (paramw == null)
      throw new IllegalArgumentException("dns == null");
    this.b = paramw;
    if (paramSocketFactory == null)
      throw new IllegalArgumentException("socketFactory == null");
    this.c = paramSocketFactory;
    if (paramb == null)
      throw new IllegalArgumentException("proxyAuthenticator == null");
    this.d = paramb;
    if (paramList == null)
      throw new IllegalArgumentException("protocols == null");
    this.e = o.a(paramList);
    if (paramList1 == null)
      throw new IllegalArgumentException("connectionSpecs == null");
    this.f = o.a(paramList1);
    if (paramProxySelector == null)
      throw new IllegalArgumentException("proxySelector == null");
    this.g = paramProxySelector;
    this.h = paramProxy;
    this.i = paramSSLSocketFactory;
    this.j = paramHostnameVerifier;
    this.k = paramj;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof a))
    {
      paramObject = (a)paramObject;
      bool1 = bool2;
      if (this.a.equals(paramObject.a))
      {
        bool1 = bool2;
        if (this.b.equals(paramObject.b))
        {
          bool1 = bool2;
          if (this.d.equals(paramObject.d))
          {
            bool1 = bool2;
            if (this.e.equals(paramObject.e))
            {
              bool1 = bool2;
              if (this.f.equals(paramObject.f))
              {
                bool1 = bool2;
                if (this.g.equals(paramObject.g))
                {
                  bool1 = bool2;
                  if (o.a(this.h, paramObject.h))
                  {
                    bool1 = bool2;
                    if (o.a(this.i, paramObject.i))
                    {
                      bool1 = bool2;
                      if (o.a(this.j, paramObject.j))
                      {
                        bool1 = bool2;
                        if (o.a(this.k, paramObject.k))
                          bool1 = true;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    return bool1;
  }

  public final int hashCode()
  {
    int i2 = 0;
    int i3 = this.a.hashCode();
    int i4 = this.b.hashCode();
    int i5 = this.d.hashCode();
    int i6 = this.e.hashCode();
    int i7 = this.f.hashCode();
    int i8 = this.g.hashCode();
    int m;
    int n;
    if (this.h != null)
    {
      m = this.h.hashCode();
      if (this.i == null)
        break label185;
      n = this.i.hashCode();
      label91: if (this.j == null)
        break label190;
    }
    label185: label190: for (int i1 = this.j.hashCode(); ; i1 = 0)
    {
      if (this.k != null)
        i2 = this.k.hashCode();
      return (i1 + (n + (m + ((((((i3 + 527) * 31 + i4) * 31 + i5) * 31 + i6) * 31 + i7) * 31 + i8) * 31) * 31) * 31) * 31 + i2;
      m = 0;
      break;
      n = 0;
      break label91;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.a
 * JD-Core Version:    0.6.2
 */