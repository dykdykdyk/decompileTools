package rx.schedulers;

import java.util.concurrent.TimeUnit;
import rx.aa;
import rx.f.h;
import rx.s;

final class j extends s
  implements aa
{
  final rx.f.a a = new rx.f.a();

  j(ImmediateScheduler paramImmediateScheduler)
  {
  }

  public final aa a(rx.b.a parama)
  {
    parama.call();
    return h.b();
  }

  public final aa a(rx.b.a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    return a(new l(parama, this, this.b.now() + paramTimeUnit.toMillis(paramLong)));
  }

  public final boolean b()
  {
    return this.a.b();
  }

  public final void n_()
  {
    this.a.n_();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.schedulers.j
 * JD-Core Version:    0.6.2
 */