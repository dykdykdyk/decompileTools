package com.baidu.android.pushservice;

import android.content.Context;
import com.baidu.android.pushservice.i.j;
import com.baidu.android.pushservice.i.t;
import com.baidu.android.pushservice.util.m;

class f$4 extends Thread
{
  f$4(f paramf, String paramString, int paramInt)
  {
  }

  public void run()
  {
    try
    {
      j localj = new j();
      localj.f = this.a;
      localj.g = System.currentTimeMillis();
      localj.h = com.baidu.android.pushservice.i.a.b.d(f.c(this.c));
      localj.i = this.b;
      if (this.a.equals("030303"))
        localj.l = m.x(f.c(this.c));
      while (true)
      {
        t.b(f.c(this.c), localj);
        return;
        if (this.a.equals("030301"))
          localj.l = m.y(f.c(this.c));
      }
    }
    catch (Exception localException)
    {
      com.baidu.android.pushservice.h.b.c("PushConnection", "insertAgent exception", f.c(this.c).getApplicationContext());
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.f.4
 * JD-Core Version:    0.6.2
 */