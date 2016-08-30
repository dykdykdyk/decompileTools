package com.baidu.android.pushservice.g;

import java.util.HashMap;
import org.json.JSONObject;

class d$4
  implements e
{
  d$4(d paramd, a parama, String paramString)
  {
  }

  public void a(int paramInt, HashMap<String, String> paramHashMap)
  {
    if (this.a != null);
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("type", "subscribe_service");
      localJSONObject.put("error", paramInt);
      localJSONObject.put("api_key", this.b);
      String str2;
      String str1;
      if (paramInt != 0)
      {
        if (paramHashMap != null)
        {
          str2 = (String)paramHashMap.get("error_msg");
          str1 = str2;
        }
      }
      else
        try
        {
          localJSONObject.put("error_msg", str2);
          for (str1 = str2; ; str1 = str2)
          {
            str2 = localJSONObject.toString();
            paramHashMap = str2;
            this.a.e(paramInt, paramHashMap);
            return;
            if (paramHashMap == null)
              break;
            str2 = (String)paramHashMap.get("details");
            str1 = str2;
            localJSONObject.put("tag", str2);
          }
        }
        catch (Exception localException2)
        {
          while (true)
          {
            this.a.e(paramInt, paramHashMap.toString());
            paramHashMap = str1;
          }
        }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        Object localObject1 = null;
        continue;
        Object localObject2 = null;
        continue;
        localObject2 = null;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.g.d.4
 * JD-Core Version:    0.6.2
 */