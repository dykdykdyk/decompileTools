package rx.c.d.a;

import java.util.Collection;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import rx.c.d.b.i;

public final class c<T> extends AtomicReferenceArray<T>
  implements Queue<T>
{
  static final AtomicLongFieldUpdater<c> e = AtomicLongFieldUpdater.newUpdater(c.class, "c");
  static final AtomicLongFieldUpdater<c> f = AtomicLongFieldUpdater.newUpdater(c.class, "d");
  final int a;
  final int b;
  volatile long c;
  volatile long d;

  public c(int paramInt)
  {
    super(i.a(paramInt));
    int i = length();
    this.a = (i - 1);
    this.b = (i - paramInt);
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
    return this.c == this.d;
  }

  public final Iterator<T> iterator()
  {
    throw new UnsupportedOperationException();
  }

  public final boolean offer(T paramT)
  {
    if (paramT == null)
      throw new NullPointerException();
    long l = this.c;
    int i = this.a;
    if (get((int)(this.b + l) & i) != null)
      return false;
    int j = (int)l;
    e.lazySet(this, l + 1L);
    lazySet(i & j, paramT);
    return true;
  }

  public final T peek()
  {
    return get((int)this.d & this.a);
  }

  public final T poll()
  {
    long l = this.d;
    int i = (int)l;
    i = this.a & i;
    Object localObject = get(i);
    if (localObject == null)
      return null;
    f.lazySet(this, l + 1L);
    lazySet(i, null);
    return localObject;
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
    for (long l1 = this.d; ; l1 = l2)
    {
      long l3 = this.c;
      l2 = this.d;
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
 * Qualified Name:     rx.c.d.a.c
 * JD-Core Version:    0.6.2
 */