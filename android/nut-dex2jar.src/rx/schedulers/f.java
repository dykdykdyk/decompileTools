package rx.schedulers;

import java.util.concurrent.Executor;
import rx.r;
import rx.s;

final class f extends r
{
  final Executor b;

  public f(Executor paramExecutor)
  {
    this.b = paramExecutor;
  }

  public final s createWorker()
  {
    return new g(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.schedulers.f
 * JD-Core Version:    0.6.2
 */