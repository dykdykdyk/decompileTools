package com.twitter.sdk.android.core.internal.scribe;

import android.text.TextUtils;
import io.fabric.sdk.android.services.b.x;
import retrofit.RequestInterceptor;
import retrofit.RequestInterceptor.RequestFacade;

final class k
  implements RequestInterceptor
{
  private final f a;
  private final x b;

  k(f paramf, x paramx)
  {
    this.a = paramf;
    this.b = paramx;
  }

  public final void intercept(RequestInterceptor.RequestFacade paramRequestFacade)
  {
    if (!TextUtils.isEmpty(this.a.f))
      paramRequestFacade.addHeader("User-Agent", this.a.f);
    if (!TextUtils.isEmpty(this.b.c()))
      paramRequestFacade.addHeader("X-Client-UUID", this.b.c());
    paramRequestFacade.addHeader("X-Twitter-Polling", "true");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.scribe.k
 * JD-Core Version:    0.6.2
 */