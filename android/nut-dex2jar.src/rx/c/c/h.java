package rx.c.c;

import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;
import rx.aa;
import rx.b.a;
import rx.c.d.s;
import rx.e.d;
import rx.exceptions.OnErrorNotImplementedException;
import rx.f.c;

public final class h extends AtomicReference<Thread>
  implements Runnable, aa
{
  public final s a;
  final a b;

  public h(a parama)
  {
    this.b = parama;
    this.a = new s();
  }

  public h(a parama, s params)
  {
    this.b = parama;
    this.a = new s(new k(this, params));
  }

  public h(a parama, c paramc)
  {
    this.b = parama;
    this.a = new s(new j(this, paramc));
  }

  public final void a(Future<?> paramFuture)
  {
    this.a.a(new i(this, paramFuture));
  }

  public final void a(aa paramaa)
  {
    this.a.a(paramaa);
  }

  public final void a(c paramc)
  {
    this.a.a(new j(this, paramc));
  }

  public final boolean b()
  {
    return this.a.b;
  }

  public final void n_()
  {
    if (!this.a.b)
      this.a.n_();
  }

  public final void run()
  {
    try
    {
      lazySet(Thread.currentThread());
      this.b.call();
      return;
    }
    catch (Throwable localThrowable)
    {
      if ((localThrowable instanceof OnErrorNotImplementedException));
      for (IllegalStateException localIllegalStateException = new IllegalStateException("Exception thrown on Scheduler.Worker thread. Add `onError` handling.", localThrowable); ; localIllegalStateException = new IllegalStateException("Fatal Exception thrown on Scheduler.Worker thread.", localIllegalStateException))
      {
        d.a().b();
        Thread localThread = Thread.currentThread();
        localThread.getUncaughtExceptionHandler().uncaughtException(localThread, localIllegalStateException);
        return;
      }
    }
    finally
    {
      n_();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.c.h
 * JD-Core Version:    0.6.2
 */