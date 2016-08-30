package com.tencent.open.utils;

import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import java.lang.reflect.Field;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class p
{
  public static final Executor a = b();
  private static Object b = new Object();
  private static Handler c;
  private static HandlerThread d;

  public static Executor a()
  {
    return new q((byte)0);
  }

  public static void a(Runnable paramRunnable)
  {
    c().post(paramRunnable);
  }

  private static Executor b()
  {
    Object localObject;
    if (Build.VERSION.SDK_INT >= 11)
      localObject = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue());
    while (true)
    {
      if ((localObject instanceof ThreadPoolExecutor))
        ((ThreadPoolExecutor)localObject).setCorePoolSize(3);
      return localObject;
      try
      {
        localObject = AsyncTask.class.getDeclaredField("sExecutor");
        ((Field)localObject).setAccessible(true);
        localObject = (Executor)((Field)localObject).get(null);
      }
      catch (Exception localException)
      {
        ThreadPoolExecutor localThreadPoolExecutor = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue());
      }
    }
  }

  private static Handler c()
  {
    if (c == null);
    try
    {
      HandlerThread localHandlerThread = new HandlerThread("SDK_SUB");
      d = localHandlerThread;
      localHandlerThread.start();
      c = new Handler(d.getLooper());
      return c;
    }
    finally
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.utils.p
 * JD-Core Version:    0.6.2
 */