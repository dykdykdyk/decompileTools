package rx.c.d;

import java.util.concurrent.atomic.AtomicBoolean;
import rx.aa;
import rx.b.a;
import rx.b.d;
import rx.exceptions.e;
import rx.z;

final class q<T> extends AtomicBoolean
  implements a, rx.q
{
  final z<? super T> a;
  final T b;
  final d<a, aa> c;

  public q(z<? super T> paramz, T paramT, d<a, aa> paramd)
  {
    this.a = paramz;
    this.b = paramT;
    this.c = paramd;
  }

  public final void a(long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("n >= 0 required but it was " + paramLong);
    if ((paramLong != 0L) && (compareAndSet(false, true)))
      this.a.a((aa)this.c.call(this));
  }

  public final void call()
  {
    z localz = this.a;
    if (localz.c.b);
    while (true)
    {
      return;
      Object localObject = this.b;
      try
      {
        localz.a(localObject);
        if (!localz.c.b)
        {
          localz.a();
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        e.a(localThrowable, localz, localObject);
      }
    }
  }

  public final String toString()
  {
    return "ScalarAsyncProducer[" + this.b + ", " + get() + "]";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.q
 * JD-Core Version:    0.6.2
 */