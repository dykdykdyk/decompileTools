package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.a.d;
import com.tencent.wxop.stat.a.e;
import com.tencent.wxop.stat.b.b;
import com.tencent.wxop.stat.b.q;
import java.util.Map;

final class ae
{
  private static volatile long f = 0L;
  private d a;
  private u b = null;
  private boolean c = false;
  private Context d = null;
  private long e = System.currentTimeMillis();

  public ae(d paramd)
  {
    this.a = paramd;
    this.b = t.a();
    this.c = paramd.e();
    this.d = paramd.d();
  }

  private void a(k paramk)
  {
    l.b(v.d()).a(this.a, paramk);
  }

  private void b()
  {
    if ((ai.a().b > 0) && (t.m))
    {
      ai.a().a(this.a, null, this.c, true);
      ai.a().a(-1);
      return;
    }
    a(new ah(this));
  }

  public final void a()
  {
    Integer localInteger1;
    int i;
    if (t.h > 0)
    {
      if (this.e > v.g())
      {
        v.h().clear();
        v.a(this.e + t.i);
        if (t.b())
          v.e().a("clear methodsCalledLimitMap, nextLimitCallClearTime=" + v.g());
      }
      localInteger1 = Integer.valueOf(this.a.b().j);
      Integer localInteger2 = (Integer)v.h().get(localInteger1);
      if (localInteger2 != null)
      {
        v.h().put(localInteger1, Integer.valueOf(localInteger2.intValue() + 1));
        if (localInteger2.intValue() <= t.h)
          break label227;
        if (t.b())
          v.e().e("event " + this.a.f() + " was discard, cause of called limit, current:" + localInteger2 + ", limit:" + t.h + ", period:" + t.i + " ms");
        i = 1;
        if (i == 0)
          break label232;
      }
    }
    label227: label232: 
    do
    {
      do
      {
        do
        {
          return;
          v.h().put(localInteger1, Integer.valueOf(1));
          i = 0;
          break;
          if ((t.n > 0) && (this.e >= f))
          {
            v.c(this.d);
            f = this.e + t.o;
            if (t.b())
              v.e().a("nextFlushTime=" + f);
          }
          if (!x.a(this.d).b())
            break label904;
          if (t.b())
            v.e().a("sendFailedCount=" + v.a);
          if (v.a())
            break label861;
          if ((this.a.m != null) && (this.a.m.d))
            this.b = u.a;
          if ((t.j) && (x.a(v.d()).a()))
            this.b = u.a;
          if (t.b())
            v.e().a("strategy=" + this.b.name());
          switch (aa.a[this.b.ordinal()])
          {
          default:
            v.e().d("Invalid stat strategy:" + t.a());
            return;
          case 1:
            b();
            return;
          case 2:
            ai.a(this.d).a(this.a, null, this.c, false);
            if (t.b())
              v.e().a("PERIOD currTime=" + this.e + ",nextPeriodSendTs=" + v.c + ",difftime=" + (v.c - this.e));
            if (v.c == 0L)
            {
              v.c = q.a(this.d, "last_period_ts");
              if (this.e > v.c)
                v.d(this.d);
              long l = this.e + t.k() * 60 * 1000;
              if (v.c > l)
                v.c = l;
              g.a(this.d).a();
            }
            if (t.b())
              v.e().a("PERIOD currTime=" + this.e + ",nextPeriodSendTs=" + v.c + ",difftime=" + (v.c - this.e));
            break;
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          }
        }
        while (this.e <= v.c);
        v.d(this.d);
        return;
        ai.a(this.d).a(this.a, null, this.c, false);
        return;
        ai.a(this.d).a(this.a, new af(this), this.c, true);
        return;
        if (x.a(v.d()).b == 1)
        {
          b();
          return;
        }
        ai.a(this.d).a(this.a, null, this.c, false);
        return;
      }
      while (!com.tencent.wxop.stat.b.l.e(this.d));
      a(new ag(this));
      return;
      ai.a(this.d).a(this.a, null, this.c, false);
    }
    while (this.e - v.b <= 1800000L);
    label861: v.a(this.d);
    return;
    label904: ai.a(this.d).a(this.a, null, this.c, false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.ae
 * JD-Core Version:    0.6.2
 */