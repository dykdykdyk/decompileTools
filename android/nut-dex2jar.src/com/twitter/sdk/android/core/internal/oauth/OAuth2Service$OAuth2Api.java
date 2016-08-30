package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.f;
import retrofit.http.Field;
import retrofit.http.FormUrlEncoded;
import retrofit.http.Header;
import retrofit.http.Headers;
import retrofit.http.POST;

abstract interface OAuth2Service$OAuth2Api
{
  @FormUrlEncoded
  @Headers({"Content-Type: application/x-www-form-urlencoded;charset=UTF-8"})
  @POST("/oauth2/token")
  public abstract void getAppAuthToken(@Header("Authorization") String paramString1, @Field("grant_type") String paramString2, f<OAuth2Token> paramf);

  @POST("/1.1/guest/activate.json")
  public abstract void getGuestToken(@Header("Authorization") String paramString, f<Object> paramf);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.oauth.OAuth2Service.OAuth2Api
 * JD-Core Version:    0.6.2
 */