package rx.schedulers;

import java.util.Queue;
import java.util.concurrent.TimeUnit;
import rx.aa;
import rx.f.h;
import rx.s;

final class n extends s
{
  private final rx.f.a b = new rx.f.a();

  n(TestScheduler paramTestScheduler)
  {
  }

  public final long a()
  {
    return this.a.now();
  }

  public final aa a(rx.b.a parama)
  {
    parama = new q(this, 0L, parama);
    this.a.b.add(parama);
    return h.a(new p(this, parama));
  }

  public final aa a(rx.b.a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    parama = new q(this, this.a.d + paramTimeUnit.toNanos(paramLong), parama);
    this.a.b.add(parama);
    return h.a(new o(this, parama));
  }

  public final boolean b()
  {
    return this.b.b();
  }

  public final void n_()
  {
    this.b.n_();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.schedulers.n
 * JD-Core Version:    0.6.2
 */