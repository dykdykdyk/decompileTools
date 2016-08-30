package rx.schedulers;

import java.util.PriorityQueue;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import rx.b.a;
import rx.r;
import rx.s;

public class TestScheduler extends r
{
  static long c = 0L;
  final Queue<q> b = new PriorityQueue(11, new m());
  long d;

  private void a(long paramLong)
  {
    if (!this.b.isEmpty())
    {
      q localq = (q)this.b.peek();
      if (localq.a <= paramLong)
      {
        if (localq.a == 0L);
        for (long l = this.d; ; l = localq.a)
        {
          this.d = l;
          this.b.remove();
          if (localq.c.b())
            break;
          localq.b.call();
          break;
        }
      }
    }
    this.d = paramLong;
  }

  public void advanceTimeBy(long paramLong, TimeUnit paramTimeUnit)
  {
    advanceTimeTo(this.d + paramTimeUnit.toNanos(paramLong), TimeUnit.NANOSECONDS);
  }

  public void advanceTimeTo(long paramLong, TimeUnit paramTimeUnit)
  {
    a(paramTimeUnit.toNanos(paramLong));
  }

  public s createWorker()
  {
    return new n(this);
  }

  public long now()
  {
    return TimeUnit.NANOSECONDS.toMillis(this.d);
  }

  public void triggerActions()
  {
    a(this.d);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.schedulers.TestScheduler
 * JD-Core Version:    0.6.2
 */