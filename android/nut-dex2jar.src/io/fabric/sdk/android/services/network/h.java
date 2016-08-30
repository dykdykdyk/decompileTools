package io.fabric.sdk.android.services.network;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;

public abstract interface h
{
  public static final h a = new i();

  public abstract HttpURLConnection a(URL paramURL)
    throws IOException;

  public abstract HttpURLConnection a(URL paramURL, Proxy paramProxy)
    throws IOException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.network.h
 * JD-Core Version:    0.6.2
 */