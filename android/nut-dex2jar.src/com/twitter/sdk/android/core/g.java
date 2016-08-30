package com.twitter.sdk.android.core;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import java.io.IOException;
import java.net.HttpURLConnection;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import retrofit.client.Client;
import retrofit.client.Request;
import retrofit.client.Response;

public class g
  implements Client
{
  final Client a;
  final SSLSocketFactory b;

  public g(SSLSocketFactory paramSSLSocketFactory)
  {
    this.b = paramSSLSocketFactory;
    if (a())
    {
      this.a = new h(this);
      return;
    }
    this.a = new i(this);
  }

  private static boolean a()
  {
    boolean bool2 = true;
    try
    {
      Class.forName("com.squareup.okhttp.OkUrlFactory");
      bool1 = true;
    }
    catch (ClassNotFoundException localClassNotFoundException1)
    {
      try
      {
        while (true)
        {
          Class.forName("com.squareup.okhttp.OkHttpClient");
          if (bool2 == bool1)
            break;
          f.b().a("Twitter", "Retrofit detected an unsupported OkHttp on the classpath.\nTo use OkHttp with this version of Retrofit, you'll need:\n1. com.squareup.okhttp:okhttp:1.6.0 (or newer)\n2. com.squareup.okhttp:okhttp-urlconnection:1.6.0 (or newer)\nNote that OkHttp 2.0.0+ is supported!");
          return false;
          localClassNotFoundException1 = localClassNotFoundException1;
          boolean bool1 = false;
        }
      }
      catch (ClassNotFoundException localClassNotFoundException2)
      {
        while (true)
          bool2 = false;
      }
    }
    return bool2;
  }

  final HttpURLConnection a(HttpURLConnection paramHttpURLConnection)
  {
    if ((this.b != null) && ((paramHttpURLConnection instanceof HttpsURLConnection)))
      ((HttpsURLConnection)paramHttpURLConnection).setSSLSocketFactory(this.b);
    return paramHttpURLConnection;
  }

  public Response execute(Request paramRequest)
    throws IOException
  {
    return this.a.execute(paramRequest);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.g
 * JD-Core Version:    0.6.2
 */