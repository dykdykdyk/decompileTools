package rx;

import java.util.concurrent.TimeUnit;
import rx.b.a;
import rx.f.d;

public final class t
  implements a
{
  long a;
  long b = this.d;
  long c = this.e;

  public t(s params, long paramLong1, long paramLong2, d paramd, a parama, long paramLong3)
  {
  }

  public final void call()
  {
    long l2;
    long l1;
    long l3;
    if (!this.f.b())
    {
      this.g.call();
      l2 = TimeUnit.MILLISECONDS.toNanos(this.i.a());
      if ((r.a + l2 >= this.b) && (l2 < this.b + this.h + r.a))
        break label129;
      l1 = this.h + l2;
      l3 = this.h;
      long l4 = this.a + 1L;
      this.a = l4;
      this.c = (l1 - l3 * l4);
    }
    while (true)
    {
      this.b = l2;
      this.f.a(this.i.a(this, l1 - l2, TimeUnit.NANOSECONDS));
      return;
      label129: l1 = this.c;
      l3 = this.a + 1L;
      this.a = l3;
      l1 += l3 * this.h;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.t
 * JD-Core Version:    0.6.2
 */