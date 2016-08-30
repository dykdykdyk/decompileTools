package rx.f;

import java.util.concurrent.atomic.AtomicReference;
import rx.aa;

public final class a
  implements aa
{
  static final rx.b.a b = new b();
  final AtomicReference<rx.b.a> a;

  public a()
  {
    this.a = new AtomicReference();
  }

  private a(rx.b.a parama)
  {
    this.a = new AtomicReference(parama);
  }

  public static a a(rx.b.a parama)
  {
    return new a(parama);
  }

  public static a c()
  {
    return new a();
  }

  public final boolean b()
  {
    return this.a.get() == b;
  }

  public final void n_()
  {
    if ((rx.b.a)this.a.get() != b)
    {
      rx.b.a locala = (rx.b.a)this.a.getAndSet(b);
      if ((locala != null) && (locala != b))
        locala.call();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.f.a
 * JD-Core Version:    0.6.2
 */