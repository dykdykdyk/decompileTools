package com.twitter.sdk.android.core;

import retrofit.Callback;
import retrofit.RetrofitError;
import retrofit.client.Response;

public abstract class f<T>
  implements Callback<T>
{
  public abstract void a(TwitterException paramTwitterException);

  public abstract void a(p<T> paramp);

  public final void failure(RetrofitError paramRetrofitError)
  {
    a(TwitterApiException.a(paramRetrofitError));
  }

  public final void success(T paramT, Response paramResponse)
  {
    a(new p(paramT, paramResponse));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.f
 * JD-Core Version:    0.6.2
 */