package com.amap.api.services.core;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;

class cm
  implements HostnameVerifier
{
  cm(cg paramcg)
  {
  }

  public boolean verify(String paramString, SSLSession paramSSLSession)
  {
    return HttpsURLConnection.getDefaultHostnameVerifier().verify("*.amap.com", paramSSLSession);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.cm
 * JD-Core Version:    0.6.2
 */