package rx.c.d;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.c.c.l;
import rx.c.d.b.d;
import rx.c.d.b.y;
import rx.r;
import rx.s;
import rx.schedulers.Schedulers;

public abstract class a<T>
  implements l
{
  Queue<T> a;
  final int b = 0;
  final int c = 0;
  private final long d = 67L;
  private final AtomicReference<s> e = new AtomicReference();

  public a()
  {
    this((byte)0);
  }

  private a(byte paramByte)
  {
    if (y.a());
    s locals;
    for (this.a = new d(Math.max(this.c, 1024)); ; this.a = new ConcurrentLinkedQueue())
    {
      locals = Schedulers.computation().createWorker();
      if (!this.e.compareAndSet(null, locals))
        break;
      locals.a(new b(this), this.d, this.d, TimeUnit.SECONDS);
      return;
    }
    locals.n_();
  }

  public final void a()
  {
    s locals = (s)this.e.getAndSet(null);
    if (locals != null)
      locals.n_();
  }

  public final T b()
  {
    Object localObject2 = this.a.poll();
    Object localObject1 = localObject2;
    if (localObject2 == null)
      localObject1 = c();
    return localObject1;
  }

  protected abstract T c();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.a
 * JD-Core Version:    0.6.2
 */