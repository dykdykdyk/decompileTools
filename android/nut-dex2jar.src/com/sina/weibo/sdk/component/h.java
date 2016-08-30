package com.sina.weibo.sdk.component;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public final class h
{
  int a = -2;
  String b;

  public static h a(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    h localh = new h();
    try
    {
      paramString = new JSONObject(paramString);
      localh.a = paramString.optInt("code", -2);
      localh.b = paramString.optString("data", "");
      return localh;
    }
    catch (JSONException paramString)
    {
    }
    return localh;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.component.h
 * JD-Core Version:    0.6.2
 */