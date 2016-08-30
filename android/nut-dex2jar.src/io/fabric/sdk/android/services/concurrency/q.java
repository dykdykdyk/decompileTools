package io.fabric.sdk.android.services.concurrency;

import java.util.concurrent.Executor;

public final class q<Result>
  implements Executor
{
  private final Executor a;
  private final p b;

  public q(Executor paramExecutor, p paramp)
  {
    this.a = paramExecutor;
    this.b = paramp;
  }

  public final void execute(Runnable paramRunnable)
  {
    this.a.execute(new r(this, paramRunnable));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.q
 * JD-Core Version:    0.6.2
 */