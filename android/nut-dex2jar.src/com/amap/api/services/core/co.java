package com.amap.api.services.core;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public final class co
{
  private static co a = null;
  private ExecutorService b;
  private ConcurrentHashMap<cp, Future<?>> c = new ConcurrentHashMap();
  private cp.a d = new cq(this);

  private co(int paramInt)
  {
    try
    {
      this.b = Executors.newFixedThreadPool(paramInt);
      return;
    }
    catch (Throwable localThrowable)
    {
      av.a(localThrowable, "TPool", "ThreadPool");
      localThrowable.printStackTrace();
    }
  }

  public static co a(int paramInt)
  {
    try
    {
      if (a == null)
        a = new co(paramInt);
      co localco = a;
      return localco;
    }
    finally
    {
    }
  }

  private void a(cp paramcp, boolean paramBoolean)
  {
    try
    {
      paramcp = (Future)this.c.remove(paramcp);
      if ((paramBoolean) && (paramcp != null))
        paramcp.cancel(true);
      return;
    }
    catch (Throwable paramcp)
    {
      while (true)
      {
        av.a(paramcp, "TPool", "removeQueue");
        paramcp.printStackTrace();
      }
    }
    finally
    {
    }
    throw paramcp;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.co
 * JD-Core Version:    0.6.2
 */