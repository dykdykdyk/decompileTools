package bolts;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

public final class h<TResult>
{
  public static final ExecutorService a = e.a();
  public static final Executor b = e.b();
  public static final Executor c = a.b();
  private final Object d = new Object();
  private boolean e;
  private boolean f;
  private TResult g;
  private Exception h;
  private List<g<TResult, Void>> i = new ArrayList();

  public static <TResult> h<TResult> a(Exception paramException)
  {
    o localo = a();
    localo.a(paramException);
    return localo.a;
  }

  public static <TResult> h<TResult> a(TResult paramTResult)
  {
    o localo = a();
    localo.a(paramTResult);
    return localo.a;
  }

  public static <TResult> h<TResult>.o a()
  {
    h localh = new h();
    localh.getClass();
    return new o(localh, (byte)0);
  }

  private <TContinuationResult> h<TContinuationResult> b(g<TResult, TContinuationResult> paramg, Executor paramExecutor)
  {
    o localo = a();
    synchronized (this.d)
    {
      boolean bool = g();
      if (!bool)
        this.i.add(new k(this, localo, paramg, paramExecutor));
      if (bool)
        c(localo, paramg, this, paramExecutor);
      return localo.a;
    }
  }

  private static <TContinuationResult, TResult> void c(h<TContinuationResult>.o paramh, g<TResult, TContinuationResult> paramg, h<TResult> paramh1, Executor paramExecutor)
  {
    paramExecutor.execute(new n(paramg, paramh1, paramh));
  }

  private static <TContinuationResult, TResult> void d(h<TContinuationResult>.o paramh, g<TResult, h<TContinuationResult>> paramg, h<TResult> paramh1, Executor paramExecutor)
  {
    paramExecutor.execute(new i(paramg, paramh1, paramh));
  }

  public static <TResult> h<TResult> f()
  {
    o localo = a();
    localo.a();
    return localo.a;
  }

  private boolean g()
  {
    synchronized (this.d)
    {
      boolean bool = this.e;
      return bool;
    }
  }

  public final <TContinuationResult> h<TContinuationResult> a(g<TResult, TContinuationResult> paramg)
  {
    return b(paramg, b);
  }

  public final <TContinuationResult> h<TContinuationResult> a(g<TResult, h<TContinuationResult>> paramg, Executor paramExecutor)
  {
    o localo = a();
    synchronized (this.d)
    {
      boolean bool = g();
      if (!bool)
        this.i.add(new l(this, localo, paramg, paramExecutor));
      if (bool)
        d(localo, paramg, this, paramExecutor);
      return localo.a;
    }
  }

  public final boolean b()
  {
    synchronized (this.d)
    {
      boolean bool = this.f;
      return bool;
    }
  }

  public final boolean c()
  {
    while (true)
    {
      synchronized (this.d)
      {
        if (this.h != null)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }

  public final TResult d()
  {
    synchronized (this.d)
    {
      Object localObject2 = this.g;
      return localObject2;
    }
  }

  public final Exception e()
  {
    synchronized (this.d)
    {
      Exception localException = this.h;
      return localException;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     bolts.h
 * JD-Core Version:    0.6.2
 */