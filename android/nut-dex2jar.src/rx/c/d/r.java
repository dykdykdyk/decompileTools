package rx.c.d;

import rx.exceptions.e;
import rx.q;
import rx.z;

final class r<T>
  implements q
{
  final z<? super T> a;
  final T b;
  boolean c;

  public r(z<? super T> paramz, T paramT)
  {
    this.a = paramz;
    this.b = paramT;
  }

  public final void a(long paramLong)
  {
    if (this.c);
    while (true)
    {
      return;
      if (paramLong < 0L)
        throw new IllegalStateException("n >= required but it was " + paramLong);
      if (paramLong != 0L)
      {
        this.c = true;
        z localz = this.a;
        if (!localz.c.b)
        {
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
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.r
 * JD-Core Version:    0.6.2
 */