package rx.c.a;

import rx.q;
import rx.s;

final class z
  implements q
{
  z(y paramy, q paramq)
  {
  }

  public final void a(long paramLong)
  {
    if (this.b.a == Thread.currentThread())
    {
      this.a.a(paramLong);
      return;
    }
    this.b.b.b.a(new aa(this, paramLong));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.a.z
 * JD-Core Version:    0.6.2
 */