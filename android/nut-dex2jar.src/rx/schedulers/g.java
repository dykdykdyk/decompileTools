package rx.schedulers;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import rx.aa;
import rx.b.a;
import rx.c.c.e;
import rx.f.c;

final class g extends rx.s
  implements Runnable
{
  final Executor a;
  final c b;
  final ConcurrentLinkedQueue<rx.c.c.h> c;
  final AtomicInteger d;

  public g(Executor paramExecutor)
  {
    this.a = paramExecutor;
    this.c = new ConcurrentLinkedQueue();
    this.d = new AtomicInteger();
    this.b = new c();
  }

  public final aa a(a parama)
  {
    if (this.b.a)
      parama = rx.f.h.b();
    rx.c.c.h localh;
    do
    {
      return parama;
      localh = new rx.c.c.h(parama, this.b);
      this.b.a(localh);
      this.c.offer(localh);
      parama = localh;
    }
    while (this.d.getAndIncrement() != 0);
    try
    {
      this.a.execute(this);
      return localh;
    }
    catch (RejectedExecutionException parama)
    {
      this.b.b(localh);
      this.d.decrementAndGet();
      rx.e.d.a().b();
    }
    throw parama;
  }

  public final aa a(a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramLong <= 0L)
      return a(parama);
    if (this.b.a)
      return rx.f.h.b();
    ScheduledExecutorService localScheduledExecutorService;
    if ((this.a instanceof ScheduledExecutorService))
      localScheduledExecutorService = (ScheduledExecutorService)this.a;
    while (true)
    {
      rx.f.d locald1 = new rx.f.d();
      rx.f.d locald2 = new rx.f.d();
      locald2.a(locald1);
      this.b.a(locald2);
      aa localaa = rx.f.h.a(new h(this, locald2));
      parama = new rx.c.c.h(new i(this, locald2, parama, localaa));
      locald1.a(parama);
      try
      {
        parama.a(localScheduledExecutorService.schedule(parama, paramLong, paramTimeUnit));
        return localaa;
        localScheduledExecutorService = e.b();
      }
      catch (RejectedExecutionException parama)
      {
        rx.e.d.a().b();
      }
    }
    throw parama;
  }

  public final boolean b()
  {
    return this.b.a;
  }

  public final void n_()
  {
    this.b.n_();
  }

  public final void run()
  {
    do
    {
      rx.c.c.h localh = (rx.c.c.h)this.c.poll();
      if (!localh.a.b)
        localh.run();
    }
    while (this.d.decrementAndGet() > 0);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.schedulers.g
 * JD-Core Version:    0.6.2
 */