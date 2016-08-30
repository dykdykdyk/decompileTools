package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.f;
import com.twitter.sdk.android.core.services.a.a;
import retrofit.http.EncodedQuery;
import retrofit.http.GET;
import retrofit.http.Query;

public abstract interface SearchService
{
  @GET("/1.1/search/tweets.json")
  public abstract void tweets(@Query("q") String paramString1, @EncodedQuery("geocode") a parama, @Query("lang") String paramString2, @Query("locale") String paramString3, @Query("result_type") String paramString4, @Query("count") Integer paramInteger, @Query("until") String paramString5, @Query("since_id") Long paramLong1, @Query("max_id") Long paramLong2, @Query("include_entities") Boolean paramBoolean, f<Object> paramf);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.services.SearchService
 * JD-Core Version:    0.6.2
 */