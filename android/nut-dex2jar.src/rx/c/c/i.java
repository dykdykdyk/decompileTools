package rx.c.c;

import java.util.concurrent.Future;
import rx.aa;

final class i
  implements aa
{
  private final Future<?> b;

  i(Future<?> paramFuture)
  {
    Object localObject;
    this.b = localObject;
  }

  public final boolean b()
  {
    return this.b.isCancelled();
  }

  public final void n_()
  {
    if (this.a.get() != Thread.currentThread())
    {
      this.b.cancel(true);
      return;
    }
    this.b.cancel(false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.c.i
 * JD-Core Version:    0.6.2
 */