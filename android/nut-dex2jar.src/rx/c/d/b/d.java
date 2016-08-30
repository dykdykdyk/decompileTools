package rx.c.d.b;

import sun.misc.Unsafe;

public final class d<E> extends e<E>
{
  public d(int paramInt)
  {
    super(Math.max(2, paramInt));
  }

  public final boolean isEmpty()
  {
    return this.consumerIndex == this.producerIndex;
  }

  public final boolean offer(E paramE)
  {
    if (paramE == null)
      throw new NullPointerException("Null is not a valid element");
    long l3 = this.b + 1L;
    long[] arrayOfLong = this.d;
    long l1;
    for (long l2 = 9223372036854775807L; ; l2 = l1)
    {
      long l4 = this.producerIndex;
      long l5 = d(l4);
      long l6 = a(arrayOfLong, l5) - l4;
      if (l6 == 0L)
      {
        l1 = l2;
        if (y.a.compareAndSwapLong(this, h.f, l4, l4 + 1L))
        {
          a(a(l4), paramE);
          a(arrayOfLong, l5, 1L + l4);
          return true;
        }
      }
      else
      {
        l1 = l2;
        if (l6 < 0L)
        {
          l1 = l2;
          if (l4 - l3 <= l2)
          {
            l2 = this.consumerIndex;
            l1 = l2;
            if (l4 - l3 <= l2)
              return false;
          }
        }
      }
    }
  }

  public final E peek()
  {
    long l;
    Object localObject;
    do
    {
      l = this.consumerIndex;
      localObject = b(a(l));
    }
    while ((localObject == null) && (l != this.producerIndex));
    return localObject;
  }

  public final E poll()
  {
    long[] arrayOfLong = this.d;
    long l1;
    for (long l2 = -1L; ; l2 = l1)
    {
      long l3 = this.consumerIndex;
      long l4 = d(l3);
      long l5 = a(arrayOfLong, l4) - (1L + l3);
      if (l5 == 0L)
      {
        l1 = l2;
        if (y.a.compareAndSwapLong(this, e.e, l3, l3 + 1L))
        {
          l1 = a(l3);
          Object localObject = b(l1);
          a(l1, null);
          a(arrayOfLong, l4, this.b + l3 + 1L);
          return localObject;
        }
      }
      else
      {
        l1 = l2;
        if (l5 < 0L)
        {
          l1 = l2;
          if (l3 >= l2)
          {
            l2 = this.producerIndex;
            l1 = l2;
            if (l3 == l2)
              return null;
          }
        }
      }
    }
  }

  public final int size()
  {
    long l2;
    for (long l1 = this.consumerIndex; ; l1 = l2)
    {
      long l3 = this.producerIndex;
      l2 = this.consumerIndex;
      if (l1 == l2)
        return (int)(l3 - l2);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.b.d
 * JD-Core Version:    0.6.2
 */