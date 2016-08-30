package com.tencent.open.utils;

import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.Executor;

final class q
  implements Executor
{
  final Queue<Runnable> a = new LinkedList();
  Runnable b;

  protected final void a()
  {
    try
    {
      Runnable localRunnable = (Runnable)this.a.poll();
      this.b = localRunnable;
      if (localRunnable != null)
        p.a.execute(this.b);
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
      this.a.offer(new r(this, paramRunnable));
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
 * Qualified Name:     com.tencent.open.utils.q
 * JD-Core Version:    0.6.2
 */