package com.amap.api.mapcore2d;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;

public class dn extends dq
  implements Thread.UncaughtExceptionHandler
{
  private static ExecutorService e;
  private Context d;

  private dn(Context paramContext, di paramdi)
  {
    this.d = paramContext;
    ey.a(new dn.a(paramContext));
    d();
  }

  public static dn a(Context paramContext, di paramdi)
    throws da
  {
    if (paramdi == null)
      try
      {
        throw new da("sdk info is null");
      }
      finally
      {
      }
    if ((paramdi.a() == null) || ("".equals(paramdi.a())))
      throw new da("sdk name is invalid");
    try
    {
      if (dq.a == null)
        dq.a = new dn(paramContext, paramdi);
      while (true)
      {
        dq.a.a(paramContext, paramdi, dq.a.c);
        paramContext = (dn)dq.a;
        return paramContext;
        dq.a.c = false;
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
    if (dq.a != null)
      dq.a.a(paramThrowable, 1, paramString1, paramString2);
  }

  public static dn b()
  {
    try
    {
      dn localdn = (dn)dq.a;
      return localdn;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  public static void c()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 76	com/amap/api/mapcore2d/dn:e	Ljava/util/concurrent/ExecutorService;
    //   6: ifnull +11 -> 17
    //   9: getstatic 76	com/amap/api/mapcore2d/dn:e	Ljava/util/concurrent/ExecutorService;
    //   12: invokeinterface 96 1 0
    //   17: getstatic 60	com/amap/api/mapcore2d/dq:a	Lcom/amap/api/mapcore2d/dq;
    //   20: ifnull +30 -> 50
    //   23: invokestatic 102	java/lang/Thread:getDefaultUncaughtExceptionHandler	()Ljava/lang/Thread$UncaughtExceptionHandler;
    //   26: getstatic 60	com/amap/api/mapcore2d/dq:a	Lcom/amap/api/mapcore2d/dq;
    //   29: if_acmpne +21 -> 50
    //   32: getstatic 60	com/amap/api/mapcore2d/dq:a	Lcom/amap/api/mapcore2d/dq;
    //   35: getfield 105	com/amap/api/mapcore2d/dq:b	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   38: ifnull +12 -> 50
    //   41: getstatic 60	com/amap/api/mapcore2d/dq:a	Lcom/amap/api/mapcore2d/dq;
    //   44: getfield 105	com/amap/api/mapcore2d/dq:b	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   47: invokestatic 109	java/lang/Thread:setDefaultUncaughtExceptionHandler	(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    //   50: aconst_null
    //   51: putstatic 60	com/amap/api/mapcore2d/dq:a	Lcom/amap/api/mapcore2d/dq;
    //   54: ldc 2
    //   56: monitorexit
    //   57: return
    //   58: astore_0
    //   59: aload_0
    //   60: invokevirtual 72	java/lang/Throwable:printStackTrace	()V
    //   63: goto -46 -> 17
    //   66: astore_0
    //   67: ldc 2
    //   69: monitorexit
    //   70: aload_0
    //   71: athrow
    //   72: astore_0
    //   73: aload_0
    //   74: invokevirtual 72	java/lang/Throwable:printStackTrace	()V
    //   77: goto -23 -> 54
    //
    // Exception table:
    //   from	to	target	type
    //   3	17	58	java/lang/Throwable
    //   3	17	66	finally
    //   17	50	66	finally
    //   50	54	66	finally
    //   59	63	66	finally
    //   73	77	66	finally
    //   17	50	72	java/lang/Throwable
    //   50	54	72	java/lang/Throwable
  }

  private void d()
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

  protected void a(Context paramContext, di paramdi, boolean paramBoolean)
  {
    try
    {
      ExecutorService localExecutorService = a();
      if (localExecutorService != null)
      {
        if (localExecutorService.isShutdown())
          return;
        localExecutorService.submit(new dn.1(this, paramContext, paramdi, paramBoolean));
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
    dv.a(this.d, paramThrowable, paramInt, paramString1, paramString2);
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
 * Qualified Name:     com.amap.api.mapcore2d.dn
 * JD-Core Version:    0.6.2
 */