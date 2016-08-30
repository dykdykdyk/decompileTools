package com.amap.api.services.core;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;

public class bd
{
  static final String a = "/a/";
  static final String b = "b";
  static final String c = "c";
  static final String d = "d";

  static void a(Context paramContext)
  {
    try
    {
      bg localbg = bg.a(2);
      if (localbg == null)
        return;
      localbg.a(paramContext);
      return;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
  }

  static void a(Context paramContext, Throwable paramThrowable, int paramInt, String paramString1, String paramString2)
  {
    try
    {
      ExecutorService localExecutorService = av.a();
      if (localExecutorService != null)
      {
        if (localExecutorService.isShutdown())
          return;
        localExecutorService.submit(new bd.1(paramInt, paramContext, paramThrowable, paramString1, paramString2));
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

  static void b(Context paramContext)
  {
    try
    {
      ExecutorService localExecutorService = av.a();
      if (localExecutorService != null)
      {
        if (localExecutorService.isShutdown())
          return;
        localExecutorService.submit(new bd.2(paramContext));
        return;
      }
    }
    catch (Throwable paramContext)
    {
      av.a(paramContext, "Log", "processLog");
      paramContext.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.bd
 * JD-Core Version:    0.6.2
 */