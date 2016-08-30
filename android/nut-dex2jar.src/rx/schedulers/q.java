package rx.schedulers;

import rx.b.a;
import rx.s;

final class q
{
  final long a;
  final a b;
  final s c;
  final long d;

  q(s params, long paramLong, a parama)
  {
    long l = TestScheduler.c;
    TestScheduler.c = 1L + l;
    this.d = l;
    this.a = paramLong;
    this.b = parama;
    this.c = params;
  }

  public final String toString()
  {
    return String.format("TimedAction(time = %d, action = %s)", new Object[] { Long.valueOf(this.a), this.b.toString() });
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.schedulers.q
 * JD-Core Version:    0.6.2
 */