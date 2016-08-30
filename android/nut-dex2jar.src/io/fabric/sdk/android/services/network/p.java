package io.fabric.sdk.android.services.network;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Principal;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Enumeration;
import java.util.HashMap;
import javax.security.auth.x500.X500Principal;

final class p
{
  final KeyStore a;
  private final HashMap<Principal, X509Certificate> b;

  public p(InputStream paramInputStream, String paramString)
  {
    paramInputStream = a(paramInputStream, paramString);
    this.b = a(paramInputStream);
    this.a = paramInputStream;
  }

  private static KeyStore a(InputStream paramInputStream, String paramString)
  {
    try
    {
      KeyStore localKeyStore = KeyStore.getInstance("BKS");
      paramInputStream = new BufferedInputStream(paramInputStream);
      try
      {
        localKeyStore.load(paramInputStream, paramString.toCharArray());
        return localKeyStore;
      }
      finally
      {
        paramInputStream.close();
      }
    }
    catch (KeyStoreException paramInputStream)
    {
      throw new AssertionError(paramInputStream);
    }
    catch (NoSuchAlgorithmException paramInputStream)
    {
      throw new AssertionError(paramInputStream);
    }
    catch (CertificateException paramInputStream)
    {
      throw new AssertionError(paramInputStream);
    }
    catch (IOException paramInputStream)
    {
    }
    throw new AssertionError(paramInputStream);
  }

  private static HashMap<Principal, X509Certificate> a(KeyStore paramKeyStore)
  {
    HashMap localHashMap;
    try
    {
      localHashMap = new HashMap();
      Enumeration localEnumeration = paramKeyStore.aliases();
      while (localEnumeration.hasMoreElements())
      {
        X509Certificate localX509Certificate = (X509Certificate)paramKeyStore.getCertificate((String)localEnumeration.nextElement());
        if (localX509Certificate != null)
          localHashMap.put(localX509Certificate.getSubjectX500Principal(), localX509Certificate);
      }
    }
    catch (KeyStoreException paramKeyStore)
    {
      throw new AssertionError(paramKeyStore);
    }
    return localHashMap;
  }

  public final boolean a(X509Certificate paramX509Certificate)
  {
    X509Certificate localX509Certificate = (X509Certificate)this.b.get(paramX509Certificate.getSubjectX500Principal());
    return (localX509Certificate != null) && (localX509Certificate.getPublicKey().equals(paramX509Certificate.getPublicKey()));
  }

  public final X509Certificate b(X509Certificate paramX509Certificate)
  {
    X509Certificate localX509Certificate = (X509Certificate)this.b.get(paramX509Certificate.getIssuerX500Principal());
    if (localX509Certificate == null)
      return null;
    if (localX509Certificate.getSubjectX500Principal().equals(paramX509Certificate.getSubjectX500Principal()))
      return null;
    try
    {
      paramX509Certificate.verify(localX509Certificate.getPublicKey());
      return localX509Certificate;
    }
    catch (GeneralSecurityException paramX509Certificate)
    {
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.network.p
 * JD-Core Version:    0.6.2
 */