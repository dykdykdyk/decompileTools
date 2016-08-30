package rx.c.a;

import rx.b.d;
import rx.c.b.a;
import rx.f.f;
import rx.h;
import rx.m;
import rx.z;

public final class s<T>
  implements m<T, T>
{
  final d<Throwable, ? extends h<? extends T>> a;

  public s(d<Throwable, ? extends h<? extends T>> paramd)
  {
    this.a = paramd;
  }

  private z<? super T> a(z<? super T> paramz)
  {
    a locala = new a();
    f localf = new f();
    u localu = new u(this, paramz, locala, localf);
    localf.a(localu);
    paramz.a(localf);
    paramz.a(locala);
    return localu;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.a.s
 * JD-Core Version:    0.6.2
 */