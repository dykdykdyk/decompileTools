package io.fabric.sdk.android.services.network;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

final class o
  implements X509TrustManager
{
  private final TrustManager[] a;
  private final p b;
  private final long c;
  private final List<byte[]> d = new LinkedList();
  private final Set<X509Certificate> e = Collections.synchronizedSet(new HashSet());

  public o(p paramp, n paramn)
  {
    this.a = a(paramp);
    this.b = paramp;
    this.c = paramn.d();
    paramp = paramn.c();
    int j = paramp.length;
    int i = 0;
    while (i < j)
    {
      paramn = paramp[i];
      this.d.add(a(paramn));
      i += 1;
    }
  }

  private boolean a(X509Certificate paramX509Certificate)
    throws CertificateException
  {
    try
    {
      paramX509Certificate = MessageDigest.getInstance("SHA1").digest(paramX509Certificate.getPublicKey().getEncoded());
      Iterator localIterator = this.d.iterator();
      while (localIterator.hasNext())
      {
        boolean bool = Arrays.equals((byte[])localIterator.next(), paramX509Certificate);
        if (bool)
          return true;
      }
      return false;
    }
    catch (NoSuchAlgorithmException paramX509Certificate)
    {
    }
    throw new CertificateException(paramX509Certificate);
  }

  private static byte[] a(String paramString)
  {
    int j = paramString.length();
    byte[] arrayOfByte = new byte[j / 2];
    int i = 0;
    while (i < j)
    {
      arrayOfByte[(i / 2)] = ((byte)((Character.digit(paramString.charAt(i), 16) << 4) + Character.digit(paramString.charAt(i + 1), 16)));
      i += 2;
    }
    return arrayOfByte;
  }

  private static TrustManager[] a(p paramp)
  {
    try
    {
      TrustManagerFactory localTrustManagerFactory = TrustManagerFactory.getInstance("X509");
      localTrustManagerFactory.init(paramp.a);
      paramp = localTrustManagerFactory.getTrustManagers();
      return paramp;
    }
    catch (NoSuchAlgorithmException paramp)
    {
      throw new AssertionError(paramp);
    }
    catch (KeyStoreException paramp)
    {
    }
    throw new AssertionError(paramp);
  }

  public final void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
    throws CertificateException
  {
    throw new CertificateException("Client certificates not supported!");
  }

  public final void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
    throws CertificateException
  {
    if (this.e.contains(paramArrayOfX509Certificate[0]))
      return;
    TrustManager[] arrayOfTrustManager = this.a;
    int j = arrayOfTrustManager.length;
    int i = 0;
    while (i < j)
    {
      ((X509TrustManager)arrayOfTrustManager[i]).checkServerTrusted(paramArrayOfX509Certificate, paramString);
      i += 1;
    }
    if ((this.c != -1L) && (System.currentTimeMillis() - this.c > 15552000000L))
    {
      f.b().d("Fabric", "Certificate pins are stale, (" + (System.currentTimeMillis() - this.c) + " millis vs 15552000000 millis) falling back to system trust.");
      this.e.add(paramArrayOfX509Certificate[0]);
      return;
    }
    paramString = a.a(paramArrayOfX509Certificate, this.b);
    j = paramString.length;
    i = 0;
    while (true)
    {
      if (i >= j)
        break label172;
      if (a(paramString[i]))
        break;
      i += 1;
    }
    label172: throw new CertificateException("No valid pins found in chain!");
  }

  public final X509Certificate[] getAcceptedIssuers()
  {
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.network.o
 * JD-Core Version:    0.6.2
 */