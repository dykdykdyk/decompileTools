package rx.c.d.a;

import java.util.Collection;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import rx.c.d.b.i;

public final class d<T>
  implements Queue<T>
{
  static final int a = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();
  static final AtomicLongFieldUpdater<d> c = AtomicLongFieldUpdater.newUpdater(d.class, "b");
  static final AtomicLongFieldUpdater<d> k = AtomicLongFieldUpdater.newUpdater(d.class, "j");
  private static final Object l = new Object();
  protected volatile long b;
  protected int d;
  protected long e;
  protected int f;
  protected AtomicReferenceArray<Object> g;
  protected int h;
  protected AtomicReferenceArray<Object> i;
  protected volatile long j;

  public d(int paramInt)
  {
    paramInt = i.a(Math.max(8, paramInt));
    int m = paramInt - 1;
    AtomicReferenceArray localAtomicReferenceArray = new AtomicReferenceArray(paramInt + 1);
    this.g = localAtomicReferenceArray;
    this.f = m;
    this.d = Math.min(paramInt / 4, a);
    this.i = localAtomicReferenceArray;
    this.h = m;
    this.e = (m - 1);
    a(0L);
  }

  private static AtomicReferenceArray<Object> a(AtomicReferenceArray<Object> paramAtomicReferenceArray)
  {
    return (AtomicReferenceArray)paramAtomicReferenceArray.get(paramAtomicReferenceArray.length() - 1);
  }

  private void a(long paramLong)
  {
    c.lazySet(this, paramLong);
  }

  private boolean a(AtomicReferenceArray<Object> paramAtomicReferenceArray, T paramT, long paramLong, int paramInt)
  {
    a(1L + paramLong);
    paramAtomicReferenceArray.lazySet(paramInt, paramT);
    return true;
  }

  private void b(long paramLong)
  {
    k.lazySet(this, paramLong);
  }

  public final boolean add(T paramT)
  {
    throw new UnsupportedOperationException();
  }

  public final boolean addAll(Collection<? extends T> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  public final void clear()
  {
    while ((poll() != null) || (!isEmpty()));
  }

  public final boolean contains(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }

  public final boolean containsAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  public final T element()
  {
    throw new UnsupportedOperationException();
  }

  public final boolean isEmpty()
  {
    return this.b == this.j;
  }

  public final Iterator<T> iterator()
  {
    throw new UnsupportedOperationException();
  }

  public final boolean offer(T paramT)
  {
    if (paramT == null)
      throw new NullPointerException();
    AtomicReferenceArray localAtomicReferenceArray1 = this.g;
    long l1 = this.b;
    int m = this.f;
    int n = (int)l1 & m;
    if (l1 < this.e)
      return a(localAtomicReferenceArray1, paramT, l1, n);
    int i1 = this.d;
    if (localAtomicReferenceArray1.get((int)(i1 + l1) & m) == null)
    {
      this.e = (i1 + l1 - 1L);
      return a(localAtomicReferenceArray1, paramT, l1, n);
    }
    if (localAtomicReferenceArray1.get((int)(l1 + 1L) & m) != null)
      return a(localAtomicReferenceArray1, paramT, l1, n);
    long l2 = m;
    AtomicReferenceArray localAtomicReferenceArray2 = new AtomicReferenceArray(localAtomicReferenceArray1.length());
    this.g = localAtomicReferenceArray2;
    this.e = (l2 + l1 - 1L);
    a(l1 + 1L);
    localAtomicReferenceArray2.lazySet(n, paramT);
    localAtomicReferenceArray1.lazySet(localAtomicReferenceArray1.length() - 1, localAtomicReferenceArray2);
    localAtomicReferenceArray1.lazySet(n, l);
    return true;
  }

  public final T peek()
  {
    AtomicReferenceArray localAtomicReferenceArray = this.i;
    long l1 = this.j;
    int m = this.h;
    Object localObject2 = localAtomicReferenceArray.get((int)l1 & m);
    Object localObject1 = localObject2;
    if (localObject2 == l)
    {
      localObject1 = a(localAtomicReferenceArray);
      this.i = ((AtomicReferenceArray)localObject1);
      localObject1 = ((AtomicReferenceArray)localObject1).get((int)l1 & m);
    }
    return localObject1;
  }

  public final T poll()
  {
    AtomicReferenceArray localAtomicReferenceArray = this.i;
    long l1 = this.j;
    int m = this.h;
    int n = (int)l1 & m;
    Object localObject = localAtomicReferenceArray.get(n);
    if (localObject == l);
    for (m = 1; (localObject != null) && (m == 0); m = 0)
    {
      b(l1 + 1L);
      localAtomicReferenceArray.lazySet(n, null);
      return localObject;
    }
    if (m != 0)
    {
      localAtomicReferenceArray = a(localAtomicReferenceArray);
      this.i = localAtomicReferenceArray;
      localObject = localAtomicReferenceArray.get(n);
      if (localObject == null)
        return null;
      b(l1 + 1L);
      localAtomicReferenceArray.lazySet(n, null);
      return localObject;
    }
    return null;
  }

  public final T remove()
  {
    throw new UnsupportedOperationException();
  }

  public final boolean remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }

  public final boolean removeAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  public final boolean retainAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  public final int size()
  {
    long l2;
    for (long l1 = this.j; ; l1 = l2)
    {
      long l3 = this.b;
      l2 = this.j;
      if (l1 == l2)
        return (int)(l3 - l2);
    }
  }

  public final Object[] toArray()
  {
    throw new UnsupportedOperationException();
  }

  public final <E> E[] toArray(E[] paramArrayOfE)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.a.d
 * JD-Core Version:    0.6.2
 */