package com.baidu.android.pushservice.i;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class b extends q
{
  public String a = "";
  public int b = -1;
  public int c = -1;
  public String d = "";
  public String e = "";

  public b()
  {
  }

  public b(q paramq)
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
      localJSONObject.put("request_id", this.d);
    if (this.e != null)
      localJSONObject.put("msg_open_by", this.e);
    return localJSONObject;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.b
 * JD-Core Version:    0.6.2
 */