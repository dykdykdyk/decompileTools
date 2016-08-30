package com.twitter.sdk.android.core.identity;

import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.q;
import com.twitter.sdk.android.core.y;

public final class p extends com.twitter.sdk.android.core.f<y>
{
  private final com.twitter.sdk.android.core.r<y> a;
  private final com.twitter.sdk.android.core.f<y> b;

  public p(com.twitter.sdk.android.core.r<y> paramr, com.twitter.sdk.android.core.f<y> paramf)
  {
    this.a = paramr;
    this.b = paramf;
  }

  public final void a(TwitterException paramTwitterException)
  {
    io.fabric.sdk.android.f.b().c("Twitter", "Authorization completed with an error", paramTwitterException);
    this.b.a(paramTwitterException);
  }

  public final void a(com.twitter.sdk.android.core.p<y> paramp)
  {
    io.fabric.sdk.android.f.b().a("Twitter", "Authorization completed successfully");
    this.a.a((q)paramp.a);
    this.b.a(paramp);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.identity.p
 * JD-Core Version:    0.6.2
 */