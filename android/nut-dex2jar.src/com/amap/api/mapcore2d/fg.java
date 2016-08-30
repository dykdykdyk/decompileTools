package com.amap.api.mapcore2d;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public final class fg
{
  private static fg a = null;
  private ExecutorService b;
  private ConcurrentHashMap<fh, Future<?>> c = new ConcurrentHashMap();
  private fh.a d = new fi(this);

  private fg(int paramInt)
  {
    try
    {
      this.b = Executors.newFixedThreadPool(paramInt);
      return;
    }
    catch (Throwable localThrowable)
    {
      dn.a(localThrowable, "TPool", "ThreadPool");
      localThrowable.printStackTrace();
    }
  }

  public static fg a(int paramInt)
  {
    try
    {
      if (a == null)
        a = new fg(paramInt);
      fg localfg = a;
      return localfg;
    }
    finally
    {
    }
  }

  private void a(fh paramfh, boolean paramBoolean)
  {
    try
    {
      paramfh = (Future)this.c.remove(paramfh);
      if ((paramBoolean) && (paramfh != null))
        paramfh.cancel(true);
      return;
    }
    catch (Throwable paramfh)
    {
      while (true)
      {
        dn.a(paramfh, "TPool", "removeQueue");
        paramfh.printStackTrace();
      }
    }
    finally
    {
    }
    throw paramfh;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.fg
 * JD-Core Version:    0.6.2
 */