package rx.c.d.b;

import sun.misc.Unsafe;

abstract class k<E> extends m<E>
{
  protected static final long d = y.a(k.class, "consumerIndex");
  volatile long consumerIndex;

  public k(int paramInt)
  {
    super(paramInt);
  }

  protected final boolean a(long paramLong1, long paramLong2)
  {
    return y.a.compareAndSwapLong(this, d, paramLong1, paramLong2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.b.k
 * JD-Core Version:    0.6.2
 */