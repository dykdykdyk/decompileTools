package com.tencent.wxop.stat.a;

import android.content.Context;
import com.tencent.a.a.a.a.h;
import com.tencent.wxop.stat.ai;
import com.tencent.wxop.stat.b.c;
import com.tencent.wxop.stat.b.l;
import com.tencent.wxop.stat.b.r;
import com.tencent.wxop.stat.t;
import com.tencent.wxop.stat.w;
import org.json.JSONObject;

public abstract class d
{
  protected static String j = null;
  protected String b = null;
  protected long c;
  protected int d;
  protected c e = null;
  protected int f;
  protected String g = null;
  protected String h = null;
  protected String i = null;
  protected boolean k = false;
  protected Context l;
  public w m = null;

  d(Context paramContext, int paramInt, w paramw)
  {
    this.l = paramContext;
    this.c = (System.currentTimeMillis() / 1000L);
    this.d = paramInt;
    this.h = t.b(paramContext);
    this.i = l.i(paramContext);
    this.b = t.a(paramContext);
    if (paramw != null)
    {
      this.m = paramw;
      if (l.c(paramw.a))
        this.b = paramw.a;
      if (l.c(paramw.b))
        this.h = paramw.b;
      if (l.c(paramw.c))
        this.i = paramw.c;
      this.k = paramw.e;
    }
    this.g = t.d(paramContext);
    this.e = ai.a(paramContext).b(paramContext);
    if (b() != e.i);
    for (this.f = l.p(paramContext).intValue(); ; this.f = (-e.i.j))
    {
      if (!h.b(j))
      {
        paramContext = t.e(paramContext);
        j = paramContext;
        if (!l.c(paramContext))
          j = "0";
      }
      return;
    }
  }

  private boolean b(JSONObject paramJSONObject)
  {
    try
    {
      r.a(paramJSONObject, "ky", this.b);
      paramJSONObject.put("et", b().j);
      if (this.e != null)
      {
        paramJSONObject.put("ui", this.e.a);
        r.a(paramJSONObject, "mc", this.e.b);
        int n = this.e.c;
        paramJSONObject.put("ut", n);
        if ((n == 0) && (l.s(this.l) == 1))
          paramJSONObject.put("ia", 1);
      }
      r.a(paramJSONObject, "cui", this.g);
      if (b() != e.b)
      {
        r.a(paramJSONObject, "av", this.i);
        r.a(paramJSONObject, "ch", this.h);
      }
      if (this.k)
        paramJSONObject.put("impt", 1);
      r.a(paramJSONObject, "mid", j);
      paramJSONObject.put("idx", this.f);
      paramJSONObject.put("si", this.d);
      paramJSONObject.put("ts", this.c);
      paramJSONObject.put("dts", l.a(this.l, false));
      boolean bool = a(paramJSONObject);
      return bool;
    }
    catch (Throwable paramJSONObject)
    {
    }
    return false;
  }

  public abstract boolean a(JSONObject paramJSONObject);

  public abstract e b();

  public final long c()
  {
    return this.c;
  }

  public final Context d()
  {
    return this.l;
  }

  public final boolean e()
  {
    return this.k;
  }

  public final String f()
  {
    try
    {
      Object localObject = new JSONObject();
      b((JSONObject)localObject);
      localObject = ((JSONObject)localObject).toString();
      return localObject;
    }
    catch (Throwable localThrowable)
    {
    }
    return "";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.a.d
 * JD-Core Version:    0.6.2
 */