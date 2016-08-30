package com.tencent.wxop.stat.a;

import android.content.Context;
import com.tencent.wxop.stat.b.r;
import com.tencent.wxop.stat.t;
import com.tencent.wxop.stat.w;
import org.json.JSONObject;

public final class f extends d
{
  public static final w a;

  static
  {
    w localw = new w();
    a = localw;
    localw.a = "A9VH9B8L4GX4";
  }

  public f(Context paramContext)
  {
    super(paramContext, 0, a);
  }

  public final boolean a(JSONObject paramJSONObject)
  {
    r.a(paramJSONObject, "actky", t.a(this.l));
    return true;
  }

  public final e b()
  {
    return e.i;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.a.f
 * JD-Core Version:    0.6.2
 */