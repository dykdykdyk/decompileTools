package okhttp3;

import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import okhttp3.internal.o;

public final class aa
{
  public final m a;
  public final List<Certificate> b;
  private final be c;
  private final List<Certificate> d;

  private aa(be parambe, m paramm, List<Certificate> paramList1, List<Certificate> paramList2)
  {
    this.c = parambe;
    this.a = paramm;
    this.b = paramList1;
    this.d = paramList2;
  }

  public static aa a(SSLSession paramSSLSession)
  {
    Object localObject = paramSSLSession.getCipherSuite();
    if (localObject == null)
      throw new IllegalStateException("cipherSuite == null");
    m localm = m.a((String)localObject);
    localObject = paramSSLSession.getProtocol();
    if (localObject == null)
      throw new IllegalStateException("tlsVersion == null");
    be localbe = be.a((String)localObject);
    try
    {
      localObject = paramSSLSession.getPeerCertificates();
      if (localObject != null)
      {
        localObject = o.a((Object[])localObject);
        paramSSLSession = paramSSLSession.getLocalCertificates();
        if (paramSSLSession == null)
          break label109;
        paramSSLSession = o.a(paramSSLSession);
        return new aa(localbe, localm, (List)localObject, paramSSLSession);
      }
    }
    catch (SSLPeerUnverifiedException localSSLPeerUnverifiedException)
    {
      while (true)
      {
        List localList = null;
        continue;
        localList = Collections.emptyList();
        continue;
        label109: paramSSLSession = Collections.emptyList();
      }
    }
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof aa));
    do
    {
      return false;
      paramObject = (aa)paramObject;
    }
    while ((!o.a(this.a, paramObject.a)) || (!this.a.equals(paramObject.a)) || (!this.b.equals(paramObject.b)) || (!this.d.equals(paramObject.d)));
    return true;
  }

  public final int hashCode()
  {
    if (this.c != null);
    for (int i = this.c.hashCode(); ; i = 0)
      return (((i + 527) * 31 + this.a.hashCode()) * 31 + this.b.hashCode()) * 31 + this.d.hashCode();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.aa
 * JD-Core Version:    0.6.2
 */