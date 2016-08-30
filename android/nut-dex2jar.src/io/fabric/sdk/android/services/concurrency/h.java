package io.fabric.sdk.android.services.concurrency;

import java.util.LinkedList;
import java.util.concurrent.Executor;

final class h
  implements Executor
{
  final LinkedList<Runnable> a = new LinkedList();
  Runnable b;

  protected final void a()
  {
    try
    {
      Runnable localRunnable = (Runnable)this.a.poll();
      this.b = localRunnable;
      if (localRunnable != null)
        a.b.execute(this.b);
      return;
    }
    finally
    {
    }
  }

  public final void execute(Runnable paramRunnable)
  {
    try
    {
      this.a.offer(new i(this, paramRunnable));
      if (this.b == null)
        a();
      return;
    }
    finally
    {
      paramRunnable = finally;
    }
    throw paramRunnable;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.h
 * JD-Core Version:    0.6.2
 */