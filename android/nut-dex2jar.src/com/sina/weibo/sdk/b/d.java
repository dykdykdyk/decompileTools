package com.sina.weibo.sdk.b;

import org.json.JSONObject;

final class d extends g
{
  String a;
  String b;
  String c;

  public d()
  {
  }

  public d(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
  }

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    this.a = paramJSONObject.optString("package");
    this.b = paramJSONObject.optString("scheme");
    this.c = paramJSONObject.optString("url");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.b.d
 * JD-Core Version:    0.6.2
 */