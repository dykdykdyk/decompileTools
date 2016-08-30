package rx;

import rx.c.a.i;
import rx.c.a.w;
import rx.d.a;
import rx.e.b;

public class h<T>
{
  static final b b = rx.e.d.a().c();
  final l<T> a;

  public h(l<T> paraml)
  {
    this.a = paraml;
  }

  private static <T> aa a(z<? super T> paramz, h<T> paramh)
  {
    if (paramz == null)
      throw new IllegalArgumentException("observer can not be null");
    if (paramh.a == null)
      throw new IllegalStateException("onSubscribe function can not be null.");
    paramz.c();
    Object localObject = paramz;
    if (!(paramz instanceof a))
      localObject = new a(paramz);
    try
    {
      b.b(paramh.a).call(localObject);
      paramz = b.a((aa)localObject);
      return paramz;
    }
    catch (Throwable paramz)
    {
      rx.exceptions.e.a(paramz);
      try
      {
        ((z)localObject).a(b.a(paramz));
        return rx.f.h.b();
      }
      catch (Throwable paramh)
      {
        rx.exceptions.e.a(paramh);
      }
    }
    throw new RuntimeException("Error occurred attempting to subscribe [" + paramz.getMessage() + "] and then again while trying to pass to onError.", paramh);
  }

  public static <T> h<T> a(T paramT)
  {
    return rx.c.d.j.b(paramT);
  }

  public static <T> h<T> a(Throwable paramThrowable)
  {
    return new n(paramThrowable);
  }

  public static <T> h<T> a(l<T> paraml)
  {
    return new h(b.a(paraml));
  }

  public final aa a(p<? super T> paramp)
  {
    if ((paramp instanceof z))
      return a((z)paramp, this);
    return a(new k(this, paramp), this);
  }

  public final aa a(z<? super T> paramz)
  {
    try
    {
      paramz.c();
      b.b(this.a).call(paramz);
      aa localaa = b.a(paramz);
      return localaa;
    }
    catch (Throwable localThrowable)
    {
      rx.exceptions.e.a(localThrowable);
      try
      {
        paramz.a(b.a(localThrowable));
        return rx.f.h.b();
      }
      catch (Throwable paramz)
      {
        rx.exceptions.e.a(paramz);
      }
      throw new RuntimeException("Error occurred attempting to subscribe [" + localThrowable.getMessage() + "] and then again while trying to pass to onError.", paramz);
    }
  }

  public final <R> h<R> a(rx.b.d<? super T, ? extends h<? extends R>> paramd)
  {
    if (getClass() == rx.c.d.j.class)
      return ((rx.c.d.j)this).c(paramd);
    paramd = b(paramd);
    if (paramd.getClass() == rx.c.d.j.class)
      return ((rx.c.d.j)paramd).c(rx.c.d.u.a());
    return paramd.a(rx.c.a.l.a);
  }

  public final <R> h<R> a(m<? extends R, ? super T> paramm)
  {
    return new h(new j(this, paramm));
  }

  public final h<T> a(r paramr)
  {
    if ((this instanceof rx.c.d.j))
      return ((rx.c.d.j)this).c(paramr);
    return a(new rx.c.a.p(paramr));
  }

  public final u<T> a()
  {
    return new u(new rx.c.a.e(this));
  }

  public final <R> h<R> b(rx.b.d<? super T, ? extends R> paramd)
  {
    return a(new i(paramd));
  }

  public final h<T> b(r paramr)
  {
    if ((this instanceof rx.c.d.j))
      return ((rx.c.d.j)this).c(paramr);
    return a(new w(this, paramr));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.h
 * JD-Core Version:    0.6.2
 */