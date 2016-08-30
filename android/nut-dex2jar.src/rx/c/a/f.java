package rx.c.a;

import java.util.NoSuchElementException;
import rx.c.d.s;
import rx.y;
import rx.z;

final class f extends z<T>
{
  private boolean d = false;
  private boolean e = false;
  private T f = null;

  f(e parame, y paramy)
  {
  }

  public final void a()
  {
    if (!this.d)
    {
      if (this.e)
        this.a.a(this.f);
    }
    else
      return;
    this.a.a(new NoSuchElementException("Observable emitted no items"));
  }

  public final void a(T paramT)
  {
    if (this.e)
    {
      this.d = true;
      this.a.a(new IllegalArgumentException("Observable emitted too many elements"));
      n_();
      return;
    }
    this.e = true;
    this.f = paramT;
  }

  public final void a(Throwable paramThrowable)
  {
    this.a.a(paramThrowable);
    this.c.n_();
  }

  public final void c()
  {
    a(2L);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.a.f
 * JD-Core Version:    0.6.2
 */