package io.fabric.sdk.android.services.concurrency;

import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class w extends ThreadPoolExecutor
{
  private static final int a = i;
  private static final int b = i + 1;
  private static final int c = a * 2 + 1;

  static
  {
    int i = Runtime.getRuntime().availableProcessors();
  }

  private <T extends Runnable,  extends l,  extends y,  extends u> w(int paramInt1, int paramInt2, TimeUnit paramTimeUnit, m<T> paramm, ThreadFactory paramThreadFactory)
  {
    super(paramInt1, paramInt2, 1L, paramTimeUnit, paramm, paramThreadFactory);
    prestartAllCoreThreads();
  }

  public static w a()
  {
    return new w(b, c, TimeUnit.SECONDS, new m(), new x());
  }

  protected final void afterExecute(Runnable paramRunnable, Throwable paramThrowable)
  {
    y localy = (y)paramRunnable;
    localy.a(true);
    localy.a(paramThrowable);
    ((m)super.getQueue()).a();
    super.afterExecute(paramRunnable, paramThrowable);
  }

  public final void execute(Runnable paramRunnable)
  {
    if (v.b(paramRunnable))
    {
      super.execute(paramRunnable);
      return;
    }
    super.execute(newTaskFor(paramRunnable, null));
  }

  protected final <T> RunnableFuture<T> newTaskFor(Runnable paramRunnable, T paramT)
  {
    return new t(paramRunnable, paramT);
  }

  protected final <T> RunnableFuture<T> newTaskFor(Callable<T> paramCallable)
  {
    return new t(paramCallable);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.w
 * JD-Core Version:    0.6.2
 */