package com.baidu.android.pushservice.i;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class c extends q
{
  public String a;
  public String b;
  public String c;

  public c()
  {
  }

  public c(q paramq)
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
    localJSONObject.put("msg_result", this.a);
    localJSONObject.put("request_id", this.b);
    localJSONObject.put("err_code", this.i);
    if (!TextUtils.isEmpty(this.c))
      localJSONObject.put("channel", this.c);
    return localJSONObject;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.c
 * JD-Core Version:    0.6.2
 */