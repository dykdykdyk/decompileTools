package rx.schedulers;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import rx.aa;
import rx.f.h;

final class s extends rx.s
  implements aa
{
  final AtomicInteger a = new AtomicInteger();
  final PriorityBlockingQueue<u> b = new PriorityBlockingQueue();
  private final rx.f.a c = new rx.f.a();
  private final AtomicInteger d = new AtomicInteger();

  private aa a(rx.b.a parama, long paramLong)
  {
    if (this.c.b())
      return h.b();
    parama = new u(parama, Long.valueOf(paramLong), this.a.incrementAndGet());
    this.b.add(parama);
    if (this.d.getAndIncrement() == 0)
    {
      do
      {
        parama = (u)this.b.poll();
        if (parama != null)
          parama.a.call();
      }
      while (this.d.decrementAndGet() > 0);
      return h.b();
    }
    return h.a(new t(this, parama));
  }

  public final aa a(rx.b.a parama)
  {
    return a(parama, a());
  }

  public final aa a(rx.b.a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    paramLong = a() + paramTimeUnit.toMillis(paramLong);
    return a(new l(parama, this, paramLong), paramLong);
  }

  public final boolean b()
  {
    return this.c.b();
  }

  public final void n_()
  {
    this.c.n_();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.schedulers.s
 * JD-Core Version:    0.6.2
 */