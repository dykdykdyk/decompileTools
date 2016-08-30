package com.tencent.wxop.stat.a;

import android.content.Context;
import com.tencent.wxop.stat.b.c;
import com.tencent.wxop.stat.b.l;
import com.tencent.wxop.stat.w;
import org.json.JSONObject;

public final class h extends d
{
  private com.tencent.wxop.stat.b.d a;
  private JSONObject n = null;

  public h(Context paramContext, int paramInt, JSONObject paramJSONObject, w paramw)
  {
    super(paramContext, paramInt, paramw);
    this.a = new com.tencent.wxop.stat.b.d(paramContext);
    this.n = paramJSONObject;
  }

  public final boolean a(JSONObject paramJSONObject)
  {
    if (this.e != null)
      paramJSONObject.put("ut", this.e.c);
    if (this.n != null)
      paramJSONObject.put("cfg", this.n);
    if (l.u(this.l))
      paramJSONObject.put("ncts", 1);
    this.a.a(paramJSONObject, null);
    return true;
  }

  public final e b()
  {
    return e.b;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.a.h
 * JD-Core Version:    0.6.2
 */