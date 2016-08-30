package com.amap.api.services.core;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;

public class av extends ay
  implements Thread.UncaughtExceptionHandler
{
  private static ExecutorService e;
  private Context d;

  private av(Context paramContext, ar paramar)
  {
    this.d = paramContext;
    cg.a(new av.a(paramContext));
    c();
  }

  public static av a(Context paramContext, ar paramar)
    throws ai
  {
    if (paramar == null)
      try
      {
        throw new ai("sdk info is null");
      }
      finally
      {
      }
    if ((paramar.a() == null) || ("".equals(paramar.a())))
      throw new ai("sdk name is invalid");
    try
    {
      if (ay.a == null)
        ay.a = new av(paramContext, paramar);
      while (true)
      {
        ay.a.a(paramContext, paramar, ay.a.c);
        paramContext = (av)ay.a;
        return paramContext;
        ay.a.c = false;
      }
    }
    catch (Throwable paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
  }

  static ExecutorService a()
  {
    try
    {
      if ((e == null) || (e.isShutdown()))
        e = Executors.newSingleThreadExecutor();
      ExecutorService localExecutorService = e;
      return localExecutorService;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        localThrowable.printStackTrace();
    }
    finally
    {
    }
  }

  public static void a(Throwable paramThrowable, String paramString1, String paramString2)
  {
    if (ay.a != null)
      ay.a.a(paramThrowable, 1, paramString1, paramString2);
  }

  public static av b()
  {
    try
    {
      av localav = (av)ay.a;
      return localav;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void c()
  {
    try
    {
      this.b = Thread.getDefaultUncaughtExceptionHandler();
      if (this.b == null)
      {
        Thread.setDefaultUncaughtExceptionHandler(this);
        this.c = true;
        return;
      }
      if (this.b.toString().indexOf("com.amap.api") != -1)
      {
        this.c = false;
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
      return;
    }
    Thread.setDefaultUncaughtExceptionHandler(this);
    this.c = true;
  }

  protected void a(Context paramContext, ar paramar, boolean paramBoolean)
  {
    try
    {
      ExecutorService localExecutorService = a();
      if (localExecutorService != null)
      {
        if (localExecutorService.isShutdown())
          return;
        localExecutorService.submit(new av.1(this, paramContext, paramar, paramBoolean));
        return;
      }
    }
    catch (RejectedExecutionException paramContext)
    {
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
  }

  protected void a(Throwable paramThrowable, int paramInt, String paramString1, String paramString2)
  {
    bd.a(this.d, paramThrowable, paramInt, paramString1, paramString2);
  }

  public void b(Throwable paramThrowable, String paramString1, String paramString2)
  {
    if (paramThrowable == null)
      return;
    try
    {
      a(paramThrowable, 1, paramString1, paramString2);
      return;
    }
    catch (Throwable paramThrowable)
    {
      paramThrowable.printStackTrace();
    }
  }

  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    if (paramThrowable == null);
    do
    {
      return;
      a(paramThrowable, 0, null, null);
    }
    while (this.b == null);
    this.b.uncaughtException(paramThread, paramThrowable);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.av
 * JD-Core Version:    0.6.2
 */