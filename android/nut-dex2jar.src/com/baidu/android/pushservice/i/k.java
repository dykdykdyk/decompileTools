package com.baidu.android.pushservice.i;

import org.json.JSONException;
import org.json.JSONObject;

public class k
{
  public int a = 0;
  public int b = 0;
  public int c = 0;
  public int d = 0;
  public long e = 0L;

  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (this.a >= 0)
      localJSONObject.put("pushad_switch", this.a);
    if (this.b >= 0)
      localJSONObject.put("pushad_maxcount", this.b);
    if (this.c >= 0)
      localJSONObject.put("pushad_servermaxcount", this.c);
    if (this.d >= 0)
      localJSONObject.put("pushad_curcount", this.b);
    if (this.e > -1L)
      localJSONObject.put("pushad_curtimestamp", this.e);
    return localJSONObject;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.k
 * JD-Core Version:    0.6.2
 */