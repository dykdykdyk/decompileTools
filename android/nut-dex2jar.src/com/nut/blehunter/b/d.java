package com.nut.blehunter.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.nut.blehunter.e;

public final class d
{
  public static a a(Context paramContext, String paramString)
  {
    paramContext = paramContext.getSharedPreferences("nut_disconnect_address", 0).getString(paramString, "");
    if (TextUtils.isEmpty(paramContext))
      return null;
    return (a)e.a().fromJson(paramContext, a.class);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.b.d
 * JD-Core Version:    0.6.2
 */