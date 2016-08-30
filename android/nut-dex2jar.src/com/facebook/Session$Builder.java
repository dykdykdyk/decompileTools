package com.facebook;

import android.content.Context;

public final class Session$Builder
{
  private String applicationId;
  private final Context context;
  private TokenCachingStrategy tokenCachingStrategy;

  public Session$Builder(Context paramContext)
  {
    this.context = paramContext;
  }

  public final Session build()
  {
    return new Session(this.context, this.applicationId, this.tokenCachingStrategy);
  }

  public final Builder setApplicationId(String paramString)
  {
    this.applicationId = paramString;
    return this;
  }

  public final Builder setTokenCachingStrategy(TokenCachingStrategy paramTokenCachingStrategy)
  {
    this.tokenCachingStrategy = paramTokenCachingStrategy;
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.Session.Builder
 * JD-Core Version:    0.6.2
 */