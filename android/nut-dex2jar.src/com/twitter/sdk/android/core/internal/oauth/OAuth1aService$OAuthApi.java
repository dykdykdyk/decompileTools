package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.f;
import retrofit.client.Response;
import retrofit.http.Header;
import retrofit.http.POST;
import retrofit.http.Query;

public abstract interface OAuth1aService$OAuthApi
{
  @POST("/oauth/access_token")
  public abstract void getAccessToken(@Header("Authorization") String paramString1, @Query("oauth_verifier") String paramString2, f<Response> paramf);

  @POST("/oauth/request_token")
  public abstract void getTempToken(@Header("Authorization") String paramString, f<Response> paramf);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.oauth.OAuth1aService.OAuthApi
 * JD-Core Version:    0.6.2
 */