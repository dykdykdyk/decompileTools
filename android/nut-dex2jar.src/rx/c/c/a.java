package rx.c.c;

import java.util.concurrent.atomic.AtomicReference;
import rx.c.d.i;
import rx.r;
import rx.s;

public final class a extends r
  implements l
{
  static final i b = new i("RxComputationThreadPool-");
  static final int c;
  static final d d;
  static final c e = new c(0);
  public final AtomicReference<c> f = new AtomicReference(e);

  static
  {
    int j = Integer.getInteger("rx.scheduler.max-computation-threads", 0).intValue();
    int k = Runtime.getRuntime().availableProcessors();
    int i;
    if (j > 0)
    {
      i = j;
      if (j <= k);
    }
    else
    {
      i = k;
    }
    c = i;
    d locald = new d(new i("RxComputationShutdown-"));
    d = locald;
    locald.n_();
  }

  public a()
  {
    c localc = new c(c);
    if (!this.f.compareAndSet(e, localc))
      localc.b();
  }

  public final void a()
  {
    c localc;
    do
    {
      localc = (c)this.f.get();
      if (localc == e)
        return;
    }
    while (!this.f.compareAndSet(localc, e));
    localc.b();
  }

  public final s createWorker()
  {
    return new b(((c)this.f.get()).a());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.c.a
 * JD-Core Version:    0.6.2
 */