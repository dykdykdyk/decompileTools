package rx.c.b;

import java.util.concurrent.atomic.AtomicBoolean;
import rx.c.d.s;
import rx.exceptions.e;
import rx.q;
import rx.z;

public final class d<T> extends AtomicBoolean
  implements q
{
  final z<? super T> a;
  final T b;

  public d(z<? super T> paramz, T paramT)
  {
    this.a = paramz;
    this.b = paramT;
  }

  public final void a(long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("n >= 0 required");
    if (paramLong == 0L)
      break label22;
    while (true)
    {
      label22: return;
      if (compareAndSet(false, true))
      {
        z localz = this.a;
        Object localObject = this.b;
        if (localz.c.b)
          break;
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

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.b.d
 * JD-Core Version:    0.6.2
 */