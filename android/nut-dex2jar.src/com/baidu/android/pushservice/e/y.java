package com.baidu.android.pushservice.e;

import android.content.Context;
import com.baidu.android.pushservice.h.a;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class y extends d
{
  protected String f = null;

  public y(l paraml, Context paramContext, String paramString)
  {
    super(paraml, paramContext);
    this.f = paramString;
  }

  protected void a(HashMap<String, String> paramHashMap)
  {
    super.a(paramHashMap);
    paramHashMap.put("method", "sendmsgtoserver");
    if (this.f != null);
    try
    {
      JSONObject localJSONObject = new JSONObject(this.f);
      if (localJSONObject.has("to"))
      {
        paramHashMap.put("cb_url", localJSONObject.getString("to"));
        a.c("Send", localJSONObject.getString("to"));
      }
      if (localJSONObject.has("data"))
        paramHashMap.put("cb_data", localJSONObject.getString("data"));
      a.c("Send", "send param -- " + b.a(paramHashMap));
      return;
    }
    catch (JSONException localJSONException)
    {
      while (true)
        a.e("Send", "error " + localJSONException.getMessage());
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.y
 * JD-Core Version:    0.6.2
 */