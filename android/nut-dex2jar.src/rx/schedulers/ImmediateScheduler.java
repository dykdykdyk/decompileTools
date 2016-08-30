package rx.schedulers;

import rx.r;
import rx.s;

public final class ImmediateScheduler extends r
{
  private static final ImmediateScheduler b = new ImmediateScheduler();

  static ImmediateScheduler a()
  {
    return b;
  }

  public final s createWorker()
  {
    return new j(this);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.schedulers.ImmediateScheduler
 * JD-Core Version:    0.6.2
 */