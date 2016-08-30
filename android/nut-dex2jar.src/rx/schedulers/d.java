package rx.schedulers;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import rx.aa;
import rx.b.a;
import rx.f.c;
import rx.s;

final class d extends s
{
  static final AtomicIntegerFieldUpdater<d> b = AtomicIntegerFieldUpdater.newUpdater(d.class, "a");
  volatile int a;
  private final c c = new c();
  private final b d;
  private final e e;

  d(b paramb)
  {
    this.d = paramb;
    this.e = paramb.a();
  }

  public final aa a(a parama)
  {
    return a(parama, 0L, null);
  }

  public final aa a(a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    if (this.c.a)
      return rx.f.h.b();
    parama = this.e.b(parama, paramLong, paramTimeUnit);
    this.c.a(parama);
    parama.a(this.c);
    return parama;
  }

  public final boolean b()
  {
    return this.c.a;
  }

  public final void n_()
  {
    if (b.compareAndSet(this, 0, 1))
    {
      b localb = this.d;
      e locale = this.e;
      locale.d = (System.nanoTime() + localb.a);
      localb.b.offer(locale);
    }
    this.c.n_();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.schedulers.d
 * JD-Core Version:    0.6.2
 */