package rx.c.a;

import java.util.concurrent.atomic.AtomicLong;

public final class a
{
  public static long a(AtomicLong paramAtomicLong, long paramLong)
  {
    long l3;
    long l1;
    do
    {
      l3 = paramAtomicLong.get();
      long l2 = l3 + paramLong;
      l1 = l2;
      if (l2 < 0L)
        l1 = 9223372036854775807L;
    }
    while (!paramAtomicLong.compareAndSet(l3, l1));
    return l3;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.a.a
 * JD-Core Version:    0.6.2
 */