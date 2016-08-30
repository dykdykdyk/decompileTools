package io.fabric.sdk.android.services.concurrency;

import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

public class t<V> extends FutureTask<V>
  implements l<y>, u, y
{
  final Object b;

  public t(Runnable paramRunnable, V paramV)
  {
    super(paramRunnable, paramV);
    this.b = b(paramRunnable);
  }

  public t(Callable<V> paramCallable)
  {
    super(paramCallable);
    this.b = b(paramCallable);
  }

  private static <T extends l<y>,  extends u,  extends y> T b(Object paramObject)
  {
    if (v.b(paramObject))
      return (l)paramObject;
    return new v();
  }

  public final int a()
  {
    return ((u)b()).a();
  }

  public final void a(Throwable paramThrowable)
  {
    ((y)b()).a(paramThrowable);
  }

  public final void a(boolean paramBoolean)
  {
    ((y)b()).a(paramBoolean);
  }

  public <T extends l<y>,  extends u,  extends y> T b()
  {
    return (l)this.b;
  }

  public int compareTo(Object paramObject)
  {
    return ((u)b()).compareTo(paramObject);
  }

  public final Collection<y> f()
  {
    return ((l)b()).f();
  }

  public final boolean g()
  {
    return ((l)b()).g();
  }

  public final boolean h()
  {
    return ((y)b()).h();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.t
 * JD-Core Version:    0.6.2
 */