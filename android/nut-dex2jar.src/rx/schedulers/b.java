package rx.schedulers;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import rx.c.c.f;

final class b
{
  final long a;
  final ConcurrentLinkedQueue<e> b;
  final rx.f.c c;
  private final ScheduledExecutorService d;
  private final Future<?> e;

  b(long paramLong, TimeUnit paramTimeUnit)
  {
    ScheduledFuture localScheduledFuture;
    if (paramTimeUnit != null)
    {
      paramLong = paramTimeUnit.toNanos(paramLong);
      this.a = paramLong;
      this.b = new ConcurrentLinkedQueue();
      this.c = new rx.f.c();
      if (paramTimeUnit == null)
        break label105;
      paramTimeUnit = Executors.newScheduledThreadPool(1, a.c);
      f.b(paramTimeUnit);
      localScheduledFuture = paramTimeUnit.scheduleWithFixedDelay(new c(this), this.a, this.a, TimeUnit.NANOSECONDS);
    }
    while (true)
    {
      this.d = paramTimeUnit;
      this.e = localScheduledFuture;
      return;
      paramLong = 0L;
      break;
      label105: localScheduledFuture = null;
      paramTimeUnit = localObject;
    }
  }

  final e a()
  {
    if (this.c.a)
      return a.d;
    while (!this.b.isEmpty())
    {
      locale = (e)this.b.poll();
      if (locale != null)
        return locale;
    }
    e locale = new e(a.b);
    this.c.a(locale);
    return locale;
  }

  final void b()
  {
    try
    {
      if (this.e != null)
        this.e.cancel(true);
      if (this.d != null)
        this.d.shutdownNow();
      return;
    }
    finally
    {
      this.c.n_();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.schedulers.b
 * JD-Core Version:    0.6.2
 */