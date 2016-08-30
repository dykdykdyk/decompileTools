package com.crashlytics.android.core;

import android.os.Looper;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

public final class v
{
  private final ExecutorService a;

  public v(ExecutorService paramExecutorService)
  {
    this.a = paramExecutorService;
  }

  final <T> T a(Callable<T> paramCallable)
  {
    try
    {
      if (Looper.getMainLooper() == Looper.myLooper())
        return this.a.submit(paramCallable).get(4L, TimeUnit.SECONDS);
      paramCallable = this.a.submit(paramCallable).get();
      return paramCallable;
    }
    catch (RejectedExecutionException paramCallable)
    {
      f.b().a("CrashlyticsCore", "Executor is shut down because we're handling a fatal crash.");
      return null;
    }
    catch (Exception paramCallable)
    {
      f.b().c("CrashlyticsCore", "Failed to execute task.", paramCallable);
    }
    return null;
  }

  final Future<?> a(Runnable paramRunnable)
  {
    try
    {
      paramRunnable = this.a.submit(new w(this, paramRunnable));
      return paramRunnable;
    }
    catch (RejectedExecutionException paramRunnable)
    {
      f.b().a("CrashlyticsCore", "Executor is shut down because we're handling a fatal crash.");
    }
    return null;
  }

  public final <T> Future<T> b(Callable<T> paramCallable)
  {
    try
    {
      paramCallable = this.a.submit(new x(this, paramCallable));
      return paramCallable;
    }
    catch (RejectedExecutionException paramCallable)
    {
      f.b().a("CrashlyticsCore", "Executor is shut down because we're handling a fatal crash.");
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.v
 * JD-Core Version:    0.6.2
 */