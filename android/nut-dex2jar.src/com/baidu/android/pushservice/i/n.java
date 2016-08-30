package com.baidu.android.pushservice.i;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class n extends q
{
  public String a = "";
  public int b = -1;
  public int c = -1;
  public String d;

  public n()
  {
  }

  public n(q paramq)
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
    if (this.c != -1)
      localJSONObject.put("msg_type", this.c);
    if (!TextUtils.isEmpty(this.a))
      localJSONObject.put("msg_id", this.a);
    if (this.b > 0)
      localJSONObject.put("msg_len", this.b);
    if (this.d != null)
      localJSONObject.put("msg_open_by", this.d);
    localJSONObject.put("err_code", this.i);
    return localJSONObject;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.n
 * JD-Core Version:    0.6.2
 */