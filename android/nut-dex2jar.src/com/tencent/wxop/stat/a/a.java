package com.tencent.wxop.stat.a;

import android.content.Context;
import com.tencent.wxop.stat.v;
import com.tencent.wxop.stat.w;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public final class a extends d
{
  protected b a = new b();
  private long n = -1L;

  public a(Context paramContext, int paramInt, String paramString, w paramw)
  {
    super(paramContext, paramInt, paramw);
    this.a.a = paramString;
  }

  public final b a()
  {
    return this.a;
  }

  public final boolean a(JSONObject paramJSONObject)
  {
    paramJSONObject.put("ei", this.a.a);
    if (this.n > 0L)
      paramJSONObject.put("du", this.n);
    Object localObject;
    if (this.a.b == null)
    {
      if (this.a.a != null)
      {
        localObject = v.a(this.a.a);
        if ((localObject != null) && (((Properties)localObject).size() > 0))
        {
          if ((this.a.c != null) && (this.a.c.length() != 0))
            break label130;
          this.a.c = new JSONObject((Map)localObject);
        }
      }
      paramJSONObject.put("kv", this.a.c);
    }
    while (true)
    {
      return true;
      label130: localObject = ((Properties)localObject).entrySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        try
        {
          this.a.c.put(localEntry.getKey().toString(), localEntry.getValue());
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
        }
      }
      break;
      paramJSONObject.put("ar", this.a.b);
    }
  }

  public final e b()
  {
    return e.d;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.a.a
 * JD-Core Version:    0.6.2
 */