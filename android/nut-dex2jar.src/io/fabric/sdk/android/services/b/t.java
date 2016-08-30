package io.fabric.sdk.android.services.b;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

public final class t
{
  public static ScheduledExecutorService a(String paramString)
  {
    ScheduledExecutorService localScheduledExecutorService = Executors.newSingleThreadScheduledExecutor(b(paramString));
    a(paramString, localScheduledExecutorService);
    return localScheduledExecutorService;
  }

  public static final void a(String paramString, ExecutorService paramExecutorService)
  {
    TimeUnit localTimeUnit = TimeUnit.SECONDS;
    Runtime.getRuntime().addShutdownHook(new Thread(new w(paramString, paramExecutorService, localTimeUnit), "Crashlytics Shutdown Hook for " + paramString));
  }

  public static final ThreadFactory b(String paramString)
  {
    return new u(paramString, new AtomicLong(1L));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.t
 * JD-Core Version:    0.6.2
 */