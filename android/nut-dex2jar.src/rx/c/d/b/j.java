package rx.c.d.b;

public final class j<E> extends n<E>
{
  public j(int paramInt)
  {
    super(paramInt);
  }

  public final boolean isEmpty()
  {
    return this.consumerIndex == this.producerIndex;
  }

  public final boolean offer(E paramE)
  {
    if (paramE == null)
      throw new NullPointerException("Null is not a valid element");
    Object[] arrayOfObject = this.c;
    long l1 = this.b;
    long l2 = this.producerIndex;
    long l3 = a(l2);
    if (b(arrayOfObject, l3) != null)
    {
      if (l2 - this.consumerIndex > l1)
        return false;
      while (b(arrayOfObject, l3) != null);
    }
    a(arrayOfObject, l3, paramE);
    d(1L + l2);
    return true;
  }

  public final E peek()
  {
    long l1 = this.f;
    Object localObject;
    do
    {
      long l2 = this.consumerIndex;
      if (l2 >= l1)
      {
        long l3 = this.producerIndex;
        if (l2 >= l3)
          return null;
        this.f = l3;
      }
      localObject = c(a(l2));
    }
    while (localObject == null);
    return localObject;
  }

  public final E poll()
  {
    long l1 = this.f;
    long l2;
    do
    {
      l2 = this.consumerIndex;
      if (l2 >= l1)
      {
        long l3 = this.producerIndex;
        if (l2 >= l3)
          return null;
        this.f = l3;
      }
    }
    while (!a(l2, 1L + l2));
    l1 = a(l2);
    Object[] arrayOfObject = this.c;
    Object localObject = a(arrayOfObject, l1);
    b(arrayOfObject, l1, null);
    return localObject;
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
 * Qualified Name:     rx.c.d.b.j
 * JD-Core Version:    0.6.2
 */