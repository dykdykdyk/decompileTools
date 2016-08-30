package com.twitter.sdk.android.core;

import java.io.IOException;
import java.net.HttpURLConnection;
import retrofit.client.OkClient;
import retrofit.client.Request;

final class h extends OkClient
{
  h(g paramg)
  {
  }

  protected final HttpURLConnection openConnection(Request paramRequest)
    throws IOException
  {
    return this.a.a(super.openConnection(paramRequest));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.h
 * JD-Core Version:    0.6.2
 */