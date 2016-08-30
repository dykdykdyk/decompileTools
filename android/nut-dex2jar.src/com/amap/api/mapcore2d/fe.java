package com.amap.api.mapcore2d;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;

class fe
  implements HostnameVerifier
{
  fe(ey paramey)
  {
  }

  public boolean verify(String paramString, SSLSession paramSSLSession)
  {
    return HttpsURLConnection.getDefaultHostnameVerifier().verify("*.amap.com", paramSSLSession);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.fe
 * JD-Core Version:    0.6.2
 */