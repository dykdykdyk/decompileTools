package com.baidu.android.pushservice.i;

import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.i.a.b;

class r$1 extends Thread
{
  r$1(r paramr)
  {
  }

  public void run()
  {
    long l;
    if (r.a(this.a))
    {
      l = System.currentTimeMillis();
      int i = (int)(l / 60000L % 5L);
      int j = (int)(l / 1000L);
      if ((i == 0) && (j % 60 < 15))
        l = ()(Math.random() * 60.0D * 1000.0D);
    }
    else
    {
      try
      {
        sleep(l);
        if (!b.e(r.b(this.a)))
          return;
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          a.e("StatisticPoster", "InterruptedException: " + localInterruptedException);
      }
    }
    this.a.c();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.r.1
 * JD-Core Version:    0.6.2
 */