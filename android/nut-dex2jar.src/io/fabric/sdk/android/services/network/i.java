package io.fabric.sdk.android.services.network;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;

final class i
  implements h
{
  public final HttpURLConnection a(URL paramURL)
    throws IOException
  {
    return (HttpURLConnection)paramURL.openConnection();
  }

  public final HttpURLConnection a(URL paramURL, Proxy paramProxy)
    throws IOException
  {
    return (HttpURLConnection)paramURL.openConnection(paramProxy);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.network.i
 * JD-Core Version:    0.6.2
 */