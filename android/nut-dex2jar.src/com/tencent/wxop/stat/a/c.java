package com.tencent.wxop.stat.a;

import android.content.Context;
import com.tencent.wxop.stat.b.r;
import com.tencent.wxop.stat.w;
import java.io.PrintWriter;
import java.io.StringWriter;
import org.json.JSONObject;

public final class c extends d
{
  private String a;
  private int n;
  private int o = 100;
  private Thread p = null;

  public c(Context paramContext, int paramInt, Throwable paramThrowable, w paramw)
  {
    super(paramContext, paramInt, paramw);
    a(99, paramThrowable);
  }

  public c(Context paramContext, int paramInt, Throwable paramThrowable, Thread paramThread)
  {
    super(paramContext, paramInt, null);
    a(2, paramThrowable);
    this.p = paramThread;
  }

  private void a(int paramInt, Throwable paramThrowable)
  {
    if (paramThrowable != null)
    {
      StringWriter localStringWriter = new StringWriter();
      PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
      paramThrowable.printStackTrace(localPrintWriter);
      this.a = localStringWriter.toString();
      this.n = paramInt;
      localPrintWriter.close();
    }
  }

  public final boolean a(JSONObject paramJSONObject)
  {
    r.a(paramJSONObject, "er", this.a);
    paramJSONObject.put("ea", this.n);
    if ((this.n == 2) || (this.n == 3))
      new com.tencent.wxop.stat.b.d(this.l).a(paramJSONObject, this.p);
    return true;
  }

  public final e b()
  {
    return e.c;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.a.c
 * JD-Core Version:    0.6.2
 */