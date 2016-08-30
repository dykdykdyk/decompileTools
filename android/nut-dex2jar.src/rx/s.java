package rx;

import java.util.concurrent.TimeUnit;
import rx.b.a;
import rx.f.d;

public abstract class s
  implements aa
{
  public long a()
  {
    return System.currentTimeMillis();
  }

  public abstract aa a(a parama);

  public final aa a(a parama, long paramLong1, long paramLong2, TimeUnit paramTimeUnit)
  {
    paramLong2 = paramTimeUnit.toNanos(paramLong2);
    long l1 = TimeUnit.MILLISECONDS.toNanos(a());
    long l2 = paramTimeUnit.toNanos(paramLong1);
    d locald1 = new d();
    parama = new t(this, l1, l1 + l2, locald1, parama, paramLong2);
    d locald2 = new d();
    locald1.a(locald2);
    locald2.a(a(parama, paramLong1, paramTimeUnit));
    return locald1;
  }

  public abstract aa a(a parama, long paramLong, TimeUnit paramTimeUnit);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.s
 * JD-Core Version:    0.6.2
 */