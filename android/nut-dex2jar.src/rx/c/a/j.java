package rx.c.a;

import rx.b.d;
import rx.exceptions.e;
import rx.z;

final class j extends z<T>
{
  j(i parami, z paramz1, z paramz2)
  {
    super(paramz1);
  }

  public final void a()
  {
    this.a.a();
  }

  public final void a(T paramT)
  {
    try
    {
      this.a.a(this.b.a.call(paramT));
      return;
    }
    catch (Throwable localThrowable)
    {
      e.a(localThrowable, this, paramT);
    }
  }

  public final void a(Throwable paramThrowable)
  {
    this.a.a(paramThrowable);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.a.j
 * JD-Core Version:    0.6.2
 */