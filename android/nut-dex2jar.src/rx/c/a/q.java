package rx.c.a;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import rx.b.a;
import rx.c.d.b.y;
import rx.c.d.f;
import rx.e.d;
import rx.exceptions.MissingBackpressureException;
import rx.z;

final class q<T> extends z<T>
  implements a
{
  final z<? super T> a;
  final rx.s b;
  final b<T> d;
  final boolean e;
  final Queue<Object> f;
  volatile boolean g;
  final AtomicLong h = new AtomicLong();
  final AtomicLong i = new AtomicLong();
  Throwable j;

  public q(rx.r paramr, z<? super T> paramz, boolean paramBoolean)
  {
    this.a = paramz;
    this.b = paramr.createWorker();
    this.e = paramBoolean;
    this.d = b.a();
    if (y.a())
    {
      this.f = new rx.c.d.b.r(f.d);
      return;
    }
    this.f = new rx.c.d.a.b(f.d);
  }

  private boolean a(boolean paramBoolean1, boolean paramBoolean2, z<? super T> paramz, Queue<Object> paramQueue)
  {
    if (paramz.c.b)
    {
      paramQueue.clear();
      return true;
    }
    if (paramBoolean1)
    {
      if (!this.e)
        break label77;
      if (paramBoolean2)
      {
        paramQueue = this.j;
        if (paramQueue == null)
          break label60;
      }
    }
    label60: label77: 
    do
    {
      try
      {
        paramz.a(paramQueue);
        while (true)
        {
          return false;
          paramz.a();
        }
      }
      finally
      {
        this.b.n_();
      }
      Throwable localThrowable = this.j;
      if (localThrowable != null)
      {
        paramQueue.clear();
        try
        {
          paramz.a(localThrowable);
          return true;
        }
        finally
        {
          this.b.n_();
        }
      }
    }
    while (!paramBoolean2);
    try
    {
      paramz.a();
      return true;
    }
    finally
    {
      this.b.n_();
    }
    throw paramz;
  }

  public final void a()
  {
    if ((this.c.b) || (this.g))
      return;
    this.g = true;
    d();
  }

  public final void a(T paramT)
  {
    if ((this.c.b) || (this.g))
      return;
    if (!this.f.offer(b.a(paramT)))
    {
      a(new MissingBackpressureException());
      return;
    }
    d();
  }

  public final void a(Throwable paramThrowable)
  {
    if ((this.c.b) || (this.g))
    {
      d.a().b();
      return;
    }
    this.j = paramThrowable;
    this.g = true;
    d();
  }

  public final void c()
  {
    a(f.d);
  }

  public final void call()
  {
    long l2 = 0L;
    long l1 = 1L;
    Queue localQueue = this.f;
    z localz = this.a;
    if (a(this.g, localQueue.isEmpty(), localz, localQueue));
    long l3;
    label67: 
    do
    {
      int k;
      while (true)
      {
        return;
        long l5 = this.h.get();
        boolean bool2;
        Object localObject;
        if (l5 == 9223372036854775807L)
        {
          k = 1;
          l4 = 0L;
          l3 = l2;
          if (l5 == 0L)
            break;
          bool2 = this.g;
          localObject = localQueue.poll();
          if (localObject != null)
            break label153;
        }
        for (boolean bool1 = true; ; bool1 = false)
        {
          if (a(bool2, bool1, localz, localQueue))
            break label157;
          if (bool1)
            break label159;
          localz.a(b.b(localObject));
          l5 -= 1L;
          l4 -= 1L;
          l3 += 1L;
          break label67;
          k = 0;
          break;
        }
      }
      if ((l4 != 0L) && (k == 0))
        this.h.addAndGet(l4);
      long l4 = this.i.addAndGet(-l1);
      l1 = l4;
      l2 = l3;
      if (l4 != 0L)
        break;
    }
    while (l3 == 0L);
    label153: label157: label159: a(l3);
  }

  protected final void d()
  {
    if (this.i.getAndIncrement() == 0L)
      this.b.a(this);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.a.q
 * JD-Core Version:    0.6.2
 */