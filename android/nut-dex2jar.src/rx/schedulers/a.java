package rx.schedulers;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.c.c.l;
import rx.c.d.i;
import rx.r;
import rx.s;

final class a extends r
  implements l
{
  static final i b = new i("RxCachedThreadScheduler-");
  static final i c = new i("RxCachedWorkerPoolEvictor-");
  static final e d;
  static final b f;
  private static final TimeUnit g = TimeUnit.SECONDS;
  final AtomicReference<b> e = new AtomicReference(f);

  static
  {
    Object localObject = new e(new i("RxCachedThreadSchedulerShutdown-"));
    d = (e)localObject;
    ((e)localObject).n_();
    localObject = new b(0L, null);
    f = (b)localObject;
    ((b)localObject).b();
  }

  public a()
  {
    b localb = new b(60L, g);
    if (!this.e.compareAndSet(f, localb))
      localb.b();
  }

  public final void a()
  {
    b localb;
    do
    {
      localb = (b)this.e.get();
      if (localb == f)
        return;
    }
    while (!this.e.compareAndSet(localb, f));
    localb.b();
  }

  public final s createWorker()
  {
    return new d((b)this.e.get());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.schedulers.a
 * JD-Core Version:    0.6.2
 */