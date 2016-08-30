package com.tencent.wxop.stat;

import android.content.Context;
import android.content.IntentFilter;
import com.tencent.wxop.stat.b.b;

final class o
  implements Runnable
{
  o(Context paramContext)
  {
  }

  public final void run()
  {
    x localx = x.a(v.d());
    localx.f.getApplicationContext().registerReceiver(new ao(localx), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    com.tencent.wxop.stat.b.l.a(this.a, true);
    ai.a(this.a);
    l.b(this.a);
    v.a(Thread.getDefaultUncaughtExceptionHandler());
    Thread.setDefaultUncaughtExceptionHandler(new ac());
    if (t.a() == u.d)
      v.b(this.a);
    if (t.b())
      v.e().g("Init MTA StatService success.");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.o
 * JD-Core Version:    0.6.2
 */