package com.twitter.sdk.android.core.identity;

import retrofit.http.GET;
import retrofit.http.Query;

abstract interface ShareEmailClient$EmailService
{
  @GET("/1.1/account/verify_credentials.json?include_email=true")
  public abstract void verifyCredentials(@Query("include_entities") Boolean paramBoolean1, @Query("skip_status") Boolean paramBoolean2, com.twitter.sdk.android.core.f<com.twitter.sdk.android.core.a.f> paramf);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.identity.ShareEmailClient.EmailService
 * JD-Core Version:    0.6.2
 */