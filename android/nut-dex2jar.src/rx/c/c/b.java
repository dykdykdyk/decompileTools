package rx.c.c;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import rx.aa;
import rx.b.a;
import rx.f.c;

final class b extends rx.s
{
  private final rx.c.d.s a = new rx.c.d.s();
  private final c b = new c();
  private final rx.c.d.s c = new rx.c.d.s(new aa[] { this.a, this.b });
  private final d d;

  b(d paramd)
  {
    this.d = paramd;
  }

  public final aa a(a parama)
  {
    if (this.c.b)
      return rx.f.h.b();
    d locald = this.d;
    rx.c.d.s locals = this.a;
    h localh = new h(rx.e.f.a(parama), locals);
    locals.a(localh);
    if (0L <= 0L);
    for (parama = locald.a.submit(localh); ; parama = locald.a.schedule(localh, 0L, null))
    {
      localh.a(parama);
      return localh;
    }
  }

  public final aa a(a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    if (this.c.b)
      return rx.f.h.b();
    d locald = this.d;
    c localc = this.b;
    h localh = new h(rx.e.f.a(parama), localc);
    localc.a(localh);
    if (paramLong <= 0L);
    for (parama = locald.a.submit(localh); ; parama = locald.a.schedule(localh, paramLong, paramTimeUnit))
    {
      localh.a(parama);
      return localh;
    }
  }

  public final boolean b()
  {
    return this.c.b;
  }

  public final void n_()
  {
    this.c.n_();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.c.b
 * JD-Core Version:    0.6.2
 */