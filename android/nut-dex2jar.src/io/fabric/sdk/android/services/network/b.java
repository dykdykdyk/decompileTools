package io.fabric.sdk.android.services.network;

import io.fabric.sdk.android.e;
import io.fabric.sdk.android.r;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

public final class b
  implements l
{
  private final r a;
  private n b;
  private SSLSocketFactory c;
  private boolean d;

  public b()
  {
    this(new e((byte)0));
  }

  public b(r paramr)
  {
    this.a = paramr;
  }

  private void a()
  {
    try
    {
      this.d = false;
      this.c = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private SSLSocketFactory b()
  {
    try
    {
      if ((this.c == null) && (!this.d))
        this.c = c();
      SSLSocketFactory localSSLSocketFactory = this.c;
      return localSSLSocketFactory;
    }
    finally
    {
    }
  }

  private SSLSocketFactory c()
  {
    try
    {
      this.d = true;
      try
      {
        SSLSocketFactory localSSLSocketFactory = m.a(this.b);
        this.a.a("Fabric", "Custom SSL pinning enabled");
        return localSSLSocketFactory;
      }
      catch (Exception localException)
      {
        while (true)
        {
          this.a.c("Fabric", "Exception while validating pinned certs", localException);
          Object localObject1 = null;
        }
      }
    }
    finally
    {
    }
  }

  public final HttpRequest a(int paramInt, String paramString, Map<String, String> paramMap)
  {
    switch (c.a[(paramInt - 1)])
    {
    default:
      throw new IllegalArgumentException("Unsupported HTTP method!");
    case 1:
      paramMap = HttpRequest.a(paramString, paramMap);
      if ((paramString == null) || (!paramString.toLowerCase(Locale.US).startsWith("https")))
        break;
    case 2:
    case 3:
    case 4:
    }
    for (paramInt = 1; ; paramInt = 0)
    {
      if ((paramInt != 0) && (this.b != null))
      {
        paramString = b();
        if (paramString != null)
          ((HttpsURLConnection)paramMap.a()).setSSLSocketFactory(paramString);
      }
      return paramMap;
      paramMap = HttpRequest.b(paramString, paramMap);
      break;
      paramMap = HttpRequest.a(paramString);
      break;
      paramMap = HttpRequest.b(paramString);
      break;
    }
  }

  public final void a(n paramn)
  {
    if (this.b != paramn)
    {
      this.b = paramn;
      a();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.network.b
 * JD-Core Version:    0.6.2
 */