package rx.c.d;

import rx.aa;
import rx.h;
import rx.q;
import rx.z;

public final class j<T> extends h<T>
{
  static final rx.b.d<rx.b.a, aa> c = new k();
  static final boolean d = Boolean.valueOf(System.getProperty("rx.just.strong-mode", "false")).booleanValue();
  public final T e;

  private j(T paramT)
  {
    super(new l(paramT));
    this.e = paramT;
  }

  static <T> q a(z<? super T> paramz, T paramT)
  {
    if (d)
      return new rx.c.b.d(paramz, paramT);
    return new r(paramz, paramT);
  }

  public static <T> j<T> b(T paramT)
  {
    return new j(paramT);
  }

  public final <R> h<R> c(rx.b.d<? super T, ? extends h<? extends R>> paramd)
  {
    return a(new o(this, paramd));
  }

  public final h<T> c(rx.r paramr)
  {
    if ((paramr instanceof rx.c.c.a));
    for (paramr = c; ; paramr = new m(this, paramr))
      return a(new p(this.e, paramr));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.j
 * JD-Core Version:    0.6.2
 */