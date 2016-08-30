package com.twitter.sdk.android.core.internal.oauth;

import retrofit.RequestInterceptor;
import retrofit.RequestInterceptor.RequestFacade;

final class g
  implements RequestInterceptor
{
  g(f paramf)
  {
  }

  public final void intercept(RequestInterceptor.RequestFacade paramRequestFacade)
  {
    paramRequestFacade.addHeader("User-Agent", this.a.d);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.oauth.g
 * JD-Core Version:    0.6.2
 */