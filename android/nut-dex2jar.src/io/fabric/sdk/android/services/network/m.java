package io.fabric.sdk.android.services.network;

import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

public final class m
{
  public static final SSLSocketFactory a(n paramn)
    throws KeyManagementException, NoSuchAlgorithmException
  {
    SSLContext localSSLContext = SSLContext.getInstance("TLS");
    localSSLContext.init(null, new TrustManager[] { new o(new p(paramn.a(), paramn.b()), paramn) }, null);
    return localSSLContext.getSocketFactory();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.network.m
 * JD-Core Version:    0.6.2
 */