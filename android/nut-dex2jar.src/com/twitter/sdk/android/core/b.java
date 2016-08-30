package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Token;
import io.fabric.sdk.android.r;

final class b
  implements io.fabric.sdk.android.services.d.f<a>
{
  private final Gson a = new GsonBuilder().registerTypeAdapter(OAuth2Token.class, new d()).create();

  private String a(a parama)
  {
    if ((parama != null) && (parama.a != null))
      try
      {
        parama = this.a.toJson(parama);
        return parama;
      }
      catch (Exception parama)
      {
        io.fabric.sdk.android.f.b().a("Twitter", "Failed to serialize session " + parama.getMessage());
      }
    return "";
  }

  private a b(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
      try
      {
        paramString = (a)this.a.fromJson(paramString, a.class);
        return paramString;
      }
      catch (Exception paramString)
      {
        io.fabric.sdk.android.f.b().a("Twitter", "Failed to deserialize session " + paramString.getMessage());
      }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.b
 * JD-Core Version:    0.6.2
 */