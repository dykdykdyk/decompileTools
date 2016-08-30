package rx.c.c;

import java.util.concurrent.atomic.AtomicBoolean;
import rx.aa;
import rx.c.d.s;
import rx.f.c;

final class j extends AtomicBoolean
  implements aa
{
  final h a;
  final c b;

  public j(h paramh, c paramc)
  {
    this.a = paramh;
    this.b = paramc;
  }

  public final boolean b()
  {
    return this.a.a.b;
  }

  public final void n_()
  {
    if (compareAndSet(false, true))
      this.b.b(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.c.j
 * JD-Core Version:    0.6.2
 */