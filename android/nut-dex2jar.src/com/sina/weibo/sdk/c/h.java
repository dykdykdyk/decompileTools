package com.sina.weibo.sdk.c;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

final class h
{
  private static ExecutorService a = Executors.newSingleThreadExecutor();
  private static long b = 5L;

  public static void a(Runnable paramRunnable)
  {
    try
    {
      if (a.isShutdown())
        a = Executors.newSingleThreadExecutor();
      a.execute(paramRunnable);
      return;
    }
    finally
    {
    }
    throw paramRunnable;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.c.h
 * JD-Core Version:    0.6.2
 */