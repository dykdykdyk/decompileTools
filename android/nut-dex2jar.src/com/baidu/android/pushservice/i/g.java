package com.baidu.android.pushservice.i;

import org.json.JSONException;
import org.json.JSONObject;

public class g extends q
{
  public String a;

  public g()
  {
  }

  public g(q paramq)
  {
    super(paramq);
  }

  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("action_name", this.f);
    localJSONObject.put("timestamp", this.g);
    localJSONObject.put("network_status", this.h);
    localJSONObject.put("crash_stack", this.a);
    return localJSONObject;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.g
 * JD-Core Version:    0.6.2
 */