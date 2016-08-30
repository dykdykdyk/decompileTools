package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.b.b;
import com.tencent.wxop.stat.b.l;
import java.util.Timer;

public class g
{
  private static volatile g b = null;
  private Timer a = null;
  private Context c = null;

  private g(Context paramContext)
  {
    this.c = paramContext.getApplicationContext();
    this.a = new Timer(false);
  }

  public static g a(Context paramContext)
  {
    if (b == null);
    try
    {
      if (b == null)
        b = new g(paramContext);
      return b;
    }
    finally
    {
    }
    throw paramContext;
  }

  public final void a()
  {
    if (t.a() == u.f)
    {
      long l = t.k() * 60 * 1000;
      if (t.b())
        l.c().a("setupPeriodTimer delay:" + l);
      h localh = new h(this);
      if (this.a == null)
        break label103;
      if (t.b())
        l.c().a("setupPeriodTimer schedule delay:" + l);
      this.a.schedule(localh, l);
    }
    label103: 
    while (!t.b())
      return;
    l.c().c("setupPeriodTimer schedule timer == null");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.g
 * JD-Core Version:    0.6.2
 */