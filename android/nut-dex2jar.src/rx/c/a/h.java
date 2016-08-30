package rx.c.a;

import java.util.Arrays;
import rx.exceptions.CompositeException;
import rx.exceptions.e;
import rx.p;
import rx.z;

final class h extends z<T>
{
  private boolean d = false;

  h(g paramg, z paramz1, z paramz2)
  {
    super(paramz1);
  }

  public final void a()
  {
    if (this.d)
      return;
    try
    {
      this.b.a.a();
      this.d = true;
      this.a.a();
      return;
    }
    catch (Throwable localThrowable)
    {
      e.a(localThrowable, this);
    }
  }

  public final void a(T paramT)
  {
    if (this.d)
      return;
    try
    {
      this.b.a.a(paramT);
      this.a.a(paramT);
      return;
    }
    catch (Throwable localThrowable)
    {
      e.a(localThrowable, this, paramT);
    }
  }

  public final void a(Throwable paramThrowable)
  {
    e.a(paramThrowable);
    if (this.d)
      return;
    this.d = true;
    try
    {
      this.b.a.a(paramThrowable);
      this.a.a(paramThrowable);
      return;
    }
    catch (Throwable localThrowable)
    {
      e.a(localThrowable);
      this.a.a(new CompositeException(Arrays.asList(new Throwable[] { paramThrowable, localThrowable }), (byte)0));
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.a.h
 * JD-Core Version:    0.6.2
 */