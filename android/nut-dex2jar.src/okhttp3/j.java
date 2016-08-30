package okhttp3;

import a.e;
import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.List<Ljava.security.cert.Certificate;>;
import javax.net.ssl.SSLPeerUnverifiedException;
import okhttp3.internal.c.b;
import okhttp3.internal.c.f;
import okhttp3.internal.o;

public final class j
{
  public static final j a = new k().a();
  private final List<l> b;
  private final f c;

  private j(k paramk)
  {
    this.b = o.a(paramk.a);
    this.c = paramk.b;
  }

  private static a.k a(X509Certificate paramX509Certificate)
  {
    return o.b(a.k.a(paramX509Certificate.getPublicKey().getEncoded()));
  }

  public static String a(Certificate paramCertificate)
  {
    if (!(paramCertificate instanceof X509Certificate))
      throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    return "sha256/" + e.a(a((X509Certificate)paramCertificate).c);
  }

  public final void a(String paramString, List<Certificate> paramList)
    throws SSLPeerUnverifiedException
  {
    int k = 0;
    Object localObject1 = Collections.emptyList();
    Object localObject2 = this.b.iterator();
    Object localObject3;
    int i;
    if (((Iterator)localObject2).hasNext())
    {
      localObject3 = (l)((Iterator)localObject2).next();
      if (((l)localObject3).a.equals(paramString))
      {
        i = 1;
        label55: if (i == 0)
          break label538;
        if (!((List)localObject1).isEmpty())
          break label535;
        localObject1 = new ArrayList();
        label78: ((List)localObject1).add(localObject3);
      }
    }
    label535: label538: 
    while (true)
    {
      break;
      i = paramString.indexOf('.');
      if ((((l)localObject3).a.startsWith("*.")) && (paramString.regionMatches(false, i + 1, ((l)localObject3).a, 2, ((l)localObject3).a.length() - 2)))
      {
        i = 1;
        break label55;
      }
      i = 0;
      break label55;
      if (((List)localObject1).isEmpty())
        return;
      Object localObject4 = paramList;
      if (this.c != null)
        localObject4 = new b(this.c).a(paramList);
      int m = ((List)localObject4).size();
      i = 0;
      while (true)
      {
        if (i >= m)
          break label379;
        X509Certificate localX509Certificate = (X509Certificate)((List)localObject4).get(i);
        int n = ((List)localObject1).size();
        j = 0;
        paramList = null;
        localObject2 = null;
        if (j < n)
        {
          l locall = (l)((List)localObject1).get(j);
          if (locall.b.equals("sha256/"))
          {
            localObject3 = paramList;
            if (paramList == null)
              localObject3 = a(localX509Certificate);
            if (locall.c.equals(localObject3))
              break;
            paramList = (List<Certificate>)localObject3;
          }
          do
          {
            j += 1;
            break;
            if (!locall.b.equals("sha1/"))
              break label364;
            localObject3 = localObject2;
            if (localObject2 == null)
              localObject3 = o.a(a.k.a(localX509Certificate.getPublicKey().getEncoded()));
            localObject2 = localObject3;
          }
          while (!locall.c.equals(localObject3));
          return;
          label364: throw new AssertionError();
        }
        i += 1;
      }
      label379: paramList = new StringBuilder("Certificate pinning failure!\n  Peer certificate chain:");
      int j = ((List)localObject4).size();
      i = 0;
      while (i < j)
      {
        localObject2 = (X509Certificate)((List)localObject4).get(i);
        paramList.append("\n    ").append(a((Certificate)localObject2)).append(": ").append(((X509Certificate)localObject2).getSubjectDN().getName());
        i += 1;
      }
      paramList.append("\n  Pinned certificates for ").append(paramString).append(":");
      j = ((List)localObject1).size();
      i = k;
      while (i < j)
      {
        paramString = (l)((List)localObject1).get(i);
        paramList.append("\n    ").append(paramString);
        i += 1;
      }
      throw new SSLPeerUnverifiedException(paramList.toString());
      break label78;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.j
 * JD-Core Version:    0.6.2
 */