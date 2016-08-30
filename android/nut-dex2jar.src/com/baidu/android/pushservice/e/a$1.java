package com.baidu.android.pushservice.e;

import com.baidu.android.pushservice.i.a.b;
import com.baidu.android.pushservice.i.j;
import com.baidu.android.pushservice.i.t;
import com.baidu.android.pushservice.util.m;

class a$1 extends Thread
{
  a$1(a parama, String paramString, int paramInt)
  {
  }

  public void run()
  {
    try
    {
      j localj = new j();
      localj.f = this.a;
      localj.g = System.currentTimeMillis();
      localj.h = b.d(this.c.a);
      localj.i = this.b;
      if (this.a.equals("030403"))
        localj.l = m.x(this.c.a);
      while (true)
      {
        t.b(this.c.a, localj);
        return;
        if (this.a.equals("030401"))
          localj.l = m.y(this.c.a);
      }
    }
    catch (Exception localException)
    {
      com.baidu.android.pushservice.h.a.e("AbstractProcessor", "insertHttpBehavior exception");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.a.1
 * JD-Core Version:    0.6.2
 */