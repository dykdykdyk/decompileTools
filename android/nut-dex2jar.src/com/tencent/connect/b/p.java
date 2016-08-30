package com.tencent.connect.b;

import android.os.SystemClock;
import com.tencent.open.b.g;
import com.tencent.tauth.b;
import com.tencent.tauth.d;
import org.json.JSONObject;

final class p
  implements b
{
  String a;
  String b;
  private String d;
  private b e;

  public p(j paramj, String paramString1, String paramString2, String paramString3, b paramb)
  {
    this.d = paramString1;
    this.a = paramString2;
    this.b = paramString3;
    this.e = paramb;
  }

  public final void a()
  {
    if (this.e != null)
    {
      this.e.a();
      this.e = null;
    }
  }

  public final void a(d paramd)
  {
    if (paramd.b != null);
    for (String str = paramd.b + this.a; ; str = this.a)
    {
      g.a().a(this.d + "_H5", SystemClock.elapsedRealtime(), 0L, 0L, paramd.a, str);
      j.a(this.c, str);
      if (this.e != null)
      {
        this.e.a(paramd);
        this.e = null;
      }
      return;
    }
  }

  public final void a(Object paramObject)
  {
    paramObject = (JSONObject)paramObject;
    g.a().a(this.d + "_H5", SystemClock.elapsedRealtime(), 0L, 0L, paramObject.optInt("ret", -6), this.a);
    if (this.e != null)
    {
      this.e.a(paramObject);
      this.e = null;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.b.p
 * JD-Core Version:    0.6.2
 */