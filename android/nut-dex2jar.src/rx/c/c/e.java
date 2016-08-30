package rx.c.c;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicReference;
import rx.c.d.i;

public final class e
  implements l
{
  public static final e a = new e();
  private static final i b = new i("RxScheduledExecutorPool-");
  private static final ScheduledExecutorService c;
  private final AtomicReference<ScheduledExecutorService> d = new AtomicReference(c);

  static
  {
    ScheduledExecutorService localScheduledExecutorService = Executors.newScheduledThreadPool(0);
    c = localScheduledExecutorService;
    localScheduledExecutorService.shutdownNow();
  }

  private e()
  {
    int k = Runtime.getRuntime().availableProcessors();
    int i = k;
    if (k > 4)
      i = k / 2;
    if (i > 8)
      i = j;
    while (true)
    {
      ScheduledExecutorService localScheduledExecutorService = Executors.newScheduledThreadPool(i, b);
      if (this.d.compareAndSet(c, localScheduledExecutorService))
      {
        if ((!f.b(localScheduledExecutorService)) && ((localScheduledExecutorService instanceof ScheduledThreadPoolExecutor)))
          f.a((ScheduledThreadPoolExecutor)localScheduledExecutorService);
        return;
      }
      localScheduledExecutorService.shutdownNow();
      return;
    }
  }

  public static ScheduledExecutorService b()
  {
    return (ScheduledExecutorService)a.d.get();
  }

  public final void a()
  {
    ScheduledExecutorService localScheduledExecutorService;
    do
    {
      localScheduledExecutorService = (ScheduledExecutorService)this.d.get();
      if (localScheduledExecutorService == c)
        return;
    }
    while (!this.d.compareAndSet(localScheduledExecutorService, c));
    f.a(localScheduledExecutorService);
    localScheduledExecutorService.shutdownNow();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.c.e
 * JD-Core Version:    0.6.2
 */