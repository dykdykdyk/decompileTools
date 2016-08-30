package com.tencent.wxop.stat;

import org.json.JSONException;
import org.json.JSONObject;

public final class s
{
  long a = 0L;
  int b = 0;
  String c = "";
  int d = 0;
  String e = "";

  public final JSONObject a()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("tm", this.a);
      localJSONObject.put("st", this.b);
      if (this.c != null)
        localJSONObject.put("dm", this.c);
      localJSONObject.put("pt", this.d);
      if (this.e != null)
        localJSONObject.put("rip", this.e);
      localJSONObject.put("ts", System.currentTimeMillis() / 1000L);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
    }
    return localJSONObject;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.s
 * JD-Core Version:    0.6.2
 */