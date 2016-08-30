package com.sina.weibo.sdk.net;

import java.security.KeyStore;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public final class j
  implements X509TrustManager
{
  protected ArrayList<X509TrustManager> a = new ArrayList();

  protected j(KeyStore[] paramArrayOfKeyStore)
  {
    Object localObject1 = new ArrayList();
    while (true)
    {
      Object localObject2;
      try
      {
        localObject2 = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        ((TrustManagerFactory)localObject2).init(null);
        ((ArrayList)localObject1).add(localObject2);
        i = 0;
        if (i > 0)
        {
          paramArrayOfKeyStore = ((ArrayList)localObject1).iterator();
          if (!paramArrayOfKeyStore.hasNext())
          {
            if (this.a.size() != 0)
              break;
            throw new RuntimeException("Couldn't find any X509TrustManagers");
          }
        }
        else
        {
          localObject2 = paramArrayOfKeyStore[0];
          TrustManagerFactory localTrustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
          localTrustManagerFactory.init((KeyStore)localObject2);
          ((ArrayList)localObject1).add(localTrustManagerFactory);
          i += 1;
          continue;
        }
      }
      catch (Exception paramArrayOfKeyStore)
      {
        throw new RuntimeException(paramArrayOfKeyStore);
      }
      localObject1 = ((TrustManagerFactory)paramArrayOfKeyStore.next()).getTrustManagers();
      int j = localObject1.length;
      int i = 0;
      while (i < j)
      {
        localObject2 = localObject1[i];
        if ((localObject2 instanceof X509TrustManager))
          this.a.add((X509TrustManager)localObject2);
        i += 1;
      }
    }
  }

  public final void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
    throws CertificateException
  {
    ((X509TrustManager)this.a.get(0)).checkClientTrusted(paramArrayOfX509Certificate, paramString);
  }

  public final void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
    throws CertificateException
  {
    Iterator localIterator = this.a.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        throw new CertificateException();
      X509TrustManager localX509TrustManager = (X509TrustManager)localIterator.next();
      try
      {
        localX509TrustManager.checkServerTrusted(paramArrayOfX509Certificate, paramString);
        return;
      }
      catch (CertificateException localCertificateException)
      {
      }
    }
  }

  public final X509Certificate[] getAcceptedIssuers()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.a.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return (X509Certificate[])localArrayList.toArray(new X509Certificate[localArrayList.size()]);
      localArrayList.addAll(Arrays.asList(((X509TrustManager)localIterator.next()).getAcceptedIssuers()));
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.net.j
 * JD-Core Version:    0.6.2
 */