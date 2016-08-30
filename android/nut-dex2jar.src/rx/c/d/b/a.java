package rx.c.d.b;

import java.util.Iterator;
import sun.misc.Unsafe;

public abstract class a<E> extends b<E>
{
  protected static final int a = Integer.getInteger("sparse.shift", 0).intValue();
  private static final long d;
  private static final int e;
  protected final long b;
  protected final E[] c;

  static
  {
    int i = y.a.arrayIndexScale([Ljava.lang.Object.class);
    if (4 == i);
    for (e = a + 2; ; e = a + 3)
    {
      d = y.a.arrayBaseOffset([Ljava.lang.Object.class) + (32 << e - a);
      return;
      if (8 != i)
        break;
    }
    throw new IllegalStateException("Unknown pointer size");
  }

  public a(int paramInt)
  {
    paramInt = i.a(paramInt);
    this.b = (paramInt - 1);
    this.c = ((Object[])new Object[(paramInt << a) + 64]);
  }

  protected static E a(E[] paramArrayOfE, long paramLong)
  {
    return y.a.getObject(paramArrayOfE, paramLong);
  }

  protected static void a(E[] paramArrayOfE, long paramLong, E paramE)
  {
    y.a.putObject(paramArrayOfE, paramLong, paramE);
  }

  protected static E b(E[] paramArrayOfE, long paramLong)
  {
    return y.a.getObjectVolatile(paramArrayOfE, paramLong);
  }

  protected static void b(E[] paramArrayOfE, long paramLong, E paramE)
  {
    y.a.putOrderedObject(paramArrayOfE, paramLong, paramE);
  }

  protected final long a(long paramLong)
  {
    long l1 = this.b;
    long l2 = d;
    return ((l1 & paramLong) << e) + l2;
  }

  protected final void a(long paramLong, E paramE)
  {
    a(this.c, paramLong, paramE);
  }

  protected final E b(long paramLong)
  {
    return a(this.c, paramLong);
  }

  protected final E c(long paramLong)
  {
    return b(this.c, paramLong);
  }

  public void clear()
  {
    while ((poll() != null) || (!isEmpty()));
  }

  public Iterator<E> iterator()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.b.a
 * JD-Core Version:    0.6.2
 */