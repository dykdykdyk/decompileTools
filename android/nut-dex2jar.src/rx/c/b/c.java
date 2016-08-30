package rx.c.b;

import java.util.concurrent.atomic.AtomicInteger;
import rx.c.d.s;
import rx.exceptions.e;
import rx.q;
import rx.z;

public final class c<T> extends AtomicInteger
  implements q
{
  public final z<? super T> a;
  public T b;

  public c(z<? super T> paramz)
  {
    this.a = paramz;
  }

  public static <T> void a(z<? super T> paramz, T paramT)
  {
    if (paramz.c.b);
    while (true)
    {
      return;
      try
      {
        paramz.a(paramT);
        if (!paramz.c.b)
        {
          paramz.a();
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        e.a(localThrowable, paramz, paramT);
      }
    }
  }

  public final void a(long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("n >= 0 required");
    if (paramLong == 0L);
    int i;
    label44: 
    do
    {
      return;
      while (true)
      {
        i = get();
        if (i != 0)
          break label44;
        if (compareAndSet(0, 2))
          break;
      }
    }
    while ((i != 1) || (!compareAndSet(1, 3)));
    a(this.a, this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.b.c
 * JD-Core Version:    0.6.2
 */