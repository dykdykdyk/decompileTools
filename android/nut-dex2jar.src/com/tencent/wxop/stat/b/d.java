package com.tencent.wxop.stat.b;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import com.tencent.wxop.stat.ai;
import com.tencent.wxop.stat.t;
import com.tencent.wxop.stat.x;
import org.json.JSONArray;
import org.json.JSONObject;

public final class d
{
  static e a;
  private static b d = l.c();
  private static JSONObject e = new JSONObject();
  Integer b = null;
  String c = null;

  public d(Context paramContext)
  {
    try
    {
      a(paramContext);
      this.b = l.k(paramContext.getApplicationContext());
      this.c = x.a(paramContext).c;
      return;
    }
    catch (Throwable paramContext)
    {
      d.b(paramContext);
    }
  }

  private static e a(Context paramContext)
  {
    try
    {
      if (a == null)
        a = new e(paramContext.getApplicationContext(), (byte)0);
      paramContext = a;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  public final void a(JSONObject paramJSONObject, Thread paramThread)
  {
    JSONObject localJSONObject = new JSONObject();
    while (true)
    {
      try
      {
        e locale;
        if (a != null)
        {
          locale = a;
          if (paramThread == null)
          {
            if (locale.c != null)
            {
              localJSONObject.put("sr", locale.c.widthPixels + "*" + locale.c.heightPixels);
              localJSONObject.put("dpi", locale.c.xdpi + "*" + locale.c.ydpi);
            }
            if (x.a(locale.o).a())
            {
              localObject = new JSONObject();
              r.a((JSONObject)localObject, "bs", r.c(locale.o));
              r.a((JSONObject)localObject, "ss", r.d(locale.o));
              if (((JSONObject)localObject).length() > 0)
                r.a(localJSONObject, "wf", ((JSONObject)localObject).toString());
            }
            Object localObject = r.f(locale.o);
            if ((localObject != null) && (((JSONArray)localObject).length() > 0))
              r.a(localJSONObject, "wflist", ((JSONArray)localObject).toString());
            r.a(localJSONObject, "sen", locale.p);
            r.a(localJSONObject, "pcn", l.n(locale.o));
            r.a(localJSONObject, "osn", Build.VERSION.RELEASE);
            r.a(localJSONObject, "av", locale.a);
            r.a(localJSONObject, "ch", locale.h);
            r.a(localJSONObject, "mf", locale.f);
            r.a(localJSONObject, "sv", locale.b);
            r.a(localJSONObject, "osd", Build.DISPLAY);
            r.a(localJSONObject, "prod", Build.PRODUCT);
            r.a(localJSONObject, "tags", Build.TAGS);
            r.a(localJSONObject, "id", Build.ID);
            r.a(localJSONObject, "fng", Build.FINGERPRINT);
            r.a(localJSONObject, "lch", locale.n);
            r.a(localJSONObject, "ov", Integer.toString(locale.d));
            localJSONObject.put("os", 1);
            r.a(localJSONObject, "op", locale.i);
            r.a(localJSONObject, "lg", locale.g);
            r.a(localJSONObject, "md", locale.e);
            r.a(localJSONObject, "tz", locale.j);
            if (locale.l != 0)
              localJSONObject.put("jb", locale.l);
            r.a(localJSONObject, "sd", locale.k);
            r.a(localJSONObject, "apn", locale.m);
            r.a(localJSONObject, "cpu", locale.q);
            r.a(localJSONObject, "abi", Build.CPU_ABI);
            r.a(localJSONObject, "abi2", Build.CPU_ABI2);
            r.a(localJSONObject, "ram", locale.r);
            r.a(localJSONObject, "rom", locale.s);
          }
        }
        else
        {
          r.a(localJSONObject, "cn", this.c);
          if (this.b != null)
            localJSONObject.put("tn", this.b);
          if (paramThread != null)
            break label804;
          paramJSONObject.put("ev", localJSONObject);
          if ((e == null) || (e.length() <= 0))
            break;
          paramJSONObject.put("eva", e);
          return;
        }
        r.a(localJSONObject, "thn", paramThread.getName());
        r.a(localJSONObject, "qq", t.c(locale.o));
        r.a(localJSONObject, "cui", t.d(locale.o));
        if ((l.c(locale.r)) && (locale.r.split("/").length == 2))
          r.a(localJSONObject, "fram", locale.r.split("/")[0]);
        if ((l.c(locale.s)) && (locale.s.split("/").length == 2))
          r.a(localJSONObject, "from", locale.s.split("/")[0]);
        if (ai.a(locale.o).b(locale.o) != null)
          localJSONObject.put("ui", ai.a(locale.o).b(locale.o).a);
        r.a(localJSONObject, "mid", t.e(locale.o));
        continue;
      }
      catch (Throwable paramJSONObject)
      {
        d.b(paramJSONObject);
        return;
      }
      label804: paramJSONObject.put("errkv", localJSONObject.toString());
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.b.d
 * JD-Core Version:    0.6.2
 */