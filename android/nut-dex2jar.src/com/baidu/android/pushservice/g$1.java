package com.baidu.android.pushservice;

import com.baidu.android.pushservice.h.b;
import com.baidu.android.pushservice.i.t;

class g$1
  implements Runnable
{
  g$1(g paramg)
  {
  }

  public void run()
  {
    if (g.e() == null)
      return;
    synchronized (g.e())
    {
      boolean bool = com.baidu.android.pushservice.f.a.b(g.a(this.a));
      b.a(g.f(), "tryConnect networkConnected :" + bool, g.a(this.a));
      if (!bool)
      {
        if (a.b() > 0)
          t.a(g.a(this.a), "039912");
        return;
      }
    }
    if (a.b() > 0)
      t.a(g.a(this.a), "039914");
    if ((g.a != null) && (!g.a.a()))
    {
      if (j.a(g.a(this.a)).d())
        break label157;
      b.d(g.f(), "Channel token is not available, start NETWORK REGISTER SERVICE .", g.a(this.a));
      g.b(this.a);
    }
    while (true)
    {
      return;
      label157: g.c(this.a);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.g.1
 * JD-Core Version:    0.6.2
 */