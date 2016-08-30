package io.fabric.sdk.android.services.concurrency;

import java.util.Collection;

public abstract class p<Params, Progress, Result> extends a<Params, Progress, Result>
  implements l<y>, u, y
{
  private final v a = new v();

  public int a()
  {
    return ((u)this.a).a();
  }

  public final void a(y paramy)
  {
    if (this.f != j.a)
      throw new IllegalStateException("Must not add Dependency after task is running");
    ((l)this.a).a(paramy);
  }

  public final void a(Throwable paramThrowable)
  {
    ((y)this.a).a(paramThrowable);
  }

  public final void a(boolean paramBoolean)
  {
    ((y)this.a).a(paramBoolean);
  }

  public int compareTo(Object paramObject)
  {
    return o.a(this, paramObject);
  }

  public final Collection<y> f()
  {
    return ((l)this.a).f();
  }

  public final boolean g()
  {
    return ((l)this.a).g();
  }

  public final boolean h()
  {
    return ((y)this.a).h();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.p
 * JD-Core Version:    0.6.2
 */