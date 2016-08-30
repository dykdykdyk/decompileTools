package okhttp3.internal.c;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

public final class a
  implements f
{
  private final X509TrustManager a;
  private final Method b;

  private a(X509TrustManager paramX509TrustManager, Method paramMethod)
  {
    this.b = paramMethod;
    this.a = paramX509TrustManager;
  }

  public static f a(X509TrustManager paramX509TrustManager)
  {
    try
    {
      Method localMethod = paramX509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", new Class[] { X509Certificate.class });
      localMethod.setAccessible(true);
      paramX509TrustManager = new a(paramX509TrustManager, localMethod);
      return paramX509TrustManager;
    }
    catch (NoSuchMethodException paramX509TrustManager)
    {
    }
    return null;
  }

  public final X509Certificate a(X509Certificate paramX509Certificate)
  {
    try
    {
      paramX509Certificate = (TrustAnchor)this.b.invoke(this.a, new Object[] { paramX509Certificate });
      if (paramX509Certificate != null)
      {
        paramX509Certificate = paramX509Certificate.getTrustedCert();
        return paramX509Certificate;
      }
      return null;
    }
    catch (IllegalAccessException paramX509Certificate)
    {
      throw new AssertionError();
    }
    catch (InvocationTargetException paramX509Certificate)
    {
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.c.a
 * JD-Core Version:    0.6.2
 */