package com.twitter.sdk.android.core.internal.scribe;

import com.google.gson.annotations.SerializedName;

public final class m extends g
{

  @SerializedName("external_ids")
  public final n a;

  @SerializedName("device_id_created_at")
  public final long b;

  @SerializedName("language")
  public final String c;

  public m(c paramc, long paramLong, String paramString1, String paramString2)
  {
    super("syndicated_sdk_impression", paramc, paramLong);
    this.c = paramString1;
    this.a = new n(this, paramString2);
    this.b = 0L;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.scribe.m
 * JD-Core Version:    0.6.2
 */