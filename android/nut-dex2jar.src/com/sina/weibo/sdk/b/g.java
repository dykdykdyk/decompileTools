package com.sina.weibo.sdk.b;

import org.json.JSONObject;

class g
{
  String e;
  String f;
  long g;

  public g()
  {
  }

  public g(JSONObject paramJSONObject)
  {
    a(paramJSONObject);
  }

  protected void a(JSONObject paramJSONObject)
  {
    this.e = paramJSONObject.optString("notification_text");
    this.f = paramJSONObject.optString("notification_title");
    this.g = paramJSONObject.optLong("notification_delay");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.b.g
 * JD-Core Version:    0.6.2
 */