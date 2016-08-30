package com.sina.weibo.sdk.c;

import android.text.TextUtils;
import com.sina.weibo.sdk.d.i;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

final class b
{
  static JSONObject a(f paramf)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      switch (a()[paramf.a().ordinal()])
      {
      case 1:
        localJSONObject.put("type", 0);
        localJSONObject.put("time", paramf.c() / 1000L);
        return localJSONObject;
      case 2:
      case 3:
      case 4:
      case 5:
      }
    }
    catch (Exception paramf)
    {
      i.c("WBAgent", "get page log error." + paramf);
      return localJSONObject;
    }
    localJSONObject.put("type", 1);
    localJSONObject.put("time", paramf.f / 1000L);
    localJSONObject.put("duration", paramf.g / 1000L);
    return localJSONObject;
    localJSONObject.put("type", 2);
    localJSONObject.put("page_id", paramf.b());
    localJSONObject.put("time", paramf.c() / 1000L);
    localJSONObject.put("duration", paramf.g / 1000L);
    return localJSONObject;
    localJSONObject.put("type", 3);
    localJSONObject.put("page_id", paramf.b());
    localJSONObject.put("time", paramf.c() / 1000L);
    a(localJSONObject, (a)paramf);
    return localJSONObject;
    localJSONObject.put("type", 4);
    localJSONObject.put("page_id", paramf.b());
    localJSONObject.put("time", paramf.c() / 1000L);
    localJSONObject.put("duration", paramf.g / 1000L);
    return localJSONObject;
    return localJSONObject;
  }

  private static JSONObject a(JSONObject paramJSONObject, a parama)
  {
    try
    {
      paramJSONObject.put("event_id", parama.a);
      if (parama.b != null)
      {
        parama = parama.b;
        StringBuilder localStringBuilder = new StringBuilder();
        Iterator localIterator = parama.keySet().iterator();
        int i = 0;
        while (true)
        {
          if (!localIterator.hasNext());
          String str;
          do
          {
            paramJSONObject.put("extend", localStringBuilder.toString());
            return paramJSONObject;
            str = (String)localIterator.next();
          }
          while (i >= 10);
          if (!TextUtils.isEmpty((CharSequence)parama.get(str)))
          {
            if (localStringBuilder.length() > 0)
              localStringBuilder.append("|");
            localStringBuilder.append(str).append(":").append((String)parama.get(str));
            i += 1;
          }
        }
      }
    }
    catch (Exception parama)
    {
      i.c("WBAgent", "add event log error." + parama);
    }
    return paramJSONObject;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.c.b
 * JD-Core Version:    0.6.2
 */