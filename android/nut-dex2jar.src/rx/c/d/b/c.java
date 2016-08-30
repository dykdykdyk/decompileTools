package rx.c.d.b;

import sun.misc.Unsafe;

public abstract class c<E> extends a<E>
{
  private static final long e;
  private static final int f;
  protected final long[] d;

  static
  {
    if (8 == y.a.arrayIndexScale([J.class))
    {
      f = a + 3;
      e = y.a.arrayBaseOffset([J.class) + (32 << f - a);
      return;
    }
    throw new IllegalStateException("Unexpected long[] element size");
  }

  public c(int paramInt)
  {
    super(paramInt);
    paramInt = (int)(this.b + 1L);
    this.d = new long[(paramInt << a) + 64];
    for (long l = 0L; l < paramInt; l += 1L)
      a(this.d, d(l), l);
  }

  protected static long a(long[] paramArrayOfLong, long paramLong)
  {
    return y.a.getLongVolatile(paramArrayOfLong, paramLong);
  }

  protected static void a(long[] paramArrayOfLong, long paramLong1, long paramLong2)
  {
    y.a.putOrderedLong(paramArrayOfLong, paramLong1, paramLong2);
  }

  protected final long d(long paramLong)
  {
    return e + ((this.b & paramLong) << f);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.b.c
 * JD-Core Version:    0.6.2
 */