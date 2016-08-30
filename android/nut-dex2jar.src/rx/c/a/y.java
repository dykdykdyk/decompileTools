package rx.c.a;

import rx.q;
import rx.s;

final class y extends rx.z<T>
{
  y(x paramx, rx.z paramz, Thread paramThread)
  {
    super(paramz);
  }

  public final void a()
  {
    try
    {
      this.b.a.a();
      return;
    }
    finally
    {
      this.b.b.n_();
    }
  }

  public final void a(T paramT)
  {
    this.b.a.a(paramT);
  }

  public final void a(Throwable paramThrowable)
  {
    try
    {
      this.b.a.a(paramThrowable);
      return;
    }
    finally
    {
      this.b.b.n_();
    }
    throw paramThrowable;
  }

  public final void a(q paramq)
  {
    this.b.a.a(new z(this, paramq));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.a.y
 * JD-Core Version:    0.6.2
 */