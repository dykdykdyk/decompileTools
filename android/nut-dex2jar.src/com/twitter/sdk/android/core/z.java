package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.google.gson.Gson;
import io.fabric.sdk.android.r;

final class z
  implements io.fabric.sdk.android.services.d.f<y>
{
  private final Gson a = new Gson();

  private String a(y paramy)
  {
    if ((paramy != null) && (paramy.a != null))
      try
      {
        paramy = this.a.toJson(paramy);
        return paramy;
      }
      catch (Exception paramy)
      {
        io.fabric.sdk.android.f.b().a("Twitter", paramy.getMessage());
      }
    return "";
  }

  private y b(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
      try
      {
        paramString = (y)this.a.fromJson(paramString, y.class);
        return paramString;
      }
      catch (Exception paramString)
      {
        io.fabric.sdk.android.f.b().a("Twitter", paramString.getMessage());
      }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.z
 * JD-Core Version:    0.6.2
 */