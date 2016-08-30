package com.nut.blehunter.a;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import b.a.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public final class e
{
  long a = System.currentTimeMillis();
  String b;
  String c;
  public Map<String, String> d = new HashMap();

  public e(c paramc, String paramString1, String paramString2)
  {
    this.b = paramString1;
    this.c = paramString2;
  }

  public final void a()
  {
    JSONObject localJSONObject = new JSONObject();
    Object localObject1 = new JSONObject();
    Object localObject2;
    Object localObject3;
    while (true)
    {
      try
      {
        ((JSONObject)localObject1).put("DATE", this.a);
        ((JSONObject)localObject1).put("EVENT", this.b);
        if (!TextUtils.isEmpty(this.c))
        {
          ((JSONObject)localObject1).put("SUB_EVENT", this.c);
          if (this.d.isEmpty())
            break label278;
          localObject2 = new JSONObject();
          localObject3 = this.d.keySet().iterator();
          if (!((Iterator)localObject3).hasNext())
            break;
          String str1 = (String)((Iterator)localObject3).next();
          String str2 = (String)this.d.get(str1);
          if (TextUtils.isEmpty(str2))
            continue;
          ((JSONObject)localObject2).put(str1, str2);
          continue;
        }
      }
      catch (JSONException localJSONException)
      {
        a.b(localJSONException, "record exception", new Object[0]);
        return;
      }
      ((JSONObject)localObject1).put("SUB_EVENT", JSONObject.NULL);
    }
    ((JSONObject)localObject1).put("DATA", localObject2);
    while (true)
    {
      localJSONException.put("NUT_LOG", localObject1);
      localObject2 = this.e;
      localObject1 = localJSONException.toString();
      if (((c)localObject2).a != null)
      {
        localObject2 = ((c)localObject2).a.obtainMessage();
        ((Message)localObject2).what = 1;
        localObject3 = new Bundle();
        ((Bundle)localObject3).putString("data", (String)localObject1);
        ((Message)localObject2).setData((Bundle)localObject3);
        ((Message)localObject2).sendToTarget();
      }
      a.a("recode=" + localJSONException.toString(), new Object[0]);
      return;
      label278: ((JSONObject)localObject1).put("DATA", JSONObject.NULL);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.a.e
 * JD-Core Version:    0.6.2
 */