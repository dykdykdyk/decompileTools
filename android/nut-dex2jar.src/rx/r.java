package rx;

import java.util.concurrent.TimeUnit;

public abstract class r
{
  static final long a = TimeUnit.MINUTES.toNanos(Long.getLong("rx.scheduler.drift-tolerance", 15L).longValue());

  public abstract s createWorker();

  public long now()
  {
    return System.currentTimeMillis();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.r
 * JD-Core Version:    0.6.2
 */