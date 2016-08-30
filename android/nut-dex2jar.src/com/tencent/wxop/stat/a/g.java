package com.tencent.wxop.stat.a;

import android.content.Context;
import com.tencent.wxop.stat.b.l;
import com.tencent.wxop.stat.b.r;
import com.tencent.wxop.stat.w;
import com.tencent.wxop.stat.x;
import org.json.JSONObject;

public final class g extends d
{
  private static String n = null;
  public String a = null;
  private String o = null;

  public g(Context paramContext, int paramInt, w paramw)
  {
    super(paramContext, paramInt, paramw);
    this.o = x.a(paramContext).c;
    if (n == null)
      n = l.h(paramContext);
  }

  public final boolean a(JSONObject paramJSONObject)
  {
    r.a(paramJSONObject, "op", n);
    r.a(paramJSONObject, "cn", this.o);
    paramJSONObject.put("sp", this.a);
    return true;
  }

  public final e b()
  {
    return e.h;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.a.g
 * JD-Core Version:    0.6.2
 */