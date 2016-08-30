package rx.c.d.b;

import sun.misc.Unsafe;

public final class r<E> extends w<E>
{
  public r(int paramInt)
  {
    super(paramInt);
  }

  private long a()
  {
    return y.a.getLongVolatile(this, f);
  }

  private long b()
  {
    return y.a.getLongVolatile(this, e);
  }

  public final boolean isEmpty()
  {
    return a() == b();
  }

  public final boolean offer(E paramE)
  {
    if (paramE == null)
      throw new NullPointerException("null elements not allowed");
    Object[] arrayOfObject = this.c;
    long l1 = this.producerIndex;
    long l2 = a(l1);
    if (b(arrayOfObject, l2) != null)
      return false;
    y.a.putOrderedLong(this, f, l1 + 1L);
    b(arrayOfObject, l2, paramE);
    return true;
  }

  public final E peek()
  {
    return c(a(this.consumerIndex));
  }

  public final E poll()
  {
    long l1 = this.consumerIndex;
    long l2 = a(l1);
    Object[] arrayOfObject = this.c;
    Object localObject = b(arrayOfObject, l2);
    if (localObject == null)
      return null;
    y.a.putOrderedLong(this, e, l1 + 1L);
    b(arrayOfObject, l2, null);
    return localObject;
  }

  public final int size()
  {
    long l2;
    for (long l1 = b(); ; l1 = l2)
    {
      long l3 = a();
      l2 = b();
      if (l1 == l2)
        return (int)(l3 - l2);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.b.r
 * JD-Core Version:    0.6.2
 */