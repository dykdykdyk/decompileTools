package com.tencent.wxop.stat;

import com.tencent.wxop.stat.b.b;
import com.tencent.wxop.stat.b.l;
import java.util.TimerTask;

final class h extends TimerTask
{
  h(g paramg)
  {
  }

  public final void run()
  {
    if (t.b())
      l.c().a("TimerTask run");
    v.d(g.a(this.a));
    cancel();
    this.a.a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.h
 * JD-Core Version:    0.6.2
 */