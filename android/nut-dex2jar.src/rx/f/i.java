package rx.f;

import java.util.concurrent.Future;
import rx.aa;

final class i
  implements aa
{
  final Future<?> a;

  public i(Future<?> paramFuture)
  {
    this.a = paramFuture;
  }

  public final boolean b()
  {
    return this.a.isCancelled();
  }

  public final void n_()
  {
    this.a.cancel(true);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.f.i
 * JD-Core Version:    0.6.2
 */