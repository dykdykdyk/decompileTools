package okhttp3.internal;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.ap;
import okhttp3.internal.c.a;

final class k extends j
{
  private final Class<?> a;
  private final i<Socket> b;
  private final i<Socket> c;
  private final i<Socket> d;
  private final i<Socket> e;

  public k(Class<?> paramClass, i<Socket> parami1, i<Socket> parami2, i<Socket> parami3, i<Socket> parami4)
  {
    this.a = paramClass;
    this.b = parami1;
    this.c = parami2;
    this.d = parami3;
    this.e = parami4;
  }

  public final X509TrustManager a(SSLSocketFactory paramSSLSocketFactory)
  {
    Object localObject = a(paramSSLSocketFactory, this.a, "sslParameters");
    if (localObject == null);
    while (true)
    {
      try
      {
        localObject = a(paramSSLSocketFactory, Class.forName("com.google.android.gms.org.conscrypt.SSLParametersImpl", false, paramSSLSocketFactory.getClass().getClassLoader()), "sslParameters");
        paramSSLSocketFactory = (SSLSocketFactory)localObject;
        localObject = (X509TrustManager)a(paramSSLSocketFactory, X509TrustManager.class, "x509TrustManager");
        if (localObject != null)
          return localObject;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        return super.a(paramSSLSocketFactory);
      }
      return (X509TrustManager)a(paramSSLSocketFactory, X509TrustManager.class, "trustManager");
      paramSSLSocketFactory = localClassNotFoundException;
    }
  }

  public final okhttp3.internal.c.f a(X509TrustManager paramX509TrustManager)
  {
    okhttp3.internal.c.f localf = a.a(paramX509TrustManager);
    if (localf != null)
      return localf;
    return super.a(paramX509TrustManager);
  }

  public final void a(Socket paramSocket, InetSocketAddress paramInetSocketAddress, int paramInt)
    throws IOException
  {
    try
    {
      paramSocket.connect(paramInetSocketAddress, paramInt);
      return;
    }
    catch (AssertionError paramSocket)
    {
      if (o.a(paramSocket))
        throw new IOException(paramSocket);
      throw paramSocket;
    }
    catch (SecurityException paramSocket)
    {
      paramInetSocketAddress = new IOException("Exception in connect");
      paramInetSocketAddress.initCause(paramSocket);
    }
    throw paramInetSocketAddress;
  }

  public final void a(SSLSocket paramSSLSocket, String paramString, List<ap> paramList)
  {
    if (paramString != null)
    {
      this.b.a(paramSSLSocket, new Object[] { Boolean.valueOf(true) });
      this.c.a(paramSSLSocket, new Object[] { paramString });
    }
    if ((this.e != null) && (this.e.a(paramSSLSocket)))
    {
      paramString = new a.f();
      int j = paramList.size();
      int i = 0;
      while (i < j)
      {
        ap localap = (ap)paramList.get(i);
        if (localap != ap.a)
        {
          paramString.b(localap.toString().length());
          paramString.a(localap.toString());
        }
        i += 1;
      }
      paramString = paramString.o();
      this.e.b(paramSSLSocket, new Object[] { paramString });
    }
  }

  public final String b(SSLSocket paramSSLSocket)
  {
    if (this.d == null)
      return null;
    if (!this.d.a(paramSSLSocket))
      return null;
    paramSSLSocket = (byte[])this.d.b(paramSSLSocket, new Object[0]);
    if (paramSSLSocket != null)
      return new String(paramSSLSocket, o.c);
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.k
 * JD-Core Version:    0.6.2
 */