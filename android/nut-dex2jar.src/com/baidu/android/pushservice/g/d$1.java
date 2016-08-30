package com.baidu.android.pushservice.g;

import android.text.TextUtils;
import com.baidu.android.pushservice.util.m;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

class d$1
  implements e
{
  d$1(d paramd, a parama, String paramString)
  {
  }

  public void a(int paramInt, HashMap<String, String> paramHashMap)
  {
    Object localObject;
    String str;
    if (paramHashMap != null)
    {
      localObject = (String)paramHashMap.get("channel_id");
      str = (String)paramHashMap.get("user_id");
      if (this.a != null)
      {
        str = m.c(d.a(this.c), (String)localObject, str);
        localObject = new JSONObject();
        if ((paramInt != 0) || (TextUtils.isEmpty(str)))
          break label129;
      }
    }
    try
    {
      ((JSONObject)localObject).put("type", "bind_light");
      ((JSONObject)localObject).put("error", paramInt);
      ((JSONObject)localObject).put("pushToken", str);
      ((JSONObject)localObject).put("api_key", this.b);
      paramHashMap = ((JSONObject)localObject).toString();
      this.a.a(paramInt, paramHashMap);
      return;
    }
    catch (JSONException paramHashMap)
    {
      while (true)
        paramHashMap.printStackTrace();
    }
    try
    {
      label129: ((JSONObject)localObject).put("error", paramInt);
      ((JSONObject)localObject).put("api_key", this.b);
      ((JSONObject)localObject).put("error_msg", paramHashMap.get("error_msg"));
      this.a.a(paramInt, ((JSONObject)localObject).toString());
      return;
    }
    catch (JSONException paramHashMap)
    {
      while (true)
        paramHashMap.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.g.d.1
 * JD-Core Version:    0.6.2
 */