package com.tencent.wxop.stat.b;

import org.json.JSONException;
import org.json.JSONObject;

public final class c
{
  public String a = null;
  public String b = null;
  public int c;
  private String d = null;
  private String e = "0";
  private int f = 0;
  private long g = 0L;

  public c()
  {
  }

  public c(String paramString1, String paramString2, int paramInt)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramInt;
  }

  private JSONObject a()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      r.a(localJSONObject, "ui", this.a);
      r.a(localJSONObject, "mc", this.b);
      r.a(localJSONObject, "mid", this.e);
      r.a(localJSONObject, "aid", this.d);
      localJSONObject.put("ts", this.g);
      localJSONObject.put("ver", this.f);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
    }
    return localJSONObject;
  }

  public final String toString()
  {
    return a().toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.b.c
 * JD-Core Version:    0.6.2
 */