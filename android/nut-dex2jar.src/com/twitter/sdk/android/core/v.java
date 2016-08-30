package com.twitter.sdk.android.core;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.o;
import io.fabric.sdk.android.services.d.d;
import io.fabric.sdk.android.services.network.m;
import java.util.concurrent.ConcurrentHashMap;
import javax.net.ssl.SSLSocketFactory;

public class v extends o<Boolean>
{
  public r<y> a;
  r<a> b;
  com.twitter.sdk.android.core.internal.a<y> c;
  public final TwitterAuthConfig d;
  private final ConcurrentHashMap<q, s> e;
  private volatile SSLSocketFactory f;

  public v(TwitterAuthConfig paramTwitterAuthConfig)
  {
    this.d = paramTwitterAuthConfig;
    this.e = new ConcurrentHashMap();
  }

  public static v e()
  {
    g();
    return (v)f.a(v.class);
  }

  public static void g()
  {
    if (f.a(v.class) == null)
      throw new IllegalStateException("Must start Twitter Kit with Fabric.with() first");
  }

  private void h()
  {
    try
    {
      SSLSocketFactory localSSLSocketFactory = this.f;
      if (localSSLSocketFactory == null);
      try
      {
        this.f = m.a(new w(this.q));
        f.b().a("Twitter", "Custom SSL pinning enabled");
        return;
      }
      catch (Exception localException)
      {
        while (true)
          f.b().c("Twitter", "Exception setting up custom SSL pinning", localException);
      }
    }
    finally
    {
    }
  }

  public final String a()
  {
    return "1.3.1.37";
  }

  public final String b()
  {
    return "com.twitter.sdk.android:twitter-core";
  }

  protected final boolean c_()
  {
    this.a = new j(new d(this), new z(), "active_twittersession", "twittersession");
    this.c = new com.twitter.sdk.android.core.internal.a(this.a, this.o.c);
    this.b = new j(new d(this), new b(), "active_appsession", "appsession");
    return true;
  }

  public final SSLSocketFactory f()
  {
    g();
    if (this.f == null)
      h();
    return this.f;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.v
 * JD-Core Version:    0.6.2
 */