package rx.f;

import java.util.concurrent.atomic.AtomicReference;
import rx.aa;

public final class f
  implements aa
{
  final AtomicReference<g> a = new AtomicReference(new g(false, h.a()));

  public final void a(aa paramaa)
  {
    AtomicReference localAtomicReference = this.a;
    g localg;
    do
    {
      localg = (g)localAtomicReference.get();
      if (localg.a)
      {
        paramaa.n_();
        return;
      }
    }
    while (!localAtomicReference.compareAndSet(localg, new g(localg.a, paramaa)));
    localg.b.n_();
  }

  public final boolean b()
  {
    return ((g)this.a.get()).a;
  }

  public final void n_()
  {
    AtomicReference localAtomicReference = this.a;
    g localg;
    do
    {
      localg = (g)localAtomicReference.get();
      if (localg.a)
        return;
    }
    while (!localAtomicReference.compareAndSet(localg, new g(true, localg.b)));
    localg.b.n_();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.f.f
 * JD-Core Version:    0.6.2
 */