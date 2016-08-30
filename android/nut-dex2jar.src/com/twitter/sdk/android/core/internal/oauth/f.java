package com.twitter.sdk.android.core.internal.oauth;

import android.os.Build;
import android.os.Build.VERSION;
import com.twitter.sdk.android.core.v;
import javax.net.ssl.SSLSocketFactory;
import retrofit.RestAdapter;
import retrofit.RestAdapter.Builder;

public abstract class f
{
  private final SSLSocketFactory a;
  public final v b;
  public final com.twitter.sdk.android.core.internal.f c;
  final String d;
  final RestAdapter e;

  public f(v paramv, SSLSocketFactory paramSSLSocketFactory, com.twitter.sdk.android.core.internal.f paramf)
  {
    this.b = paramv;
    this.a = paramSSLSocketFactory;
    this.c = paramf;
    this.d = ("TwitterAndroidSDK" + '/' + "1.3.1.37" + ' ' + Build.MODEL + '/' + Build.VERSION.RELEASE + " (" + Build.MANUFACTURER + ';' + Build.MODEL + ';' + Build.BRAND + ';' + Build.PRODUCT + ')');
    this.e = new RestAdapter.Builder().setEndpoint(this.c.a).setClient(new com.twitter.sdk.android.core.g(this.a)).setRequestInterceptor(new g(this)).build();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.oauth.f
 * JD-Core Version:    0.6.2
 */