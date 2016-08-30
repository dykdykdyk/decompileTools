package com.amap.api.mapcore2d;

import java.util.concurrent.CopyOnWriteArrayList;

class bi$a extends Thread
{
  private bi$a(bi parambi)
  {
  }

  public void run()
  {
    setName("MarkerThread");
    while (true)
      if ((!Thread.currentThread().isInterrupted()) && (bi.a(this.a) != null) && (bi.a(this.a).size() > 1))
      {
        if (bi.b(this.a) == bi.a(this.a).size() - 1)
        {
          bi.a(this.a, 0);
          bi.d(this.a).a().postInvalidate();
        }
        try
        {
          Thread.sleep(bi.e(this.a) * 250);
          if (bi.a(this.a) == null)
          {
            Thread.currentThread().interrupt();
            continue;
            bi.c(this.a);
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          while (true)
            cz.a(localInterruptedException, "MarkerDelegateImp", "run");
        }
      }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bi.a
 * JD-Core Version:    0.6.2
 */