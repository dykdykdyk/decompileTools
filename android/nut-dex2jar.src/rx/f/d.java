package rx.f;

import java.util.concurrent.atomic.AtomicReference;
import rx.aa;

public final class d
  implements aa
{
  final AtomicReference<e> a = new AtomicReference(new e(false, h.a()));

  public final void a(aa paramaa)
  {
    if (paramaa == null)
      throw new IllegalArgumentException("Subscription can not be null");
    AtomicReference localAtomicReference = this.a;
    e locale;
    do
    {
      locale = (e)localAtomicReference.get();
      if (locale.a)
      {
        paramaa.n_();
        return;
      }
    }
    while (!localAtomicReference.compareAndSet(locale, new e(locale.a, paramaa)));
  }

  public final boolean b()
  {
    return ((e)this.a.get()).a;
  }

  public final void n_()
  {
    AtomicReference localAtomicReference = this.a;
    e locale;
    do
    {
      locale = (e)localAtomicReference.get();
      if (locale.a)
        return;
    }
    while (!localAtomicReference.compareAndSet(locale, new e(true, locale.b)));
    locale.b.n_();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.f.d
 * JD-Core Version:    0.6.2
 */