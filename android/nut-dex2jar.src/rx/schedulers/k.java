package rx.schedulers;

import rx.c.c.f;
import rx.c.d.i;
import rx.r;
import rx.s;

public final class k extends r
{
  private static final i b = new i("RxNewThreadScheduler-");
  private static final k c = new k();

  static k a()
  {
    return c;
  }

  public final s createWorker()
  {
    return new f(b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.schedulers.k
 * JD-Core Version:    0.6.2
 */