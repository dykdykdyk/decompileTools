package rx.c.d.a;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class b<E> extends a<E>
{
  private static final Integer g = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);
  final AtomicLong c = new AtomicLong();
  protected long d;
  final AtomicLong e = new AtomicLong();
  final int f;

  public b(int paramInt)
  {
    super(paramInt);
    this.f = Math.min(paramInt / 4, g.intValue());
  }

  public final boolean isEmpty()
  {
    return this.c.get() == this.e.get();
  }

  public final boolean offer(E paramE)
  {
    if (paramE == null)
      throw new NullPointerException("Null is not a valid element");
    AtomicReferenceArray localAtomicReferenceArray = this.a;
    int i = this.b;
    long l = this.c.get();
    int j = (int)l & i;
    if (l >= this.d)
    {
      int k = this.f;
      if (localAtomicReferenceArray.get(i & (int)(k + l)) != null)
        break label103;
      this.d = (k + l);
    }
    label103: 
    while (localAtomicReferenceArray.get(j) == null)
    {
      this.c.lazySet(l + 1L);
      localAtomicReferenceArray.lazySet(j, paramE);
      return true;
    }
    return false;
  }

  public final E peek()
  {
    return a(a(this.e.get()));
  }

  public final E poll()
  {
    long l = this.e.get();
    int i = a(l);
    AtomicReferenceArray localAtomicReferenceArray = this.a;
    Object localObject = localAtomicReferenceArray.get(i);
    if (localObject == null)
      return null;
    this.e.lazySet(l + 1L);
    localAtomicReferenceArray.lazySet(i, null);
    return localObject;
  }

  public final int size()
  {
    long l2;
    for (long l1 = this.e.get(); ; l1 = l2)
    {
      long l3 = this.c.get();
      l2 = this.e.get();
      if (l1 == l2)
        return (int)(l3 - l2);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.a.b
 * JD-Core Version:    0.6.2
 */