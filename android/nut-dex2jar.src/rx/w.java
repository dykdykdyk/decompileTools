package rx;

import rx.c.b.c;

final class w extends y<T>
{
  w(v paramv, c paramc, z paramz)
  {
  }

  public final void a(T paramT)
  {
    c localc = this.a;
    int i;
    do
    {
      i = localc.get();
      if (i != 0)
        break;
      localc.b = paramT;
    }
    while (!localc.compareAndSet(0, 1));
    while ((i != 2) || (!localc.compareAndSet(2, 3)))
      return;
    c.a(localc.a, paramT);
  }

  public final void a(Throwable paramThrowable)
  {
    this.b.a(paramThrowable);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.w
 * JD-Core Version:    0.6.2
 */