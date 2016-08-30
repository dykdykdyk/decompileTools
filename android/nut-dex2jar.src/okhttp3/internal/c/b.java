package okhttp3.internal.c;

import java.security.GeneralSecurityException;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;

public final class b
{
  private final f a;

  public b(f paramf)
  {
    this.a = paramf;
  }

  private static boolean a(X509Certificate paramX509Certificate1, X509Certificate paramX509Certificate2)
  {
    if (!paramX509Certificate1.getIssuerDN().equals(paramX509Certificate2.getSubjectDN()))
      return false;
    try
    {
      paramX509Certificate1.verify(paramX509Certificate2.getPublicKey());
      return true;
    }
    catch (GeneralSecurityException paramX509Certificate1)
    {
    }
    return false;
  }

  public final List<Certificate> a(List<Certificate> paramList)
    throws SSLPeerUnverifiedException
  {
    paramList = new ArrayDeque(paramList);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramList.removeFirst());
    int j = 0;
    int i = 0;
    if (j < 9)
    {
      X509Certificate localX509Certificate1 = (X509Certificate)localArrayList.get(localArrayList.size() - 1);
      Object localObject = this.a.a(localX509Certificate1);
      if (localObject != null)
      {
        if ((localArrayList.size() > 1) || (!localX509Certificate1.equals(localObject)))
          localArrayList.add(localObject);
        if (a((X509Certificate)localObject, (X509Certificate)localObject))
          return localArrayList;
        i = 1;
      }
      while (true)
      {
        j += 1;
        break;
        localObject = paramList.iterator();
        X509Certificate localX509Certificate2;
        do
        {
          if (!((Iterator)localObject).hasNext())
            break;
          localX509Certificate2 = (X509Certificate)((Iterator)localObject).next();
        }
        while (!a(localX509Certificate1, localX509Certificate2));
        ((Iterator)localObject).remove();
        localArrayList.add(localX509Certificate2);
      }
      if (i != 0)
        return localArrayList;
      throw new SSLPeerUnverifiedException("Failed to find a trusted cert that signed " + localX509Certificate1);
    }
    throw new SSLPeerUnverifiedException("Certificate chain too long: " + localArrayList);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.c.b
 * JD-Core Version:    0.6.2
 */