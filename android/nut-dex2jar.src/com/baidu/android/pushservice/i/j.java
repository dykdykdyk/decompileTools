package com.baidu.android.pushservice.i;

import org.json.JSONException;
import org.json.JSONObject;

public class j extends q
{
  public int a;

  public j()
  {
  }

  public j(q paramq)
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
    localJSONObject.put("heart", this.a);
    localJSONObject.put("err_code", this.i);
    localJSONObject.put("msg_result", this.l);
    return localJSONObject;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.j
 * JD-Core Version:    0.6.2
 */