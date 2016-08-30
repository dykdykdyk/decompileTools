package com.amap.api.mapcore2d;

import android.os.Handler;

class i
  implements Runnable
{
  i(h paramh)
  {
  }

  public void run()
  {
    h.a(this.a);
    if (!this.a.e())
    {
      h.b(this.a).removeCallbacks(this);
      h.a(this.a, null);
      this.a.b();
    }
    long l1;
    long l2;
    do
    {
      return;
      l1 = System.currentTimeMillis();
      this.a.a();
      h.c(this.a);
      l2 = System.currentTimeMillis();
    }
    while (l2 - l1 >= this.a.b);
    try
    {
      Thread.sleep(this.a.b - (l2 - l1));
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      cz.a(localInterruptedException, "AnimBase", "run");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.i
 * JD-Core Version:    0.6.2
 */