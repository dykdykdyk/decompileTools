package rx.schedulers;

import rx.b.a;
import rx.s;

final class l
  implements a
{
  private final a a;
  private final s b;
  private final long c;

  public l(a parama, s params, long paramLong)
  {
    this.a = parama;
    this.b = params;
    this.c = paramLong;
  }

  public final void call()
  {
    if (this.b.b());
    while (true)
    {
      return;
      long l;
      if (this.c > this.b.a())
      {
        l = this.c - this.b.a();
        if (l <= 0L);
      }
      try
      {
        Thread.sleep(l);
        if (this.b.b())
          continue;
        this.a.call();
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        Thread.currentThread().interrupt();
        throw new RuntimeException(localInterruptedException);
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.schedulers.l
 * JD-Core Version:    0.6.2
 */