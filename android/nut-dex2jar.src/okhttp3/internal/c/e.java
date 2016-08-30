package okhttp3.internal.c;

import java.security.PublicKey;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.security.auth.x500.X500Principal;

public final class e
  implements f
{
  private final Map<X500Principal, List<X509Certificate>> a = new LinkedHashMap();

  public e(X509Certificate[] paramArrayOfX509Certificate)
  {
    int j = paramArrayOfX509Certificate.length;
    int i = 0;
    while (i < j)
    {
      X509Certificate localX509Certificate = paramArrayOfX509Certificate[i];
      X500Principal localX500Principal = localX509Certificate.getSubjectX500Principal();
      List localList = (List)this.a.get(localX500Principal);
      Object localObject = localList;
      if (localList == null)
      {
        localObject = new ArrayList(1);
        this.a.put(localX500Principal, localObject);
      }
      ((List)localObject).add(localX509Certificate);
      i += 1;
    }
  }

  public final X509Certificate a(X509Certificate paramX509Certificate)
  {
    Object localObject = paramX509Certificate.getIssuerX500Principal();
    localObject = (List)this.a.get(localObject);
    if (localObject == null)
      return null;
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      X509Certificate localX509Certificate = (X509Certificate)((Iterator)localObject).next();
      PublicKey localPublicKey = localX509Certificate.getPublicKey();
      try
      {
        paramX509Certificate.verify(localPublicKey);
        return localX509Certificate;
      }
      catch (Exception localException)
      {
      }
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.c.e
 * JD-Core Version:    0.6.2
 */